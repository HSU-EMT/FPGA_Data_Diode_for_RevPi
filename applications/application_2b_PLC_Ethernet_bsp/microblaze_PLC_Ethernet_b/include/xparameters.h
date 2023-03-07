#ifndef XPARAMETERS_H   /* prevent circular inclusions */
#define XPARAMETERS_H   /* by using protection macros */

/* Definitions for bus frequencies */
#define XPAR_CPU_M_AXI_DP_FREQ_HZ 100000000
/******************************************************************/

/* Canonical definitions for bus frequencies */
/******************************************************************/

#define XPAR_CPU_CORE_CLOCK_FREQ_HZ 100000000
#define XPAR_MICROBLAZE_CORE_CLOCK_FREQ_HZ 100000000

/******************************************************************/


/* Definitions for peripheral MICROBLAZE_PLC_ETHERNET_B */
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ADDR_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ADDR_TAG_BITS 17
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ALLOW_DCACHE_WR 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ALLOW_ICACHE_WR 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_AREA_OPTIMIZED 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ASYNC_INTERRUPT 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ASYNC_WAKEUP 3
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_AVOID_PRIMITIVES 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_BASE_VECTORS 0x0000000000000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_BRANCH_TARGET_CACHE_SIZE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_CACHE_BYTE_SIZE 8192
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DADDR_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DATA_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_ADDR_TAG 17
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_ALWAYS_USED 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_BASEADDR 0x00000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_BYTE_SIZE 8192
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_DATA_WIDTH 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_FORCE_TAG_LUTRAM 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_HIGHADDR 0x3FFFFFFF
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_LINE_LEN 4
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_USE_WRITEBACK 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DCACHE_VICTIMS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DC_AXI_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_COUNTER_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_ENABLED 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_EVENT_COUNTERS 5
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_EXTERNAL_TRACE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_INTERFACE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_LATENCY_COUNTERS 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_PROFILE_SIZE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_TRACE_ASYNC_RESET 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DEBUG_TRACE_SIZE 8192
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DIV_ZERO_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DP_AXI_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_DYNAMIC_BUS_SIZING 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_D_AXI 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_D_LMB 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_D_LMB_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ECC_USE_CE_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_EDGE_IS_POSITIVE 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ENABLE_DISCRETE_PORTS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ENDIANNESS 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_FAULT_TOLERANT 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_FPU_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_FREQ 100000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_FSL_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_FSL_LINKS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_IADDR_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_ALWAYS_USED 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_BASEADDR 0x00000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_DATA_WIDTH 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_FORCE_TAG_LUTRAM 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_HIGHADDR 0x3FFFFFFF
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_LINE_LEN 4
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_STREAMS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ICACHE_VICTIMS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_IC_AXI_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_ILL_OPCODE_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_IMPRECISE_EXCEPTIONS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_INSTR_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_INTERCONNECT 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_INTERRUPT_IS_EDGE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_INTERRUPT_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_IP_AXI_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_I_AXI 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_I_LMB 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_I_LMB_MON 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_LMB_DATA_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_LOCKSTEP_MASTER 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_LOCKSTEP_SELECT 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_LOCKSTEP_SLAVE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M0_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M0_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M1_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M1_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M2_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M2_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M3_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M3_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M4_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M4_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M5_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M5_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M6_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M6_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M7_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M7_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M8_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M8_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M9_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M9_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M10_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M10_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M11_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M11_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M12_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M12_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M13_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M13_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M14_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M14_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M15_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M15_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_MMU_DTLB_SIZE 4
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_MMU_ITLB_SIZE 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_MMU_PRIVILEGED_INSTR 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_MMU_TLB_ACCESS 3
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_MMU_ZONES 16
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_ARUSER_WIDTH 5
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_AWUSER_WIDTH 5
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_BUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_EXCLUSIVE_ACCESS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_RUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_USER_SIGNALS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_USER_VALUE 31
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DC_WUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DP_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DP_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DP_EXCLUSIVE_ACCESS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_DP_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_D_BUS_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_ARUSER_WIDTH 5
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_AWUSER_WIDTH 5
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_BUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_RUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_USER_SIGNALS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_USER_VALUE 31
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IC_WUSER_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IP_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IP_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_IP_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_M_AXI_I_BUS_EXCEPTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUMBER_OF_PC_BRK 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUMBER_OF_RD_ADDR_BRK 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUMBER_OF_WR_ADDR_BRK 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUM_SYNC_FF_CLK 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUM_SYNC_FF_CLK_DEBUG 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUM_SYNC_FF_CLK_IRQ 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUM_SYNC_FF_DBG_CLK 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_NUM_SYNC_FF_DBG_TRACE_CLK 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_OPCODE_0X0_ILLEGAL 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_OPTIMIZATION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_PC_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_PIADDR_SIZE 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_PVR 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_PVR_USER1 0x00
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_PVR_USER2 0x00000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR 0x00000000
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_BIP 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_DCE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_EE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_EIP 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_ICE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_RESET_MSR_IE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S0_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S0_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S1_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S1_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S2_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S2_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S3_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S3_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S4_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S4_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S5_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S5_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S6_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S6_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S7_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S7_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S8_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S8_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S9_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S9_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S10_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S10_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S11_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S11_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S12_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S12_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S13_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S13_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S14_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S14_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S15_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_S15_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_SCO 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_TRACE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_UNALIGNED_EXCEPTIONS 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_BARREL 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_BRANCH_TARGET_CACHE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_CONFIG_RESET 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_DCACHE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_DIV 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_EXTENDED_FSL_INSTR 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_EXT_BRK 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_EXT_NM_BRK 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_FPU 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_HW_MUL 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_ICACHE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_INTERRUPT 2
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_MMU 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_MSR_INSTR 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_NON_SECURE 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_PCMP_INSTR 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_REORDER_INSTR 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_USE_STACK_PROTECTION 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_COMPONENT_NAME design_1_microblaze_PLC_Ethernet_0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_EDK_IPTYPE PROCESSOR
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_EDK_SPECIAL microblaze
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_G_TEMPLATE_LIST 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_B_G_USE_EXCEPTIONS 0

