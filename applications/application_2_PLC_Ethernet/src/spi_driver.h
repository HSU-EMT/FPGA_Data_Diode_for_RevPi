/*
 * spi_driver.h
 *
 *  Created on: 10.08.2022
 *      Author: Ha
 */

#ifndef SRC_SPI_DRIVER_H_
#define SRC_SPI_DRIVER_H_




/************************** Function Prototypes ******************************/

int SpiIntr_Init(INTC *IntcInstancePtr, XSpi *SpiInstancePtr,
			u16 SpiDeviceId, u16 SpiIntrId);
void SpiIntrHandler(void *CallBackRef, u32 StatusEvent, u32 ByteCount);

int SpiSetupIntrSystem(INTC *IntcInstancePtr, XSpi *SpiInstancePtr,
					u16 SpiIntrId);

void SpiDisableIntrSystem(INTC *IntcInstancePtr, u16 SpiIntrId);






#endif /* SRC_SPI_DRIVER_H_ */
