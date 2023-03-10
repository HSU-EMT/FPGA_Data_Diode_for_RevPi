/*
 * diode_core1_functions.c
 *
 *  Created on: 29.06.2022
 *      Author: Ha
 */


#include <unistd.h>
#include <stdlib.h>
#include "xil_types.h"
#include "xgpio.h"
#include "xuartlite.h"
#include "shared_memory.h"
#include "custom_definitions_rs485.h"
#include "diode_ethernet_functions.h"
#include "others.h"
#include "default_types.h"
#include "diode_plcm_functions.h"

#include "_mode_define.h"


static u8 ResponseBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE] = {INIT_RES_START_CODE,0x4D,
		INFOR_EXCHANGED_CODE,0x40,0x00,0x00,0x16,0xAF,0x05,0x00,0x00,0x4F,0x00,0x01,0x00,0x01,0x00,0x01,
		0x00,0x51,0x2B,0x00,0x00,0x00,0x02,0x00,0x02,0x01,0x00,0x00};
static u8 ResponseBuffer_SetAddress[BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE] = {INIT_RES_START_CODE, 0x00, ADDRESS_SETTING_CODE, 0x40, 0x00, 0x00, 0x00, 0x00};
static u8 ResetSignal[BYTE_SIZE_RESET_SIGNAL] = {0x7F, 0x00, 0x7F};
static u8 Command, ReqRes, Device_address = 0, data_length = 0, Config_packet_index = 0, Config_Paket_num = 0;
static u8 Ignored_Data_Buffer[IGNORED_DATA_BUFFER_SIZE];
static u8 HeaderBuffer[BYTE_SIZE_HEADER];


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

    /*
	if ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 0)) {

		usleep(100);
		sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
		sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);
		if ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 0)) {
			usleep(900);
			sniff1 = XGpio_DiscreteRead(Wire1_Ptr, 1);
			sniff2 = XGpio_DiscreteRead(Wire2_Ptr, 1);


			if ((sniff1 == 1) && (sniff2 == 1) && (Init_Config_status->Puls_detected == 0)) {
				usleep(17000);
				XGpio_SetDataDirection(Wire2_Ptr, 1, 0);
				XGpio_DiscreteWrite(Wire2_Ptr, 1, 1);
				Init_Config_status->Puls_detected = 1;
			}
		}
	} */
}