/******************************************************************/

#define XPAR_CPU_ID 2
#define XPAR_MICROBLAZE_ID 2
#define XPAR_MICROBLAZE_ADDR_SIZE 32
#define XPAR_MICROBLAZE_ADDR_TAG_BITS 17
#define XPAR_MICROBLAZE_ALLOW_DCACHE_WR 1
#define XPAR_MICROBLAZE_ALLOW_ICACHE_WR 1
#define XPAR_MICROBLAZE_AREA_OPTIMIZED 0
#define XPAR_MICROBLAZE_ASYNC_INTERRUPT 1
#define XPAR_MICROBLAZE_ASYNC_WAKEUP 3
#define XPAR_MICROBLAZE_AVOID_PRIMITIVES 0
#define XPAR_MICROBLAZE_BASE_VECTORS 0x0000000000000000
#define XPAR_MICROBLAZE_BRANCH_TARGET_CACHE_SIZE 0
#define XPAR_MICROBLAZE_CACHE_BYTE_SIZE 8192
#define XPAR_MICROBLAZE_DADDR_SIZE 32
#define XPAR_MICROBLAZE_DATA_SIZE 32
#define XPAR_MICROBLAZE_DCACHE_ADDR_TAG 17
#define XPAR_MICROBLAZE_DCACHE_ALWAYS_USED 0
#define XPAR_MICROBLAZE_DCACHE_BASEADDR 0x00000000
#define XPAR_MICROBLAZE_DCACHE_BYTE_SIZE 8192
#define XPAR_MICROBLAZE_DCACHE_DATA_WIDTH 0
#define XPAR_MICROBLAZE_DCACHE_FORCE_TAG_LUTRAM 0
#define XPAR_MICROBLAZE_DCACHE_HIGHADDR 0x3FFFFFFF
#define XPAR_MICROBLAZE_DCACHE_LINE_LEN 4
#define XPAR_MICROBLAZE_DCACHE_USE_WRITEBACK 0
#define XPAR_MICROBLAZE_DCACHE_VICTIMS 0
#define XPAR_MICROBLAZE_DC_AXI_MON 0
#define XPAR_MICROBLAZE_DEBUG_COUNTER_WIDTH 32
#define XPAR_MICROBLAZE_DEBUG_ENABLED 1
#define XPAR_MICROBLAZE_DEBUG_EVENT_COUNTERS 5
#define XPAR_MICROBLAZE_DEBUG_EXTERNAL_TRACE 0
#define XPAR_MICROBLAZE_DEBUG_INTERFACE 0
#define XPAR_MICROBLAZE_DEBUG_LATENCY_COUNTERS 1
#define XPAR_MICROBLAZE_DEBUG_PROFILE_SIZE 0
#define XPAR_MICROBLAZE_DEBUG_TRACE_ASYNC_RESET 0
#define XPAR_MICROBLAZE_DEBUG_TRACE_SIZE 8192
#define XPAR_MICROBLAZE_DIV_ZERO_EXCEPTION 0
#define XPAR_MICROBLAZE_DP_AXI_MON 0
#define XPAR_MICROBLAZE_DYNAMIC_BUS_SIZING 0
#define XPAR_MICROBLAZE_D_AXI 1
#define XPAR_MICROBLAZE_D_LMB 1
#define XPAR_MICROBLAZE_D_LMB_MON 0
#define XPAR_MICROBLAZE_ECC_USE_CE_EXCEPTION 0
#define XPAR_MICROBLAZE_EDGE_IS_POSITIVE 1
#define XPAR_MICROBLAZE_ENABLE_DISCRETE_PORTS 0
#define XPAR_MICROBLAZE_ENDIANNESS 1
#define XPAR_MICROBLAZE_FAULT_TOLERANT 0
#define XPAR_MICROBLAZE_FPU_EXCEPTION 0
#define XPAR_MICROBLAZE_FREQ 100000000
#define XPAR_MICROBLAZE_FSL_EXCEPTION 0
#define XPAR_MICROBLAZE_FSL_LINKS 0
#define XPAR_MICROBLAZE_IADDR_SIZE 32
#define XPAR_MICROBLAZE_ICACHE_ALWAYS_USED 0
#define XPAR_MICROBLAZE_ICACHE_BASEADDR 0x00000000
#define XPAR_MICROBLAZE_ICACHE_DATA_WIDTH 0
#define XPAR_MICROBLAZE_ICACHE_FORCE_TAG_LUTRAM 0
#define XPAR_MICROBLAZE_ICACHE_HIGHADDR 0x3FFFFFFF
#define XPAR_MICROBLAZE_ICACHE_LINE_LEN 4
#define XPAR_MICROBLAZE_ICACHE_STREAMS 0
#define XPAR_MICROBLAZE_ICACHE_VICTIMS 0
#define XPAR_MICROBLAZE_IC_AXI_MON 0
#define XPAR_MICROBLAZE_ILL_OPCODE_EXCEPTION 0
#define XPAR_MICROBLAZE_IMPRECISE_EXCEPTIONS 0
#define XPAR_MICROBLAZE_INSTR_SIZE 32
#define XPAR_MICROBLAZE_INTERCONNECT 2
#define XPAR_MICROBLAZE_INTERRUPT_IS_EDGE 0
#define XPAR_MICROBLAZE_INTERRUPT_MON 0
#define XPAR_MICROBLAZE_IP_AXI_MON 0
#define XPAR_MICROBLAZE_I_AXI 0
#define XPAR_MICROBLAZE_I_LMB 1
#define XPAR_MICROBLAZE_I_LMB_MON 0
#define XPAR_MICROBLAZE_LMB_DATA_SIZE 32
#define XPAR_MICROBLAZE_LOCKSTEP_MASTER 0
#define XPAR_MICROBLAZE_LOCKSTEP_SELECT 0
#define XPAR_MICROBLAZE_LOCKSTEP_SLAVE 0
#define XPAR_MICROBLAZE_M0_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M0_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M1_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M1_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M2_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M2_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M3_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M3_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M4_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M4_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M5_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M5_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M6_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M6_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M7_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M7_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M8_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M8_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M9_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M9_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M10_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M10_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M11_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M11_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M12_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M12_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M13_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M13_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M14_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M14_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_M15_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M15_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_MMU_DTLB_SIZE 4
#define XPAR_MICROBLAZE_MMU_ITLB_SIZE 2
#define XPAR_MICROBLAZE_MMU_PRIVILEGED_INSTR 0
#define XPAR_MICROBLAZE_MMU_TLB_ACCESS 3
#define XPAR_MICROBLAZE_MMU_ZONES 16
#define XPAR_MICROBLAZE_M_AXI_DC_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_DC_ARUSER_WIDTH 5
#define XPAR_MICROBLAZE_M_AXI_DC_AWUSER_WIDTH 5
#define XPAR_MICROBLAZE_M_AXI_DC_BUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_DC_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_DC_EXCLUSIVE_ACCESS 0
#define XPAR_MICROBLAZE_M_AXI_DC_RUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_DC_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_DC_USER_SIGNALS 0
#define XPAR_MICROBLAZE_M_AXI_DC_USER_VALUE 31
#define XPAR_MICROBLAZE_M_AXI_DC_WUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_DP_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_DP_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_DP_EXCLUSIVE_ACCESS 0
#define XPAR_MICROBLAZE_M_AXI_DP_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_D_BUS_EXCEPTION 0
#define XPAR_MICROBLAZE_M_AXI_IC_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_IC_ARUSER_WIDTH 5
#define XPAR_MICROBLAZE_M_AXI_IC_AWUSER_WIDTH 5
#define XPAR_MICROBLAZE_M_AXI_IC_BUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_IC_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_IC_RUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_IC_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_IC_USER_SIGNALS 0
#define XPAR_MICROBLAZE_M_AXI_IC_USER_VALUE 31
#define XPAR_MICROBLAZE_M_AXI_IC_WUSER_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_IP_ADDR_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_IP_DATA_WIDTH 32
#define XPAR_MICROBLAZE_M_AXI_IP_THREAD_ID_WIDTH 1
#define XPAR_MICROBLAZE_M_AXI_I_BUS_EXCEPTION 0
#define XPAR_MICROBLAZE_NUMBER_OF_PC_BRK 1
#define XPAR_MICROBLAZE_NUMBER_OF_RD_ADDR_BRK 0
#define XPAR_MICROBLAZE_NUMBER_OF_WR_ADDR_BRK 0
#define XPAR_MICROBLAZE_NUM_SYNC_FF_CLK 2
#define XPAR_MICROBLAZE_NUM_SYNC_FF_CLK_DEBUG 2
#define XPAR_MICROBLAZE_NUM_SYNC_FF_CLK_IRQ 1
#define XPAR_MICROBLAZE_NUM_SYNC_FF_DBG_CLK 1
#define XPAR_MICROBLAZE_NUM_SYNC_FF_DBG_TRACE_CLK 2
#define XPAR_MICROBLAZE_OPCODE_0X0_ILLEGAL 0
#define XPAR_MICROBLAZE_OPTIMIZATION 0
#define XPAR_MICROBLAZE_PC_WIDTH 32
#define XPAR_MICROBLAZE_PIADDR_SIZE 32
#define XPAR_MICROBLAZE_PVR 0
#define XPAR_MICROBLAZE_PVR_USER1 0x00
#define XPAR_MICROBLAZE_PVR_USER2 0x00000000
#define XPAR_MICROBLAZE_RESET_MSR 0x00000000
#define XPAR_MICROBLAZE_RESET_MSR_BIP 0
#define XPAR_MICROBLAZE_RESET_MSR_DCE 0
#define XPAR_MICROBLAZE_RESET_MSR_EE 0
#define XPAR_MICROBLAZE_RESET_MSR_EIP 0
#define XPAR_MICROBLAZE_RESET_MSR_ICE 0
#define XPAR_MICROBLAZE_RESET_MSR_IE 0
#define XPAR_MICROBLAZE_S0_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S0_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S1_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S1_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S2_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S2_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S3_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S3_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S4_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S4_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S5_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S5_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S6_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S6_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S7_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S7_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S8_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S8_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S9_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S9_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S10_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S10_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S11_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S11_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S12_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S12_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S13_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S13_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S14_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S14_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_S15_AXIS_DATA_WIDTH 32
#define XPAR_MICROBLAZE_S15_AXIS_PROTOCOL GENERIC
#define XPAR_MICROBLAZE_SCO 0
#define XPAR_MICROBLAZE_TRACE 0
#define XPAR_MICROBLAZE_UNALIGNED_EXCEPTIONS 0
#define XPAR_MICROBLAZE_USE_BARREL 0
#define XPAR_MICROBLAZE_USE_BRANCH_TARGET_CACHE 0
#define XPAR_MICROBLAZE_USE_CONFIG_RESET 0
#define XPAR_MICROBLAZE_USE_DCACHE 0
#define XPAR_MICROBLAZE_USE_DIV 0
#define XPAR_MICROBLAZE_USE_EXTENDED_FSL_INSTR 0
#define XPAR_MICROBLAZE_USE_EXT_BRK 0
#define XPAR_MICROBLAZE_USE_EXT_NM_BRK 0
#define XPAR_MICROBLAZE_USE_FPU 0
#define XPAR_MICROBLAZE_USE_HW_MUL 0
#define XPAR_MICROBLAZE_USE_ICACHE 0
#define XPAR_MICROBLAZE_USE_INTERRUPT 2
#define XPAR_MICROBLAZE_USE_MMU 0
#define XPAR_MICROBLAZE_USE_MSR_INSTR 0
#define XPAR_MICROBLAZE_USE_NON_SECURE 0
#define XPAR_MICROBLAZE_USE_PCMP_INSTR 0
#define XPAR_MICROBLAZE_USE_REORDER_INSTR 1
#define XPAR_MICROBLAZE_USE_STACK_PROTECTION 0
#define XPAR_MICROBLAZE_COMPONENT_NAME design_1_microblaze_PLC_Ethernet_0
#define XPAR_MICROBLAZE_EDK_IPTYPE PROCESSOR
#define XPAR_MICROBLAZE_EDK_SPECIAL microblaze
#define XPAR_MICROBLAZE_G_TEMPLATE_LIST 0
#define XPAR_MICROBLAZE_G_USE_EXCEPTIONS 0

