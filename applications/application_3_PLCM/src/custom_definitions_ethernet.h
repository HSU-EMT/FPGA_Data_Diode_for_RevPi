/*
 * custom_definitions_ethernet.h
 *
 *  Created on: 29.09.2022
 *      Author: Ha
 */

#ifndef SRC_CUSTOM_DEFINITIONS_ETHERNET_H_
#define SRC_CUSTOM_DEFINITIONS_ETHERNET_H_

#include "xil_types.h"
#include "xparameters.h"	/* XPAR parameters */
#include "_mode_define.h"
#include "shared_memory.h"


#define SPI_DEVICE_ID					XPAR_AXI_QUAD_SPI_PLCM_DEVICE_ID
#define SPI_IRPT_INTR					XPAR_MICROBLAZE_PLCM_AXI_INTC_AXI_QUAD_SPI_PLCM_IP2INTC_IRPT_INTR

#ifndef INTC_DEVICE_ID
#define INTC_DEVICE_ID					XPAR_MICROBLAZE_PLCM_AXI_INTC_DEVICE_ID
#endif


#define INTC           XIntc
#define INTC_HANDLER   XIntc_InterruptHandler

// Promiscuous mode, if you want to receive all packets, even those which are not for you
#define PROMISCUOUS_MODE

/*
 *  This is the size of the buffer to be transmitted/received in this example.
 */
#define 	 GATEWAY_PRESENT_SIZE		 	1
#define      CONFIG_BUFFER_SIZE			 	60
#define      HEADER_SIZE 		         	31
#define      IO_PAYLOAD_SIZE				512
#define      AL_HEADER_SIZE		 	     	5
#define      MIN_PAYLOAD_SIZE		    	29
#define      CONFIG_HEADER_SIZE		    	26
#define      CONFIG_PAYLOAD_SIZE		    22
#define      IO_RECEIVE_BUFFER_SIZE 		(IO_PAYLOAD_SIZE + HEADER_SIZE)

#ifdef MODE1
#define 	 GATEWAY_DIODE_ID		 		0x004F//79
#else //mode 2
#define 	 GATEWAY_DIODE_ID		 		0x0063//99
#endif


#pragma pack(push,1)
typedef struct PacketTX_format{
		// Link Layer
		u8 Dest[6];
		u8 Src[6];
		struct{
		u16 GatewayID;
		u8 Ack;
		u8 Counter;
		// Transport Layer
		u16 Cmd;
		u16 PayloadLength;
		u32 Errors;
		u8 Version;
		u8 Reserved;
		// Application Layer
		u8 FBStatus;
		u16 Offset;
		u16 DataLength;
		// Data
		u8 Data[];
		}Fields;
	} PacketTX_format;
#pragma pack(pop)

#pragma pack(push,1)
typedef struct PacketConfig_format{
		// Link Layer
		u8 Dest[6];
		u8 Src[6];
		struct{
		u16 GatewayID;
		u8 Ack;
		u8 Counter;
		// Transport Layer
		u16 Cmd;
		u16 PayloadLength;
		u32 Errors;
		u8 Version;
		u8 Reserved;
		// Data
		u32  i32uSerialnumber;
		u16  i16uModulType;
		u16  i16uHW_Revision;
		u16  i16uSW_Major;
		u16  i16uSW_Minor;
		u32  i32uSVN_Revision;
	    u16  i16uFBS_InputLength;
	    u16  i16uFBS_OutputLength;
	    u16  i16uFeatureDescriptor;
	    //padding
		u8 Data[CONFIG_BUFFER_SIZE - CONFIG_HEADER_SIZE - CONFIG_PAYLOAD_SIZE];
		}Fields;
	} PacketConfig_format;
#pragma pack(pop)

#endif /* SRC_CUSTOM_DEFINITIONS_ETHERNET_H_ */