/****************************************************************************/
/**
*
* This function used by the data diode to initialize all real devices connected to RevPi master in OT network.
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
void Init_real_device(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control){

	if (Init_Config_status->Puls_detected != 0){
		// take the number of real modules from the shared memory

		Init_Config_status->Device_count = MEM_DEVICE_NUM[0];

		int Device_index = 0;
		int Index_Device_infor = 0;
		int Index_Address_set  = 0;

		if(Init_Config_status->Device_count != 0){
		 while(Init_Config_status->Device_count > Device_index){
			Reset_FIFO(UartLiteInstPtr);

			u8 HelpBuffer[BYTE_SIZE_TOTAL_INIT_REQ] = {0};
			XUartLite_Recv(UartLiteInstPtr, HelpBuffer, BYTE_SIZE_TOTAL_INIT_REQ);
			Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_TOTAL_INIT_REQ);

			if (HelpBuffer[0] == INIT_REQ_START_CODE){
				u8* Help_MEM_BASE = MEM_DEVICE_INFOR + 0x64*Device_index;
				int paket_length = (int)(Help_MEM_BASE[BYTE_SIZE_HEADER_INIT-1]) + BYTE_SIZE_HEADER_INIT + 1; // 1 byte more for CRC
				u8 device_infor_res[paket_length];

				for(int i = 0; i< paket_length; i++){
					device_infor_res[i] = Help_MEM_BASE[i];
				}

				usleep(2000);
				XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 1);
				XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 1);

				XUartLite_Send(UartLiteInstPtr, device_infor_res, paket_length);
				Pmod_Wait_Send_Data(Pmod_Control, UartLiteInstPtr, paket_length);

				XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);
				XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);
				Index_Device_infor += 1;

			}
			else if ((HelpBuffer[0] != INIT_REQ_START_CODE) &&(HelpBuffer[2] == ADDRESS_SETTING_CODE)){

				ResponseBuffer_SetAddress[1] = (u8)(HelpBuffer[0] & ADDRESS_MASK);
				ResponseBuffer_SetAddress[BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE-1] = Crc_Cal(ResponseBuffer_SetAddress, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE-1);

				usleep(2000);
				XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 1);
				XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 1);

				XUartLite_Send(UartLiteInstPtr, ResponseBuffer_SetAddress, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE);
				Pmod_Wait_Send_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE);

				XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);
				XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);
				Index_Address_set += 1;
			}

			if ((Index_Address_set == Index_Device_infor) && (Index_Address_set != 0)){
				Device_index += 1;
			}
		 }
		} else if (Init_Config_status->Device_count == 0){
			// No real modules were connected
		}
		Init_Config_status->All_emulated = 1;

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
void DataDiode_Infor_Exchange(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr,PmodRS485_Control Pmod_Control){


	if ((Init_Config_status->All_emulated == 1)&&(Init_Config_status->Infor_exchanged == 0)){
		Reset_FIFO(UartLiteInstPtr);

		u8 RequestBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST];
		XUartLite_Recv(UartLiteInstPtr, RequestBuffer_GetDeviceInfor, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST);
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST);

		if (RequestBuffer_GetDeviceInfor[0] == INIT_REQ_START_CODE){
			ResponseBuffer_GetDeviceInfor[BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE-1] = Crc_Cal(ResponseBuffer_GetDeviceInfor, BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE-1);

			usleep(2000);
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
	if ((Init_Config_status->Infor_exchanged == 1) && (*DataDiode_address_Ptr == 0)){

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



int Configuration_Comparing(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control){

	while(!(Init_Config_status->All_configured)){
		Config_Paket_num = MEM_DEVICE_CONF_NUM[0];

		XUartLite_Recv(UartLiteInstPtr, HeaderBuffer, BYTE_SIZE_HEADER);
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_HEADER);


	if(HeaderBuffer[0] == BROADCAST_START_CODE){
		XUartLite_Recv(UartLiteInstPtr, Ignored_Data_Buffer, (BYTE_SIZE_BROADCAST-BYTE_SIZE_HEADER));
		Pmod_Wait_Receive_Data(Pmod_Control, UartLiteInstPtr, (BYTE_SIZE_BROADCAST-BYTE_SIZE_HEADER));
	}
	else {

	data_length = (int)(HeaderBuffer[1] & DATA_LENGTH_MASK) + 1; // one more for CRC Check Byte at the end of frame
	u8 DataBuffer[data_length];

	/*
	 * check reset signal for whole system
	 */
	if ((HeaderBuffer[0] == ResetSignal[0]) && (data_length == 1)) {
		Config_packet_index = 0;
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

	/*
	 * Data diode copies configuration data of all other devices on the shared memory to compare
	 */
	if (Config_packet_index < Config_Paket_num) {
		u8* MEM_BASE_HELP_REQ = MEM_DEVICE_CONF_REQ + 0x64*Config_packet_index; //step 100 bytes --> 0x64
		u8* MEM_BASE_HELP_RES = MEM_DEVICE_CONF_RES + 0xA*Config_packet_index; //step 10 bytes --> 0x64
		u8  Res_Help_buffer[BYTE_SIZE_CONFIG_RESPONSE];
		/*
		 * Data diode checks whether the system in OT was configured identically to the system in IT or not
		 */

		for (int i = 0; i < sizeheader; i++){
			if (HeaderBuffer[i] != MEM_BASE_HELP_REQ[i]){
				return CONFIG_FAILED;
			}
		}
		for (int i = 0; i < sizedata; i++){
			if (DataBuffer[i] != MEM_BASE_HELP_REQ[i + sizeheader]){
				return CONFIG_FAILED;
			}
		}


		XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 1);
		XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 1);
		usleep(100);

		for (int i = 0; i < BYTE_SIZE_CONFIG_RESPONSE; i++){
			Res_Help_buffer[i] = MEM_BASE_HELP_RES[i];
		}

		XUartLite_Send(UartLiteInstPtr, Res_Help_buffer, BYTE_SIZE_CONFIG_RESPONSE);
		Pmod_Wait_Send_Data(Pmod_Control, UartLiteInstPtr, BYTE_SIZE_CONFIG_RESPONSE);

		XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);
		XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);

		Config_packet_index += 1;
	}

	if (Config_packet_index == Config_Paket_num){Init_Config_status->All_configured = 1;}

		}
	}
	return SYSTEM_SUCCESS;
}



int Exchange_Data(int *Ethernet_Config_status_Ptr, PacketTX_format *TXPacket_Ptr, PacketConfig_format* GatePacketConfig_Ptr){

	while(!(*Ethernet_Config_status_Ptr)){
		Config_Phase(Ethernet_Config_status_Ptr, TXPacket_Ptr, GatePacketConfig_Ptr);
	}
	while((*MEM_RS_485_DATA_READY)&&(*Ethernet_Config_status_Ptr)){
		Cyclically_Data_Exchange_PLCM(Ethernet_Config_status_Ptr, TXPacket_Ptr);
	}

	return SYSTEM_RESET;
}



