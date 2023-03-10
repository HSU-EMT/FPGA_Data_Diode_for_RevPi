/*
 * diode_ethernet_functions.c
 *
 *  Created on: 11.08.2022
 *      Author: Ha
 */

#include <stdlib.h>
#include <unistd.h>


#include "custom_definitions_ethernet.h"
#include "xil_types.h"
#include "enc424j600.h"

#include "diode_ethernet_functions.h"
#include "diode_plcm_functions.h"
#include "shared_memory.h"
#include "default_types.h"



static u8 EmptyPacket[60] = {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xC8,0x3E,0xA7,0x00,0x4F,0x01,0x41,0x9C,0x01,0x01,0x01,0x00,};

static int wait_count = 0;
static u8 ReadBuffer[IO_RECEIVE_BUFFER_SIZE] = {0x00};
static u16 help_pointer;
extern u8 currentBank;
extern u16 nextPacketPointer;
extern int send_emptyGatePacket_status;



PacketConfig_format* Init_ConfigPacket_Layers(u16 PAYLOAD_SIZE){

	PacketConfig_format* ConfigPacket = (PacketConfig_format*)malloc(sizeof(*ConfigPacket));
	u8 addr[6];
	enc424j600GetMACAddr(addr);

	for (int i = 0; i < 6; i++) { // multicast MAC address
		ConfigPacket->Dest[i] = 0xFF;
	}
	for (int i = 0; i < 6; i++) { // owned source MAC address
		ConfigPacket->Src[i] = addr[i];
	}
	ConfigPacket->Fields.GatewayID = 0x9C41;					   // owned packet type
	ConfigPacket->Fields.Ack = 0x00;
	ConfigPacket->Fields.Counter = 0x00;
	ConfigPacket->Fields.Cmd = 0x8001;
	ConfigPacket->Fields.PayloadLength = CONFIG_PAYLOAD_SIZE;
	ConfigPacket->Fields.Errors = 0x00000000;
	ConfigPacket->Fields.Version = 0x00;
	ConfigPacket->Fields.Reserved = 0x00;

	ConfigPacket->Fields.i32uSerialnumber = 0x000005C7;
	ConfigPacket->Fields.i16uModulType = GATEWAY_DIODE_ID;
	ConfigPacket->Fields.i16uHW_Revision = 0x0001;
	ConfigPacket->Fields.i16uSW_Major = 0x0001;
	ConfigPacket->Fields.i16uSW_Minor = 0x0001;
	ConfigPacket->Fields.i32uSVN_Revision = 0x00002B51;
	ConfigPacket->Fields.i16uFBS_InputLength = IO_PAYLOAD_SIZE;
	ConfigPacket->Fields.i16uFBS_OutputLength = PAYLOAD_SIZE;
	ConfigPacket->Fields.i16uFeatureDescriptor = 0x0001;

	for (int i = 0; i < (CONFIG_BUFFER_SIZE - CONFIG_HEADER_SIZE - CONFIG_PAYLOAD_SIZE); i++) { // useful data
		ConfigPacket->Fields.Data[i] = 0x00;
	}

	return ConfigPacket;

}



PacketTX_format* Init_Packet_Layers(u16 PAYLOAD_SIZE){

	PacketTX_format* TXPacket = (PacketTX_format *)malloc( sizeof(*TXPacket) + sizeof(u8) * PAYLOAD_SIZE);
	u8 addr[6];
	enc424j600GetMACAddr(addr);

	for (int i = 0; i < 6; i++) { // multicast MAC address
		TXPacket->Dest[i] = 0xFF;
	}
	for (int i = 0; i < 6; i++) { // owned source MAC address
		TXPacket->Src[i] = addr[i];
	}
	TXPacket->Fields.GatewayID = 0x9C41;					   // owned packet type
	TXPacket->Fields.Ack = 0x00;
	TXPacket->Fields.Counter = 0x00;
	TXPacket->Fields.Cmd = 0x0002;
	TXPacket->Fields.PayloadLength = PAYLOAD_SIZE + AL_HEADER_SIZE;
	TXPacket->Fields.Errors = 0x00000000;
	TXPacket->Fields.Version = 0x00;
	TXPacket->Fields.Reserved = 0x00;
	TXPacket->Fields.FBStatus = 0x00;
	TXPacket->Fields.Offset = 0x0000;
	TXPacket->Fields.DataLength = PAYLOAD_SIZE; //MSB is 0x0200 hex or 512 in dec

	for (int i = 0; i < PAYLOAD_SIZE; i++) { // useful data
		TXPacket->Fields.Data[i] = 0x00;
	}

	return TXPacket;

}