/******************************************************************/


/******************************************************************/

/* Platform specific definitions */
#define PLATFORM_MB
 
/* Definitions for sleep timer configuration */
#define XSLEEP_TIMER_IS_DEFAULT_TIMER
 
 
/******************************************************************/
/* Definitions for driver BRAM */
#define XPAR_XBRAM_NUM_INSTANCES 3U

/* Definitions for peripheral AXI_BRAM_CTRL_PLC_ETHERNET_B */
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_DEVICE_ID 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_DATA_WIDTH 32U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_ECC 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_FAULT_INJECT 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_CE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_UE_FAILING_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_ECC_STATUS_REGISTERS 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_CE_COUNTER_WIDTH 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_ECC_ONOFF_REGISTER 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_WRITE_ACCESS 0U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_BASEADDR 0xC2000000U
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_HIGHADDR 0xC2001FFFU
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU  


/* Definitions for peripheral MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR */
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_DEVICE_ID 1U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_DATA_WIDTH 32U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_ECC 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_FAULT_INJECT 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_CE_FAILING_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_UE_FAILING_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_ECC_STATUS_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_CE_COUNTER_WIDTH 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_ECC_ONOFF_REGISTER 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_ECC_ONOFF_RESET_VALUE 1U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_WRITE_ACCESS 2U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_BASEADDR 0x00000000U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_HIGHADDR 0x0001FFFFU
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU  


