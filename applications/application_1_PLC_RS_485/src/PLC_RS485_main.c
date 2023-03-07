/*
 * PLC_main.c
 *
 *  Created on: 08.08.2022
 *      Author: Ha
 */


#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>

#include "xparameters.h"
#include "xuartlite.h"
#include "xil_exception.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xil_types.h"

#include "custom_definitions.h"
#include "default_types.h"
#include "diode_PLC_functions.h"
#include "shared_memory.h"
#include "diode_uartlite.h"
#include "others.h"


/**************************** GLOBAL VARIABLES *******************************/

int Status, error_count = 0;
int Normal_operation = 1;

INTC IntcInstance;	   				//The instance of the Interrupt Controller
XUartLite UartLiteInst;    			//The instance of the UartLite Device
XGpio   rx_disnable, tx_enable, Wire1, Wire2;

/*
 * Set up some control values for Pmod RS-485
 */
volatile int TotalSentCount;
volatile int TotalReceivedCount;

PmodRS485_Control Pmod_Control ={&TotalSentCount, &TotalReceivedCount, &rx_disnable, &tx_enable};

/*
 * Set up some status values for initialization phase and configuration phase on PiBridge
 */
Init_Config_s Init_Config_status = {0};

/*
 * Custom error message was used because not all errors are
 * included by xstatus.h. Define more on default_types.h
 * for your own purposes
 */
HRESULT hr = SYSTEM_SUCCESS;


int main()
{

	/************************** INITIALIZE GPIO PINS ******************************/

	XGpio_Initialize(&Wire1, XPAR_AXI_GPIO_PLC_RS485_WIRE1_DEVICE_ID); //both Wire 1 and Wire 2 are set bay default as input in Vivado IP Block
	XGpio_Initialize(&Wire2, XPAR_AXI_GPIO_PLC_RS485_WIRE2_DEVICE_ID);

	XGpio_SetDataDirection(&Wire2, 1, 0);
	XGpio_DiscreteWrite(&Wire2, 1, 0); 						//make sure that wire 2 is input low so the pulse can occur
	XGpio_SetDataDirection(&Wire2, 1, 1);


	XGpio_Initialize(Pmod_Control.rx_disnable_Ptr, XPAR_AXI_GPIO_PLC_RS485_UART_RX_DEVICE_ID);
	XGpio_Initialize(Pmod_Control.tx_enable_Ptr, XPAR_AXI_GPIO_PLC_RS485_UART_TX_DEVICE_ID);
	XGpio_DiscreteWrite(Pmod_Control.rx_disnable_Ptr, 1, 0);
	XGpio_DiscreteWrite(Pmod_Control.tx_enable_Ptr, 1, 0);


	/************************** INITIALIZE UART DRIVER ******************************/

	Status = XUartLite_Initialize(&UartLiteInst, UARTLITE_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XUartLite_SelfTest(&UartLiteInst);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the UartLite to the interrupt subsystem such that interrupts
	 * can occur.
	 */
	Status = UartLiteSetupIntrSystem(&IntcInstance, &UartLiteInst, UARTLITE_IRPT_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handlers for the UartLite that will be called from the
	 * interrupt context when data has been sent and received,
	 * specify a pointer to the UartLite driver instance as the callback
	 * reference so the handlers are able to access the instance data.
	 */
	XUartLite_SetSendHandler(&UartLiteInst, UartLiteSendHandler, &UartLiteInst);
	XUartLite_SetRecvHandler(&UartLiteInst, UartLiteRecvHandler, &UartLiteInst);

	/*
	 * Enable the interrupt of the UartLite so that the interrupts
	 * will occur.
	 */
	XUartLite_EnableInterrupt(&UartLiteInst);

	/************************** COMMUNICATE ON PIBRIDGE ******************************/

	while(Normal_operation){
		/*
		 * Wait until the pulse occurred. The pulse is created by RevPi Master
		 * module to inform the Slaves about the start of initialization phase
		 */
		while(!Init_Config_status.Puls_detected){
			Puls_detect(&Wire1, &Wire2, &Init_Config_status);
		}

		/*
		 * After the pulse have occurred. The initialization phase
		 * on PiBridge will be started. The Data Diode collects informations
		 * of all other devices as well as will be initialized with RevPi Master
		 */
		while(!Init_Config_status.Infor_exchanged){
		Collect_Information_Devices(&Wire1, &Wire2, &Init_Config_status, &UartLiteInst, Pmod_Control);
		}

		/*
		 * After the pulse have occurred and the initialization phase is done,
		 * the configuration phase and the cyclically data exchange starts in
		 * function Read_PiBridge_Write_OCM().
		 */

		while(Init_Config_status.Cyclic_Exchange){
			Status = Read_PiBridge_Write_MDBRAM(&Init_Config_status, &UartLiteInst, Pmod_Control, &error_count);

			/*
			 * Handle with return value of the function Read_PiBridge_Write_OCM().
			 */
			if (Status == SYSTEM_RESET) {
				//program0: OT system reset
				Reset_Variables();
			}
			else if ((Status == SYSTEM_FAILED)&&(error_count <= MAX_TRY_IF_ERROR)) {
				//program0: OT system error: Trying to join the data exchange phase again
				(&UartLiteInst)->ReceiveBuffer.RequestedBytes = 0;
				*Pmod_Control.TotalReceivedCount_Ptr = 0;
				Reset_FIFO(&UartLiteInst);

			}
			else if ((Status == SYSTEM_FAILED)&&(error_count > MAX_TRY_IF_ERROR)) {
				//program0: Too much system error: Exit
				Reset(&Init_Config_status.Cyclic_Exchange);
				Reset(&Normal_operation);

			}
			else if ((Status == SYSTEM_SUCCESS)&&(error_count != 0)){
				error_count = 0;
			}
		 }
	 }

	UartLiteDisableIntrSystem(&IntcInstance, UARTLITE_IRPT_INTR);
    return 0;

}
