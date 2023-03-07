/*
 * diode_core1_functions.h
 *
 *  Created on: 29.06.2022
 *      Author: Ha
 */

#ifndef __DIODE_PLCM_FUNCTIONS_H_
#define __DIODE_PLCM_FUNCTIONS_H_

#include <stdio.h>
#include <unistd.h>
#include "xuartlite.h"
#include "xil_printf.h"
#include "xgpio.h"

#include "custom_definitions_rs485.h"
#include "custom_definitions_ethernet.h"

void Puls_detect(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status);
void Init_real_device(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control);
void DataDiode_Infor_Exchange(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control);
void DataDiode_Adress_Setting(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status, u8 *DataDiode_address_Ptr, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control);
void DataDiode_Response_to_master(u8 DataDiode_address, u8 Command, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control);
void Response_to_master(XUartLite *UartLiteInstPtr, u8* MEM_BASE_ADDRESS, PmodRS485_Control Pmod_Control);
int Read_OCM_Write_PiBridge(Init_Config_s *Init_Config_status, u8 DataDiode_address, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control, int *error_count);
int Configuration_Comparing(Init_Config_s *Init_Config_status, XUartLite *UartLiteInstPtr, PmodRS485_Control Pmod_Control);
int Exchange_Data(XGpio *Wire1_Ptr, XGpio *Wire2_Ptr, Init_Config_s *Init_Config_status, int *Ethernet_Config_status_Ptr, PacketTX_format *TXPacket_Ptr, PacketConfig_format* GatePacketConfig_Ptr);
void Write_Real_Request_to_Diode(u8 Device_address, u8* MEM_BASE_ADDRESS, u8* ResponseBuffer_Data_Exchange_Diode);
u8 Crc_Cal(u8 * pi8uFrame_p, u16 i16uLen_p);
int Read_Shared_Memory(u8* DataBuffer, u8* MEM_BASE_ADDRESS, int device_num);

#endif /* __DIODE_PLCM_FUNCTIONS_H_ */
