
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = standalone
 PARAMETER OS_VER = 7.0
 PARAMETER PROC_INSTANCE = microblaze_PLC_RS485
 PARAMETER stdin = axi_uartlite_PLC_RS485
 PARAMETER stdout = axi_uartlite_PLC_RS485
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER DRIVER_VER = 2.9
 PARAMETER HW_INSTANCE = microblaze_PLC_RS485
 PARAMETER compiler_flags =  -mlittle-endian -mxl-soft-mul -mcpu=v11.0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = AXI_GPIO_PLC_RS485_Uart_Rx
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = AXI_GPIO_PLC_RS485_Uart_Tx
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = AXI_GPIO_PLC_RS485_Wire1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER DRIVER_VER = 4.4
 PARAMETER HW_INSTANCE = AXI_GPIO_PLC_RS485_Wire2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = axi_bram_ctrl_PLC_RS485
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER DRIVER_VER = 3.2
 PARAMETER HW_INSTANCE = axi_uartlite_PLC_RS485
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER DRIVER_VER = 3.9
 PARAMETER HW_INSTANCE = microblaze_PLC_RS485_axi_intc
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = microblaze_PLC_RS485_local_memory_dlmb_bram_if_cntlr
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = bram
 PARAMETER DRIVER_VER = 4.3
 PARAMETER HW_INSTANCE = microblaze_PLC_RS485_local_memory_ilmb_bram_if_cntlr
END


