/*
 * diode_ethernet_functions.h
 *
 *  Created on: 11.08.2022
 *      Author: Ha
 */

#ifndef SRC_DIODE_ETHERNET_FUNCTIONS_H_
#define SRC_DIODE_ETHERNET_FUNCTIONS_H_



void Write_Cyclically_Data_Exchange_PLC();
void Write_data_to_Mem(u8* DataBuffer, int datasize, u8* MEM_BASE_ADDRESS);
void Read_data_from_Mem(u8* DataBuffer, int datalength, u8* MEM_BASE_ADDRESS);
u8 increaseNum(u8 number);

#endif /* SRC_DIODE_ETHERNET_FUNCTIONS_H_ */