/* Definitions for peripheral MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR */
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_DEVICE_ID 2U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_DATA_WIDTH 32U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_ECC 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_FAULT_INJECT 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_CE_FAILING_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_UE_FAILING_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_ECC_STATUS_REGISTERS 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_CE_COUNTER_WIDTH 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_ECC_ONOFF_REGISTER 0U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_ECC_ONOFF_RESET_VALUE 1U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_WRITE_ACCESS 2U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_BASEADDR 0x00000000U
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_HIGHADDR 0x0001FFFFU
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_S_AXI_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_S_AXI_CTRL_HIGHADDR 0xFFFFFFFFU  


/******************************************************************/

/* Canonical definitions for peripheral AXI_BRAM_CTRL_PLC_ETHERNET_B */
#define XPAR_BRAM_0_DEVICE_ID XPAR_AXI_BRAM_CTRL_PLC_ETHERNET_B_DEVICE_ID
#define XPAR_BRAM_0_DATA_WIDTH 32U
#define XPAR_BRAM_0_ECC 0U
#define XPAR_BRAM_0_FAULT_INJECT 0U
#define XPAR_BRAM_0_CE_FAILING_REGISTERS 0U
#define XPAR_BRAM_0_UE_FAILING_REGISTERS 0U
#define XPAR_BRAM_0_ECC_STATUS_REGISTERS 0U
#define XPAR_BRAM_0_CE_COUNTER_WIDTH 0U
#define XPAR_BRAM_0_ECC_ONOFF_REGISTER 0U
#define XPAR_BRAM_0_ECC_ONOFF_RESET_VALUE 0U
#define XPAR_BRAM_0_WRITE_ACCESS 0U
#define XPAR_BRAM_0_BASEADDR 0xC2000000U
#define XPAR_BRAM_0_HIGHADDR 0xC2001FFFU
#define XPAR_BRAM_0_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_BRAM_0_CTRL_HIGHADDR 0xFFFFFFFEU  

