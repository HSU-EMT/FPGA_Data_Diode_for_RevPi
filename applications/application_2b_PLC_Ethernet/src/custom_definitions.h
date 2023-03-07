/*
 * custom_definitions.h
 *
 *  Created on: 10.08.2022
 *      Author: Ha
 */

#ifndef SRC_CUSTOM_DEFINITIONS_H_
#define SRC_CUSTOM_DEFINITIONS_H_


#include "xil_types.h"
#include "xparameters.h"	/* XPAR parameters */


#define SPI_DEVICE_ID						XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_DEVICE_ID
#define INTC_DEVICE_ID						XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_DEVICE_ID
#define SPI_IRPT_INTR						XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_AXI_QUAD_SPI_PLC_ETHERNET_B_IP2INTC_IRPT_INTR



#define INTC           XIntc
#define INTC_HANDLER   XIntc_InterruptHandler

// Promiscuous mode, if you want to receive all packets, even those which are not for you
#define PROMISCUOUS_MODE

/*
 *  This is the size of the buffer to be transmitted/received in this example.
 */
#define 	 GATEWAY_PRESENT_SIZE		 1
#define      CONFIG_BUFFER_SIZE			 	60
#define      BUFFER_SIZE			     	544 // 1 byte more for packet from KUNBUS gateway (544) compare to packet from RevPi (543)
#define      HEADER_SIZE 		         	31
#define      PAYLOAD_SIZE				 	512

#define MEM_BASE_GATEWAY_PRESENT			((u8 *)(XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_BASEADDR))
#define MEM_SHARED_MEMORY_BASE_CONFIG		((u8 *)(XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_BASEADDR + GATEWAY_PRESENT_SIZE))
#define MEM_SHARED_MEMORY_BASE				((u8 *)(XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_BASEADDR + GATEWAY_PRESENT_SIZE + CONFIG_BUFFER_SIZE))


#endif /* SRC_CUSTOM_DEFINITIONS_H_ */
