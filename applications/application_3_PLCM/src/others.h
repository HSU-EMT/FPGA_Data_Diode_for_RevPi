/*
 * others.h
 *
 *  Created on: 28.06.2022
 *      Author: Ha
 */

#ifndef SRC_OTHERS_H_
#define SRC_OTHERS_H_

#include "xspi.h"

#define CLOCK_PRO_MS (XPAR_MICROBLAZE_CORE_CLOCK_FREQ_HZ/1000)

void Reset_Variables();
void Reset(int *val);
int Pmod_Wait_Receive_Data(PmodRS485_Control Pmod_Control, XUartLite *UartLiteInstPtr, unsigned int byte_num);
int Pmod_Wait_Send_Data(PmodRS485_Control Pmod_Control, XUartLite *UartLiteInstPtr, unsigned int byte_num);
void Reset_FIFO(XUartLite *UartLiteInstPtr);


int InterruptSystemSetup(INTC *IntcInstancePtr,
		XUartLite *UartLiteInstPtr,
		u16 UartLiteIntrId,
		XSpi *SpiInstancePtr,
		u16 SpiIntrId);
#endif /* SRC_OTHERS_H_ */