void Config_Phase(int *Ethernet_Config_status, PacketTX_format *TXPacket, PacketConfig_format* GatePacketConfig){

	u8 ConfigReadBuffer[CONFIG_BUFFER_SIZE] = {0x00};
	if(send_emptyGatePacket_status == 0){
	enc424j600PacketSend(CONFIG_BUFFER_SIZE, EmptyPacket);
	GatePacketConfig->Fields.Counter = EmptyPacket[15];
		while((ConfigReadBuffer[12] != 0x41)&&(ConfigReadBuffer[13] != 0x9c)){
				nextPacketPointer = enc424j600PacketReceive_Config(nextPacketPointer, ConfigReadBuffer);
			}
	} else {
		nextPacketPointer = enc424j600PacketReceive_Config(nextPacketPointer, ConfigReadBuffer);
	}


		if ((ConfigReadBuffer[12] == 0x41)&&(ConfigReadBuffer[13] == 0x9c)&&(ConfigReadBuffer[16] == 0x01)){ //1. Byte of Command code for configuration packet

			if ((ConfigReadBuffer[17] == 0x00)&&(send_emptyGatePacket_status == 0)){ //2. Byte of Command code for configuration packet->empty packet from master arrives, need to answer to master

				send_emptyGatePacket_status = 1; //stop cyclically send empty gate packets to master
				GatePacketConfig->Fields.Ack = ConfigReadBuffer[15]; // Ack number
				GatePacketConfig->Fields.Counter += 0x01;				 // Ctr number
				enc424j600PacketSend(CONFIG_BUFFER_SIZE, ((u8*)GatePacketConfig));


			} else if (ConfigReadBuffer[17] == 0x80){ //config packet from master arrives, configuration done, change to cyclically data exchange phase
				*Ethernet_Config_status = 1;

				int status = Read_Shared_Memory(TXPacket->Fields.Data, RS485_SHARED_MEMORY_BASE, *MEM_DEVICE_NUM);
				if (status != SYSTEM_SUCCESS){
					 send_emptyGatePacket_status = 0;
					 *Ethernet_Config_status = 0;
				}
				TXPacket->Fields.Ack     = ConfigReadBuffer[15];
				TXPacket->Fields.Counter = GatePacketConfig->Fields.Counter + 0x01;
				enc424j600PacketSend(TXPacket->Fields.DataLength + HEADER_SIZE, ((u8*)TXPacket));

			}
		}

}

void Cyclically_Data_Exchange_PLCM(int *Config_status, PacketTX_format *TXPacket){

	help_pointer = nextPacketPointer;
	nextPacketPointer = enc424j600PacketReceive(nextPacketPointer, ReadBuffer);
	if (help_pointer != nextPacketPointer) { //something is received
		wait_count = 0;
		if (ReadBuffer[16] == 0x02){ //command code for cyclically data exchange

			//by default use this function to read data from the shared memory and send to PLCM. User can modified here to send any other data.
			int status = Read_Shared_Memory(TXPacket->Fields.Data, RS485_SHARED_MEMORY_BASE, *MEM_DEVICE_NUM);
			if (status != SYSTEM_SUCCESS){
				 send_emptyGatePacket_status = 0;
				 *Config_status = 0;
				 wait_count = 0;
			}

			//test
			//for (int k = 0; k < 29; k++){
			//	TXPacket->Fields.Data[k] = k;
			//}

			// answer to master
			TXPacket->Fields.Ack = ReadBuffer[15];
			TXPacket->Fields.Counter = increaseNum(TXPacket->Fields.Counter);
			enc424j600PacketSend(TXPacket->Fields.DataLength + HEADER_SIZE, ((u8*)TXPacket)); //1ms
		}

	} else { //take a break and try to receive data in 1 ms later
		wait_count +=1;
		usleep(100);
	}

	if(wait_count >= 10000) { //if master don't answer for 1000ms, this means the system was reset or failed. Try to configure again!
		 send_emptyGatePacket_status = 0;
		 *Config_status = 0;
		 wait_count = 0;
	}

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
void Write_data_to_Mem(u8* DataBuffer, int datasize, u8* MEM_BASE_ADDRESS){

	for(int i = 0; i< datasize; i++){
		MEM_BASE_ADDRESS[i] = DataBuffer[i];
	}

}

/*void Read_data_from_Mem(u8* DataBuffer, int datalength, u8* MEM_BASE_ADDRESS){

	for(int i = 0; i< datalength; i++){
		 DataBuffer[i] = MEM_BASE_ADDRESS[i];
	}

}*/

u8 increaseNum(u8 number) {
	if (number < 0xFF) {
		number += 0x01;
	} else {
		number = 0x00;
	}
	return number;
}






