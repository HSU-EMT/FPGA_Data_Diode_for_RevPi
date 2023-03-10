/*
 * custom_definition.h
 *
 *  Created on: 25.01.2022
 *      Author: Ha
 */

#ifndef __CUSTOM_DEFINITIONS_H_
#define __CUSTOM_DEFINITIONS_H_

#include <stdio.h>

#include "xparameters.h"
#include "xgpio.h"
#include "xintc.h"



/************************** Constant Definitions *****************************/


#define UARTLITE_DEVICE_ID	    XPAR_AXI_UARTLITE_PLC_RS485_DEVICE_ID
#define UARTLITE_IRPT_INTR	    XPAR_MICROBLAZE_PLC_RS485_AXI_INTC_AXI_UARTLITE_PLC_RS485_INTERRUPT_INTR
#define INTC_DEVICE_ID			XPAR_MICROBLAZE_PLC_RS485_AXI_INTC_DEVICE_ID


/************************** Custom Definitions *****************************/


#define BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_REQUEST		8
#define BYTE_SIZE_GET_DEVICE_INFOR_GATEWAY_RESPONSE		30
#define BYTE_SIZE_SET_ADDRESS_GATEWAY_REQUEST			8
#define BYTE_SIZE_SET_ADDRESS_GATEWAY_RESPONSE			8

#define BYTE_SIZE_CONFIG_GATEWAY_RESPONSE				3
#define BYTE_SIZE_CONFIG_RESPONSE					3
#define BYTE_SIZE_DATA_EXCHANGE_GATEWAY_RESPONSE 		33
#define BYTE_SIZE_NUTZ_DATA_EXCHANGE_GATEWAY_RESPONSE 	30
#define BYTE_SIZE_BROADCAST   						8
#define BYTE_SIZE_HEADER   						    2
#define BYTE_SIZE_HEADER_INIT   					7
#define BYTE_SIZE_TOTAL_INIT_REQ   					8
#define BYTE_SIZE_WRITE_REQ_STEP   					4
#define BYTE_SIZE_RESET_SIGNAL						3
#define IGNORED_DATA_BUFFER_SIZE					100

#define MAX_DEVICE_NUM    						    10
#define MAX_TRY_IF_ERROR    						5
#define MAX_WAIT_TIME    							1 //seconds

#define SMALLEST_ADDRESS 							0x1B
#define BIGGEST_ADDRESS 							0x24

#define ADDRESS_MASK 								0x3F //last 6 bits
#define DATA_LENGTH_MASK 							0x1F //last 5 bits
#define COMMAND_MASK 							    0xE0 //first 3 bits
#define RESPONSE_MASK 							    0x80 //first 1 bits
#define INFOR_EXCHANGED_CODE    					0x0A
#define ADDRESS_SETTING_CODE    					0x14
#define ADDRESS_SETTING_CODE_SUCCESS    			0x40
#define DIO_CONFIG_CODE    							0x20
#define INIT_RES_START_CODE    						0x00
#define INIT_REQ_START_CODE    						0x4D
#define BROADCAST_START_CODE    					0xFF

#define IOP_TYP1_CMD_DATA       					0 //command for cyclic data exchange DIO no counter/encoder
#define IOP_TYP1_CMD_CFG        					1 //command for configuration module type 1 like DIO module
#define IOP_TYP1_CMD_DATA2							2 //command for cyclic data exchange DIO with counter/encoder

#define INTC										XIntc
#define INTC_HANDLER								XIntc_InterruptHandler

/************************** Custom Structures *****************************/


/*
 * This typedef contains control informations for the Pmod RS-485.
 */
typedef struct _PmodRS485_Control {
	volatile int *TotalSentCount_Ptr; 	  /* Number of bytes are sent through Pmod RS-485 */
	volatile int *TotalReceivedCount_Ptr; /* Number of bytes are received through Pmod RS-485 */
	XGpio 		 *rx_disnable_Ptr;        /* Disable receive channel of Pmod RS-485 */
	XGpio 		 *tx_enable_Ptr;          /* Enable transmit channel of Pmod RS-485 */
} PmodRS485_Control;

/*
 * This typedef contains informations for the initialization (devices infors exchange and address setting)
 * and configuration of devices on PiBridge
 */
typedef struct _Init_Config_status {
	int Puls_detected;
	int Infor_exchanged;
	int Device_count;
	int All_emulated;
	int Config_Res_Paket_count;
	int Config_Req_Paket_count;
	int All_configured;
	int Cyclic_Exchange;
}Init_Config_s;



#endif /* __CUSTOM_DEFINITIONS_H_ */
