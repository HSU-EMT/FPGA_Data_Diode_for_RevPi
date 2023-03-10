/*
 * diode_core0_functions.c
 *
 *  Created on: 27.06.2022
 *      Author: Ha
 */


/*****************************************************************************/

#include "diode_PLC_functions.h"
#include <unistd.h>
#include "xil_types.h"
#include "xgpio.h"
#include "xuartlite.h"
#include "custom_definitions.h"
#include "shared_memory.h"
#include "default_types.h"
#include "others.h"



static u8 ResponseBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE] = {INIT_RES_START_CODE,0x4D,
		INFOR_EXCHANGED_CODE,0x40,0x00,0x00,0x16,0xAF,0x05,0x00,0x00,0x4F,0x00,0x01,0x00,0x01,0x00,0x01,
		0x00,0x51,0x2B,0x00,0x00,0x00,0x02,0x00,0x02,0x01,0x00,0x00};
static u8 ResponseBuffer_SetAddress[BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE] = {INIT_RES_START_CODE, 0x00, ADDRESS_SETTING_CODE, 0x40, 0x00, 0x00, 0x00, 0x00};
static u8 HeaderBuffer[BYTE_SIZE_HEADER];
static u8 ResetSignal[BYTE_SIZE_RESET_SIGNAL] = {0x7F, 0x00, 0x7F};
static u8 Ignored_Data_Buffer[IGNORED_DATA_BUFFER_SIZE];
static u8 Command, ReqRes, Device_address = 0;
static int total_data_length = 0;

/****************************************************************************/
/**
*
* This function monitors PiBridge and set variable Puls_detected to 1 when the pulse from RevPi master occurs.
*
* @param	Gpio_Ptr is a pointer to the GPIO instance.
*
* @param	sniff1 is the status of sniff wire 1.
*
* @param	sniff2 is the status of sniff wire 2.
*
* @param	Init_Config_s is a pointer to Init_Config_s instance, which contains informations for the initialization
* and configuration of devices on PiBridge.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void Puls_detect(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status){
	u32 sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
	u32 sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);

	if ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 0)) {

		usleep(1000);
		sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
		sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);

		if ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 0)) {
			usleep(10000);
			sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
			sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);
			if ((sniff1 == 1) && (sniff2 == 0) && (Init_Config_status->Puls_detected == 0)) {
				Init_Config_status->Puls_detected = 1;
			}
		}
	}
}



/****************************************************************************/
/**
*
* This function monitors PiBridge and collects all informations of all real devices during their initialization phase.
* The data will be saved on the shared memory for future use in the IT network.
*
* @param	Init_Config_s is a pointer to Init_Config_s instance, which contains status for the initialization
* and configuration of devices on PiBridge.
*
* @param	UartLiteInstPtr is a pointer to the Uartlite instance.
*
* @param	Gpio_Ptr is a pointer to the GPIO instance.
*
* @param	Pmod_Control contains control informations for the Pmod RS-485.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void Collect_Information_Devices(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control){
	int data_length = 0;
	u32 sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
	u32 sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);
	while ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 1)) {

		Reset_FIFO(UartLiteInstPtr);
		u8 HelpBuffer[BYTE_SIZE_HEADER_INIT];
		XUartLite_Recv(UartLiteInstPtr, HelpBuffer, BYTE_SIZE_HEADER_INIT);

		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_HEADER_INIT);

		data_length = (int)(HelpBuffer[BYTE_SIZE_HEADER_INIT-1]) + 1; // one more for CRC Check Byte at the end of frame

		u8 HelpDataBuffer[data_length];

		XUartLite_Recv(UartLiteInstPtr, HelpDataBuffer, data_length);
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, data_length);

		if ((HelpBuffer[0] == INIT_RES_START_CODE) && (HelpBuffer[2] == INFOR_EXCHANGED_CODE)){
			/*
			 * HelpDataBuffer contains device information.
			 * Save all device information with header on the shared memory to future use
			 */
			u8* Help_MEM_BASE = MEM_DEVICE_INFOR + 0x64*(Init_Config_status->Device_count);

			for(int i = 0; i< BYTE_SIZE_HEADER_INIT; i++){
				Help_MEM_BASE[i] = HelpBuffer[i];
			}
			for(int i = 0; i< data_length; i++){
				Help_MEM_BASE[i + BYTE_SIZE_HEADER_INIT] = HelpDataBuffer[i];
			}
			Init_Config_status->Device_count +=1;
		}else if  ((HelpBuffer[2] == ADDRESS_SETTING_CODE) && (HelpBuffer[3] == ADDRESS_SETTING_CODE_SUCCESS)){
			u8* Help_MEM_ADDRESS_BASE = MEM_DEVICE_ADDRESS + 0x1*(Init_Config_status->Device_count - 1);
			*Help_MEM_ADDRESS_BASE = HelpBuffer[1];
		}

		sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
		sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);

		Init_Config_status->Infor_exchanged = 1;
		Init_Config_status->Cyclic_Exchange = 1;
	}
	/*
	 * write the number of real module
	 */
	MEM_DEVICE_NUM[0] = Init_Config_status->Device_count;
	if (Init_Config_status->Device_count == 0) {
		*MEM_RS_485_DATA_READY = 0x01;
		*MEM_TOTAL_RS_485_DATA_NUM = 0x00;
	}

}