/* Canonical definitions for peripheral MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR */
#define XPAR_BRAM_1_DEVICE_ID XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_DLMB_BRAM_IF_CNTLR_DEVICE_ID
#define XPAR_BRAM_1_DATA_WIDTH 32U
#define XPAR_BRAM_1_ECC 0U
#define XPAR_BRAM_1_FAULT_INJECT 0U
#define XPAR_BRAM_1_CE_FAILING_REGISTERS 0U
#define XPAR_BRAM_1_UE_FAILING_REGISTERS 0U
#define XPAR_BRAM_1_ECC_STATUS_REGISTERS 0U
#define XPAR_BRAM_1_CE_COUNTER_WIDTH 0U
#define XPAR_BRAM_1_ECC_ONOFF_REGISTER 0U
#define XPAR_BRAM_1_ECC_ONOFF_RESET_VALUE 1U
#define XPAR_BRAM_1_WRITE_ACCESS 2U
#define XPAR_BRAM_1_BASEADDR 0x00000000U
#define XPAR_BRAM_1_HIGHADDR 0x0001FFFFU
#define XPAR_BRAM_1_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_BRAM_1_CTRL_HIGHADDR 0xFFFFFFFEU  

/* Canonical definitions for peripheral MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR */
#define XPAR_BRAM_2_DEVICE_ID XPAR_MICROBLAZE_PLC_ETHERNET_LOCAL_MEMORY_B_ILMB_BRAM_IF_CNTLR_DEVICE_ID
#define XPAR_BRAM_2_DATA_WIDTH 32U
#define XPAR_BRAM_2_ECC 0U
#define XPAR_BRAM_2_FAULT_INJECT 0U
#define XPAR_BRAM_2_CE_FAILING_REGISTERS 0U
#define XPAR_BRAM_2_UE_FAILING_REGISTERS 0U
#define XPAR_BRAM_2_ECC_STATUS_REGISTERS 0U
#define XPAR_BRAM_2_CE_COUNTER_WIDTH 0U
#define XPAR_BRAM_2_ECC_ONOFF_REGISTER 0U
#define XPAR_BRAM_2_ECC_ONOFF_RESET_VALUE 1U
#define XPAR_BRAM_2_WRITE_ACCESS 2U
#define XPAR_BRAM_2_BASEADDR 0x00000000U
#define XPAR_BRAM_2_HIGHADDR 0x0001FFFFU
#define XPAR_BRAM_2_CTRL_BASEADDR 0xFFFFFFFFU  
#define XPAR_BRAM_2_CTRL_HIGHADDR 0xFFFFFFFEU  


