/*
 * spi_test_main.c
 *
 *  Created on: 10.08.2022
 *      Author: Ha
 */


/***************************** Include Files *********************************/

#include "xparameters.h"	/* XPAR parameters */
#include "xspi.h"		/* SPI device driver */
#include "xil_exception.h"
#include "xil_printf.h"

#include "xintc.h"
#include "custom_definitions.h"
#include "spi_driver.h"
#include "xstatus.h"
#include <unistd.h>
#include "enc424j600.h"
#include "diode_ethernet_functions.h"


/************************** Variable Definitions *****************************/

INTC Intc;	 /* The instance of the Interrupt Controller */
XSpi  SpiInstance;	 /* The instance of the SPI device */

int Operation = 1;
int Config_status = 0;
int Error;
volatile int TransferInProgress;


// Internal MAC level variables and flags.
u8 currentBank;
u16 nextPacketPointer;

int main(void)
{

	int Status;

	/*
	 * Init SPI Interface
	 */
	Status = SpiIntr_Init(&Intc, &SpiInstance, SPI_DEVICE_ID, SPI_IRPT_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Init Enc424j600 driver for the Pmod NIC-100
	 */
	enc424j600Init();
	/*
	 * Init own MAC address for Pmod NIC-100
	 */
	//enc424j600SetMACAddr();


	while(Operation){

	Write_Cyclically_Data_Exchange_PLC();

	}

	SpiDisableIntrSystem(&Intc, SPI_IRPT_INTR);
	return XST_SUCCESS;
}