/****************************************************************************/
/**
*
* This function proceeds the device infors exchange ( part 1 of initialization phase) for the data diode with the RevPi Master.
*
* @param	Init_Config_s is a pointer to Init_Config_s instance, which contains status for the initialization
* and configuration of devices on PiBridge.
*
* @param	UartLiteInstPtr is a pointer to the Uartlite instance.
*
* @param	Gpio_Ptr is a pointer to the GPIO instance.
*
* @param	Pmod_Control contains control informations for the Pmod RS-485.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void DataDiode_Infor_Exchange(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control){

	u32 sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
	u32 sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);

	if ((sniff1 == 0) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 1) && (Init_Config_status->Infor_exchanged == 0)){
		Reset_FIFO(UartLiteInstPtr);
		u8 RequestBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST];

		XUartLite_Recv(UartLiteInstPtr, RequestBuffer_GetDeviceInfor, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST);
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST);

		if (RequestBuffer_GetDeviceInfor[0] == INIT_REQ_START_CODE){
			ResponseBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE-1] = Crc_Cal(ResponseBuffer_GetDeviceInfor, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE-1);

			usleep(1000);
			XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 1);
			XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 1);

			XUartLite_Send(UartLiteInstPtr, ResponseBuffer_GetDeviceInfor, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE);
			Pmod_Wait_Send_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE);

			XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);
			XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);

			Init_Config_status->Infor_exchanged = 1;

		}
	}
}




/****************************************************************************/
/**
*
* This function proceeds the device address setting ( part 2 of initialization phase) for the data diode with the RevPi Master.
*
* @param	Init_Config_s is a pointer to Init_Config_s instance, which contains informations for the initialization
* and configuration of devices on PiBridge.
*
* @param	DataDiode_address_Ptr is a pointer to the address of the data diode.
*
* @param	UartLiteInstPtr is a pointer to the Uartlite instance.
*
* @param	Gpio_Ptr is a pointer to the GPIO instance.
*
* @param	Pmod_Control contains control informations for the Pmod RS-485.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void DataDiode_Adress_Setting(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status, u8 *DataDiode_address_Ptr, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control){
	u32 sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
	u32 sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);

	if ((sniff1 == 0) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 1) && (Init_Config_status->Infor_exchanged == 1) && (*DataDiode_address_Ptr == 0)){

		usleep(1000);
		u8 RequestBuffer_SetAddress[BYTE_SIZE_SET_ADDRESS_GATEWAY_REQUEST];

		XUartLite_Recv(UartLiteInstPtr, RequestBuffer_SetAddress, BYTE_SIZE_SET_ADDRESS_GATEWAY_REQUEST);
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_SET_ADDRESS_GATEWAY_REQUEST);

		*DataDiode_address_Ptr = RequestBuffer_SetAddress[0] & ADDRESS_MASK;

		ResponseBuffer_SetAddress[1] = *DataDiode_address_Ptr;
		ResponseBuffer_SetAddress[BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE-1] = Crc_Cal(ResponseBuffer_SetAddress, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE-1);

		usleep(2000);
		XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 1);
		XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 1);

		XUartLite_Send(UartLiteInstPtr, ResponseBuffer_SetAddress, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE);
		Pmod_Wait_Send_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE);

		XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);
		XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);

		XGpio_SetDataDirection(Wire2_Ptr, 1, 1);
		usleep(100);
		XGpio_SetDataDirection(Wire1_Ptr, 1, 1);
		usleep(1000);

	}
}



/****************************************************************************/
/**
*
* This function proceeds the main function of data diode in the OT network. The data diode reads data on the PiBridge
* and writes data on the shared memory for future use in the IT network.
*
* @param	Init_Config_s is a pointer to Init_Config_s instance, which contains informations for the initialization
* and configuration of devices on PiBridge.
*
* @param	DataDiode_address_Ptr is a pointer to the address of the data diode.
*
* @param	UartLiteInstPtr is a pointer to the Uartlite instance.
*
* @param	Pmod_Control contains control informations for the Pmod RS-485.
*
* @param	error_count is a pointer to the number of error occurs during the functionality of the data diode.
*
* @return	SYSTEM_RESET: when the user resets whole system on PiCtory.
* 			SYSTEM_FAILED: when an error occurs during functionality of the data diode.
* 			otherwise SYSTEM_SUCCESS.
*
* @note		None.
*
*****************************************************************************/
int Read_PiBridge_Write_MDBRAM(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control, int *error_count){
	int data_length = 0;


	XUartLite_Recv(UartLiteInstPtr, HeaderBuffer, BYTE_SIZE_HEADER);
	Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_HEADER);

	if(HeaderBuffer[0] == BROADCAST_START_CODE){
		XUartLite_Recv(UartLiteInstPtr, Ignored_Data_Buffer, (BYTE_SIZE_BROADCAST-BYTE_SIZE_HEADER));
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, (BYTE_SIZE_BROADCAST-BYTE_SIZE_HEADER));
	}
	else {

	data_length = (int)(HeaderBuffer[1] & DATA_LENGTH_MASK) + 1; // one more for CRC Check Byte an the end of frame
	u8 DataBuffer[data_length];

	/*
	 * check reset signal for whole system
	 */
	if ((HeaderBuffer[0] == ResetSignal[0]) && (data_length == 1)) {
		return SYSTEM_RESET;
	}

	/*
	 * Receive useful data
	 */
	XUartLite_Recv(UartLiteInstPtr, DataBuffer, data_length);
	Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, data_length);

	int sizeheader = sizeof(HeaderBuffer);
	int sizedata = sizeof(DataBuffer);
	Command = (HeaderBuffer[1] & COMMAND_MASK) >> 5;
	Device_address = HeaderBuffer[0] & ADDRESS_MASK;
	ReqRes = (HeaderBuffer[0] & RESPONSE_MASK) >> 7;


	if(((Command == IOP_TYP1_CMD_DATA)||(Command == IOP_TYP1_CMD_DATA2))&&(Init_Config_status->All_configured == 0)){
		Init_Config_status->All_configured = 1; //leaves the configuration phase
		MEM_DEVICE_CONF_NUM[0] = Init_Config_status->Config_Req_Paket_count;
	}

	/*
	 * Data diode saves configuration data of all other real devices to the shared memory
	 */
	if (Init_Config_status->All_configured == 0) {

		if (ReqRes == 0){
			Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_DEVICE_CONF_REQ + 0x64*(Init_Config_status->Config_Req_Paket_count));
			Init_Config_status->Config_Req_Paket_count += 1;
		}
		else if (ReqRes == 1){
			Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_DEVICE_CONF_RES + 0xA*(Init_Config_status->Config_Res_Paket_count));
			Init_Config_status->Config_Res_Paket_count += 1;

		}

	}
	// Data diode writes data of all other real devices in cyclically data exchange phase to the shared memory
	else{

		if (ReqRes == 0) {
			switch(Device_address)
			{
			case 0x1F:
				*MEM_TOTAL_RS_485_DATA_NUM = total_data_length;
				*MEM_RS_485_DATA_READY = 0x01;
				total_data_length = 0;
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_1F);
				break;
			case 0x1E:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_1E);
				break;
			case 0x1D:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_1D);
				break;
			case 0x1C:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_1C);
				break;
			case 0x1B:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_1B);
				break;
			case 0x20:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_20);
				break;
			case 0x21:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_21);
				break;
			case 0x22:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_22);
				break;
			case 0x23:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_23);
				break;
			case 0x24:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_REQ_24);
				break;
			default:
				//Error: program0 reads wrong request packet
				*error_count += 1;
				return SYSTEM_FAILED;
			}
		}
		else if (ReqRes == 1) {
			switch(Device_address)
			{
			case 0x1F:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_1F);
				break;
			case 0x1E:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_1E);
				break;
			case 0x1D:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_1D);
				break;
			case 0x1C:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_1C);
				break;
			case 0x1B:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_1B);
				break;
			case 0x20:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_20);
				break;
			case 0x21:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_21);
				break;
			case 0x22:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_22);
				break;
			case 0x23:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_23);
				break;
			case 0x24:
				Write_data_to_MDBRAM(HeaderBuffer, sizeheader, DataBuffer, sizedata, MEM_RES_24);
				break;
			default:
				//Error: program0 reads wrong response packet
				*error_count += 1;
				return SYSTEM_FAILED;
				}
			}

		total_data_length += (sizeheader + sizedata - 1); // -1 because don't use CRC Check Byte an the end of frame
		}
	}
	return SYSTEM_SUCCESS;
}