/******************************************************************/

#define XPAR_INTC_MAX_NUM_INTR_INPUTS 1
#define XPAR_XINTC_HAS_IPR 1
#define XPAR_XINTC_HAS_SIE 1
#define XPAR_XINTC_HAS_CIE 1
#define XPAR_XINTC_HAS_IVR 1
/* Definitions for driver INTC */
#define XPAR_XINTC_NUM_INSTANCES 1

/* Definitions for peripheral MICROBLAZE_PLC_ETHERNET_AXI_INTC_B */
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_DEVICE_ID 0
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_BASEADDR 0x41200000
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_HIGHADDR 0x4120FFFF
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_KIND_OF_INTR 0xFFFFFFFF
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_HAS_FAST 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_IVAR_RESET_VALUE 0x0000000000000010
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_NUM_INTR_INPUTS 1
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_ADDR_WIDTH 32


/******************************************************************/

#define XPAR_INTC_SINGLE_BASEADDR 0x41200000
#define XPAR_INTC_SINGLE_HIGHADDR 0x4120FFFF
#define XPAR_INTC_SINGLE_DEVICE_ID XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_DEVICE_ID
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_TYPE 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_IP2INTC_IRPT_MASK 0X000001U
#define XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_AXI_QUAD_SPI_PLC_ETHERNET_B_IP2INTC_IRPT_INTR 0U

