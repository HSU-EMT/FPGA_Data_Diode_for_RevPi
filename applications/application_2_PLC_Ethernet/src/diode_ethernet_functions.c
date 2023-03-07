/*
 * diode_ethernet_functions.c
 *
 *  Created on: 11.08.2022
 *      Author: Ha
 */

#include "custom_definitions.h"
#include "xil_types.h"
#include "enc424j600.h"
#include <unistd.h>
#include "diode_ethernet_functions.h"



static u8 ReadBuffer[BUFFER_SIZE] = {0x00};
static u16 help_pointer;
extern u8 currentBank;
extern u16 nextPacketPointer;



void Write_Cyclically_Data_Exchange_PLC(){

	help_pointer = nextPacketPointer;
	nextPacketPointer = enc424j600PacketReceive(nextPacketPointer, ReadBuffer);
	if (help_pointer != nextPacketPointer) { //something is received

		if ((ReadBuffer[16] == 0x01)&&(ReadBuffer[17] == 0x80)){ //Command code for configuration packet

			Write_data_to_Mem(ReadBuffer, CONFIG_BUFFER_SIZE, MEM_SHARED_MEMORY_BASE_CONFIG);

		}

		if (ReadBuffer[16] == 0x02){ //command code for cyclically data exchange

			Write_data_to_Mem(ReadBuffer, BUFFER_SIZE, MEM_SHARED_MEMORY_BASE);
			*MEM_BASE_GATEWAY_PRESENT = 1;
		}
		else {

			*MEM_BASE_GATEWAY_PRESENT = 0;
		}

	}

}


void Write_data_to_Mem(u8* DataBuffer, int datasize, u8* MEM_BASE_ADDRESS){

	for(int i = 0; i< datasize; i++){
		MEM_BASE_ADDRESS[i] = DataBuffer[i];
	}

}

void Read_data_from_Mem(u8* DataBuffer, int datalength, u8* MEM_BASE_ADDRESS){

	for(int i = 0; i< datalength; i++){
		 DataBuffer[i] = MEM_BASE_ADDRESS[i];
	}

}

u8 increaseNum(u8 number) {
	if (number < 0xFF) {
		number += 0x01;
	} else {
		number = 0x00;
	}
	return number;
}






