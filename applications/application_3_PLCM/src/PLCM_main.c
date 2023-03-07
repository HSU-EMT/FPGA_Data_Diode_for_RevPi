/*
 * MPLC_main.c
 *
 *  Created on: 09.08.2022
 *      Author: Ha
 */


#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>


#include "xparameters.h"
#include "xspi.h"
#include "xuartlite.h"
#include "xil_exception.h"
#include "xgpio.h"
#include "xstatus.h"
#include "xil_printf.h"
#include "xil_types.h"

#include "custom_definitions_rs485.h"
#include "default_types.h"
#include "shared_memory.h"
#include "diode_uartlite.h"
#include "others.h"

#include "diode_ethernet_functions.h"
#include "custom_definitions_ethernet.h"
#include "diode_plcm_functions.h"
#include "spi_driver.h"
#include "enc424j600.h"

#include "_mode_define.h"



/************************** GLOBAL VARIABLES ******************************/


int Status, error_count = 0;
int Device_count = 0;
int Infor_exchanged = 0;
int config_count = 0;
int Normal_operation = 1;
int real_modul_initialized = 0;

u8 DataDiode_address = 0;
u8 Device_address = 0;
u8 Command, ReqRes;

INTC IntcInstance;	      /* The instance of the Interrupt Controller */
XUartLite UartLiteInst;
XSpi  SpiInstance;	 /* The instance of the SPI device */
XGpio   rx_disnable, tx_enable, Wire1, Wire2;

/*
 * Set up some control values for Pmod RS-485
 */
volatile int TotalSentCount;
volatile int TotalReceivedCount;
PmodRS485_Control Pmod_Control ={&TotalSentCount, &TotalReceivedCount, &rx_disnable, &tx_enable};


/*
 * Set up some control values for Pmod of Ethernet
 */
volatile int TransferInProgress;
// Internal MAC level variables and flags.
u8 currentBank;
u16 nextPacketPointer;
int Error;
int Ethernet_Config_status = 0;



/*
 * Set up some status values for initialization phase and configuration phase on PiBridge
 */
Init_Config_s Init_Config_status = {0};


int main()
{

	/************************** INITIALIZE GPIO PINS ******************************/



	XGpio_Initialize(&Wire1, XPAR_AXI_GPIO_PLCM_WIRE1_DEVICE_ID); //both Wire 1 and Wire 2 are set bay default as input in Vivado IP Block
	XGpio_Initialize(&Wire2, XPAR_AXI_GPIO_PLCM_WIRE2_DEVICE_ID);

	XGpio_SetDataDirection(&Wire2, 1, 0);
	XGpio_DiscreteWrite(&Wire2, 1, 0); 						//make sure that wire 2 is input low so the pulse can occur
	XGpio_SetDataDirection(&Wire2, 1, 1);


	XGpio_Initialize(Pmod_Control.rx_disnable_Ptr, XPAR_AXI_GPIO_PLCM_UART_RX_DEVICE_ID);
	XGpio_Initialize(Pmod_Control.tx_enable_Ptr, XPAR_AXI_GPIO_PLCM_UART_TX_DEVICE_ID);
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

	/************************** INITIALIZE SPI DRIVER (FOR ETHERNET) ******************************/

	Status = XSpi_Initialize(&SpiInstance, SPI_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Perform a self-test to ensure that the hardware was built correctly.
	 */
	Status = XSpi_SelfTest(&SpiInstance);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup some customized settings for SPI.
	 */
	if ((&SpiInstance)->SpiMode != XSP_STANDARD_MODE) {
		return XST_SUCCESS;
	}

	Status = XSpi_SetOptions(&SpiInstance, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION
 					);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	Status = XSpi_SetSlaveSelect(&SpiInstance, 0x00000001);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

/*
	Status = SpiIntr_Init(&IntcInstance, &SpiInstance, SPI_DEVICE_ID, SPI_IRPT_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}
*/



	/************************** INITIALIZE INTERRUPT SYSTEM ******************************/

	Status = InterruptSystemSetup(&IntcInstance, &UartLiteInst, UARTLITE_IRPT_INTR, &SpiInstance, SPI_IRPT_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/************************** INITIALIZE Enc424j600 driver for the Pmod NIC-100 (which uses SPI Interface) ******************************/

	/*
	 * Init Enc424j600 driver for the Pmod NIC-100
	 */
	enc424j600Init();
	/*
	 * Init own MAC address for Pmod NIC-100
	 */
	enc424j600SetMACAddr();

	/*
	 * Init Packet for transmitting
	 */
#ifdef MODE1
u16      PAYLOAD_SIZE = 512;
#else
u16      DATA_SIZE = ((*MEM_TOTAL_DATA_NUM) + IO_PAYLOAD_SIZE*((*MEM_BASE_GATEWAY_PRESENT) + (*MEM_BASE_GATEWAY_PRESENT_B)));
u16      PAYLOAD_SIZE = ((MIN_PAYLOAD_SIZE>DATA_SIZE)?MIN_PAYLOAD_SIZE:DATA_SIZE);
#endif

	PacketConfig_format* GatePacketConfig_Ptr = Init_ConfigPacket_Layers(PAYLOAD_SIZE);

	PacketTX_format* TXPacket_Ptr = Init_Packet_Layers(PAYLOAD_SIZE);

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
		 * After the pulse have occurred. The initialization phase on PiBridge
		 * will be started. The Data Diode emulates all devices in OT and uses
		 * data saved on the shared memory to initialize with RevPi Master
		 */
		Init_real_device(&Init_Config_status, &UartLiteInst, Pmod_Control);

		XGpio_SetDataDirection(&Wire2, 1, 1);
		usleep(100);
		XGpio_SetDataDirection(&Wire1, 1, 1);
		usleep(1000);


		/*
		 * After the pulse have occurred and the initialization phase is done,
		 * the configuration phase starts. Try to compare the configuration of 2 systems
		 */
		Status = Configuration_Comparing(&Init_Config_status, &UartLiteInst, Pmod_Control);
		if (Status == CONFIG_FAILED) {
			xil_printf("Configuration failed. The system in LAN must be identical the system in WAN: Exit");
			Reset(&Init_Config_status.Puls_detected);
			Reset(&Normal_operation);
		}
		else if (Status == SYSTEM_RESET) {
			xil_printf("IT system reset\r\n");
			Reset_Variables();
		}

		Init_Config_status.Puls_detected = 0;
		while((Init_Config_status.All_configured)&&(!Init_Config_status.Puls_detected)){



		Status = Exchange_Data(&Wire1, &Wire2, &Init_Config_status, &Ethernet_Config_status, TXPacket_Ptr, GatePacketConfig_Ptr);
			/*
			 * Handle with return value of the function Read_PiBridge_Write_OCM().
			 */
			if (Status == SYSTEM_RESET) {
					xil_printf("IT system reset\r\n");
					Reset_Variables();
				}

		}
	 }

	UartLiteDisableIntrSystem(&IntcInstance, UARTLITE_IRPT_INTR);
	SpiDisableIntrSystem(&IntcInstance, SPI_IRPT_INTR);

    return 0;

}