/******************************************************************/

/* Canonical definitions for peripheral MICROBLAZE_PLC_ETHERNET_AXI_INTC_B */
#define XPAR_INTC_0_DEVICE_ID XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_DEVICE_ID
#define XPAR_INTC_0_BASEADDR 0x41200000U
#define XPAR_INTC_0_HIGHADDR 0x4120FFFFU
#define XPAR_INTC_0_KIND_OF_INTR 0xFFFFFFFFU
#define XPAR_INTC_0_HAS_FAST 1U
#define XPAR_INTC_0_IVAR_RESET_VALUE 0x0000000000000010U
#define XPAR_INTC_0_NUM_INTR_INPUTS 1U
#define XPAR_INTC_0_ADDR_WIDTH 32U
#define XPAR_INTC_0_INTC_TYPE 0U

#define XPAR_INTC_0_SPI_0_VEC_ID XPAR_MICROBLAZE_PLC_ETHERNET_AXI_INTC_B_AXI_QUAD_SPI_PLC_ETHERNET_B_IP2INTC_IRPT_INTR

/******************************************************************/

/* Definitions for driver SPI */
#define XPAR_XSPI_NUM_INSTANCES 1U

/* Definitions for peripheral AXI_QUAD_SPI_PLC_ETHERNET_B */
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_DEVICE_ID 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_BASEADDR 0x44A00000U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_HIGHADDR 0x44A0FFFFU
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_FIFO_DEPTH 256U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_FIFO_EXIST 1U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_SPI_SLAVE_ONLY 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_NUM_SS_BITS 1U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_NUM_TRANSFER_BITS 8U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_SPI_MODE 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_TYPE_OF_AXI4_INTERFACE 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_AXI4_BASEADDR 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_AXI4_HIGHADDR 0U
#define XPAR_AXI_QUAD_SPI_PLC_ETHERNET_B_XIP_MODE 0U

/* Canonical definitions for peripheral AXI_QUAD_SPI_PLC_ETHERNET_B */
#define XPAR_SPI_0_DEVICE_ID 0U
#define XPAR_SPI_0_BASEADDR 0x44A00000U
#define XPAR_SPI_0_HIGHADDR 0x44A0FFFFU
#define XPAR_SPI_0_FIFO_DEPTH 256U
#define XPAR_SPI_0_FIFO_EXIST 1U
#define XPAR_SPI_0_SPI_SLAVE_ONLY 0U
#define XPAR_SPI_0_NUM_SS_BITS 1U
#define XPAR_SPI_0_NUM_TRANSFER_BITS 8U
#define XPAR_SPI_0_SPI_MODE 0U
#define XPAR_SPI_0_TYPE_OF_AXI4_INTERFACE 0U
#define XPAR_SPI_0_AXI4_BASEADDR 0U
#define XPAR_SPI_0_AXI4_HIGHADDR 0U
#define XPAR_SPI_0_XIP_MODE 0U
#define XPAR_SPI_0_USE_STARTUP 0U



/******************************************************************/

#endif  /* end of protection macro */