int Read_Shared_Memory(u8* DataBuffer, u8* MEM_BASE_ADDRESS, int device_num){

	int gateway_present = 0;
	DataBuffer[0] = device_num;

#ifdef MODE1
	if ((*MEM_TOTAL_RS_485_DATA_NUM > IO_PAYLOAD_SIZE)||(*MEM_BASE_GATEWAY_PRESENT)||(*MEM_BASE_GATEWAY_PRESENT_B)) {
		// need to use mode 2
		xil_printf("Oversize of process data. Change to use mode 2 instead");
		return SYSTEM_FAILED;
	}
#endif
	if ((*MEM_BASE_GATEWAY_PRESENT)||(*MEM_BASE_GATEWAY_PRESENT_B)){
		gateway_present = 1;
		device_num = device_num - 1;
		DataBuffer[0] = DataBuffer[0] | GATEWAY_EXIST_MASK;
	}

	DataBuffer += 1;

	for (int i = 0; i < device_num; i++){
		u8* HELP_ADDRESS = MEM_BASE_ADDRESS + 0x64*i;
		int data_length_req = (int)(HELP_ADDRESS[1] & DATA_LENGTH_MASK) + BYTE_SIZE_HEADER;
		memcpy(DataBuffer, HELP_ADDRESS, data_length_req);

		HELP_ADDRESS = MEM_BASE_ADDRESS + 0x64*(i+1);
		int data_length_res = (int)(HELP_ADDRESS[1] & DATA_LENGTH_MASK) + BYTE_SIZE_HEADER;
		memcpy(DataBuffer + data_length_req, HELP_ADDRESS, data_length_res);

		DataBuffer = DataBuffer + data_length_res + data_length_req;
	}

	if (gateway_present == 1) { //add data from gateway at the end

		if((ETHERNET_SHARED_MEMORY_BASE[6] == 0xC8) && (ETHERNET_SHARED_MEMORY_BASE[7] == 0x3E) && (ETHERNET_SHARED_MEMORY_BASE[8] == 0xA7)){ //Kunbus address header at https://hwaddress.com/oui-iab/C8-3E-A7/

			DataBuffer[0] = MEM_DEVICE_ADDRESS[device_num]; //address of gateway is always at the end of address list
			DataBuffer[0] = DataBuffer[0] | RESPONSE_MASK;
			DataBuffer += 1;
			memcpy(DataBuffer, ETHERNET_SHARED_MEMORY_BASE + HEADER_SIZE + 1, IO_PAYLOAD_SIZE); //input packet from Kunbus devices, +1 because one dummy byte of kunbus packet. This byte does not exist in revpi packet
			DataBuffer += IO_PAYLOAD_SIZE;
			DataBuffer[0] = MEM_DEVICE_ADDRESS[device_num]; //address of gateway is always at the end of address list
			DataBuffer += 1;
			memcpy(DataBuffer, ETHERNET_B_SHARED_MEMORY_BASE + HEADER_SIZE, IO_PAYLOAD_SIZE); //revpi output packet go to Kunbus devices

		} else if ((ETHERNET_B_SHARED_MEMORY_BASE[6] == 0xC8) && (ETHERNET_B_SHARED_MEMORY_BASE[7] == 0x3E) && (ETHERNET_B_SHARED_MEMORY_BASE[8] == 0xA7)) {

			DataBuffer[0] = MEM_DEVICE_ADDRESS[device_num]; //address of gateway is always at the end of address list
			DataBuffer[0] = DataBuffer[0] | RESPONSE_MASK;
			DataBuffer += 1;
			memcpy(DataBuffer, ETHERNET_B_SHARED_MEMORY_BASE + HEADER_SIZE + 1, IO_PAYLOAD_SIZE); //input packet from Kunbus devices
			DataBuffer += IO_PAYLOAD_SIZE;
			DataBuffer[0] = MEM_DEVICE_ADDRESS[device_num]; //address of gateway is always at the end of address list
			DataBuffer += 1;
			memcpy(DataBuffer, ETHERNET_SHARED_MEMORY_BASE + HEADER_SIZE, IO_PAYLOAD_SIZE); //revpi output packet go to Kunbus devices
		}

	}

	return SYSTEM_SUCCESS;

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