/****************************************************************************/
/**
*
* This function used by data diode to write data to the shared memory.
*
* @param	HeaderBuffer is the pointer to header of packet.
*
* @param	sizeheader is size of header of packet.
*
* @param	DataBuffer is the pointer to data (payload) of packet.
*
* @param	MEM_BASE_ADDRESS is the pointer to the start of register on the shared memory used to save the data.
*
* @param	MUTEX_MEMORY_ID is the Mutex key ID for the location pointed by MEM_BASE_ADDRESS.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
void Write_data_to_MDBRAM(u8* HeaderBuffer, int sizeheader, u8* DataBuffer, int sizedata, u8* MEM_BASE_ADDRESS){

	for(int i = 0; i< sizeheader; i++){
		MEM_BASE_ADDRESS[i] = HeaderBuffer[i];
	}
	for(int i = 0; i< sizedata; i++){
		MEM_BASE_ADDRESS[i + sizeheader] = DataBuffer[i];
	}

}



/****************************************************************************/
/**
*
* This function used to calculate the CRC check byte for a frame.
*
* @param	pi8uFrame_p is the pointer to the start of the frame packet.
*
* @param	i16uLen_p is the length of the frame packet.
*
* @return	None.
*
* @note		None.
*
*****************************************************************************/
u8 Crc_Cal(u8 * pi8uFrame_p, u16 i16uLen_p)
{
	u8 i8uRv_l = 0;

	while (i16uLen_p--) {
		i8uRv_l = i8uRv_l ^ pi8uFrame_p[i16uLen_p];
	}
	return i8uRv_l;
}

