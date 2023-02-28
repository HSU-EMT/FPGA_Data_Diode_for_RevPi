//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Dec 14 16:51:14 2022
//Host        : DESKTOP-DRQ34CR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MDBRAM_PLCM_PLC_Ethernet_imp_DKYJU2
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_dout,
    BRAM_PORTA_en,
    BRAM_PORTA_rst,
    BRAM_PORTB_addr,
    BRAM_PORTB_clk,
    BRAM_PORTB_din,
    BRAM_PORTB_dout,
    BRAM_PORTB_en,
    BRAM_PORTB_rst,
    BRAM_PORTB_we);
  input [12:0]BRAM_PORTA_addr;
  input BRAM_PORTA_clk;
  output [31:0]BRAM_PORTA_dout;
  input BRAM_PORTA_en;
  input BRAM_PORTA_rst;
  input [12:0]BRAM_PORTB_addr;
  input BRAM_PORTB_clk;
  input [31:0]BRAM_PORTB_din;
  output [31:0]BRAM_PORTB_dout;
  input BRAM_PORTB_en;
  input BRAM_PORTB_rst;
  input [3:0]BRAM_PORTB_we;

  wire [12:0]axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK;
  wire [31:0]axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_EN;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_RST;
  wire [12:0]axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_CLK;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA1_DIN;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_EN;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_RST;
  wire [3:0]axi_bram_ctrl_PLC_BRAM_PORTA1_WE;
  wire [3:0]xlconstant_2_dout;
  wire [31:0]xlconstant_3_dout;

  assign BRAM_PORTA_dout[31:0] = axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT;
  assign BRAM_PORTB_dout[31:0] = axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR = BRAM_PORTA_addr[12:0];
  assign axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK = BRAM_PORTA_clk;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA1_EN = BRAM_PORTA_en;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA1_RST = BRAM_PORTA_rst;
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR = BRAM_PORTB_addr[12:0];
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_CLK = BRAM_PORTB_clk;
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_DIN = BRAM_PORTB_din[31:0];
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_EN = BRAM_PORTB_en;
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_RST = BRAM_PORTB_rst;
  assign axi_bram_ctrl_PLC_BRAM_PORTA1_WE = BRAM_PORTB_we[3:0];
  design_1_Shared_Memory_PLCM_PLC_RS485_0 Shared_Memory_PLCM_PLC_Ethernet
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR}),
        .clka(axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK),
        .clkb(axi_bram_ctrl_PLC_BRAM_PORTA1_CLK),
        .dina(xlconstant_3_dout),
        .dinb(axi_bram_ctrl_PLC_BRAM_PORTA1_DIN),
        .douta(axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT),
        .doutb(axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT),
        .ena(axi_bram_ctrl_MPLC_BRAM_PORTA1_EN),
        .enb(axi_bram_ctrl_PLC_BRAM_PORTA1_EN),
        .rsta(axi_bram_ctrl_MPLC_BRAM_PORTA1_RST),
        .rstb(axi_bram_ctrl_PLC_BRAM_PORTA1_RST),
        .wea(xlconstant_2_dout),
        .web(axi_bram_ctrl_PLC_BRAM_PORTA1_WE));
  design_1_xlconstant_0_2 xlconstant_2
       (.dout(xlconstant_2_dout));
  design_1_xlconstant_2_0 xlconstant_3
       (.dout(xlconstant_3_dout));
endmodule

module MDBRAM_PLCM_PLC_RS485_imp_UD4KS2
   (BRAM_PORTA_addr,
    BRAM_PORTA_clk,
    BRAM_PORTA_dout,
    BRAM_PORTA_en,
    BRAM_PORTA_rst,
    BRAM_PORTB_addr,
    BRAM_PORTB_clk,
    BRAM_PORTB_din,
    BRAM_PORTB_dout,
    BRAM_PORTB_en,
    BRAM_PORTB_rst,
    BRAM_PORTB_we);
  input [12:0]BRAM_PORTA_addr;
  input BRAM_PORTA_clk;
  output [31:0]BRAM_PORTA_dout;
  input BRAM_PORTA_en;
  input BRAM_PORTA_rst;
  input [12:0]BRAM_PORTB_addr;
  input BRAM_PORTB_clk;
  input [31:0]BRAM_PORTB_din;
  output [31:0]BRAM_PORTB_dout;
  input BRAM_PORTB_en;
  input BRAM_PORTB_rst;
  input [3:0]BRAM_PORTB_we;

  wire [12:0]axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_EN;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_RST;
  wire [12:0]axi_bram_ctrl_PLC_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_EN;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_PLC_BRAM_PORTA_WE;
  wire [3:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign BRAM_PORTA_dout[31:0] = axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT;
  assign BRAM_PORTB_dout[31:0] = axi_bram_ctrl_PLC_BRAM_PORTA_DOUT;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR = BRAM_PORTA_addr[12:0];
  assign axi_bram_ctrl_MPLC_BRAM_PORTA_CLK = BRAM_PORTA_clk;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA_EN = BRAM_PORTA_en;
  assign axi_bram_ctrl_MPLC_BRAM_PORTA_RST = BRAM_PORTA_rst;
  assign axi_bram_ctrl_PLC_BRAM_PORTA_ADDR = BRAM_PORTB_addr[12:0];
  assign axi_bram_ctrl_PLC_BRAM_PORTA_CLK = BRAM_PORTB_clk;
  assign axi_bram_ctrl_PLC_BRAM_PORTA_DIN = BRAM_PORTB_din[31:0];
  assign axi_bram_ctrl_PLC_BRAM_PORTA_EN = BRAM_PORTB_en;
  assign axi_bram_ctrl_PLC_BRAM_PORTA_RST = BRAM_PORTB_rst;
  assign axi_bram_ctrl_PLC_BRAM_PORTA_WE = BRAM_PORTB_we[3:0];
  design_1_blk_mem_gen_0_0 Shared_Memory_PLCM_PLC_RS485
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_PLC_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_MPLC_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_PLC_BRAM_PORTA_CLK),
        .dina(xlconstant_1_dout),
        .dinb(axi_bram_ctrl_PLC_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_PLC_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_MPLC_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_PLC_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_MPLC_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_PLC_BRAM_PORTA_RST),
        .wea(xlconstant_0_dout),
        .web(axi_bram_ctrl_PLC_BRAM_PORTA_WE));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=91,numReposBlks=59,numNonXlnxBlks=0,numHierBlks=32,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_board_cnt=9,da_clkrst_cnt=10,da_mb_cnt=3,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (PLCM_UART_rxd,
    PLCM_UART_txd,
    PLCM_Uart_Rx_disable_tri_o,
    PLCM_Uart_Tx_enable_tri_o,
    PLCM_Wire1_tri_i,
    PLCM_Wire1_tri_o,
    PLCM_Wire1_tri_t,
    PLCM_Wire2_tri_i,
    PLCM_Wire2_tri_o,
    PLCM_Wire2_tri_t,
    PLCM_miso,
    PLCM_mosi,
    PLCM_slave_clk,
    PLCM_slave_select,
    PLC_Ethernet_miso,
    PLC_Ethernet_mosi,
    PLC_Ethernet_slave_clk,
    PLC_Ethernet_slave_select,
    PLC_RS485_UART_rxd,
    PLC_RS485_UART_txd,
    PLC_RS485_Uart_Rx_disable_tri_o,
    PLC_RS485_Uart_Tx_enable_tri_o,
    PLC_RS485_Wire1_tri_i,
    PLC_RS485_Wire1_tri_o,
    PLC_RS485_Wire1_tri_t,
    PLC_RS485_Wire2_tri_i,
    PLC_RS485_Wire2_tri_o,
    PLC_RS485_Wire2_tri_t,
    reset,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 PLCM_UART RxD" *) input PLCM_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 PLCM_UART TxD" *) output PLCM_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Uart_Rx_disable TRI_O" *) output [0:0]PLCM_Uart_Rx_disable_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Uart_Tx_enable TRI_O" *) output [0:0]PLCM_Uart_Tx_enable_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire1 TRI_I" *) input [0:0]PLCM_Wire1_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire1 TRI_O" *) output [0:0]PLCM_Wire1_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire1 TRI_T" *) output [0:0]PLCM_Wire1_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire2 TRI_I" *) input [0:0]PLCM_Wire2_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire2 TRI_O" *) output [0:0]PLCM_Wire2_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLCM_Wire2 TRI_T" *) output [0:0]PLCM_Wire2_tri_t;
  input PLCM_miso;
  output PLCM_mosi;
  output PLCM_slave_clk;
  output [0:0]PLCM_slave_select;
  input PLC_Ethernet_miso;
  output PLC_Ethernet_mosi;
  output PLC_Ethernet_slave_clk;
  output [0:0]PLC_Ethernet_slave_select;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 PLC_RS485_UART RxD" *) input PLC_RS485_UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 PLC_RS485_UART TxD" *) output PLC_RS485_UART_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Uart_Rx_disable TRI_O" *) output [0:0]PLC_RS485_Uart_Rx_disable_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Uart_Tx_enable TRI_O" *) output [0:0]PLC_RS485_Uart_Tx_enable_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire1 TRI_I" *) input [0:0]PLC_RS485_Wire1_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire1 TRI_O" *) output [0:0]PLC_RS485_Wire1_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire1 TRI_T" *) output [0:0]PLC_RS485_Wire1_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire2 TRI_I" *) input [0:0]PLC_RS485_Wire2_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire2 TRI_O" *) output [0:0]PLC_RS485_Wire2_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 PLC_RS485_Wire2 TRI_T" *) output [0:0]PLC_RS485_Wire2_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [0:0]AXI_PLC_Wire1_GPIO1_TRI_I;
  wire [0:0]AXI_PLC_Wire1_GPIO1_TRI_O;
  wire [0:0]AXI_PLC_Wire1_GPIO1_TRI_T;
  wire [0:0]AXI_PLC_Wire1_GPIO2_TRI_I;
  wire [0:0]AXI_PLC_Wire1_GPIO2_TRI_O;
  wire [0:0]AXI_PLC_Wire1_GPIO2_TRI_T;
  wire [0:0]AXI_PLC_Wire1_GPIO3_TRI_I;
  wire [0:0]AXI_PLC_Wire1_GPIO3_TRI_O;
  wire [0:0]AXI_PLC_Wire1_GPIO3_TRI_T;
  wire [0:0]AXI_PLC_Wire1_GPIO_TRI_I;
  wire [0:0]AXI_PLC_Wire1_GPIO_TRI_O;
  wire [0:0]AXI_PLC_Wire1_GPIO_TRI_T;
  wire [0:0]MPLC_Uart_Rx_disable1_GPIO_TRI_O;
  wire [0:0]MPLC_Uart_Tx_enable1_GPIO_TRI_O;
  wire [0:0]PLC_Uart_Rx_disable_GPIO_TRI_O;
  wire [0:0]PLC_Uart_Tx_enable_GPIO_TRI_O;
  wire [0:0]S00_ARESETN_1;
  wire [12:0]axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK;
  wire [31:0]axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_EN;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA1_RST;
  wire [12:0]axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_EN;
  wire axi_bram_ctrl_MPLC_BRAM_PORTA_RST;
  wire [12:0]axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_CLK;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA1_DIN;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_EN;
  wire axi_bram_ctrl_PLC_BRAM_PORTA1_RST;
  wire [3:0]axi_bram_ctrl_PLC_BRAM_PORTA1_WE;
  wire [12:0]axi_bram_ctrl_PLC_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_PLC_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_EN;
  wire axi_bram_ctrl_PLC_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_PLC_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_WE;
  wire axi_quad_spi_PLCM_io0_o;
  wire axi_quad_spi_PLCM_io0_o1;
  wire axi_quad_spi_PLCM_ip2intc_irpt;
  wire axi_quad_spi_PLCM_sck_o;
  wire axi_quad_spi_PLCM_sck_o1;
  wire [0:0]axi_quad_spi_PLCM_ss_o;
  wire [0:0]axi_quad_spi_PLCM_ss_o1;
  wire axi_quad_spi_PLC_Ethernet_ip2intc_irpt;
  wire axi_uartlite_MPLC_UART_RxD;
  wire axi_uartlite_MPLC_UART_TxD;
  wire axi_uartlite_PLCM_interrupt;
  wire axi_uartlite_PLC_UART_RxD;
  wire axi_uartlite_PLC_UART_TxD;
  wire axi_uartlite_PLC_interrupt;
  wire clk_wiz_clk_out28;
  wire clk_wiz_locked;
  wire io1_i_0_1;
  wire io1_i_0_2;
  wire mdm_1_debug_sys_rst;
  wire microblaze_0_Clk;
  wire [31:0]microblaze_0_axi_dp_ARADDR;
  wire [2:0]microblaze_0_axi_dp_ARPROT;
  wire [0:0]microblaze_0_axi_dp_ARREADY;
  wire microblaze_0_axi_dp_ARVALID;
  wire [31:0]microblaze_0_axi_dp_AWADDR;
  wire [2:0]microblaze_0_axi_dp_AWPROT;
  wire [0:0]microblaze_0_axi_dp_AWREADY;
  wire microblaze_0_axi_dp_AWVALID;
  wire microblaze_0_axi_dp_BREADY;
  wire [1:0]microblaze_0_axi_dp_BRESP;
  wire [0:0]microblaze_0_axi_dp_BVALID;
  wire [31:0]microblaze_0_axi_dp_RDATA;
  wire microblaze_0_axi_dp_RREADY;
  wire [1:0]microblaze_0_axi_dp_RRESP;
  wire [0:0]microblaze_0_axi_dp_RVALID;
  wire [31:0]microblaze_0_axi_dp_WDATA;
  wire [0:0]microblaze_0_axi_dp_WREADY;
  wire [3:0]microblaze_0_axi_dp_WSTRB;
  wire microblaze_0_axi_dp_WVALID;
  wire microblaze_0_debug_CAPTURE;
  wire microblaze_0_debug_CLK;
  wire microblaze_0_debug_DISABLE;
  wire [0:7]microblaze_0_debug_REG_EN;
  wire microblaze_0_debug_RST;
  wire microblaze_0_debug_SHIFT;
  wire microblaze_0_debug_TDI;
  wire microblaze_0_debug_TDO;
  wire microblaze_0_debug_UPDATE;
  wire [0:31]microblaze_0_dlmb_1_ABUS;
  wire microblaze_0_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_1_BE;
  wire microblaze_0_dlmb_1_CE;
  wire [0:31]microblaze_0_dlmb_1_READDBUS;
  wire microblaze_0_dlmb_1_READSTROBE;
  wire microblaze_0_dlmb_1_READY;
  wire microblaze_0_dlmb_1_UE;
  wire microblaze_0_dlmb_1_WAIT;
  wire [0:31]microblaze_0_dlmb_1_WRITEDBUS;
  wire microblaze_0_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_1_ABUS;
  wire microblaze_0_ilmb_1_ADDRSTROBE;
  wire microblaze_0_ilmb_1_CE;
  wire [0:31]microblaze_0_ilmb_1_READDBUS;
  wire microblaze_0_ilmb_1_READSTROBE;
  wire microblaze_0_ilmb_1_READY;
  wire microblaze_0_ilmb_1_UE;
  wire microblaze_0_ilmb_1_WAIT;
  wire [31:0]microblaze_0_intc_axi_ARADDR;
  wire microblaze_0_intc_axi_ARREADY;
  wire microblaze_0_intc_axi_ARVALID;
  wire [31:0]microblaze_0_intc_axi_AWADDR;
  wire microblaze_0_intc_axi_AWREADY;
  wire microblaze_0_intc_axi_AWVALID;
  wire microblaze_0_intc_axi_BREADY;
  wire [1:0]microblaze_0_intc_axi_BRESP;
  wire microblaze_0_intc_axi_BVALID;
  wire [31:0]microblaze_0_intc_axi_RDATA;
  wire microblaze_0_intc_axi_RREADY;
  wire [1:0]microblaze_0_intc_axi_RRESP;
  wire microblaze_0_intc_axi_RVALID;
  wire [31:0]microblaze_0_intc_axi_WDATA;
  wire microblaze_0_intc_axi_WREADY;
  wire [3:0]microblaze_0_intc_axi_WSTRB;
  wire microblaze_0_intc_axi_WVALID;
  wire [0:1]microblaze_0_interrupt_ACK;
  wire [31:0]microblaze_0_interrupt_ADDRESS;
  wire microblaze_0_interrupt_INTERRUPT;
  wire [31:0]microblaze_MPLC_axi_dp_ARADDR;
  wire [2:0]microblaze_MPLC_axi_dp_ARPROT;
  wire [0:0]microblaze_MPLC_axi_dp_ARREADY;
  wire microblaze_MPLC_axi_dp_ARVALID;
  wire [31:0]microblaze_MPLC_axi_dp_AWADDR;
  wire [2:0]microblaze_MPLC_axi_dp_AWPROT;
  wire [0:0]microblaze_MPLC_axi_dp_AWREADY;
  wire microblaze_MPLC_axi_dp_AWVALID;
  wire microblaze_MPLC_axi_dp_BREADY;
  wire [1:0]microblaze_MPLC_axi_dp_BRESP;
  wire [0:0]microblaze_MPLC_axi_dp_BVALID;
  wire [31:0]microblaze_MPLC_axi_dp_RDATA;
  wire microblaze_MPLC_axi_dp_RREADY;
  wire [1:0]microblaze_MPLC_axi_dp_RRESP;
  wire [0:0]microblaze_MPLC_axi_dp_RVALID;
  wire [31:0]microblaze_MPLC_axi_dp_WDATA;
  wire [0:0]microblaze_MPLC_axi_dp_WREADY;
  wire [3:0]microblaze_MPLC_axi_dp_WSTRB;
  wire microblaze_MPLC_axi_dp_WVALID;
  wire [12:0]microblaze_MPLC_axi_periph_M01_AXI_ARADDR;
  wire [1:0]microblaze_MPLC_axi_periph_M01_AXI_ARBURST;
  wire [3:0]microblaze_MPLC_axi_periph_M01_AXI_ARCACHE;
  wire [7:0]microblaze_MPLC_axi_periph_M01_AXI_ARLEN;
  wire microblaze_MPLC_axi_periph_M01_AXI_ARLOCK;
  wire [2:0]microblaze_MPLC_axi_periph_M01_AXI_ARPROT;
  wire microblaze_MPLC_axi_periph_M01_AXI_ARREADY;
  wire [2:0]microblaze_MPLC_axi_periph_M01_AXI_ARSIZE;
  wire microblaze_MPLC_axi_periph_M01_AXI_ARVALID;
  wire [12:0]microblaze_MPLC_axi_periph_M01_AXI_AWADDR;
  wire [1:0]microblaze_MPLC_axi_periph_M01_AXI_AWBURST;
  wire [3:0]microblaze_MPLC_axi_periph_M01_AXI_AWCACHE;
  wire [7:0]microblaze_MPLC_axi_periph_M01_AXI_AWLEN;
  wire microblaze_MPLC_axi_periph_M01_AXI_AWLOCK;
  wire [2:0]microblaze_MPLC_axi_periph_M01_AXI_AWPROT;
  wire microblaze_MPLC_axi_periph_M01_AXI_AWREADY;
  wire [2:0]microblaze_MPLC_axi_periph_M01_AXI_AWSIZE;
  wire microblaze_MPLC_axi_periph_M01_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M01_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M01_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M01_AXI_RLAST;
  wire microblaze_MPLC_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M01_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M01_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M01_AXI_WLAST;
  wire microblaze_MPLC_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M01_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M01_AXI_WVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M02_AXI_ARADDR;
  wire microblaze_MPLC_axi_periph_M02_AXI_ARREADY;
  wire microblaze_MPLC_axi_periph_M02_AXI_ARVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M02_AXI_AWADDR;
  wire microblaze_MPLC_axi_periph_M02_AXI_AWREADY;
  wire microblaze_MPLC_axi_periph_M02_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M02_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M02_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M02_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M02_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M02_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M02_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M02_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M02_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M02_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M02_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M02_AXI_WVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M03_AXI_ARADDR;
  wire microblaze_MPLC_axi_periph_M03_AXI_ARREADY;
  wire microblaze_MPLC_axi_periph_M03_AXI_ARVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M03_AXI_AWADDR;
  wire microblaze_MPLC_axi_periph_M03_AXI_AWREADY;
  wire microblaze_MPLC_axi_periph_M03_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M03_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M03_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M03_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M03_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M03_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M03_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M03_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M03_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M03_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M03_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M03_AXI_WVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M04_AXI_ARADDR;
  wire microblaze_MPLC_axi_periph_M04_AXI_ARREADY;
  wire microblaze_MPLC_axi_periph_M04_AXI_ARVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M04_AXI_AWADDR;
  wire microblaze_MPLC_axi_periph_M04_AXI_AWREADY;
  wire microblaze_MPLC_axi_periph_M04_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M04_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M04_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M04_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M04_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M04_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M04_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M04_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M04_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M04_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M04_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M04_AXI_WVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M05_AXI_ARADDR;
  wire microblaze_MPLC_axi_periph_M05_AXI_ARREADY;
  wire microblaze_MPLC_axi_periph_M05_AXI_ARVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M05_AXI_AWADDR;
  wire microblaze_MPLC_axi_periph_M05_AXI_AWREADY;
  wire microblaze_MPLC_axi_periph_M05_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M05_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M05_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M05_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M05_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M05_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M05_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M05_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M05_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M05_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M05_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M05_AXI_WVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M06_AXI_ARADDR;
  wire microblaze_MPLC_axi_periph_M06_AXI_ARREADY;
  wire microblaze_MPLC_axi_periph_M06_AXI_ARVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M06_AXI_AWADDR;
  wire microblaze_MPLC_axi_periph_M06_AXI_AWREADY;
  wire microblaze_MPLC_axi_periph_M06_AXI_AWVALID;
  wire microblaze_MPLC_axi_periph_M06_AXI_BREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M06_AXI_BRESP;
  wire microblaze_MPLC_axi_periph_M06_AXI_BVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M06_AXI_RDATA;
  wire microblaze_MPLC_axi_periph_M06_AXI_RREADY;
  wire [1:0]microblaze_MPLC_axi_periph_M06_AXI_RRESP;
  wire microblaze_MPLC_axi_periph_M06_AXI_RVALID;
  wire [31:0]microblaze_MPLC_axi_periph_M06_AXI_WDATA;
  wire microblaze_MPLC_axi_periph_M06_AXI_WREADY;
  wire [3:0]microblaze_MPLC_axi_periph_M06_AXI_WSTRB;
  wire microblaze_MPLC_axi_periph_M06_AXI_WVALID;
  wire microblaze_MPLC_debug_CAPTURE;
  wire microblaze_MPLC_debug_CLK;
  wire microblaze_MPLC_debug_DISABLE;
  wire [0:7]microblaze_MPLC_debug_REG_EN;
  wire microblaze_MPLC_debug_RST;
  wire microblaze_MPLC_debug_SHIFT;
  wire microblaze_MPLC_debug_TDI;
  wire microblaze_MPLC_debug_TDO;
  wire microblaze_MPLC_debug_UPDATE;
  wire [0:31]microblaze_MPLC_dlmb_1_ABUS;
  wire microblaze_MPLC_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_MPLC_dlmb_1_BE;
  wire microblaze_MPLC_dlmb_1_CE;
  wire [0:31]microblaze_MPLC_dlmb_1_READDBUS;
  wire microblaze_MPLC_dlmb_1_READSTROBE;
  wire microblaze_MPLC_dlmb_1_READY;
  wire microblaze_MPLC_dlmb_1_UE;
  wire microblaze_MPLC_dlmb_1_WAIT;
  wire [0:31]microblaze_MPLC_dlmb_1_WRITEDBUS;
  wire microblaze_MPLC_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_MPLC_ilmb_1_ABUS;
  wire microblaze_MPLC_ilmb_1_ADDRSTROBE;
  wire microblaze_MPLC_ilmb_1_CE;
  wire [0:31]microblaze_MPLC_ilmb_1_READDBUS;
  wire microblaze_MPLC_ilmb_1_READSTROBE;
  wire microblaze_MPLC_ilmb_1_READY;
  wire microblaze_MPLC_ilmb_1_UE;
  wire microblaze_MPLC_ilmb_1_WAIT;
  wire [31:0]microblaze_MPLC_intc_axi_ARADDR;
  wire microblaze_MPLC_intc_axi_ARREADY;
  wire microblaze_MPLC_intc_axi_ARVALID;
  wire [31:0]microblaze_MPLC_intc_axi_AWADDR;
  wire microblaze_MPLC_intc_axi_AWREADY;
  wire microblaze_MPLC_intc_axi_AWVALID;
  wire microblaze_MPLC_intc_axi_BREADY;
  wire [1:0]microblaze_MPLC_intc_axi_BRESP;
  wire microblaze_MPLC_intc_axi_BVALID;
  wire [31:0]microblaze_MPLC_intc_axi_RDATA;
  wire microblaze_MPLC_intc_axi_RREADY;
  wire [1:0]microblaze_MPLC_intc_axi_RRESP;
  wire microblaze_MPLC_intc_axi_RVALID;
  wire [31:0]microblaze_MPLC_intc_axi_WDATA;
  wire microblaze_MPLC_intc_axi_WREADY;
  wire [3:0]microblaze_MPLC_intc_axi_WSTRB;
  wire microblaze_MPLC_intc_axi_WVALID;
  wire [0:1]microblaze_MPLC_interrupt_ACK;
  wire [31:0]microblaze_MPLC_interrupt_ADDRESS;
  wire microblaze_MPLC_interrupt_INTERRUPT;
  wire [31:0]microblaze_PLCM_axi_periph_M07_AXI_ARADDR;
  wire microblaze_PLCM_axi_periph_M07_AXI_ARREADY;
  wire microblaze_PLCM_axi_periph_M07_AXI_ARVALID;
  wire [31:0]microblaze_PLCM_axi_periph_M07_AXI_AWADDR;
  wire microblaze_PLCM_axi_periph_M07_AXI_AWREADY;
  wire microblaze_PLCM_axi_periph_M07_AXI_AWVALID;
  wire microblaze_PLCM_axi_periph_M07_AXI_BREADY;
  wire [1:0]microblaze_PLCM_axi_periph_M07_AXI_BRESP;
  wire microblaze_PLCM_axi_periph_M07_AXI_BVALID;
  wire [31:0]microblaze_PLCM_axi_periph_M07_AXI_RDATA;
  wire microblaze_PLCM_axi_periph_M07_AXI_RREADY;
  wire [1:0]microblaze_PLCM_axi_periph_M07_AXI_RRESP;
  wire microblaze_PLCM_axi_periph_M07_AXI_RVALID;
  wire [31:0]microblaze_PLCM_axi_periph_M07_AXI_WDATA;
  wire microblaze_PLCM_axi_periph_M07_AXI_WREADY;
  wire [3:0]microblaze_PLCM_axi_periph_M07_AXI_WSTRB;
  wire microblaze_PLCM_axi_periph_M07_AXI_WVALID;
  wire [12:0]microblaze_PLCM_axi_periph_M08_AXI_ARADDR;
  wire [1:0]microblaze_PLCM_axi_periph_M08_AXI_ARBURST;
  wire [3:0]microblaze_PLCM_axi_periph_M08_AXI_ARCACHE;
  wire [7:0]microblaze_PLCM_axi_periph_M08_AXI_ARLEN;
  wire microblaze_PLCM_axi_periph_M08_AXI_ARLOCK;
  wire [2:0]microblaze_PLCM_axi_periph_M08_AXI_ARPROT;
  wire microblaze_PLCM_axi_periph_M08_AXI_ARREADY;
  wire [2:0]microblaze_PLCM_axi_periph_M08_AXI_ARSIZE;
  wire microblaze_PLCM_axi_periph_M08_AXI_ARVALID;
  wire [12:0]microblaze_PLCM_axi_periph_M08_AXI_AWADDR;
  wire [1:0]microblaze_PLCM_axi_periph_M08_AXI_AWBURST;
  wire [3:0]microblaze_PLCM_axi_periph_M08_AXI_AWCACHE;
  wire [7:0]microblaze_PLCM_axi_periph_M08_AXI_AWLEN;
  wire microblaze_PLCM_axi_periph_M08_AXI_AWLOCK;
  wire [2:0]microblaze_PLCM_axi_periph_M08_AXI_AWPROT;
  wire microblaze_PLCM_axi_periph_M08_AXI_AWREADY;
  wire [2:0]microblaze_PLCM_axi_periph_M08_AXI_AWSIZE;
  wire microblaze_PLCM_axi_periph_M08_AXI_AWVALID;
  wire microblaze_PLCM_axi_periph_M08_AXI_BREADY;
  wire [1:0]microblaze_PLCM_axi_periph_M08_AXI_BRESP;
  wire microblaze_PLCM_axi_periph_M08_AXI_BVALID;
  wire [31:0]microblaze_PLCM_axi_periph_M08_AXI_RDATA;
  wire microblaze_PLCM_axi_periph_M08_AXI_RLAST;
  wire microblaze_PLCM_axi_periph_M08_AXI_RREADY;
  wire [1:0]microblaze_PLCM_axi_periph_M08_AXI_RRESP;
  wire microblaze_PLCM_axi_periph_M08_AXI_RVALID;
  wire [31:0]microblaze_PLCM_axi_periph_M08_AXI_WDATA;
  wire microblaze_PLCM_axi_periph_M08_AXI_WLAST;
  wire microblaze_PLCM_axi_periph_M08_AXI_WREADY;
  wire [3:0]microblaze_PLCM_axi_periph_M08_AXI_WSTRB;
  wire microblaze_PLCM_axi_periph_M08_AXI_WVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARADDR;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARREADY;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWADDR;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWREADY;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWVALID;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_BRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_RDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_RRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_WDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M01_AXI_WSTRB;
  wire microblaze_PLC_Ethernet_axi_periph_M01_AXI_WVALID;
  wire [12:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARADDR;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARBURST;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLEN;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARPROT;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARREADY;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARSIZE;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARVALID;
  wire [12:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWADDR;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWBURST;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLEN;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWPROT;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWREADY;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWSIZE;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWVALID;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_BREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_BRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_BVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_RDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_RLAST;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_RREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_RRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_RVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_WDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_WLAST;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_WREADY;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M02_AXI_WSTRB;
  wire microblaze_PLC_Ethernet_axi_periph_M02_AXI_WVALID;
  wire [12:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARADDR;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARBURST;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARCACHE;
  wire [7:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLEN;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLOCK;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARPROT;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARREADY;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARSIZE;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARVALID;
  wire [12:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWADDR;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWBURST;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWCACHE;
  wire [7:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLEN;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLOCK;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWPROT;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWREADY;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWSIZE;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWVALID;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_BREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_BRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_BVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_RDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_RLAST;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_RREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_RRESP;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_RVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_WDATA;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_WLAST;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_WREADY;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_M03_AXI_WSTRB;
  wire microblaze_PLC_Ethernet_axi_periph_M03_AXI_WVALID;
  wire [12:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARADDR;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARBURST;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARCACHE;
  wire [7:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARLEN;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_ARLOCK;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARPROT;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_ARREADY;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M01_AXI_ARSIZE;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_ARVALID;
  wire [12:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWADDR;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWBURST;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWCACHE;
  wire [7:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWLEN;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_AWLOCK;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWPROT;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_AWREADY;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M01_AXI_AWSIZE;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_AWVALID;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_BREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M01_AXI_BRESP;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_BVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M01_AXI_RDATA;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_RLAST;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_RREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M01_AXI_RRESP;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_RVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M01_AXI_WDATA;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_WLAST;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_WREADY;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M01_AXI_WSTRB;
  wire microblaze_PLC_RS485_axi_periph_M01_AXI_WVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M02_AXI_ARADDR;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_ARREADY;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_ARVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M02_AXI_AWADDR;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_AWREADY;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_AWVALID;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_BREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M02_AXI_BRESP;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_BVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M02_AXI_RDATA;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_RREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M02_AXI_RRESP;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_RVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M02_AXI_WDATA;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_WREADY;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M02_AXI_WSTRB;
  wire microblaze_PLC_RS485_axi_periph_M02_AXI_WVALID;
  wire [12:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARADDR;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARBURST;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARCACHE;
  wire [7:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARLEN;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_ARLOCK;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARPROT;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_ARREADY;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M07_AXI_ARSIZE;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_ARVALID;
  wire [12:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWADDR;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWBURST;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWCACHE;
  wire [7:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWLEN;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_AWLOCK;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWPROT;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_AWREADY;
  wire [2:0]microblaze_PLC_RS485_axi_periph_M07_AXI_AWSIZE;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_AWVALID;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_BREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M07_AXI_BRESP;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_BVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M07_AXI_RDATA;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_RLAST;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_RREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_M07_AXI_RRESP;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_RVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_M07_AXI_WDATA;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_WLAST;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_WREADY;
  wire [3:0]microblaze_PLC_RS485_axi_periph_M07_AXI_WSTRB;
  wire microblaze_PLC_RS485_axi_periph_M07_AXI_WVALID;
  wire [31:0]microblaze_PLC_axi_dp_ARADDR;
  wire [2:0]microblaze_PLC_axi_dp_ARPROT;
  wire [0:0]microblaze_PLC_axi_dp_ARREADY;
  wire microblaze_PLC_axi_dp_ARVALID;
  wire [31:0]microblaze_PLC_axi_dp_AWADDR;
  wire [2:0]microblaze_PLC_axi_dp_AWPROT;
  wire [0:0]microblaze_PLC_axi_dp_AWREADY;
  wire microblaze_PLC_axi_dp_AWVALID;
  wire microblaze_PLC_axi_dp_BREADY;
  wire [1:0]microblaze_PLC_axi_dp_BRESP;
  wire [0:0]microblaze_PLC_axi_dp_BVALID;
  wire [31:0]microblaze_PLC_axi_dp_RDATA;
  wire microblaze_PLC_axi_dp_RREADY;
  wire [1:0]microblaze_PLC_axi_dp_RRESP;
  wire [0:0]microblaze_PLC_axi_dp_RVALID;
  wire [31:0]microblaze_PLC_axi_dp_WDATA;
  wire [0:0]microblaze_PLC_axi_dp_WREADY;
  wire [3:0]microblaze_PLC_axi_dp_WSTRB;
  wire microblaze_PLC_axi_dp_WVALID;
  wire [31:0]microblaze_PLC_axi_periph_M03_AXI_ARADDR;
  wire microblaze_PLC_axi_periph_M03_AXI_ARREADY;
  wire microblaze_PLC_axi_periph_M03_AXI_ARVALID;
  wire [31:0]microblaze_PLC_axi_periph_M03_AXI_AWADDR;
  wire microblaze_PLC_axi_periph_M03_AXI_AWREADY;
  wire microblaze_PLC_axi_periph_M03_AXI_AWVALID;
  wire microblaze_PLC_axi_periph_M03_AXI_BREADY;
  wire [1:0]microblaze_PLC_axi_periph_M03_AXI_BRESP;
  wire microblaze_PLC_axi_periph_M03_AXI_BVALID;
  wire [31:0]microblaze_PLC_axi_periph_M03_AXI_RDATA;
  wire microblaze_PLC_axi_periph_M03_AXI_RREADY;
  wire [1:0]microblaze_PLC_axi_periph_M03_AXI_RRESP;
  wire microblaze_PLC_axi_periph_M03_AXI_RVALID;
  wire [31:0]microblaze_PLC_axi_periph_M03_AXI_WDATA;
  wire microblaze_PLC_axi_periph_M03_AXI_WREADY;
  wire [3:0]microblaze_PLC_axi_periph_M03_AXI_WSTRB;
  wire microblaze_PLC_axi_periph_M03_AXI_WVALID;
  wire [31:0]microblaze_PLC_axi_periph_M04_AXI_ARADDR;
  wire microblaze_PLC_axi_periph_M04_AXI_ARREADY;
  wire microblaze_PLC_axi_periph_M04_AXI_ARVALID;
  wire [31:0]microblaze_PLC_axi_periph_M04_AXI_AWADDR;
  wire microblaze_PLC_axi_periph_M04_AXI_AWREADY;
  wire microblaze_PLC_axi_periph_M04_AXI_AWVALID;
  wire microblaze_PLC_axi_periph_M04_AXI_BREADY;
  wire [1:0]microblaze_PLC_axi_periph_M04_AXI_BRESP;
  wire microblaze_PLC_axi_periph_M04_AXI_BVALID;
  wire [31:0]microblaze_PLC_axi_periph_M04_AXI_RDATA;
  wire microblaze_PLC_axi_periph_M04_AXI_RREADY;
  wire [1:0]microblaze_PLC_axi_periph_M04_AXI_RRESP;
  wire microblaze_PLC_axi_periph_M04_AXI_RVALID;
  wire [31:0]microblaze_PLC_axi_periph_M04_AXI_WDATA;
  wire microblaze_PLC_axi_periph_M04_AXI_WREADY;
  wire [3:0]microblaze_PLC_axi_periph_M04_AXI_WSTRB;
  wire microblaze_PLC_axi_periph_M04_AXI_WVALID;
  wire [31:0]microblaze_PLC_axi_periph_M05_AXI_ARADDR;
  wire microblaze_PLC_axi_periph_M05_AXI_ARREADY;
  wire microblaze_PLC_axi_periph_M05_AXI_ARVALID;
  wire [31:0]microblaze_PLC_axi_periph_M05_AXI_AWADDR;
  wire microblaze_PLC_axi_periph_M05_AXI_AWREADY;
  wire microblaze_PLC_axi_periph_M05_AXI_AWVALID;
  wire microblaze_PLC_axi_periph_M05_AXI_BREADY;
  wire [1:0]microblaze_PLC_axi_periph_M05_AXI_BRESP;
  wire microblaze_PLC_axi_periph_M05_AXI_BVALID;
  wire [31:0]microblaze_PLC_axi_periph_M05_AXI_RDATA;
  wire microblaze_PLC_axi_periph_M05_AXI_RREADY;
  wire [1:0]microblaze_PLC_axi_periph_M05_AXI_RRESP;
  wire microblaze_PLC_axi_periph_M05_AXI_RVALID;
  wire [31:0]microblaze_PLC_axi_periph_M05_AXI_WDATA;
  wire microblaze_PLC_axi_periph_M05_AXI_WREADY;
  wire [3:0]microblaze_PLC_axi_periph_M05_AXI_WSTRB;
  wire microblaze_PLC_axi_periph_M05_AXI_WVALID;
  wire [31:0]microblaze_PLC_axi_periph_M06_AXI_ARADDR;
  wire microblaze_PLC_axi_periph_M06_AXI_ARREADY;
  wire microblaze_PLC_axi_periph_M06_AXI_ARVALID;
  wire [31:0]microblaze_PLC_axi_periph_M06_AXI_AWADDR;
  wire microblaze_PLC_axi_periph_M06_AXI_AWREADY;
  wire microblaze_PLC_axi_periph_M06_AXI_AWVALID;
  wire microblaze_PLC_axi_periph_M06_AXI_BREADY;
  wire [1:0]microblaze_PLC_axi_periph_M06_AXI_BRESP;
  wire microblaze_PLC_axi_periph_M06_AXI_BVALID;
  wire [31:0]microblaze_PLC_axi_periph_M06_AXI_RDATA;
  wire microblaze_PLC_axi_periph_M06_AXI_RREADY;
  wire [1:0]microblaze_PLC_axi_periph_M06_AXI_RRESP;
  wire microblaze_PLC_axi_periph_M06_AXI_RVALID;
  wire [31:0]microblaze_PLC_axi_periph_M06_AXI_WDATA;
  wire microblaze_PLC_axi_periph_M06_AXI_WREADY;
  wire [3:0]microblaze_PLC_axi_periph_M06_AXI_WSTRB;
  wire microblaze_PLC_axi_periph_M06_AXI_WVALID;
  wire microblaze_PLC_debug_CAPTURE;
  wire microblaze_PLC_debug_CLK;
  wire microblaze_PLC_debug_DISABLE;
  wire [0:7]microblaze_PLC_debug_REG_EN;
  wire microblaze_PLC_debug_RST;
  wire microblaze_PLC_debug_SHIFT;
  wire microblaze_PLC_debug_TDI;
  wire microblaze_PLC_debug_TDO;
  wire microblaze_PLC_debug_UPDATE;
  wire [0:31]microblaze_PLC_dlmb_1_ABUS;
  wire microblaze_PLC_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_PLC_dlmb_1_BE;
  wire microblaze_PLC_dlmb_1_CE;
  wire [0:31]microblaze_PLC_dlmb_1_READDBUS;
  wire microblaze_PLC_dlmb_1_READSTROBE;
  wire microblaze_PLC_dlmb_1_READY;
  wire microblaze_PLC_dlmb_1_UE;
  wire microblaze_PLC_dlmb_1_WAIT;
  wire [0:31]microblaze_PLC_dlmb_1_WRITEDBUS;
  wire microblaze_PLC_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_PLC_ilmb_1_ABUS;
  wire microblaze_PLC_ilmb_1_ADDRSTROBE;
  wire microblaze_PLC_ilmb_1_CE;
  wire [0:31]microblaze_PLC_ilmb_1_READDBUS;
  wire microblaze_PLC_ilmb_1_READSTROBE;
  wire microblaze_PLC_ilmb_1_READY;
  wire microblaze_PLC_ilmb_1_UE;
  wire microblaze_PLC_ilmb_1_WAIT;
  wire [31:0]microblaze_PLC_intc_axi_ARADDR;
  wire microblaze_PLC_intc_axi_ARREADY;
  wire microblaze_PLC_intc_axi_ARVALID;
  wire [31:0]microblaze_PLC_intc_axi_AWADDR;
  wire microblaze_PLC_intc_axi_AWREADY;
  wire microblaze_PLC_intc_axi_AWVALID;
  wire microblaze_PLC_intc_axi_BREADY;
  wire [1:0]microblaze_PLC_intc_axi_BRESP;
  wire microblaze_PLC_intc_axi_BVALID;
  wire [31:0]microblaze_PLC_intc_axi_RDATA;
  wire microblaze_PLC_intc_axi_RREADY;
  wire [1:0]microblaze_PLC_intc_axi_RRESP;
  wire microblaze_PLC_intc_axi_RVALID;
  wire [31:0]microblaze_PLC_intc_axi_WDATA;
  wire microblaze_PLC_intc_axi_WREADY;
  wire [3:0]microblaze_PLC_intc_axi_WSTRB;
  wire microblaze_PLC_intc_axi_WVALID;
  wire [0:1]microblaze_PLC_interrupt_ACK;
  wire [31:0]microblaze_PLC_interrupt_ADDRESS;
  wire microblaze_PLC_interrupt_INTERRUPT;
  wire reset_rtl_1;
  wire [0:0]rst_clk_wiz_150M_bus_struct_reset;
  wire [0:0]rst_clk_wiz_150M_interconnect_aresetn;
  wire rst_clk_wiz_150M_mb_reset;
  wire sys_clock_1;
  wire [1:0]xlconcat_interrupts_PLCM_dout;

  assign AXI_PLC_Wire1_GPIO1_TRI_I = PLC_RS485_Wire2_tri_i[0];
  assign AXI_PLC_Wire1_GPIO2_TRI_I = PLCM_Wire1_tri_i[0];
  assign AXI_PLC_Wire1_GPIO3_TRI_I = PLCM_Wire2_tri_i[0];
  assign AXI_PLC_Wire1_GPIO_TRI_I = PLC_RS485_Wire1_tri_i[0];
  assign PLCM_UART_txd = axi_uartlite_MPLC_UART_TxD;
  assign PLCM_Uart_Rx_disable_tri_o[0] = MPLC_Uart_Rx_disable1_GPIO_TRI_O;
  assign PLCM_Uart_Tx_enable_tri_o[0] = MPLC_Uart_Tx_enable1_GPIO_TRI_O;
  assign PLCM_Wire1_tri_o[0] = AXI_PLC_Wire1_GPIO2_TRI_O;
  assign PLCM_Wire1_tri_t[0] = AXI_PLC_Wire1_GPIO2_TRI_T;
  assign PLCM_Wire2_tri_o[0] = AXI_PLC_Wire1_GPIO3_TRI_O;
  assign PLCM_Wire2_tri_t[0] = AXI_PLC_Wire1_GPIO3_TRI_T;
  assign PLCM_mosi = axi_quad_spi_PLCM_io0_o;
  assign PLCM_slave_clk = axi_quad_spi_PLCM_sck_o;
  assign PLCM_slave_select[0] = axi_quad_spi_PLCM_ss_o;
  assign PLC_Ethernet_mosi = axi_quad_spi_PLCM_io0_o1;
  assign PLC_Ethernet_slave_clk = axi_quad_spi_PLCM_sck_o1;
  assign PLC_Ethernet_slave_select[0] = axi_quad_spi_PLCM_ss_o1;
  assign PLC_RS485_UART_txd = axi_uartlite_PLC_UART_TxD;
  assign PLC_RS485_Uart_Rx_disable_tri_o[0] = PLC_Uart_Rx_disable_GPIO_TRI_O;
  assign PLC_RS485_Uart_Tx_enable_tri_o[0] = PLC_Uart_Tx_enable_GPIO_TRI_O;
  assign PLC_RS485_Wire1_tri_o[0] = AXI_PLC_Wire1_GPIO_TRI_O;
  assign PLC_RS485_Wire1_tri_t[0] = AXI_PLC_Wire1_GPIO_TRI_T;
  assign PLC_RS485_Wire2_tri_o[0] = AXI_PLC_Wire1_GPIO1_TRI_O;
  assign PLC_RS485_Wire2_tri_t[0] = AXI_PLC_Wire1_GPIO1_TRI_T;
  assign axi_uartlite_MPLC_UART_RxD = PLCM_UART_rxd;
  assign axi_uartlite_PLC_UART_RxD = PLC_RS485_UART_rxd;
  assign io1_i_0_1 = PLCM_miso;
  assign io1_i_0_2 = PLC_Ethernet_miso;
  assign reset_rtl_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_1_PLC_Uart_Rx_disable_0 AXI_GPIO_PLCM_Uart_Rx
       (.gpio_io_o(MPLC_Uart_Rx_disable1_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_MPLC_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(microblaze_MPLC_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(microblaze_MPLC_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M04_AXI_WVALID));
  design_1_PLC_Uart_Tx_enable_1 AXI_GPIO_PLCM_Uart_Tx
       (.gpio_io_o(MPLC_Uart_Tx_enable1_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_MPLC_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(microblaze_MPLC_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(microblaze_MPLC_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M03_AXI_WVALID));
  design_1_AXI_PLC_Wire1_1 AXI_GPIO_PLCM_Wire1
       (.gpio_io_i(AXI_PLC_Wire1_GPIO2_TRI_I),
        .gpio_io_o(AXI_PLC_Wire1_GPIO2_TRI_O),
        .gpio_io_t(AXI_PLC_Wire1_GPIO2_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_MPLC_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(microblaze_MPLC_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(microblaze_MPLC_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M05_AXI_WVALID));
  design_1_AXI_PLC_Wire2_0 AXI_GPIO_PLCM_Wire2
       (.gpio_io_i(AXI_PLC_Wire1_GPIO3_TRI_I),
        .gpio_io_o(AXI_PLC_Wire1_GPIO3_TRI_O),
        .gpio_io_t(AXI_PLC_Wire1_GPIO3_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_MPLC_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(microblaze_MPLC_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(microblaze_MPLC_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M06_AXI_WVALID));
  design_1_PLC_Uart_Tx_enable_0 AXI_GPIO_PLC_RS485_Uart_Rx
       (.gpio_io_o(PLC_Uart_Rx_disable_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_axi_periph_M04_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_axi_periph_M04_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_axi_periph_M04_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_axi_periph_M04_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_PLC_axi_periph_M04_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_axi_periph_M04_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_axi_periph_M04_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_axi_periph_M04_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_axi_periph_M04_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_axi_periph_M04_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_axi_periph_M04_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_axi_periph_M04_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_axi_periph_M04_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_axi_periph_M04_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_axi_periph_M04_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_axi_periph_M04_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_axi_periph_M04_AXI_WVALID));
  design_1_axi_gpio_0_1 AXI_GPIO_PLC_RS485_Uart_Tx
       (.gpio_io_o(PLC_Uart_Tx_enable_GPIO_TRI_O),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_axi_periph_M03_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_axi_periph_M03_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_axi_periph_M03_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_PLC_axi_periph_M03_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_axi_periph_M03_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_axi_periph_M03_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_axi_periph_M03_AXI_WVALID));
  design_1_axi_gpio_0_2 AXI_GPIO_PLC_RS485_Wire1
       (.gpio_io_i(AXI_PLC_Wire1_GPIO_TRI_I),
        .gpio_io_o(AXI_PLC_Wire1_GPIO_TRI_O),
        .gpio_io_t(AXI_PLC_Wire1_GPIO_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_axi_periph_M05_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_axi_periph_M05_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_axi_periph_M05_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_axi_periph_M05_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_PLC_axi_periph_M05_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_axi_periph_M05_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_axi_periph_M05_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_axi_periph_M05_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_axi_periph_M05_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_axi_periph_M05_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_axi_periph_M05_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_axi_periph_M05_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_axi_periph_M05_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_axi_periph_M05_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_axi_periph_M05_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_axi_periph_M05_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_axi_periph_M05_AXI_WVALID));
  design_1_AXI_PLC_Wire1_0 AXI_GPIO_PLC_RS485_Wire2
       (.gpio_io_i(AXI_PLC_Wire1_GPIO1_TRI_I),
        .gpio_io_o(AXI_PLC_Wire1_GPIO1_TRI_O),
        .gpio_io_t(AXI_PLC_Wire1_GPIO1_TRI_T),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_axi_periph_M06_AXI_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_axi_periph_M06_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_axi_periph_M06_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_axi_periph_M06_AXI_AWADDR[8:0]),
        .s_axi_awready(microblaze_PLC_axi_periph_M06_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_axi_periph_M06_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_axi_periph_M06_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_axi_periph_M06_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_axi_periph_M06_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_axi_periph_M06_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_axi_periph_M06_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_axi_periph_M06_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_axi_periph_M06_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_axi_periph_M06_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_axi_periph_M06_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_axi_periph_M06_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_axi_periph_M06_AXI_WVALID));
  MDBRAM_PLCM_PLC_Ethernet_imp_DKYJU2 MDBRAM_PLCM_PLC_Ethernet
       (.BRAM_PORTA_addr(axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR),
        .BRAM_PORTA_clk(axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK),
        .BRAM_PORTA_dout(axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT),
        .BRAM_PORTA_en(axi_bram_ctrl_MPLC_BRAM_PORTA1_EN),
        .BRAM_PORTA_rst(axi_bram_ctrl_MPLC_BRAM_PORTA1_RST),
        .BRAM_PORTB_addr(axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR),
        .BRAM_PORTB_clk(axi_bram_ctrl_PLC_BRAM_PORTA1_CLK),
        .BRAM_PORTB_din(axi_bram_ctrl_PLC_BRAM_PORTA1_DIN),
        .BRAM_PORTB_dout(axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT),
        .BRAM_PORTB_en(axi_bram_ctrl_PLC_BRAM_PORTA1_EN),
        .BRAM_PORTB_rst(axi_bram_ctrl_PLC_BRAM_PORTA1_RST),
        .BRAM_PORTB_we(axi_bram_ctrl_PLC_BRAM_PORTA1_WE));
  MDBRAM_PLCM_PLC_RS485_imp_UD4KS2 MDBRAM_PLCM_PLC_RS485
       (.BRAM_PORTA_addr(axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR),
        .BRAM_PORTA_clk(axi_bram_ctrl_MPLC_BRAM_PORTA_CLK),
        .BRAM_PORTA_dout(axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT),
        .BRAM_PORTA_en(axi_bram_ctrl_MPLC_BRAM_PORTA_EN),
        .BRAM_PORTA_rst(axi_bram_ctrl_MPLC_BRAM_PORTA_RST),
        .BRAM_PORTB_addr(axi_bram_ctrl_PLC_BRAM_PORTA_ADDR),
        .BRAM_PORTB_clk(axi_bram_ctrl_PLC_BRAM_PORTA_CLK),
        .BRAM_PORTB_din(axi_bram_ctrl_PLC_BRAM_PORTA_DIN),
        .BRAM_PORTB_dout(axi_bram_ctrl_PLC_BRAM_PORTA_DOUT),
        .BRAM_PORTB_en(axi_bram_ctrl_PLC_BRAM_PORTA_EN),
        .BRAM_PORTB_rst(axi_bram_ctrl_PLC_BRAM_PORTA_RST),
        .BRAM_PORTB_we(axi_bram_ctrl_PLC_BRAM_PORTA_WE));
  design_1_Shared_Memory_PLCM_PLC_RS485_1 Shared_Memory_PLC
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_ADDR}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_WE));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC0000000 32 > design_1 MDBRAM_PLCM_PLC_RS485/Shared_Memory_PLCM_PLC_RS485" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_PLC_0 axi_bram_ctrl_1_PLCM
       (.bram_addr_a(axi_bram_ctrl_MPLC_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_MPLC_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_MPLC_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_MPLC_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_MPLC_BRAM_PORTA_RST),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M01_AXI_ARADDR),
        .s_axi_arburst(microblaze_MPLC_axi_periph_M01_AXI_ARBURST),
        .s_axi_arcache(microblaze_MPLC_axi_periph_M01_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_MPLC_axi_periph_M01_AXI_ARLEN),
        .s_axi_arlock(microblaze_MPLC_axi_periph_M01_AXI_ARLOCK),
        .s_axi_arprot(microblaze_MPLC_axi_periph_M01_AXI_ARPROT),
        .s_axi_arready(microblaze_MPLC_axi_periph_M01_AXI_ARREADY),
        .s_axi_arsize(microblaze_MPLC_axi_periph_M01_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M01_AXI_AWADDR),
        .s_axi_awburst(microblaze_MPLC_axi_periph_M01_AXI_AWBURST),
        .s_axi_awcache(microblaze_MPLC_axi_periph_M01_AXI_AWCACHE),
        .s_axi_awlen(microblaze_MPLC_axi_periph_M01_AXI_AWLEN),
        .s_axi_awlock(microblaze_MPLC_axi_periph_M01_AXI_AWLOCK),
        .s_axi_awprot(microblaze_MPLC_axi_periph_M01_AXI_AWPROT),
        .s_axi_awready(microblaze_MPLC_axi_periph_M01_AXI_AWREADY),
        .s_axi_awsize(microblaze_MPLC_axi_periph_M01_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M01_AXI_RDATA),
        .s_axi_rlast(microblaze_MPLC_axi_periph_M01_AXI_RLAST),
        .s_axi_rready(microblaze_MPLC_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M01_AXI_WDATA),
        .s_axi_wlast(microblaze_MPLC_axi_periph_M01_AXI_WLAST),
        .s_axi_wready(microblaze_MPLC_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M01_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC2000000 32 > design_1 MDBRAM_PLCM_PLC_Ethernet/Shared_Memory_PLCM_PLC_Ethernet" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_1_PLCM_0 axi_bram_ctrl_2_PLCM
       (.bram_addr_a(axi_bram_ctrl_MPLC_BRAM_PORTA1_ADDR),
        .bram_clk_a(axi_bram_ctrl_MPLC_BRAM_PORTA1_CLK),
        .bram_en_a(axi_bram_ctrl_MPLC_BRAM_PORTA1_EN),
        .bram_rddata_a(axi_bram_ctrl_MPLC_BRAM_PORTA1_DOUT),
        .bram_rst_a(axi_bram_ctrl_MPLC_BRAM_PORTA1_RST),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLCM_axi_periph_M08_AXI_ARADDR),
        .s_axi_arburst(microblaze_PLCM_axi_periph_M08_AXI_ARBURST),
        .s_axi_arcache(microblaze_PLCM_axi_periph_M08_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_PLCM_axi_periph_M08_AXI_ARLEN),
        .s_axi_arlock(microblaze_PLCM_axi_periph_M08_AXI_ARLOCK),
        .s_axi_arprot(microblaze_PLCM_axi_periph_M08_AXI_ARPROT),
        .s_axi_arready(microblaze_PLCM_axi_periph_M08_AXI_ARREADY),
        .s_axi_arsize(microblaze_PLCM_axi_periph_M08_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_PLCM_axi_periph_M08_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLCM_axi_periph_M08_AXI_AWADDR),
        .s_axi_awburst(microblaze_PLCM_axi_periph_M08_AXI_AWBURST),
        .s_axi_awcache(microblaze_PLCM_axi_periph_M08_AXI_AWCACHE),
        .s_axi_awlen(microblaze_PLCM_axi_periph_M08_AXI_AWLEN),
        .s_axi_awlock(microblaze_PLCM_axi_periph_M08_AXI_AWLOCK),
        .s_axi_awprot(microblaze_PLCM_axi_periph_M08_AXI_AWPROT),
        .s_axi_awready(microblaze_PLCM_axi_periph_M08_AXI_AWREADY),
        .s_axi_awsize(microblaze_PLCM_axi_periph_M08_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_PLCM_axi_periph_M08_AXI_AWVALID),
        .s_axi_bready(microblaze_PLCM_axi_periph_M08_AXI_BREADY),
        .s_axi_bresp(microblaze_PLCM_axi_periph_M08_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLCM_axi_periph_M08_AXI_BVALID),
        .s_axi_rdata(microblaze_PLCM_axi_periph_M08_AXI_RDATA),
        .s_axi_rlast(microblaze_PLCM_axi_periph_M08_AXI_RLAST),
        .s_axi_rready(microblaze_PLCM_axi_periph_M08_AXI_RREADY),
        .s_axi_rresp(microblaze_PLCM_axi_periph_M08_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLCM_axi_periph_M08_AXI_RVALID),
        .s_axi_wdata(microblaze_PLCM_axi_periph_M08_AXI_WDATA),
        .s_axi_wlast(microblaze_PLCM_axi_periph_M08_AXI_WLAST),
        .s_axi_wready(microblaze_PLCM_axi_periph_M08_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLCM_axi_periph_M08_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLCM_axi_periph_M08_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC2000000 32 > design_1 MDBRAM_PLCM_PLC_Ethernet/Shared_Memory_PLCM_PLC_Ethernet" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_PLC_RS485_0 axi_bram_ctrl_PLC_Ethernet
       (.bram_addr_a(axi_bram_ctrl_PLC_BRAM_PORTA1_ADDR),
        .bram_clk_a(axi_bram_ctrl_PLC_BRAM_PORTA1_CLK),
        .bram_en_a(axi_bram_ctrl_PLC_BRAM_PORTA1_EN),
        .bram_rddata_a(axi_bram_ctrl_PLC_BRAM_PORTA1_DOUT),
        .bram_rst_a(axi_bram_ctrl_PLC_BRAM_PORTA1_RST),
        .bram_we_a(axi_bram_ctrl_PLC_BRAM_PORTA1_WE),
        .bram_wrdata_a(axi_bram_ctrl_PLC_BRAM_PORTA1_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARADDR),
        .s_axi_arburst(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWADDR),
        .s_axi_awburst(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC1000000 32 > design_1 Shared_Memory_PLC" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_1_PLCM_1 axi_bram_ctrl_PLC_Ethernet_2
       (.bram_addr_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_PLC_Ethernet_2_BRAM_PORTA_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARADDR),
        .s_axi_arburst(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARBURST),
        .s_axi_arcache(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLEN),
        .s_axi_arlock(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLOCK),
        .s_axi_arprot(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARPROT),
        .s_axi_arready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARREADY),
        .s_axi_arsize(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWADDR),
        .s_axi_awburst(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWBURST),
        .s_axi_awcache(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWCACHE),
        .s_axi_awlen(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLEN),
        .s_axi_awlock(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLOCK),
        .s_axi_awprot(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWPROT),
        .s_axi_awready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWREADY),
        .s_axi_awsize(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RDATA),
        .s_axi_rlast(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RLAST),
        .s_axi_rready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WDATA),
        .s_axi_wlast(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WLAST),
        .s_axi_wready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC0000000 32 > design_1 MDBRAM_PLCM_PLC_RS485/Shared_Memory_PLCM_PLC_RS485" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_PLC_RS485
       (.bram_addr_a(axi_bram_ctrl_PLC_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_PLC_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_PLC_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_PLC_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_PLC_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_PLC_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_PLC_BRAM_PORTA_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_RS485_axi_periph_M01_AXI_ARADDR),
        .s_axi_arburst(microblaze_PLC_RS485_axi_periph_M01_AXI_ARBURST),
        .s_axi_arcache(microblaze_PLC_RS485_axi_periph_M01_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_PLC_RS485_axi_periph_M01_AXI_ARLEN),
        .s_axi_arlock(microblaze_PLC_RS485_axi_periph_M01_AXI_ARLOCK),
        .s_axi_arprot(microblaze_PLC_RS485_axi_periph_M01_AXI_ARPROT),
        .s_axi_arready(microblaze_PLC_RS485_axi_periph_M01_AXI_ARREADY),
        .s_axi_arsize(microblaze_PLC_RS485_axi_periph_M01_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_RS485_axi_periph_M01_AXI_AWADDR),
        .s_axi_awburst(microblaze_PLC_RS485_axi_periph_M01_AXI_AWBURST),
        .s_axi_awcache(microblaze_PLC_RS485_axi_periph_M01_AXI_AWCACHE),
        .s_axi_awlen(microblaze_PLC_RS485_axi_periph_M01_AXI_AWLEN),
        .s_axi_awlock(microblaze_PLC_RS485_axi_periph_M01_AXI_AWLOCK),
        .s_axi_awprot(microblaze_PLC_RS485_axi_periph_M01_AXI_AWPROT),
        .s_axi_awready(microblaze_PLC_RS485_axi_periph_M01_AXI_AWREADY),
        .s_axi_awsize(microblaze_PLC_RS485_axi_periph_M01_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_RS485_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_RS485_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_RS485_axi_periph_M01_AXI_RDATA),
        .s_axi_rlast(microblaze_PLC_RS485_axi_periph_M01_AXI_RLAST),
        .s_axi_rready(microblaze_PLC_RS485_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_RS485_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_RS485_axi_periph_M01_AXI_WDATA),
        .s_axi_wlast(microblaze_PLC_RS485_axi_periph_M01_AXI_WLAST),
        .s_axi_wready(microblaze_PLC_RS485_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_RS485_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0xC1000000 32 > design_1 Shared_Memory_PLC" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_PLC_RS485_1 axi_bram_ctrl_PLC_RS485_2
       (.bram_addr_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_PLC_RS485_2_BRAM_PORTA_DIN),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_RS485_axi_periph_M07_AXI_ARADDR),
        .s_axi_arburst(microblaze_PLC_RS485_axi_periph_M07_AXI_ARBURST),
        .s_axi_arcache(microblaze_PLC_RS485_axi_periph_M07_AXI_ARCACHE),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arlen(microblaze_PLC_RS485_axi_periph_M07_AXI_ARLEN),
        .s_axi_arlock(microblaze_PLC_RS485_axi_periph_M07_AXI_ARLOCK),
        .s_axi_arprot(microblaze_PLC_RS485_axi_periph_M07_AXI_ARPROT),
        .s_axi_arready(microblaze_PLC_RS485_axi_periph_M07_AXI_ARREADY),
        .s_axi_arsize(microblaze_PLC_RS485_axi_periph_M07_AXI_ARSIZE),
        .s_axi_arvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_RS485_axi_periph_M07_AXI_AWADDR),
        .s_axi_awburst(microblaze_PLC_RS485_axi_periph_M07_AXI_AWBURST),
        .s_axi_awcache(microblaze_PLC_RS485_axi_periph_M07_AXI_AWCACHE),
        .s_axi_awlen(microblaze_PLC_RS485_axi_periph_M07_AXI_AWLEN),
        .s_axi_awlock(microblaze_PLC_RS485_axi_periph_M07_AXI_AWLOCK),
        .s_axi_awprot(microblaze_PLC_RS485_axi_periph_M07_AXI_AWPROT),
        .s_axi_awready(microblaze_PLC_RS485_axi_periph_M07_AXI_AWREADY),
        .s_axi_awsize(microblaze_PLC_RS485_axi_periph_M07_AXI_AWSIZE),
        .s_axi_awvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_RS485_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_RS485_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_RS485_axi_periph_M07_AXI_RDATA),
        .s_axi_rlast(microblaze_PLC_RS485_axi_periph_M07_AXI_RLAST),
        .s_axi_rready(microblaze_PLC_RS485_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_RS485_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_RS485_axi_periph_M07_AXI_WDATA),
        .s_axi_wlast(microblaze_PLC_RS485_axi_periph_M07_AXI_WLAST),
        .s_axi_wready(microblaze_PLC_RS485_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_RS485_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_WVALID));
  design_1_axi_quad_spi_0_0 axi_quad_spi_PLCM
       (.ext_spi_clk(clk_wiz_clk_out28),
        .io0_i(1'b0),
        .io0_o(axi_quad_spi_PLCM_io0_o),
        .io1_i(io1_i_0_1),
        .ip2intc_irpt(axi_quad_spi_PLCM_ip2intc_irpt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLCM_axi_periph_M07_AXI_ARADDR[6:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLCM_axi_periph_M07_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLCM_axi_periph_M07_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLCM_axi_periph_M07_AXI_AWADDR[6:0]),
        .s_axi_awready(microblaze_PLCM_axi_periph_M07_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLCM_axi_periph_M07_AXI_AWVALID),
        .s_axi_bready(microblaze_PLCM_axi_periph_M07_AXI_BREADY),
        .s_axi_bresp(microblaze_PLCM_axi_periph_M07_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLCM_axi_periph_M07_AXI_BVALID),
        .s_axi_rdata(microblaze_PLCM_axi_periph_M07_AXI_RDATA),
        .s_axi_rready(microblaze_PLCM_axi_periph_M07_AXI_RREADY),
        .s_axi_rresp(microblaze_PLCM_axi_periph_M07_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLCM_axi_periph_M07_AXI_RVALID),
        .s_axi_wdata(microblaze_PLCM_axi_periph_M07_AXI_WDATA),
        .s_axi_wready(microblaze_PLCM_axi_periph_M07_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLCM_axi_periph_M07_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLCM_axi_periph_M07_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_quad_spi_PLCM_sck_o),
        .ss_i(1'b0),
        .ss_o(axi_quad_spi_PLCM_ss_o));
  design_1_axi_quad_spi_PLCM_0 axi_quad_spi_PLC_Ethernet
       (.ext_spi_clk(clk_wiz_clk_out28),
        .io0_i(1'b0),
        .io0_o(axi_quad_spi_PLCM_io0_o1),
        .io1_i(io1_i_0_2),
        .ip2intc_irpt(axi_quad_spi_PLC_Ethernet_ip2intc_irpt),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARADDR[6:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWADDR[6:0]),
        .s_axi_awready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_quad_spi_PLCM_sck_o1),
        .ss_i(1'b0),
        .ss_o(axi_quad_spi_PLCM_ss_o1));
  design_1_axi_uartlite_0_1 axi_uartlite_PLCM
       (.interrupt(axi_uartlite_PLCM_interrupt),
        .rx(axi_uartlite_MPLC_UART_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_axi_periph_M02_AXI_ARADDR[3:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_axi_periph_M02_AXI_AWADDR[3:0]),
        .s_axi_awready(microblaze_MPLC_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(microblaze_MPLC_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(microblaze_MPLC_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(microblaze_MPLC_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(microblaze_MPLC_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(microblaze_MPLC_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(microblaze_MPLC_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(microblaze_MPLC_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(microblaze_MPLC_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(microblaze_MPLC_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(microblaze_MPLC_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_axi_periph_M02_AXI_WVALID),
        .tx(axi_uartlite_MPLC_UART_TxD));
  design_1_axi_uartlite_0_0 axi_uartlite_PLC_RS485
       (.interrupt(axi_uartlite_PLC_interrupt),
        .rx(axi_uartlite_PLC_UART_RxD),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_RS485_axi_periph_M02_AXI_ARADDR[3:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_RS485_axi_periph_M02_AXI_ARREADY),
        .s_axi_arvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(microblaze_PLC_RS485_axi_periph_M02_AXI_AWADDR[3:0]),
        .s_axi_awready(microblaze_PLC_RS485_axi_periph_M02_AXI_AWREADY),
        .s_axi_awvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(microblaze_PLC_RS485_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(microblaze_PLC_RS485_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(microblaze_PLC_RS485_axi_periph_M02_AXI_RDATA),
        .s_axi_rready(microblaze_PLC_RS485_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(microblaze_PLC_RS485_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(microblaze_PLC_RS485_axi_periph_M02_AXI_WDATA),
        .s_axi_wready(microblaze_PLC_RS485_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(microblaze_PLC_RS485_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_WVALID),
        .tx(axi_uartlite_PLC_UART_TxD));
  design_1_clk_wiz_0_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out100(microblaze_0_Clk),
        .clk_out28(clk_wiz_clk_out28),
        .locked(clk_wiz_locked),
        .resetn(reset_rtl_1));
  design_1_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_PLC_debug_CAPTURE),
        .Dbg_Capture_1(microblaze_MPLC_debug_CAPTURE),
        .Dbg_Capture_2(microblaze_0_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_PLC_debug_CLK),
        .Dbg_Clk_1(microblaze_MPLC_debug_CLK),
        .Dbg_Clk_2(microblaze_0_debug_CLK),
        .Dbg_Disable_0(microblaze_PLC_debug_DISABLE),
        .Dbg_Disable_1(microblaze_MPLC_debug_DISABLE),
        .Dbg_Disable_2(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_PLC_debug_REG_EN),
        .Dbg_Reg_En_1(microblaze_MPLC_debug_REG_EN),
        .Dbg_Reg_En_2(microblaze_0_debug_REG_EN),
        .Dbg_Rst_0(microblaze_PLC_debug_RST),
        .Dbg_Rst_1(microblaze_MPLC_debug_RST),
        .Dbg_Rst_2(microblaze_0_debug_RST),
        .Dbg_Shift_0(microblaze_PLC_debug_SHIFT),
        .Dbg_Shift_1(microblaze_MPLC_debug_SHIFT),
        .Dbg_Shift_2(microblaze_0_debug_SHIFT),
        .Dbg_TDI_0(microblaze_PLC_debug_TDI),
        .Dbg_TDI_1(microblaze_MPLC_debug_TDI),
        .Dbg_TDI_2(microblaze_0_debug_TDI),
        .Dbg_TDO_0(microblaze_PLC_debug_TDO),
        .Dbg_TDO_1(microblaze_MPLC_debug_TDO),
        .Dbg_TDO_2(microblaze_0_debug_TDO),
        .Dbg_Update_0(microblaze_PLC_debug_UPDATE),
        .Dbg_Update_1(microblaze_MPLC_debug_UPDATE),
        .Dbg_Update_2(microblaze_0_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > design_1 microblaze_PLCM_local_memory/dlmb_bram_if_cntlr design_1 axi_bram_ctrl_1_PLCM design_1 axi_bram_ctrl_2_PLCM" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_microblaze_0_1 microblaze_PLCM
       (.Byte_Enable(microblaze_MPLC_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_MPLC_dlmb_1_CE),
        .DReady(microblaze_MPLC_dlmb_1_READY),
        .DUE(microblaze_MPLC_dlmb_1_UE),
        .DWait(microblaze_MPLC_dlmb_1_WAIT),
        .D_AS(microblaze_MPLC_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_MPLC_dlmb_1_ABUS),
        .Data_Read(microblaze_MPLC_dlmb_1_READDBUS),
        .Data_Write(microblaze_MPLC_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_MPLC_debug_CAPTURE),
        .Dbg_Clk(microblaze_MPLC_debug_CLK),
        .Dbg_Disable(microblaze_MPLC_debug_DISABLE),
        .Dbg_Reg_En(microblaze_MPLC_debug_REG_EN),
        .Dbg_Shift(microblaze_MPLC_debug_SHIFT),
        .Dbg_TDI(microblaze_MPLC_debug_TDI),
        .Dbg_TDO(microblaze_MPLC_debug_TDO),
        .Dbg_Update(microblaze_MPLC_debug_UPDATE),
        .Debug_Rst(microblaze_MPLC_debug_RST),
        .ICE(microblaze_MPLC_ilmb_1_CE),
        .IFetch(microblaze_MPLC_ilmb_1_READSTROBE),
        .IReady(microblaze_MPLC_ilmb_1_READY),
        .IUE(microblaze_MPLC_ilmb_1_UE),
        .IWAIT(microblaze_MPLC_ilmb_1_WAIT),
        .I_AS(microblaze_MPLC_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_MPLC_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_MPLC_ilmb_1_ABUS),
        .Interrupt(microblaze_MPLC_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_MPLC_interrupt_ACK),
        .Interrupt_Address({microblaze_MPLC_interrupt_ADDRESS[31],microblaze_MPLC_interrupt_ADDRESS[30],microblaze_MPLC_interrupt_ADDRESS[29],microblaze_MPLC_interrupt_ADDRESS[28],microblaze_MPLC_interrupt_ADDRESS[27],microblaze_MPLC_interrupt_ADDRESS[26],microblaze_MPLC_interrupt_ADDRESS[25],microblaze_MPLC_interrupt_ADDRESS[24],microblaze_MPLC_interrupt_ADDRESS[23],microblaze_MPLC_interrupt_ADDRESS[22],microblaze_MPLC_interrupt_ADDRESS[21],microblaze_MPLC_interrupt_ADDRESS[20],microblaze_MPLC_interrupt_ADDRESS[19],microblaze_MPLC_interrupt_ADDRESS[18],microblaze_MPLC_interrupt_ADDRESS[17],microblaze_MPLC_interrupt_ADDRESS[16],microblaze_MPLC_interrupt_ADDRESS[15],microblaze_MPLC_interrupt_ADDRESS[14],microblaze_MPLC_interrupt_ADDRESS[13],microblaze_MPLC_interrupt_ADDRESS[12],microblaze_MPLC_interrupt_ADDRESS[11],microblaze_MPLC_interrupt_ADDRESS[10],microblaze_MPLC_interrupt_ADDRESS[9],microblaze_MPLC_interrupt_ADDRESS[8],microblaze_MPLC_interrupt_ADDRESS[7],microblaze_MPLC_interrupt_ADDRESS[6],microblaze_MPLC_interrupt_ADDRESS[5],microblaze_MPLC_interrupt_ADDRESS[4],microblaze_MPLC_interrupt_ADDRESS[3],microblaze_MPLC_interrupt_ADDRESS[2],microblaze_MPLC_interrupt_ADDRESS[1],microblaze_MPLC_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(microblaze_MPLC_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_MPLC_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_MPLC_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_MPLC_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_MPLC_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_MPLC_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_MPLC_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_MPLC_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_MPLC_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_MPLC_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_MPLC_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_MPLC_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_MPLC_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_MPLC_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_MPLC_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_MPLC_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_MPLC_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_MPLC_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_MPLC_axi_dp_WVALID),
        .Read_Strobe(microblaze_MPLC_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_150M_mb_reset),
        .Write_Strobe(microblaze_MPLC_dlmb_1_WRITESTROBE));
  design_1_microblaze_MPLC_axi_intc_0 microblaze_PLCM_axi_intc
       (.interrupt_address(microblaze_MPLC_interrupt_ADDRESS),
        .intr(xlconcat_interrupts_PLCM_dout),
        .irq(microblaze_MPLC_interrupt_INTERRUPT),
        .processor_ack({microblaze_MPLC_interrupt_ACK[0],microblaze_MPLC_interrupt_ACK[1]}),
        .processor_clk(microblaze_0_Clk),
        .processor_rst(rst_clk_wiz_150M_mb_reset),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_MPLC_intc_axi_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_MPLC_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_MPLC_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_MPLC_intc_axi_AWADDR[8:0]),
        .s_axi_awready(microblaze_MPLC_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_MPLC_intc_axi_AWVALID),
        .s_axi_bready(microblaze_MPLC_intc_axi_BREADY),
        .s_axi_bresp(microblaze_MPLC_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_MPLC_intc_axi_BVALID),
        .s_axi_rdata(microblaze_MPLC_intc_axi_RDATA),
        .s_axi_rready(microblaze_MPLC_intc_axi_RREADY),
        .s_axi_rresp(microblaze_MPLC_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_MPLC_intc_axi_RVALID),
        .s_axi_wdata(microblaze_MPLC_intc_axi_WDATA),
        .s_axi_wready(microblaze_MPLC_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_MPLC_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_MPLC_intc_axi_WVALID));
  design_1_microblaze_MPLC_axi_periph_0 microblaze_PLCM_axi_periph
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_clk_wiz_150M_interconnect_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(microblaze_MPLC_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_MPLC_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_MPLC_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_MPLC_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_MPLC_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_MPLC_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_MPLC_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_MPLC_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_MPLC_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_MPLC_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_MPLC_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_MPLC_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_MPLC_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_MPLC_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_MPLC_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_MPLC_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_MPLC_intc_axi_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(S00_ARESETN_1),
        .M01_AXI_araddr(microblaze_MPLC_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arburst(microblaze_MPLC_axi_periph_M01_AXI_ARBURST),
        .M01_AXI_arcache(microblaze_MPLC_axi_periph_M01_AXI_ARCACHE),
        .M01_AXI_arlen(microblaze_MPLC_axi_periph_M01_AXI_ARLEN),
        .M01_AXI_arlock(microblaze_MPLC_axi_periph_M01_AXI_ARLOCK),
        .M01_AXI_arprot(microblaze_MPLC_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(microblaze_MPLC_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arsize(microblaze_MPLC_axi_periph_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(microblaze_MPLC_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_MPLC_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awburst(microblaze_MPLC_axi_periph_M01_AXI_AWBURST),
        .M01_AXI_awcache(microblaze_MPLC_axi_periph_M01_AXI_AWCACHE),
        .M01_AXI_awlen(microblaze_MPLC_axi_periph_M01_AXI_AWLEN),
        .M01_AXI_awlock(microblaze_MPLC_axi_periph_M01_AXI_AWLOCK),
        .M01_AXI_awprot(microblaze_MPLC_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(microblaze_MPLC_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awsize(microblaze_MPLC_axi_periph_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(microblaze_MPLC_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_MPLC_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_MPLC_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_MPLC_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_MPLC_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rlast(microblaze_MPLC_axi_periph_M01_AXI_RLAST),
        .M01_AXI_rready(microblaze_MPLC_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_MPLC_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_MPLC_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_MPLC_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wlast(microblaze_MPLC_axi_periph_M01_AXI_WLAST),
        .M01_AXI_wready(microblaze_MPLC_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_MPLC_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_MPLC_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(S00_ARESETN_1),
        .M02_AXI_araddr(microblaze_MPLC_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(microblaze_MPLC_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(microblaze_MPLC_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(microblaze_MPLC_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(microblaze_MPLC_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(microblaze_MPLC_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(microblaze_MPLC_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(microblaze_MPLC_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(microblaze_MPLC_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(microblaze_MPLC_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(microblaze_MPLC_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(microblaze_MPLC_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(microblaze_MPLC_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(microblaze_MPLC_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(microblaze_MPLC_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(microblaze_MPLC_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(microblaze_MPLC_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(S00_ARESETN_1),
        .M03_AXI_araddr(microblaze_MPLC_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(microblaze_MPLC_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(microblaze_MPLC_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(microblaze_MPLC_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(microblaze_MPLC_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(microblaze_MPLC_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(microblaze_MPLC_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(microblaze_MPLC_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(microblaze_MPLC_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(microblaze_MPLC_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(microblaze_MPLC_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(microblaze_MPLC_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(microblaze_MPLC_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(microblaze_MPLC_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(microblaze_MPLC_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(microblaze_MPLC_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(microblaze_MPLC_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(microblaze_0_Clk),
        .M04_ARESETN(S00_ARESETN_1),
        .M04_AXI_araddr(microblaze_MPLC_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(microblaze_MPLC_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(microblaze_MPLC_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(microblaze_MPLC_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(microblaze_MPLC_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(microblaze_MPLC_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(microblaze_MPLC_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(microblaze_MPLC_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(microblaze_MPLC_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(microblaze_MPLC_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(microblaze_MPLC_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(microblaze_MPLC_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(microblaze_MPLC_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(microblaze_MPLC_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(microblaze_MPLC_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(microblaze_MPLC_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(microblaze_MPLC_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(microblaze_0_Clk),
        .M05_ARESETN(S00_ARESETN_1),
        .M05_AXI_araddr(microblaze_MPLC_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(microblaze_MPLC_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(microblaze_MPLC_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(microblaze_MPLC_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(microblaze_MPLC_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(microblaze_MPLC_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(microblaze_MPLC_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(microblaze_MPLC_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(microblaze_MPLC_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(microblaze_MPLC_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(microblaze_MPLC_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(microblaze_MPLC_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(microblaze_MPLC_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(microblaze_MPLC_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(microblaze_MPLC_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(microblaze_MPLC_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(microblaze_MPLC_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(microblaze_0_Clk),
        .M06_ARESETN(S00_ARESETN_1),
        .M06_AXI_araddr(microblaze_MPLC_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(microblaze_MPLC_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(microblaze_MPLC_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(microblaze_MPLC_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(microblaze_MPLC_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(microblaze_MPLC_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(microblaze_MPLC_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(microblaze_MPLC_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(microblaze_MPLC_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(microblaze_MPLC_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(microblaze_MPLC_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(microblaze_MPLC_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(microblaze_MPLC_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(microblaze_MPLC_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(microblaze_MPLC_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(microblaze_MPLC_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(microblaze_MPLC_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(microblaze_0_Clk),
        .M07_ARESETN(S00_ARESETN_1),
        .M07_AXI_araddr(microblaze_PLCM_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arready(microblaze_PLCM_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arvalid(microblaze_PLCM_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(microblaze_PLCM_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awready(microblaze_PLCM_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awvalid(microblaze_PLCM_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(microblaze_PLCM_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(microblaze_PLCM_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(microblaze_PLCM_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(microblaze_PLCM_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rready(microblaze_PLCM_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(microblaze_PLCM_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(microblaze_PLCM_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(microblaze_PLCM_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wready(microblaze_PLCM_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(microblaze_PLCM_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(microblaze_PLCM_axi_periph_M07_AXI_WVALID),
        .M08_ACLK(microblaze_0_Clk),
        .M08_ARESETN(S00_ARESETN_1),
        .M08_AXI_araddr(microblaze_PLCM_axi_periph_M08_AXI_ARADDR),
        .M08_AXI_arburst(microblaze_PLCM_axi_periph_M08_AXI_ARBURST),
        .M08_AXI_arcache(microblaze_PLCM_axi_periph_M08_AXI_ARCACHE),
        .M08_AXI_arlen(microblaze_PLCM_axi_periph_M08_AXI_ARLEN),
        .M08_AXI_arlock(microblaze_PLCM_axi_periph_M08_AXI_ARLOCK),
        .M08_AXI_arprot(microblaze_PLCM_axi_periph_M08_AXI_ARPROT),
        .M08_AXI_arready(microblaze_PLCM_axi_periph_M08_AXI_ARREADY),
        .M08_AXI_arsize(microblaze_PLCM_axi_periph_M08_AXI_ARSIZE),
        .M08_AXI_arvalid(microblaze_PLCM_axi_periph_M08_AXI_ARVALID),
        .M08_AXI_awaddr(microblaze_PLCM_axi_periph_M08_AXI_AWADDR),
        .M08_AXI_awburst(microblaze_PLCM_axi_periph_M08_AXI_AWBURST),
        .M08_AXI_awcache(microblaze_PLCM_axi_periph_M08_AXI_AWCACHE),
        .M08_AXI_awlen(microblaze_PLCM_axi_periph_M08_AXI_AWLEN),
        .M08_AXI_awlock(microblaze_PLCM_axi_periph_M08_AXI_AWLOCK),
        .M08_AXI_awprot(microblaze_PLCM_axi_periph_M08_AXI_AWPROT),
        .M08_AXI_awready(microblaze_PLCM_axi_periph_M08_AXI_AWREADY),
        .M08_AXI_awsize(microblaze_PLCM_axi_periph_M08_AXI_AWSIZE),
        .M08_AXI_awvalid(microblaze_PLCM_axi_periph_M08_AXI_AWVALID),
        .M08_AXI_bready(microblaze_PLCM_axi_periph_M08_AXI_BREADY),
        .M08_AXI_bresp(microblaze_PLCM_axi_periph_M08_AXI_BRESP),
        .M08_AXI_bvalid(microblaze_PLCM_axi_periph_M08_AXI_BVALID),
        .M08_AXI_rdata(microblaze_PLCM_axi_periph_M08_AXI_RDATA),
        .M08_AXI_rlast(microblaze_PLCM_axi_periph_M08_AXI_RLAST),
        .M08_AXI_rready(microblaze_PLCM_axi_periph_M08_AXI_RREADY),
        .M08_AXI_rresp(microblaze_PLCM_axi_periph_M08_AXI_RRESP),
        .M08_AXI_rvalid(microblaze_PLCM_axi_periph_M08_AXI_RVALID),
        .M08_AXI_wdata(microblaze_PLCM_axi_periph_M08_AXI_WDATA),
        .M08_AXI_wlast(microblaze_PLCM_axi_periph_M08_AXI_WLAST),
        .M08_AXI_wready(microblaze_PLCM_axi_periph_M08_AXI_WREADY),
        .M08_AXI_wstrb(microblaze_PLCM_axi_periph_M08_AXI_WSTRB),
        .M08_AXI_wvalid(microblaze_PLCM_axi_periph_M08_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(microblaze_MPLC_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_MPLC_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_MPLC_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_MPLC_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_MPLC_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_MPLC_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_MPLC_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_MPLC_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_MPLC_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_MPLC_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_MPLC_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_MPLC_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_MPLC_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_MPLC_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_MPLC_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_MPLC_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_MPLC_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_MPLC_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_MPLC_axi_dp_WVALID));
  microblaze_PLCM_local_memory_imp_DY09GZ microblaze_PLCM_local_memory
       (.DLMB_abus(microblaze_MPLC_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_MPLC_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_MPLC_dlmb_1_BE),
        .DLMB_ce(microblaze_MPLC_dlmb_1_CE),
        .DLMB_readdbus(microblaze_MPLC_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_MPLC_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_MPLC_dlmb_1_READY),
        .DLMB_ue(microblaze_MPLC_dlmb_1_UE),
        .DLMB_wait(microblaze_MPLC_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_MPLC_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_MPLC_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_MPLC_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_MPLC_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_MPLC_ilmb_1_CE),
        .ILMB_readdbus(microblaze_MPLC_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_MPLC_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_MPLC_ilmb_1_READY),
        .ILMB_ue(microblaze_MPLC_ilmb_1_UE),
        .ILMB_wait(microblaze_MPLC_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_wiz_150M_bus_struct_reset));
  (* BMM_INFO_PROCESSOR = "microblaze-le > design_1 microblaze_PLC_Ethernet_local_memory/dlmb_bram_if_cntlr design_1 axi_bram_ctrl_PLC_Ethernet_2 design_1 axi_bram_ctrl_PLC_Ethernet" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_microblaze_0_2 microblaze_PLC_Ethernet
       (.Byte_Enable(microblaze_0_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_0_dlmb_1_CE),
        .DReady(microblaze_0_dlmb_1_READY),
        .DUE(microblaze_0_dlmb_1_UE),
        .DWait(microblaze_0_dlmb_1_WAIT),
        .D_AS(microblaze_0_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_0_dlmb_1_ABUS),
        .Data_Read(microblaze_0_dlmb_1_READDBUS),
        .Data_Write(microblaze_0_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_0_debug_CAPTURE),
        .Dbg_Clk(microblaze_0_debug_CLK),
        .Dbg_Disable(microblaze_0_debug_DISABLE),
        .Dbg_Reg_En(microblaze_0_debug_REG_EN),
        .Dbg_Shift(microblaze_0_debug_SHIFT),
        .Dbg_TDI(microblaze_0_debug_TDI),
        .Dbg_TDO(microblaze_0_debug_TDO),
        .Dbg_Update(microblaze_0_debug_UPDATE),
        .Debug_Rst(microblaze_0_debug_RST),
        .ICE(microblaze_0_ilmb_1_CE),
        .IFetch(microblaze_0_ilmb_1_READSTROBE),
        .IReady(microblaze_0_ilmb_1_READY),
        .IUE(microblaze_0_ilmb_1_UE),
        .IWAIT(microblaze_0_ilmb_1_WAIT),
        .I_AS(microblaze_0_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_0_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_0_ilmb_1_ABUS),
        .Interrupt(microblaze_0_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_0_interrupt_ACK),
        .Interrupt_Address({microblaze_0_interrupt_ADDRESS[31],microblaze_0_interrupt_ADDRESS[30],microblaze_0_interrupt_ADDRESS[29],microblaze_0_interrupt_ADDRESS[28],microblaze_0_interrupt_ADDRESS[27],microblaze_0_interrupt_ADDRESS[26],microblaze_0_interrupt_ADDRESS[25],microblaze_0_interrupt_ADDRESS[24],microblaze_0_interrupt_ADDRESS[23],microblaze_0_interrupt_ADDRESS[22],microblaze_0_interrupt_ADDRESS[21],microblaze_0_interrupt_ADDRESS[20],microblaze_0_interrupt_ADDRESS[19],microblaze_0_interrupt_ADDRESS[18],microblaze_0_interrupt_ADDRESS[17],microblaze_0_interrupt_ADDRESS[16],microblaze_0_interrupt_ADDRESS[15],microblaze_0_interrupt_ADDRESS[14],microblaze_0_interrupt_ADDRESS[13],microblaze_0_interrupt_ADDRESS[12],microblaze_0_interrupt_ADDRESS[11],microblaze_0_interrupt_ADDRESS[10],microblaze_0_interrupt_ADDRESS[9],microblaze_0_interrupt_ADDRESS[8],microblaze_0_interrupt_ADDRESS[7],microblaze_0_interrupt_ADDRESS[6],microblaze_0_interrupt_ADDRESS[5],microblaze_0_interrupt_ADDRESS[4],microblaze_0_interrupt_ADDRESS[3],microblaze_0_interrupt_ADDRESS[2],microblaze_0_interrupt_ADDRESS[1],microblaze_0_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(microblaze_0_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_0_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_0_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_0_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_0_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_0_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_0_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_0_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_0_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_0_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_0_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_0_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_0_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_0_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_0_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_0_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_0_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_0_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_0_axi_dp_WVALID),
        .Read_Strobe(microblaze_0_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_150M_mb_reset),
        .Write_Strobe(microblaze_0_dlmb_1_WRITESTROBE));
  design_1_microblaze_0_axi_intc_0 microblaze_PLC_Ethernet_axi_intc
       (.interrupt_address(microblaze_0_interrupt_ADDRESS),
        .intr(axi_quad_spi_PLC_Ethernet_ip2intc_irpt),
        .irq(microblaze_0_interrupt_INTERRUPT),
        .processor_ack({microblaze_0_interrupt_ACK[0],microblaze_0_interrupt_ACK[1]}),
        .processor_clk(microblaze_0_Clk),
        .processor_rst(rst_clk_wiz_150M_mb_reset),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_0_intc_axi_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_0_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_0_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_0_intc_axi_AWADDR[8:0]),
        .s_axi_awready(microblaze_0_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_0_intc_axi_AWVALID),
        .s_axi_bready(microblaze_0_intc_axi_BREADY),
        .s_axi_bresp(microblaze_0_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_0_intc_axi_BVALID),
        .s_axi_rdata(microblaze_0_intc_axi_RDATA),
        .s_axi_rready(microblaze_0_intc_axi_RREADY),
        .s_axi_rresp(microblaze_0_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_0_intc_axi_RVALID),
        .s_axi_wdata(microblaze_0_intc_axi_WDATA),
        .s_axi_wready(microblaze_0_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_0_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_0_intc_axi_WVALID));
  design_1_microblaze_0_axi_periph_0 microblaze_PLC_Ethernet_axi_periph
       (.ACLK(microblaze_0_Clk),
        .ARESETN(S00_ARESETN_1),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(microblaze_0_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_0_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_0_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_0_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_0_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_0_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_0_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_0_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_0_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_0_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_0_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_0_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_0_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_0_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_0_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_0_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_0_intc_axi_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(S00_ARESETN_1),
        .M01_AXI_araddr(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_PLC_Ethernet_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(S00_ARESETN_1),
        .M02_AXI_araddr(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arburst(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARBURST),
        .M02_AXI_arcache(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARCACHE),
        .M02_AXI_arlen(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLEN),
        .M02_AXI_arlock(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARLOCK),
        .M02_AXI_arprot(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARPROT),
        .M02_AXI_arready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arsize(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awburst(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWBURST),
        .M02_AXI_awcache(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWCACHE),
        .M02_AXI_awlen(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLEN),
        .M02_AXI_awlock(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWLOCK),
        .M02_AXI_awprot(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWPROT),
        .M02_AXI_awready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awsize(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rlast(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RLAST),
        .M02_AXI_rready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wlast(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WLAST),
        .M02_AXI_wready(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(microblaze_PLC_Ethernet_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(S00_ARESETN_1),
        .M03_AXI_araddr(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arburst(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARBURST),
        .M03_AXI_arcache(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARCACHE),
        .M03_AXI_arlen(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLEN),
        .M03_AXI_arlock(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARLOCK),
        .M03_AXI_arprot(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARPROT),
        .M03_AXI_arready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arsize(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awburst(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWBURST),
        .M03_AXI_awcache(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWCACHE),
        .M03_AXI_awlen(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLEN),
        .M03_AXI_awlock(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWLOCK),
        .M03_AXI_awprot(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWPROT),
        .M03_AXI_awready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awsize(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rlast(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RLAST),
        .M03_AXI_rready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wlast(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WLAST),
        .M03_AXI_wready(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(microblaze_PLC_Ethernet_axi_periph_M03_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(microblaze_0_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_0_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_0_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_0_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_0_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_0_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_0_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_0_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_0_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_0_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_0_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_0_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_0_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_0_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_0_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_0_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_0_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_0_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_0_axi_dp_WVALID));
  microblaze_PLC_Ethernet_local_memory_imp_NTI4HY microblaze_PLC_Ethernet_local_memory
       (.DLMB_abus(microblaze_0_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_0_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_0_dlmb_1_BE),
        .DLMB_ce(microblaze_0_dlmb_1_CE),
        .DLMB_readdbus(microblaze_0_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_0_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_0_dlmb_1_READY),
        .DLMB_ue(microblaze_0_dlmb_1_UE),
        .DLMB_wait(microblaze_0_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_0_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_0_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_0_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_0_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_0_ilmb_1_CE),
        .ILMB_readdbus(microblaze_0_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_0_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_0_ilmb_1_READY),
        .ILMB_ue(microblaze_0_ilmb_1_UE),
        .ILMB_wait(microblaze_0_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_wiz_150M_bus_struct_reset));
  (* BMM_INFO_PROCESSOR = "microblaze-le > design_1 microblaze_PLC_RS485_local_memory/dlmb_bram_if_cntlr design_1 axi_bram_ctrl_PLC_RS485 design_1 axi_bram_ctrl_PLC_RS485_2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_microblaze_0_0 microblaze_PLC_RS485
       (.Byte_Enable(microblaze_PLC_dlmb_1_BE),
        .Clk(microblaze_0_Clk),
        .DCE(microblaze_PLC_dlmb_1_CE),
        .DReady(microblaze_PLC_dlmb_1_READY),
        .DUE(microblaze_PLC_dlmb_1_UE),
        .DWait(microblaze_PLC_dlmb_1_WAIT),
        .D_AS(microblaze_PLC_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_PLC_dlmb_1_ABUS),
        .Data_Read(microblaze_PLC_dlmb_1_READDBUS),
        .Data_Write(microblaze_PLC_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_PLC_debug_CAPTURE),
        .Dbg_Clk(microblaze_PLC_debug_CLK),
        .Dbg_Disable(microblaze_PLC_debug_DISABLE),
        .Dbg_Reg_En(microblaze_PLC_debug_REG_EN),
        .Dbg_Shift(microblaze_PLC_debug_SHIFT),
        .Dbg_TDI(microblaze_PLC_debug_TDI),
        .Dbg_TDO(microblaze_PLC_debug_TDO),
        .Dbg_Update(microblaze_PLC_debug_UPDATE),
        .Debug_Rst(microblaze_PLC_debug_RST),
        .ICE(microblaze_PLC_ilmb_1_CE),
        .IFetch(microblaze_PLC_ilmb_1_READSTROBE),
        .IReady(microblaze_PLC_ilmb_1_READY),
        .IUE(microblaze_PLC_ilmb_1_UE),
        .IWAIT(microblaze_PLC_ilmb_1_WAIT),
        .I_AS(microblaze_PLC_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_PLC_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_PLC_ilmb_1_ABUS),
        .Interrupt(microblaze_PLC_interrupt_INTERRUPT),
        .Interrupt_Ack(microblaze_PLC_interrupt_ACK),
        .Interrupt_Address({microblaze_PLC_interrupt_ADDRESS[31],microblaze_PLC_interrupt_ADDRESS[30],microblaze_PLC_interrupt_ADDRESS[29],microblaze_PLC_interrupt_ADDRESS[28],microblaze_PLC_interrupt_ADDRESS[27],microblaze_PLC_interrupt_ADDRESS[26],microblaze_PLC_interrupt_ADDRESS[25],microblaze_PLC_interrupt_ADDRESS[24],microblaze_PLC_interrupt_ADDRESS[23],microblaze_PLC_interrupt_ADDRESS[22],microblaze_PLC_interrupt_ADDRESS[21],microblaze_PLC_interrupt_ADDRESS[20],microblaze_PLC_interrupt_ADDRESS[19],microblaze_PLC_interrupt_ADDRESS[18],microblaze_PLC_interrupt_ADDRESS[17],microblaze_PLC_interrupt_ADDRESS[16],microblaze_PLC_interrupt_ADDRESS[15],microblaze_PLC_interrupt_ADDRESS[14],microblaze_PLC_interrupt_ADDRESS[13],microblaze_PLC_interrupt_ADDRESS[12],microblaze_PLC_interrupt_ADDRESS[11],microblaze_PLC_interrupt_ADDRESS[10],microblaze_PLC_interrupt_ADDRESS[9],microblaze_PLC_interrupt_ADDRESS[8],microblaze_PLC_interrupt_ADDRESS[7],microblaze_PLC_interrupt_ADDRESS[6],microblaze_PLC_interrupt_ADDRESS[5],microblaze_PLC_interrupt_ADDRESS[4],microblaze_PLC_interrupt_ADDRESS[3],microblaze_PLC_interrupt_ADDRESS[2],microblaze_PLC_interrupt_ADDRESS[1],microblaze_PLC_interrupt_ADDRESS[0]}),
        .M_AXI_DP_ARADDR(microblaze_PLC_axi_dp_ARADDR),
        .M_AXI_DP_ARPROT(microblaze_PLC_axi_dp_ARPROT),
        .M_AXI_DP_ARREADY(microblaze_PLC_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_PLC_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_PLC_axi_dp_AWADDR),
        .M_AXI_DP_AWPROT(microblaze_PLC_axi_dp_AWPROT),
        .M_AXI_DP_AWREADY(microblaze_PLC_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_PLC_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_PLC_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_PLC_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_PLC_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_PLC_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_PLC_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_PLC_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_PLC_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_PLC_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_PLC_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_PLC_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_PLC_axi_dp_WVALID),
        .Read_Strobe(microblaze_PLC_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_150M_mb_reset),
        .Write_Strobe(microblaze_PLC_dlmb_1_WRITESTROBE));
  design_1_microblaze_PLC_axi_intc_0 microblaze_PLC_RS485_axi_intc
       (.interrupt_address(microblaze_PLC_interrupt_ADDRESS),
        .intr(axi_uartlite_PLC_interrupt),
        .irq(microblaze_PLC_interrupt_INTERRUPT),
        .processor_ack({microblaze_PLC_interrupt_ACK[0],microblaze_PLC_interrupt_ACK[1]}),
        .processor_clk(microblaze_0_Clk),
        .processor_rst(rst_clk_wiz_150M_mb_reset),
        .s_axi_aclk(microblaze_0_Clk),
        .s_axi_araddr(microblaze_PLC_intc_axi_ARADDR[8:0]),
        .s_axi_aresetn(S00_ARESETN_1),
        .s_axi_arready(microblaze_PLC_intc_axi_ARREADY),
        .s_axi_arvalid(microblaze_PLC_intc_axi_ARVALID),
        .s_axi_awaddr(microblaze_PLC_intc_axi_AWADDR[8:0]),
        .s_axi_awready(microblaze_PLC_intc_axi_AWREADY),
        .s_axi_awvalid(microblaze_PLC_intc_axi_AWVALID),
        .s_axi_bready(microblaze_PLC_intc_axi_BREADY),
        .s_axi_bresp(microblaze_PLC_intc_axi_BRESP),
        .s_axi_bvalid(microblaze_PLC_intc_axi_BVALID),
        .s_axi_rdata(microblaze_PLC_intc_axi_RDATA),
        .s_axi_rready(microblaze_PLC_intc_axi_RREADY),
        .s_axi_rresp(microblaze_PLC_intc_axi_RRESP),
        .s_axi_rvalid(microblaze_PLC_intc_axi_RVALID),
        .s_axi_wdata(microblaze_PLC_intc_axi_WDATA),
        .s_axi_wready(microblaze_PLC_intc_axi_WREADY),
        .s_axi_wstrb(microblaze_PLC_intc_axi_WSTRB),
        .s_axi_wvalid(microblaze_PLC_intc_axi_WVALID));
  design_1_microblaze_PLC_axi_periph_0 microblaze_PLC_RS485_axi_periph
       (.ACLK(microblaze_0_Clk),
        .ARESETN(rst_clk_wiz_150M_interconnect_aresetn),
        .M00_ACLK(microblaze_0_Clk),
        .M00_ARESETN(S00_ARESETN_1),
        .M00_AXI_araddr(microblaze_PLC_intc_axi_ARADDR),
        .M00_AXI_arready(microblaze_PLC_intc_axi_ARREADY),
        .M00_AXI_arvalid(microblaze_PLC_intc_axi_ARVALID),
        .M00_AXI_awaddr(microblaze_PLC_intc_axi_AWADDR),
        .M00_AXI_awready(microblaze_PLC_intc_axi_AWREADY),
        .M00_AXI_awvalid(microblaze_PLC_intc_axi_AWVALID),
        .M00_AXI_bready(microblaze_PLC_intc_axi_BREADY),
        .M00_AXI_bresp(microblaze_PLC_intc_axi_BRESP),
        .M00_AXI_bvalid(microblaze_PLC_intc_axi_BVALID),
        .M00_AXI_rdata(microblaze_PLC_intc_axi_RDATA),
        .M00_AXI_rready(microblaze_PLC_intc_axi_RREADY),
        .M00_AXI_rresp(microblaze_PLC_intc_axi_RRESP),
        .M00_AXI_rvalid(microblaze_PLC_intc_axi_RVALID),
        .M00_AXI_wdata(microblaze_PLC_intc_axi_WDATA),
        .M00_AXI_wready(microblaze_PLC_intc_axi_WREADY),
        .M00_AXI_wstrb(microblaze_PLC_intc_axi_WSTRB),
        .M00_AXI_wvalid(microblaze_PLC_intc_axi_WVALID),
        .M01_ACLK(microblaze_0_Clk),
        .M01_ARESETN(S00_ARESETN_1),
        .M01_AXI_araddr(microblaze_PLC_RS485_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arburst(microblaze_PLC_RS485_axi_periph_M01_AXI_ARBURST),
        .M01_AXI_arcache(microblaze_PLC_RS485_axi_periph_M01_AXI_ARCACHE),
        .M01_AXI_arlen(microblaze_PLC_RS485_axi_periph_M01_AXI_ARLEN),
        .M01_AXI_arlock(microblaze_PLC_RS485_axi_periph_M01_AXI_ARLOCK),
        .M01_AXI_arprot(microblaze_PLC_RS485_axi_periph_M01_AXI_ARPROT),
        .M01_AXI_arready(microblaze_PLC_RS485_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arsize(microblaze_PLC_RS485_axi_periph_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(microblaze_PLC_RS485_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awburst(microblaze_PLC_RS485_axi_periph_M01_AXI_AWBURST),
        .M01_AXI_awcache(microblaze_PLC_RS485_axi_periph_M01_AXI_AWCACHE),
        .M01_AXI_awlen(microblaze_PLC_RS485_axi_periph_M01_AXI_AWLEN),
        .M01_AXI_awlock(microblaze_PLC_RS485_axi_periph_M01_AXI_AWLOCK),
        .M01_AXI_awprot(microblaze_PLC_RS485_axi_periph_M01_AXI_AWPROT),
        .M01_AXI_awready(microblaze_PLC_RS485_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awsize(microblaze_PLC_RS485_axi_periph_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(microblaze_PLC_RS485_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(microblaze_PLC_RS485_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(microblaze_PLC_RS485_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rlast(microblaze_PLC_RS485_axi_periph_M01_AXI_RLAST),
        .M01_AXI_rready(microblaze_PLC_RS485_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(microblaze_PLC_RS485_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(microblaze_PLC_RS485_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wlast(microblaze_PLC_RS485_axi_periph_M01_AXI_WLAST),
        .M01_AXI_wready(microblaze_PLC_RS485_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(microblaze_PLC_RS485_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(microblaze_PLC_RS485_axi_periph_M01_AXI_WVALID),
        .M02_ACLK(microblaze_0_Clk),
        .M02_ARESETN(S00_ARESETN_1),
        .M02_AXI_araddr(microblaze_PLC_RS485_axi_periph_M02_AXI_ARADDR),
        .M02_AXI_arready(microblaze_PLC_RS485_axi_periph_M02_AXI_ARREADY),
        .M02_AXI_arvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_ARVALID),
        .M02_AXI_awaddr(microblaze_PLC_RS485_axi_periph_M02_AXI_AWADDR),
        .M02_AXI_awready(microblaze_PLC_RS485_axi_periph_M02_AXI_AWREADY),
        .M02_AXI_awvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_AWVALID),
        .M02_AXI_bready(microblaze_PLC_RS485_axi_periph_M02_AXI_BREADY),
        .M02_AXI_bresp(microblaze_PLC_RS485_axi_periph_M02_AXI_BRESP),
        .M02_AXI_bvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_BVALID),
        .M02_AXI_rdata(microblaze_PLC_RS485_axi_periph_M02_AXI_RDATA),
        .M02_AXI_rready(microblaze_PLC_RS485_axi_periph_M02_AXI_RREADY),
        .M02_AXI_rresp(microblaze_PLC_RS485_axi_periph_M02_AXI_RRESP),
        .M02_AXI_rvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_RVALID),
        .M02_AXI_wdata(microblaze_PLC_RS485_axi_periph_M02_AXI_WDATA),
        .M02_AXI_wready(microblaze_PLC_RS485_axi_periph_M02_AXI_WREADY),
        .M02_AXI_wstrb(microblaze_PLC_RS485_axi_periph_M02_AXI_WSTRB),
        .M02_AXI_wvalid(microblaze_PLC_RS485_axi_periph_M02_AXI_WVALID),
        .M03_ACLK(microblaze_0_Clk),
        .M03_ARESETN(S00_ARESETN_1),
        .M03_AXI_araddr(microblaze_PLC_axi_periph_M03_AXI_ARADDR),
        .M03_AXI_arready(microblaze_PLC_axi_periph_M03_AXI_ARREADY),
        .M03_AXI_arvalid(microblaze_PLC_axi_periph_M03_AXI_ARVALID),
        .M03_AXI_awaddr(microblaze_PLC_axi_periph_M03_AXI_AWADDR),
        .M03_AXI_awready(microblaze_PLC_axi_periph_M03_AXI_AWREADY),
        .M03_AXI_awvalid(microblaze_PLC_axi_periph_M03_AXI_AWVALID),
        .M03_AXI_bready(microblaze_PLC_axi_periph_M03_AXI_BREADY),
        .M03_AXI_bresp(microblaze_PLC_axi_periph_M03_AXI_BRESP),
        .M03_AXI_bvalid(microblaze_PLC_axi_periph_M03_AXI_BVALID),
        .M03_AXI_rdata(microblaze_PLC_axi_periph_M03_AXI_RDATA),
        .M03_AXI_rready(microblaze_PLC_axi_periph_M03_AXI_RREADY),
        .M03_AXI_rresp(microblaze_PLC_axi_periph_M03_AXI_RRESP),
        .M03_AXI_rvalid(microblaze_PLC_axi_periph_M03_AXI_RVALID),
        .M03_AXI_wdata(microblaze_PLC_axi_periph_M03_AXI_WDATA),
        .M03_AXI_wready(microblaze_PLC_axi_periph_M03_AXI_WREADY),
        .M03_AXI_wstrb(microblaze_PLC_axi_periph_M03_AXI_WSTRB),
        .M03_AXI_wvalid(microblaze_PLC_axi_periph_M03_AXI_WVALID),
        .M04_ACLK(microblaze_0_Clk),
        .M04_ARESETN(S00_ARESETN_1),
        .M04_AXI_araddr(microblaze_PLC_axi_periph_M04_AXI_ARADDR),
        .M04_AXI_arready(microblaze_PLC_axi_periph_M04_AXI_ARREADY),
        .M04_AXI_arvalid(microblaze_PLC_axi_periph_M04_AXI_ARVALID),
        .M04_AXI_awaddr(microblaze_PLC_axi_periph_M04_AXI_AWADDR),
        .M04_AXI_awready(microblaze_PLC_axi_periph_M04_AXI_AWREADY),
        .M04_AXI_awvalid(microblaze_PLC_axi_periph_M04_AXI_AWVALID),
        .M04_AXI_bready(microblaze_PLC_axi_periph_M04_AXI_BREADY),
        .M04_AXI_bresp(microblaze_PLC_axi_periph_M04_AXI_BRESP),
        .M04_AXI_bvalid(microblaze_PLC_axi_periph_M04_AXI_BVALID),
        .M04_AXI_rdata(microblaze_PLC_axi_periph_M04_AXI_RDATA),
        .M04_AXI_rready(microblaze_PLC_axi_periph_M04_AXI_RREADY),
        .M04_AXI_rresp(microblaze_PLC_axi_periph_M04_AXI_RRESP),
        .M04_AXI_rvalid(microblaze_PLC_axi_periph_M04_AXI_RVALID),
        .M04_AXI_wdata(microblaze_PLC_axi_periph_M04_AXI_WDATA),
        .M04_AXI_wready(microblaze_PLC_axi_periph_M04_AXI_WREADY),
        .M04_AXI_wstrb(microblaze_PLC_axi_periph_M04_AXI_WSTRB),
        .M04_AXI_wvalid(microblaze_PLC_axi_periph_M04_AXI_WVALID),
        .M05_ACLK(microblaze_0_Clk),
        .M05_ARESETN(S00_ARESETN_1),
        .M05_AXI_araddr(microblaze_PLC_axi_periph_M05_AXI_ARADDR),
        .M05_AXI_arready(microblaze_PLC_axi_periph_M05_AXI_ARREADY),
        .M05_AXI_arvalid(microblaze_PLC_axi_periph_M05_AXI_ARVALID),
        .M05_AXI_awaddr(microblaze_PLC_axi_periph_M05_AXI_AWADDR),
        .M05_AXI_awready(microblaze_PLC_axi_periph_M05_AXI_AWREADY),
        .M05_AXI_awvalid(microblaze_PLC_axi_periph_M05_AXI_AWVALID),
        .M05_AXI_bready(microblaze_PLC_axi_periph_M05_AXI_BREADY),
        .M05_AXI_bresp(microblaze_PLC_axi_periph_M05_AXI_BRESP),
        .M05_AXI_bvalid(microblaze_PLC_axi_periph_M05_AXI_BVALID),
        .M05_AXI_rdata(microblaze_PLC_axi_periph_M05_AXI_RDATA),
        .M05_AXI_rready(microblaze_PLC_axi_periph_M05_AXI_RREADY),
        .M05_AXI_rresp(microblaze_PLC_axi_periph_M05_AXI_RRESP),
        .M05_AXI_rvalid(microblaze_PLC_axi_periph_M05_AXI_RVALID),
        .M05_AXI_wdata(microblaze_PLC_axi_periph_M05_AXI_WDATA),
        .M05_AXI_wready(microblaze_PLC_axi_periph_M05_AXI_WREADY),
        .M05_AXI_wstrb(microblaze_PLC_axi_periph_M05_AXI_WSTRB),
        .M05_AXI_wvalid(microblaze_PLC_axi_periph_M05_AXI_WVALID),
        .M06_ACLK(microblaze_0_Clk),
        .M06_ARESETN(S00_ARESETN_1),
        .M06_AXI_araddr(microblaze_PLC_axi_periph_M06_AXI_ARADDR),
        .M06_AXI_arready(microblaze_PLC_axi_periph_M06_AXI_ARREADY),
        .M06_AXI_arvalid(microblaze_PLC_axi_periph_M06_AXI_ARVALID),
        .M06_AXI_awaddr(microblaze_PLC_axi_periph_M06_AXI_AWADDR),
        .M06_AXI_awready(microblaze_PLC_axi_periph_M06_AXI_AWREADY),
        .M06_AXI_awvalid(microblaze_PLC_axi_periph_M06_AXI_AWVALID),
        .M06_AXI_bready(microblaze_PLC_axi_periph_M06_AXI_BREADY),
        .M06_AXI_bresp(microblaze_PLC_axi_periph_M06_AXI_BRESP),
        .M06_AXI_bvalid(microblaze_PLC_axi_periph_M06_AXI_BVALID),
        .M06_AXI_rdata(microblaze_PLC_axi_periph_M06_AXI_RDATA),
        .M06_AXI_rready(microblaze_PLC_axi_periph_M06_AXI_RREADY),
        .M06_AXI_rresp(microblaze_PLC_axi_periph_M06_AXI_RRESP),
        .M06_AXI_rvalid(microblaze_PLC_axi_periph_M06_AXI_RVALID),
        .M06_AXI_wdata(microblaze_PLC_axi_periph_M06_AXI_WDATA),
        .M06_AXI_wready(microblaze_PLC_axi_periph_M06_AXI_WREADY),
        .M06_AXI_wstrb(microblaze_PLC_axi_periph_M06_AXI_WSTRB),
        .M06_AXI_wvalid(microblaze_PLC_axi_periph_M06_AXI_WVALID),
        .M07_ACLK(microblaze_0_Clk),
        .M07_ARESETN(S00_ARESETN_1),
        .M07_AXI_araddr(microblaze_PLC_RS485_axi_periph_M07_AXI_ARADDR),
        .M07_AXI_arburst(microblaze_PLC_RS485_axi_periph_M07_AXI_ARBURST),
        .M07_AXI_arcache(microblaze_PLC_RS485_axi_periph_M07_AXI_ARCACHE),
        .M07_AXI_arlen(microblaze_PLC_RS485_axi_periph_M07_AXI_ARLEN),
        .M07_AXI_arlock(microblaze_PLC_RS485_axi_periph_M07_AXI_ARLOCK),
        .M07_AXI_arprot(microblaze_PLC_RS485_axi_periph_M07_AXI_ARPROT),
        .M07_AXI_arready(microblaze_PLC_RS485_axi_periph_M07_AXI_ARREADY),
        .M07_AXI_arsize(microblaze_PLC_RS485_axi_periph_M07_AXI_ARSIZE),
        .M07_AXI_arvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_ARVALID),
        .M07_AXI_awaddr(microblaze_PLC_RS485_axi_periph_M07_AXI_AWADDR),
        .M07_AXI_awburst(microblaze_PLC_RS485_axi_periph_M07_AXI_AWBURST),
        .M07_AXI_awcache(microblaze_PLC_RS485_axi_periph_M07_AXI_AWCACHE),
        .M07_AXI_awlen(microblaze_PLC_RS485_axi_periph_M07_AXI_AWLEN),
        .M07_AXI_awlock(microblaze_PLC_RS485_axi_periph_M07_AXI_AWLOCK),
        .M07_AXI_awprot(microblaze_PLC_RS485_axi_periph_M07_AXI_AWPROT),
        .M07_AXI_awready(microblaze_PLC_RS485_axi_periph_M07_AXI_AWREADY),
        .M07_AXI_awsize(microblaze_PLC_RS485_axi_periph_M07_AXI_AWSIZE),
        .M07_AXI_awvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_AWVALID),
        .M07_AXI_bready(microblaze_PLC_RS485_axi_periph_M07_AXI_BREADY),
        .M07_AXI_bresp(microblaze_PLC_RS485_axi_periph_M07_AXI_BRESP),
        .M07_AXI_bvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_BVALID),
        .M07_AXI_rdata(microblaze_PLC_RS485_axi_periph_M07_AXI_RDATA),
        .M07_AXI_rlast(microblaze_PLC_RS485_axi_periph_M07_AXI_RLAST),
        .M07_AXI_rready(microblaze_PLC_RS485_axi_periph_M07_AXI_RREADY),
        .M07_AXI_rresp(microblaze_PLC_RS485_axi_periph_M07_AXI_RRESP),
        .M07_AXI_rvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_RVALID),
        .M07_AXI_wdata(microblaze_PLC_RS485_axi_periph_M07_AXI_WDATA),
        .M07_AXI_wlast(microblaze_PLC_RS485_axi_periph_M07_AXI_WLAST),
        .M07_AXI_wready(microblaze_PLC_RS485_axi_periph_M07_AXI_WREADY),
        .M07_AXI_wstrb(microblaze_PLC_RS485_axi_periph_M07_AXI_WSTRB),
        .M07_AXI_wvalid(microblaze_PLC_RS485_axi_periph_M07_AXI_WVALID),
        .S00_ACLK(microblaze_0_Clk),
        .S00_ARESETN(S00_ARESETN_1),
        .S00_AXI_araddr(microblaze_PLC_axi_dp_ARADDR),
        .S00_AXI_arprot(microblaze_PLC_axi_dp_ARPROT),
        .S00_AXI_arready(microblaze_PLC_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_PLC_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_PLC_axi_dp_AWADDR),
        .S00_AXI_awprot(microblaze_PLC_axi_dp_AWPROT),
        .S00_AXI_awready(microblaze_PLC_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_PLC_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_PLC_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_PLC_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_PLC_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_PLC_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_PLC_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_PLC_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_PLC_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_PLC_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_PLC_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_PLC_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_PLC_axi_dp_WVALID));
  microblaze_PLC_RS485_local_memory_imp_11APUG microblaze_PLC_RS485_local_memory
       (.DLMB_abus(microblaze_PLC_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_PLC_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_PLC_dlmb_1_BE),
        .DLMB_ce(microblaze_PLC_dlmb_1_CE),
        .DLMB_readdbus(microblaze_PLC_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_PLC_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_PLC_dlmb_1_READY),
        .DLMB_ue(microblaze_PLC_dlmb_1_UE),
        .DLMB_wait(microblaze_PLC_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_PLC_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_PLC_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_PLC_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_PLC_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_PLC_ilmb_1_CE),
        .ILMB_readdbus(microblaze_PLC_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_PLC_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_PLC_ilmb_1_READY),
        .ILMB_ue(microblaze_PLC_ilmb_1_UE),
        .ILMB_wait(microblaze_PLC_ilmb_1_WAIT),
        .LMB_Clk(microblaze_0_Clk),
        .SYS_Rst(rst_clk_wiz_150M_bus_struct_reset));
  design_1_rst_clk_wiz_150M_0 rst_clk_wiz_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_150M_bus_struct_reset),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_rtl_1),
        .interconnect_aresetn(rst_clk_wiz_150M_interconnect_aresetn),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_150M_mb_reset),
        .peripheral_aresetn(S00_ARESETN_1),
        .slowest_sync_clk(microblaze_0_Clk));
  design_1_xlconcat_0_0 xlconcat_interrupts_PLCM
       (.In0(axi_quad_spi_PLCM_ip2intc_irpt),
        .In1(axi_uartlite_PLCM_interrupt),
        .dout(xlconcat_interrupts_PLCM_dout));
endmodule

module design_1_microblaze_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [12:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [7:0]M02_AXI_arlen;
  output M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output [2:0]M02_AXI_arsize;
  output M02_AXI_arvalid;
  output [12:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [7:0]M02_AXI_awlen;
  output M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output [2:0]M02_AXI_awsize;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [12:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [7:0]M03_AXI_arlen;
  output M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output M03_AXI_arvalid;
  output [12:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [7:0]M03_AXI_awlen;
  output M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  output M03_AXI_wlast;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire [31:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  wire m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  wire m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  wire [12:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  wire [1:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST;
  wire [3:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE;
  wire [7:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK;
  wire [2:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY;
  wire [2:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  wire [12:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  wire [1:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST;
  wire [3:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE;
  wire [7:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK;
  wire [2:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY;
  wire [2:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  wire m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  wire [12:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  wire [1:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST;
  wire [3:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE;
  wire [7:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK;
  wire [2:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY;
  wire [2:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  wire [12:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  wire [1:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST;
  wire [3:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE;
  wire [7:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK;
  wire [2:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY;
  wire [2:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  wire m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  wire microblaze_PLC_Ethernet_axi_periph_ACLK_net;
  wire microblaze_PLC_Ethernet_axi_periph_ARESETN_net;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [11:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  assign M02_AXI_araddr[12:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN;
  assign M02_AXI_arlock = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE;
  assign M02_AXI_arvalid = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  assign M02_AXI_awaddr[12:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN;
  assign M02_AXI_awlock = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE;
  assign M02_AXI_awvalid = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  assign M03_AXI_araddr[12:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN;
  assign M03_AXI_arlock = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE;
  assign M03_AXI_arvalid = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID;
  assign M03_AXI_awaddr[12:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN;
  assign M03_AXI_awlock = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE;
  assign M03_AXI_awvalid = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA;
  assign M03_AXI_wlast = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID;
  assign S00_AXI_arready[0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY = M03_AXI_wready;
  assign microblaze_PLC_Ethernet_axi_periph_ACLK_net = ACLK;
  assign microblaze_PLC_Ethernet_axi_periph_ARESETN_net = ARESETN;
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_172DLMC m00_couplers
       (.M_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_WAMH5H m01_couplers
       (.M_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1831FEF m02_couplers
       (.M_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR),
        .M_AXI_arburst(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST),
        .M_AXI_arcache(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE),
        .M_AXI_arlen(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN),
        .M_AXI_arlock(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT),
        .M_AXI_arready(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY),
        .M_AXI_arsize(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR),
        .M_AXI_awburst(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST),
        .M_AXI_awcache(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE),
        .M_AXI_awlen(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN),
        .M_AXI_awlock(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT),
        .M_AXI_awready(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY),
        .M_AXI_awsize(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA),
        .M_AXI_rlast(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST),
        .M_AXI_rready(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA),
        .M_AXI_wlast(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST),
        .M_AXI_wready(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_VJM85Y m03_couplers
       (.M_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARADDR),
        .M_AXI_arburst(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARBURST),
        .M_AXI_arcache(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARCACHE),
        .M_AXI_arlen(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLEN),
        .M_AXI_arlock(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARPROT),
        .M_AXI_arready(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARREADY),
        .M_AXI_arsize(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWADDR),
        .M_AXI_awburst(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWBURST),
        .M_AXI_awcache(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWCACHE),
        .M_AXI_awlen(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLEN),
        .M_AXI_awlock(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWPROT),
        .M_AXI_awready(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWREADY),
        .M_AXI_awsize(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RDATA),
        .M_AXI_rlast(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RLAST),
        .M_AXI_rready(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WDATA),
        .M_AXI_wlast(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WLAST),
        .M_AXI_wready(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_microblaze_PLC_Ethernet_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_R78B1Y s00_couplers
       (.M_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .S_AXI_araddr(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_PLC_Ethernet_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_2 xbar
       (.aclk(microblaze_PLC_Ethernet_axi_periph_ACLK_net),
        .aresetn(microblaze_PLC_Ethernet_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[5:0]}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[5:0]}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_microblaze_MPLC_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arburst,
    M08_AXI_arcache,
    M08_AXI_arlen,
    M08_AXI_arlock,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arsize,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awburst,
    M08_AXI_awcache,
    M08_AXI_awlen,
    M08_AXI_awlock,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awsize,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rlast,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wlast,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [12:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [12:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input M07_AXI_arready;
  output M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input M07_AXI_awready;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [12:0]M08_AXI_araddr;
  output [1:0]M08_AXI_arburst;
  output [3:0]M08_AXI_arcache;
  output [7:0]M08_AXI_arlen;
  output M08_AXI_arlock;
  output [2:0]M08_AXI_arprot;
  input M08_AXI_arready;
  output [2:0]M08_AXI_arsize;
  output M08_AXI_arvalid;
  output [12:0]M08_AXI_awaddr;
  output [1:0]M08_AXI_awburst;
  output [3:0]M08_AXI_awcache;
  output [7:0]M08_AXI_awlen;
  output M08_AXI_awlock;
  output [2:0]M08_AXI_awprot;
  input M08_AXI_awready;
  output [2:0]M08_AXI_awsize;
  output M08_AXI_awvalid;
  output M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input M08_AXI_bvalid;
  input [31:0]M08_AXI_rdata;
  input M08_AXI_rlast;
  output M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input M08_AXI_rvalid;
  output [31:0]M08_AXI_wdata;
  output M08_AXI_wlast;
  input M08_AXI_wready;
  output [3:0]M08_AXI_wstrb;
  output M08_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m00_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [12:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire [1:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARBURST;
  wire [3:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARCACHE;
  wire [7:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARLEN;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_ARLOCK;
  wire [2:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARPROT;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire [2:0]m01_couplers_to_microblaze_PLCM_axi_periph_ARSIZE;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [12:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire [1:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWBURST;
  wire [3:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWCACHE;
  wire [7:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWLEN;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_AWLOCK;
  wire [2:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWPROT;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire [2:0]m01_couplers_to_microblaze_PLCM_axi_periph_AWSIZE;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_RLAST;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_WLAST;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m01_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m02_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m03_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m04_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m05_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m06_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [31:0]m07_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [31:0]m07_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m07_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire [12:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  wire [1:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARBURST;
  wire [3:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARCACHE;
  wire [7:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARLEN;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_ARLOCK;
  wire [2:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARPROT;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_ARREADY;
  wire [2:0]m08_couplers_to_microblaze_PLCM_axi_periph_ARSIZE;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  wire [12:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  wire [1:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWBURST;
  wire [3:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWCACHE;
  wire [7:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWLEN;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_AWLOCK;
  wire [2:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWPROT;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_AWREADY;
  wire [2:0]m08_couplers_to_microblaze_PLCM_axi_periph_AWSIZE;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  wire [1:0]m08_couplers_to_microblaze_PLCM_axi_periph_BRESP;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_BVALID;
  wire [31:0]m08_couplers_to_microblaze_PLCM_axi_periph_RDATA;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_RLAST;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  wire [1:0]m08_couplers_to_microblaze_PLCM_axi_periph_RRESP;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_RVALID;
  wire [31:0]m08_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_WLAST;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_WREADY;
  wire [3:0]m08_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  wire m08_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  wire microblaze_PLCM_axi_periph_ACLK_net;
  wire microblaze_PLCM_axi_periph_ARESETN_net;
  wire [31:0]microblaze_PLCM_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_PLCM_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_PLCM_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_PLCM_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_PLCM_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_PLCM_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_PLCM_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_PLCM_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_PLCM_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]microblaze_PLCM_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [287:256]xbar_to_m08_couplers_ARADDR;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire xbar_to_m08_couplers_ARREADY;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [287:256]xbar_to_m08_couplers_AWADDR;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire xbar_to_m08_couplers_AWREADY;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire xbar_to_m08_couplers_BVALID;
  wire [31:0]xbar_to_m08_couplers_RDATA;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire xbar_to_m08_couplers_RVALID;
  wire [287:256]xbar_to_m08_couplers_WDATA;
  wire xbar_to_m08_couplers_WREADY;
  wire [35:32]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [26:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [26:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[12:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_microblaze_PLCM_axi_periph_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_microblaze_PLCM_axi_periph_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M01_AXI_awaddr[12:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_microblaze_PLCM_axi_periph_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_microblaze_PLCM_axi_periph_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_microblaze_PLCM_axi_periph_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M07_AXI_arvalid = m07_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M07_AXI_awvalid = m07_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[12:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARADDR;
  assign M08_AXI_arburst[1:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARBURST;
  assign M08_AXI_arcache[3:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARCACHE;
  assign M08_AXI_arlen[7:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARLEN;
  assign M08_AXI_arlock = m08_couplers_to_microblaze_PLCM_axi_periph_ARLOCK;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARPROT;
  assign M08_AXI_arsize[2:0] = m08_couplers_to_microblaze_PLCM_axi_periph_ARSIZE;
  assign M08_AXI_arvalid = m08_couplers_to_microblaze_PLCM_axi_periph_ARVALID;
  assign M08_AXI_awaddr[12:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWADDR;
  assign M08_AXI_awburst[1:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWBURST;
  assign M08_AXI_awcache[3:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWCACHE;
  assign M08_AXI_awlen[7:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWLEN;
  assign M08_AXI_awlock = m08_couplers_to_microblaze_PLCM_axi_periph_AWLOCK;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWPROT;
  assign M08_AXI_awsize[2:0] = m08_couplers_to_microblaze_PLCM_axi_periph_AWSIZE;
  assign M08_AXI_awvalid = m08_couplers_to_microblaze_PLCM_axi_periph_AWVALID;
  assign M08_AXI_bready = m08_couplers_to_microblaze_PLCM_axi_periph_BREADY;
  assign M08_AXI_rready = m08_couplers_to_microblaze_PLCM_axi_periph_RREADY;
  assign M08_AXI_wdata[31:0] = m08_couplers_to_microblaze_PLCM_axi_periph_WDATA;
  assign M08_AXI_wlast = m08_couplers_to_microblaze_PLCM_axi_periph_WLAST;
  assign M08_AXI_wstrb[3:0] = m08_couplers_to_microblaze_PLCM_axi_periph_WSTRB;
  assign M08_AXI_wvalid = m08_couplers_to_microblaze_PLCM_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = microblaze_PLCM_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = microblaze_PLCM_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_PLCM_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = microblaze_PLCM_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_PLCM_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_PLCM_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = microblaze_PLCM_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = microblaze_PLCM_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_microblaze_PLCM_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_PLCM_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_microblaze_PLCM_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_PLCM_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_PLCM_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_microblaze_PLCM_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_PLCM_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_PLCM_axi_periph_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_PLCM_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_microblaze_PLCM_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_microblaze_PLCM_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_microblaze_PLCM_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_microblaze_PLCM_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_microblaze_PLCM_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_microblaze_PLCM_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_microblaze_PLCM_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_microblaze_PLCM_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_microblaze_PLCM_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_microblaze_PLCM_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_microblaze_PLCM_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_microblaze_PLCM_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_microblaze_PLCM_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_microblaze_PLCM_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_microblaze_PLCM_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_microblaze_PLCM_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_microblaze_PLCM_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_microblaze_PLCM_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_microblaze_PLCM_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_microblaze_PLCM_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_microblaze_PLCM_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_microblaze_PLCM_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_microblaze_PLCM_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_microblaze_PLCM_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_microblaze_PLCM_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_microblaze_PLCM_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_microblaze_PLCM_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_microblaze_PLCM_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_microblaze_PLCM_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_microblaze_PLCM_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_microblaze_PLCM_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_microblaze_PLCM_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_microblaze_PLCM_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_microblaze_PLCM_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_microblaze_PLCM_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_microblaze_PLCM_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_microblaze_PLCM_axi_periph_WREADY = M07_AXI_wready;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_ARREADY = M08_AXI_arready;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_AWREADY = M08_AXI_awready;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_microblaze_PLCM_axi_periph_BVALID = M08_AXI_bvalid;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_RDATA = M08_AXI_rdata[31:0];
  assign m08_couplers_to_microblaze_PLCM_axi_periph_RLAST = M08_AXI_rlast;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_microblaze_PLCM_axi_periph_RVALID = M08_AXI_rvalid;
  assign m08_couplers_to_microblaze_PLCM_axi_periph_WREADY = M08_AXI_wready;
  assign microblaze_PLCM_axi_periph_ACLK_net = ACLK;
  assign microblaze_PLCM_axi_periph_ARESETN_net = ARESETN;
  assign microblaze_PLCM_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_PLCM_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_1UJUW3A m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_5D7VB m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arburst(m01_couplers_to_microblaze_PLCM_axi_periph_ARBURST),
        .M_AXI_arcache(m01_couplers_to_microblaze_PLCM_axi_periph_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_microblaze_PLCM_axi_periph_ARLEN),
        .M_AXI_arlock(m01_couplers_to_microblaze_PLCM_axi_periph_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_microblaze_PLCM_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arsize(m01_couplers_to_microblaze_PLCM_axi_periph_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awburst(m01_couplers_to_microblaze_PLCM_axi_periph_AWBURST),
        .M_AXI_awcache(m01_couplers_to_microblaze_PLCM_axi_periph_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_microblaze_PLCM_axi_periph_AWLEN),
        .M_AXI_awlock(m01_couplers_to_microblaze_PLCM_axi_periph_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_microblaze_PLCM_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awsize(m01_couplers_to_microblaze_PLCM_axi_periph_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rlast(m01_couplers_to_microblaze_PLCM_axi_periph_RLAST),
        .M_AXI_rready(m01_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wlast(m01_couplers_to_microblaze_PLCM_axi_periph_WLAST),
        .M_AXI_wready(m01_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1SXYIK5 m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1HLV2S m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1RDY9YO m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_336DJL m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_1QLZY43 m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_45EQHE m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arready(m07_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awready(m07_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rready(m07_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wready(m07_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1WYLZ3U m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_microblaze_PLCM_axi_periph_ARADDR),
        .M_AXI_arburst(m08_couplers_to_microblaze_PLCM_axi_periph_ARBURST),
        .M_AXI_arcache(m08_couplers_to_microblaze_PLCM_axi_periph_ARCACHE),
        .M_AXI_arlen(m08_couplers_to_microblaze_PLCM_axi_periph_ARLEN),
        .M_AXI_arlock(m08_couplers_to_microblaze_PLCM_axi_periph_ARLOCK),
        .M_AXI_arprot(m08_couplers_to_microblaze_PLCM_axi_periph_ARPROT),
        .M_AXI_arready(m08_couplers_to_microblaze_PLCM_axi_periph_ARREADY),
        .M_AXI_arsize(m08_couplers_to_microblaze_PLCM_axi_periph_ARSIZE),
        .M_AXI_arvalid(m08_couplers_to_microblaze_PLCM_axi_periph_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_microblaze_PLCM_axi_periph_AWADDR),
        .M_AXI_awburst(m08_couplers_to_microblaze_PLCM_axi_periph_AWBURST),
        .M_AXI_awcache(m08_couplers_to_microblaze_PLCM_axi_periph_AWCACHE),
        .M_AXI_awlen(m08_couplers_to_microblaze_PLCM_axi_periph_AWLEN),
        .M_AXI_awlock(m08_couplers_to_microblaze_PLCM_axi_periph_AWLOCK),
        .M_AXI_awprot(m08_couplers_to_microblaze_PLCM_axi_periph_AWPROT),
        .M_AXI_awready(m08_couplers_to_microblaze_PLCM_axi_periph_AWREADY),
        .M_AXI_awsize(m08_couplers_to_microblaze_PLCM_axi_periph_AWSIZE),
        .M_AXI_awvalid(m08_couplers_to_microblaze_PLCM_axi_periph_AWVALID),
        .M_AXI_bready(m08_couplers_to_microblaze_PLCM_axi_periph_BREADY),
        .M_AXI_bresp(m08_couplers_to_microblaze_PLCM_axi_periph_BRESP),
        .M_AXI_bvalid(m08_couplers_to_microblaze_PLCM_axi_periph_BVALID),
        .M_AXI_rdata(m08_couplers_to_microblaze_PLCM_axi_periph_RDATA),
        .M_AXI_rlast(m08_couplers_to_microblaze_PLCM_axi_periph_RLAST),
        .M_AXI_rready(m08_couplers_to_microblaze_PLCM_axi_periph_RREADY),
        .M_AXI_rresp(m08_couplers_to_microblaze_PLCM_axi_periph_RRESP),
        .M_AXI_rvalid(m08_couplers_to_microblaze_PLCM_axi_periph_RVALID),
        .M_AXI_wdata(m08_couplers_to_microblaze_PLCM_axi_periph_WDATA),
        .M_AXI_wlast(m08_couplers_to_microblaze_PLCM_axi_periph_WLAST),
        .M_AXI_wready(m08_couplers_to_microblaze_PLCM_axi_periph_WREADY),
        .M_AXI_wstrb(m08_couplers_to_microblaze_PLCM_axi_periph_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_microblaze_PLCM_axi_periph_WVALID),
        .S_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  s00_couplers_imp_6CPX9W s00_couplers
       (.M_ACLK(microblaze_PLCM_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLCM_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_PLCM_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_PLCM_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_PLCM_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_PLCM_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_PLCM_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_PLCM_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_PLCM_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_PLCM_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_PLCM_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_PLCM_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_PLCM_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_PLCM_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_PLCM_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_PLCM_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_PLCM_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_PLCM_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_PLCM_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_PLCM_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_PLCM_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_1 xbar
       (.aclk(microblaze_PLCM_axi_periph_ACLK_net),
        .aresetn(microblaze_PLCM_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m08_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[23:6],xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m08_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[23:6],xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_microblaze_PLC_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arsize,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awsize,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [12:0]M01_AXI_araddr;
  output [1:0]M01_AXI_arburst;
  output [3:0]M01_AXI_arcache;
  output [7:0]M01_AXI_arlen;
  output M01_AXI_arlock;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output [2:0]M01_AXI_arsize;
  output M01_AXI_arvalid;
  output [12:0]M01_AXI_awaddr;
  output [1:0]M01_AXI_awburst;
  output [3:0]M01_AXI_awcache;
  output [7:0]M01_AXI_awlen;
  output M01_AXI_awlock;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output [2:0]M01_AXI_awsize;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  input M01_AXI_rlast;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  output M01_AXI_wlast;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input M05_AXI_arready;
  output M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input M05_AXI_awready;
  output M05_AXI_awvalid;
  output M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input M06_AXI_arready;
  output M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input M06_AXI_awready;
  output M06_AXI_awvalid;
  output M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [12:0]M07_AXI_araddr;
  output [1:0]M07_AXI_arburst;
  output [3:0]M07_AXI_arcache;
  output [7:0]M07_AXI_arlen;
  output M07_AXI_arlock;
  output [2:0]M07_AXI_arprot;
  input M07_AXI_arready;
  output [2:0]M07_AXI_arsize;
  output M07_AXI_arvalid;
  output [12:0]M07_AXI_awaddr;
  output [1:0]M07_AXI_awburst;
  output [3:0]M07_AXI_awcache;
  output [7:0]M07_AXI_awlen;
  output M07_AXI_awlock;
  output [2:0]M07_AXI_awprot;
  input M07_AXI_awready;
  output [2:0]M07_AXI_awsize;
  output M07_AXI_awvalid;
  output M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  input M07_AXI_rlast;
  output M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  output M07_AXI_wlast;
  input M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire [31:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m00_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [12:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire [1:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST;
  wire [3:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE;
  wire [7:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK;
  wire [2:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire [2:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [12:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire [1:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST;
  wire [3:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE;
  wire [7:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK;
  wire [2:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire [2:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m01_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m02_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m02_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m03_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m03_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [31:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m04_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m04_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [31:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m05_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m05_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [31:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [31:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m06_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m06_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire [12:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  wire [1:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST;
  wire [3:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE;
  wire [7:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK;
  wire [2:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY;
  wire [2:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  wire [12:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  wire [1:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST;
  wire [3:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE;
  wire [7:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK;
  wire [2:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY;
  wire [2:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  wire [1:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID;
  wire [31:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  wire [1:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID;
  wire [31:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY;
  wire [3:0]m07_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  wire m07_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  wire microblaze_PLC_RS485_axi_periph_ACLK_net;
  wire microblaze_PLC_RS485_axi_periph_ARESETN_net;
  wire [31:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]microblaze_PLC_RS485_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [23:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [23:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[12:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M01_AXI_arburst[1:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST;
  assign M01_AXI_arcache[3:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE;
  assign M01_AXI_arlen[7:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN;
  assign M01_AXI_arlock = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT;
  assign M01_AXI_arsize[2:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE;
  assign M01_AXI_arvalid = m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M01_AXI_awaddr[12:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M01_AXI_awburst[1:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST;
  assign M01_AXI_awcache[3:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE;
  assign M01_AXI_awlen[7:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN;
  assign M01_AXI_awlock = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT;
  assign M01_AXI_awsize[2:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE;
  assign M01_AXI_awvalid = m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M01_AXI_wlast = m01_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M02_AXI_rready = m02_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M03_AXI_arvalid = m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M03_AXI_awvalid = m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M03_AXI_rready = m03_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M04_AXI_arvalid = m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M04_AXI_awvalid = m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M04_AXI_bready = m04_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M04_AXI_rready = m04_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M04_AXI_wvalid = m04_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M05_AXI_arvalid = m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M05_AXI_awvalid = m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M05_AXI_bready = m05_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M05_AXI_rready = m05_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M05_AXI_wvalid = m05_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M06_AXI_arvalid = m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M06_AXI_awvalid = m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M06_AXI_bready = m06_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M06_AXI_rready = m06_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M06_AXI_wvalid = m06_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[12:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR;
  assign M07_AXI_arburst[1:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST;
  assign M07_AXI_arcache[3:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE;
  assign M07_AXI_arlen[7:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN;
  assign M07_AXI_arlock = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT;
  assign M07_AXI_arsize[2:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE;
  assign M07_AXI_arvalid = m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID;
  assign M07_AXI_awaddr[12:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR;
  assign M07_AXI_awburst[1:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST;
  assign M07_AXI_awcache[3:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE;
  assign M07_AXI_awlen[7:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN;
  assign M07_AXI_awlock = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT;
  assign M07_AXI_awsize[2:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE;
  assign M07_AXI_awvalid = m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID;
  assign M07_AXI_bready = m07_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY;
  assign M07_AXI_rready = m07_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA;
  assign M07_AXI_wlast = m07_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB;
  assign M07_AXI_wvalid = m07_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready[0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = microblaze_PLC_RS485_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST = M01_AXI_rlast;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M01_AXI_wready;
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M02_AXI_wready;
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M03_AXI_wready;
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M04_AXI_arready;
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M04_AXI_awready;
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M04_AXI_bvalid;
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M04_AXI_rvalid;
  assign m04_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M04_AXI_wready;
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M05_AXI_arready;
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M05_AXI_awready;
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M05_AXI_bvalid;
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M05_AXI_rvalid;
  assign m05_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M05_AXI_wready;
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M06_AXI_arready;
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M06_AXI_awready;
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M06_AXI_bvalid;
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M06_AXI_rvalid;
  assign m06_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M06_AXI_wready;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY = M07_AXI_arready;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY = M07_AXI_awready;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID = M07_AXI_bvalid;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST = M07_AXI_rlast;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID = M07_AXI_rvalid;
  assign m07_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY = M07_AXI_wready;
  assign microblaze_PLC_RS485_axi_periph_ACLK_net = ACLK;
  assign microblaze_PLC_RS485_axi_periph_ARESETN_net = ARESETN;
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_PLC_RS485_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_17AUMN2 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_W0C1KV m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arburst(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST),
        .M_AXI_arcache(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE),
        .M_AXI_arlen(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN),
        .M_AXI_arlock(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK),
        .M_AXI_arprot(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT),
        .M_AXI_arready(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arsize(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE),
        .M_AXI_arvalid(m01_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awburst(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST),
        .M_AXI_awcache(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE),
        .M_AXI_awlen(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN),
        .M_AXI_awlock(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK),
        .M_AXI_awprot(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT),
        .M_AXI_awready(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awsize(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE),
        .M_AXI_awvalid(m01_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rlast(m01_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST),
        .M_AXI_rready(m01_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wlast(m01_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST),
        .M_AXI_wready(m01_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_16OUMXP m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m02_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m02_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m02_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m02_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m02_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m02_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m02_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m02_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m02_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m02_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_WW16YK m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m03_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m03_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m03_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m03_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m03_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m03_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m03_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m03_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m03_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m03_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_162TWD4 m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m04_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m04_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m04_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m04_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m04_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m04_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m04_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m04_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m04_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m04_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_XK8I61 m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m05_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m05_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m05_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m05_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m05_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m05_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m05_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m05_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m05_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m05_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_14MUE1N m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arready(m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awready(m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m06_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m06_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m06_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m06_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rready(m06_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m06_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m06_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m06_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wready(m06_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m06_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_YPWK1M m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARADDR),
        .M_AXI_arburst(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARBURST),
        .M_AXI_arcache(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARCACHE),
        .M_AXI_arlen(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLEN),
        .M_AXI_arlock(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARLOCK),
        .M_AXI_arprot(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARPROT),
        .M_AXI_arready(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARREADY),
        .M_AXI_arsize(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARSIZE),
        .M_AXI_arvalid(m07_couplers_to_microblaze_PLC_RS485_axi_periph_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWADDR),
        .M_AXI_awburst(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWBURST),
        .M_AXI_awcache(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWCACHE),
        .M_AXI_awlen(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLEN),
        .M_AXI_awlock(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWLOCK),
        .M_AXI_awprot(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWPROT),
        .M_AXI_awready(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWREADY),
        .M_AXI_awsize(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWSIZE),
        .M_AXI_awvalid(m07_couplers_to_microblaze_PLC_RS485_axi_periph_AWVALID),
        .M_AXI_bready(m07_couplers_to_microblaze_PLC_RS485_axi_periph_BREADY),
        .M_AXI_bresp(m07_couplers_to_microblaze_PLC_RS485_axi_periph_BRESP),
        .M_AXI_bvalid(m07_couplers_to_microblaze_PLC_RS485_axi_periph_BVALID),
        .M_AXI_rdata(m07_couplers_to_microblaze_PLC_RS485_axi_periph_RDATA),
        .M_AXI_rlast(m07_couplers_to_microblaze_PLC_RS485_axi_periph_RLAST),
        .M_AXI_rready(m07_couplers_to_microblaze_PLC_RS485_axi_periph_RREADY),
        .M_AXI_rresp(m07_couplers_to_microblaze_PLC_RS485_axi_periph_RRESP),
        .M_AXI_rvalid(m07_couplers_to_microblaze_PLC_RS485_axi_periph_RVALID),
        .M_AXI_wdata(m07_couplers_to_microblaze_PLC_RS485_axi_periph_WDATA),
        .M_AXI_wlast(m07_couplers_to_microblaze_PLC_RS485_axi_periph_WLAST),
        .M_AXI_wready(m07_couplers_to_microblaze_PLC_RS485_axi_periph_WREADY),
        .M_AXI_wstrb(m07_couplers_to_microblaze_PLC_RS485_axi_periph_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_microblaze_PLC_RS485_axi_periph_WVALID),
        .S_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .S_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_S2S6ZG s00_couplers
       (.M_ACLK(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_PLC_RS485_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_PLC_RS485_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_PLC_RS485_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_PLC_RS485_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_PLC_RS485_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_PLC_RS485_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_PLC_RS485_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_PLC_RS485_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_PLC_RS485_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_PLC_RS485_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_PLC_RS485_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_PLC_RS485_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_PLC_RS485_axi_periph_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(microblaze_PLC_RS485_axi_periph_ACLK_net),
        .aresetn(microblaze_PLC_RS485_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m07_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[20:6],xbar_to_m01_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[2:0]}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m07_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[20:6],xbar_to_m01_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[2:0]}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_172DLMC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_17AUMN2
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m00_couplers_imp_1UJUW3A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_5D7VB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m01_couplers_ARADDR;
  wire [1:0]auto_pc_to_m01_couplers_ARBURST;
  wire [3:0]auto_pc_to_m01_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m01_couplers_ARLEN;
  wire [0:0]auto_pc_to_m01_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire [2:0]auto_pc_to_m01_couplers_ARSIZE;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [12:0]auto_pc_to_m01_couplers_AWADDR;
  wire [1:0]auto_pc_to_m01_couplers_AWBURST;
  wire [3:0]auto_pc_to_m01_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m01_couplers_AWLEN;
  wire [0:0]auto_pc_to_m01_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire [2:0]auto_pc_to_m01_couplers_AWSIZE;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RLAST;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WLAST;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m01_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m01_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m01_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m01_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_W0C1KV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m01_couplers_ARADDR;
  wire [1:0]auto_pc_to_m01_couplers_ARBURST;
  wire [3:0]auto_pc_to_m01_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m01_couplers_ARLEN;
  wire [0:0]auto_pc_to_m01_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m01_couplers_ARPROT;
  wire auto_pc_to_m01_couplers_ARREADY;
  wire [2:0]auto_pc_to_m01_couplers_ARSIZE;
  wire auto_pc_to_m01_couplers_ARVALID;
  wire [12:0]auto_pc_to_m01_couplers_AWADDR;
  wire [1:0]auto_pc_to_m01_couplers_AWBURST;
  wire [3:0]auto_pc_to_m01_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m01_couplers_AWLEN;
  wire [0:0]auto_pc_to_m01_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m01_couplers_AWPROT;
  wire auto_pc_to_m01_couplers_AWREADY;
  wire [2:0]auto_pc_to_m01_couplers_AWSIZE;
  wire auto_pc_to_m01_couplers_AWVALID;
  wire auto_pc_to_m01_couplers_BREADY;
  wire [1:0]auto_pc_to_m01_couplers_BRESP;
  wire auto_pc_to_m01_couplers_BVALID;
  wire [31:0]auto_pc_to_m01_couplers_RDATA;
  wire auto_pc_to_m01_couplers_RLAST;
  wire auto_pc_to_m01_couplers_RREADY;
  wire [1:0]auto_pc_to_m01_couplers_RRESP;
  wire auto_pc_to_m01_couplers_RVALID;
  wire [31:0]auto_pc_to_m01_couplers_WDATA;
  wire auto_pc_to_m01_couplers_WLAST;
  wire auto_pc_to_m01_couplers_WREADY;
  wire [3:0]auto_pc_to_m01_couplers_WSTRB;
  wire auto_pc_to_m01_couplers_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m01_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m01_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m01_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m01_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m01_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m01_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m01_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m01_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m01_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m01_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m01_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m01_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m01_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m01_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m01_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m01_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m01_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m01_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m01_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m01_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m01_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m01_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m01_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_WAMH5H
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_16OUMXP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_1831FEF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m02_couplers_ARADDR;
  wire [1:0]auto_pc_to_m02_couplers_ARBURST;
  wire [3:0]auto_pc_to_m02_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m02_couplers_ARLEN;
  wire [0:0]auto_pc_to_m02_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m02_couplers_ARPROT;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire [2:0]auto_pc_to_m02_couplers_ARSIZE;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [12:0]auto_pc_to_m02_couplers_AWADDR;
  wire [1:0]auto_pc_to_m02_couplers_AWBURST;
  wire [3:0]auto_pc_to_m02_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m02_couplers_AWLEN;
  wire [0:0]auto_pc_to_m02_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m02_couplers_AWPROT;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire [2:0]auto_pc_to_m02_couplers_AWSIZE;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RLAST;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WLAST;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [31:0]m02_couplers_to_auto_pc_ARADDR;
  wire [2:0]m02_couplers_to_auto_pc_ARPROT;
  wire m02_couplers_to_auto_pc_ARREADY;
  wire m02_couplers_to_auto_pc_ARVALID;
  wire [31:0]m02_couplers_to_auto_pc_AWADDR;
  wire [2:0]m02_couplers_to_auto_pc_AWPROT;
  wire m02_couplers_to_auto_pc_AWREADY;
  wire m02_couplers_to_auto_pc_AWVALID;
  wire m02_couplers_to_auto_pc_BREADY;
  wire [1:0]m02_couplers_to_auto_pc_BRESP;
  wire m02_couplers_to_auto_pc_BVALID;
  wire [31:0]m02_couplers_to_auto_pc_RDATA;
  wire m02_couplers_to_auto_pc_RREADY;
  wire [1:0]m02_couplers_to_auto_pc_RRESP;
  wire m02_couplers_to_auto_pc_RVALID;
  wire [31:0]m02_couplers_to_auto_pc_WDATA;
  wire m02_couplers_to_auto_pc_WREADY;
  wire [3:0]m02_couplers_to_auto_pc_WSTRB;
  wire m02_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m02_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m02_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m02_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m02_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m02_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m02_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m02_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m02_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m02_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m02_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m02_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m02_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m02_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m02_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m02_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m02_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m02_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m02_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m02_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m02_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m02_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m02_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m02_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m02_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m02_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m02_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m02_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m02_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_pc_WVALID));
endmodule

module m02_couplers_imp_1SXYIK5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire m02_couplers_to_m02_couplers_ARREADY;
  wire m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire m02_couplers_to_m02_couplers_AWREADY;
  wire m02_couplers_to_m02_couplers_AWVALID;
  wire m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_1HLV2S
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m03_couplers_imp_VJM85Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m03_couplers_ARADDR;
  wire [1:0]auto_pc_to_m03_couplers_ARBURST;
  wire [3:0]auto_pc_to_m03_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m03_couplers_ARLEN;
  wire [0:0]auto_pc_to_m03_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m03_couplers_ARPROT;
  wire auto_pc_to_m03_couplers_ARREADY;
  wire [2:0]auto_pc_to_m03_couplers_ARSIZE;
  wire auto_pc_to_m03_couplers_ARVALID;
  wire [12:0]auto_pc_to_m03_couplers_AWADDR;
  wire [1:0]auto_pc_to_m03_couplers_AWBURST;
  wire [3:0]auto_pc_to_m03_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m03_couplers_AWLEN;
  wire [0:0]auto_pc_to_m03_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m03_couplers_AWPROT;
  wire auto_pc_to_m03_couplers_AWREADY;
  wire [2:0]auto_pc_to_m03_couplers_AWSIZE;
  wire auto_pc_to_m03_couplers_AWVALID;
  wire auto_pc_to_m03_couplers_BREADY;
  wire [1:0]auto_pc_to_m03_couplers_BRESP;
  wire auto_pc_to_m03_couplers_BVALID;
  wire [31:0]auto_pc_to_m03_couplers_RDATA;
  wire auto_pc_to_m03_couplers_RLAST;
  wire auto_pc_to_m03_couplers_RREADY;
  wire [1:0]auto_pc_to_m03_couplers_RRESP;
  wire auto_pc_to_m03_couplers_RVALID;
  wire [31:0]auto_pc_to_m03_couplers_WDATA;
  wire auto_pc_to_m03_couplers_WLAST;
  wire auto_pc_to_m03_couplers_WREADY;
  wire [3:0]auto_pc_to_m03_couplers_WSTRB;
  wire auto_pc_to_m03_couplers_WVALID;
  wire [31:0]m03_couplers_to_auto_pc_ARADDR;
  wire [2:0]m03_couplers_to_auto_pc_ARPROT;
  wire m03_couplers_to_auto_pc_ARREADY;
  wire m03_couplers_to_auto_pc_ARVALID;
  wire [31:0]m03_couplers_to_auto_pc_AWADDR;
  wire [2:0]m03_couplers_to_auto_pc_AWPROT;
  wire m03_couplers_to_auto_pc_AWREADY;
  wire m03_couplers_to_auto_pc_AWVALID;
  wire m03_couplers_to_auto_pc_BREADY;
  wire [1:0]m03_couplers_to_auto_pc_BRESP;
  wire m03_couplers_to_auto_pc_BVALID;
  wire [31:0]m03_couplers_to_auto_pc_RDATA;
  wire m03_couplers_to_auto_pc_RREADY;
  wire [1:0]m03_couplers_to_auto_pc_RRESP;
  wire m03_couplers_to_auto_pc_RVALID;
  wire [31:0]m03_couplers_to_auto_pc_WDATA;
  wire m03_couplers_to_auto_pc_WREADY;
  wire [3:0]m03_couplers_to_auto_pc_WSTRB;
  wire m03_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m03_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m03_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m03_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m03_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m03_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m03_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m03_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m03_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m03_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m03_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m03_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m03_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m03_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m03_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m03_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m03_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m03_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m03_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m03_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m03_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m03_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m03_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m03_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m03_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m03_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m03_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m03_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m03_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m03_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m03_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m03_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m03_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m03_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m03_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m03_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m03_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m03_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m03_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m03_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m03_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m03_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m03_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m03_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m03_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m03_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m03_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m03_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m03_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m03_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m03_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m03_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m03_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m03_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m03_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m03_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m03_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m03_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m03_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m03_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m03_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m03_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m03_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m03_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m03_couplers_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_WW16YK
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire m03_couplers_to_m03_couplers_ARREADY;
  wire m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire m03_couplers_to_m03_couplers_AWREADY;
  wire m03_couplers_to_m03_couplers_AWVALID;
  wire m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready;
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_162TWD4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m04_couplers_imp_1RDY9YO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire m04_couplers_to_m04_couplers_ARREADY;
  wire m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire m04_couplers_to_m04_couplers_AWREADY;
  wire m04_couplers_to_m04_couplers_AWVALID;
  wire m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready;
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid;
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready;
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid;
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready;
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid;
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready;
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid;
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready;
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_336DJL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m05_couplers_imp_XK8I61
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire m05_couplers_to_m05_couplers_ARREADY;
  wire m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire m05_couplers_to_m05_couplers_AWREADY;
  wire m05_couplers_to_m05_couplers_AWVALID;
  wire m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready;
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid;
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready;
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid;
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready;
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid;
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready;
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid;
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready;
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_14MUE1N
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m06_couplers_imp_1QLZY43
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire m06_couplers_to_m06_couplers_ARREADY;
  wire m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire m06_couplers_to_m06_couplers_AWREADY;
  wire m06_couplers_to_m06_couplers_AWVALID;
  wire m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready;
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid;
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready;
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid;
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready;
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid;
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready;
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid;
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready;
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_45EQHE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire m07_couplers_to_m07_couplers_ARREADY;
  wire m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire m07_couplers_to_m07_couplers_AWREADY;
  wire m07_couplers_to_m07_couplers_AWVALID;
  wire m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready;
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready;
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready;
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready;
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid;
endmodule

module m07_couplers_imp_YPWK1M
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m07_couplers_ARADDR;
  wire [1:0]auto_pc_to_m07_couplers_ARBURST;
  wire [3:0]auto_pc_to_m07_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m07_couplers_ARLEN;
  wire [0:0]auto_pc_to_m07_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m07_couplers_ARPROT;
  wire auto_pc_to_m07_couplers_ARREADY;
  wire [2:0]auto_pc_to_m07_couplers_ARSIZE;
  wire auto_pc_to_m07_couplers_ARVALID;
  wire [12:0]auto_pc_to_m07_couplers_AWADDR;
  wire [1:0]auto_pc_to_m07_couplers_AWBURST;
  wire [3:0]auto_pc_to_m07_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m07_couplers_AWLEN;
  wire [0:0]auto_pc_to_m07_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m07_couplers_AWPROT;
  wire auto_pc_to_m07_couplers_AWREADY;
  wire [2:0]auto_pc_to_m07_couplers_AWSIZE;
  wire auto_pc_to_m07_couplers_AWVALID;
  wire auto_pc_to_m07_couplers_BREADY;
  wire [1:0]auto_pc_to_m07_couplers_BRESP;
  wire auto_pc_to_m07_couplers_BVALID;
  wire [31:0]auto_pc_to_m07_couplers_RDATA;
  wire auto_pc_to_m07_couplers_RLAST;
  wire auto_pc_to_m07_couplers_RREADY;
  wire [1:0]auto_pc_to_m07_couplers_RRESP;
  wire auto_pc_to_m07_couplers_RVALID;
  wire [31:0]auto_pc_to_m07_couplers_WDATA;
  wire auto_pc_to_m07_couplers_WLAST;
  wire auto_pc_to_m07_couplers_WREADY;
  wire [3:0]auto_pc_to_m07_couplers_WSTRB;
  wire auto_pc_to_m07_couplers_WVALID;
  wire [31:0]m07_couplers_to_auto_pc_ARADDR;
  wire [2:0]m07_couplers_to_auto_pc_ARPROT;
  wire m07_couplers_to_auto_pc_ARREADY;
  wire m07_couplers_to_auto_pc_ARVALID;
  wire [31:0]m07_couplers_to_auto_pc_AWADDR;
  wire [2:0]m07_couplers_to_auto_pc_AWPROT;
  wire m07_couplers_to_auto_pc_AWREADY;
  wire m07_couplers_to_auto_pc_AWVALID;
  wire m07_couplers_to_auto_pc_BREADY;
  wire [1:0]m07_couplers_to_auto_pc_BRESP;
  wire m07_couplers_to_auto_pc_BVALID;
  wire [31:0]m07_couplers_to_auto_pc_RDATA;
  wire m07_couplers_to_auto_pc_RREADY;
  wire [1:0]m07_couplers_to_auto_pc_RRESP;
  wire m07_couplers_to_auto_pc_RVALID;
  wire [31:0]m07_couplers_to_auto_pc_WDATA;
  wire m07_couplers_to_auto_pc_WREADY;
  wire [3:0]m07_couplers_to_auto_pc_WSTRB;
  wire m07_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m07_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m07_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m07_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m07_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m07_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m07_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m07_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m07_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m07_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m07_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m07_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m07_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m07_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m07_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m07_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m07_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m07_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m07_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m07_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m07_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m07_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m07_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m07_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m07_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m07_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m07_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m07_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m07_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m07_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m07_couplers_WREADY = M_AXI_wready;
  assign m07_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m07_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m07_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m07_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m07_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m07_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m07_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m07_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m07_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m07_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m07_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m07_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m07_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m07_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m07_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m07_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m07_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m07_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m07_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m07_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m07_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m07_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m07_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m07_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m07_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m07_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m07_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m07_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m07_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m07_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m07_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m07_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m07_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m07_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m07_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m07_couplers_WVALID),
        .s_axi_araddr(m07_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m07_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m07_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m07_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m07_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m07_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m07_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m07_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m07_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m07_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m07_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m07_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m07_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m07_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m07_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m07_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m07_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m07_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m07_couplers_to_auto_pc_WVALID));
endmodule

module m08_couplers_imp_1WYLZ3U
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [12:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [12:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [12:0]auto_pc_to_m08_couplers_ARADDR;
  wire [1:0]auto_pc_to_m08_couplers_ARBURST;
  wire [3:0]auto_pc_to_m08_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m08_couplers_ARLEN;
  wire [0:0]auto_pc_to_m08_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m08_couplers_ARPROT;
  wire auto_pc_to_m08_couplers_ARREADY;
  wire [2:0]auto_pc_to_m08_couplers_ARSIZE;
  wire auto_pc_to_m08_couplers_ARVALID;
  wire [12:0]auto_pc_to_m08_couplers_AWADDR;
  wire [1:0]auto_pc_to_m08_couplers_AWBURST;
  wire [3:0]auto_pc_to_m08_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m08_couplers_AWLEN;
  wire [0:0]auto_pc_to_m08_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m08_couplers_AWPROT;
  wire auto_pc_to_m08_couplers_AWREADY;
  wire [2:0]auto_pc_to_m08_couplers_AWSIZE;
  wire auto_pc_to_m08_couplers_AWVALID;
  wire auto_pc_to_m08_couplers_BREADY;
  wire [1:0]auto_pc_to_m08_couplers_BRESP;
  wire auto_pc_to_m08_couplers_BVALID;
  wire [31:0]auto_pc_to_m08_couplers_RDATA;
  wire auto_pc_to_m08_couplers_RLAST;
  wire auto_pc_to_m08_couplers_RREADY;
  wire [1:0]auto_pc_to_m08_couplers_RRESP;
  wire auto_pc_to_m08_couplers_RVALID;
  wire [31:0]auto_pc_to_m08_couplers_WDATA;
  wire auto_pc_to_m08_couplers_WLAST;
  wire auto_pc_to_m08_couplers_WREADY;
  wire [3:0]auto_pc_to_m08_couplers_WSTRB;
  wire auto_pc_to_m08_couplers_WVALID;
  wire [31:0]m08_couplers_to_auto_pc_ARADDR;
  wire [2:0]m08_couplers_to_auto_pc_ARPROT;
  wire m08_couplers_to_auto_pc_ARREADY;
  wire m08_couplers_to_auto_pc_ARVALID;
  wire [31:0]m08_couplers_to_auto_pc_AWADDR;
  wire [2:0]m08_couplers_to_auto_pc_AWPROT;
  wire m08_couplers_to_auto_pc_AWREADY;
  wire m08_couplers_to_auto_pc_AWVALID;
  wire m08_couplers_to_auto_pc_BREADY;
  wire [1:0]m08_couplers_to_auto_pc_BRESP;
  wire m08_couplers_to_auto_pc_BVALID;
  wire [31:0]m08_couplers_to_auto_pc_RDATA;
  wire m08_couplers_to_auto_pc_RREADY;
  wire [1:0]m08_couplers_to_auto_pc_RRESP;
  wire m08_couplers_to_auto_pc_RVALID;
  wire [31:0]m08_couplers_to_auto_pc_WDATA;
  wire m08_couplers_to_auto_pc_WREADY;
  wire [3:0]m08_couplers_to_auto_pc_WSTRB;
  wire m08_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[12:0] = auto_pc_to_m08_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m08_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m08_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m08_couplers_ARLEN;
  assign M_AXI_arlock = auto_pc_to_m08_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m08_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = auto_pc_to_m08_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[12:0] = auto_pc_to_m08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m08_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m08_couplers_AWLEN;
  assign M_AXI_awlock = auto_pc_to_m08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m08_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = auto_pc_to_m08_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m08_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m08_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m08_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m08_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m08_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m08_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m08_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m08_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m08_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m08_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m08_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m08_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m08_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m08_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m08_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m08_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m08_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m08_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m08_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m08_couplers_WREADY = M_AXI_wready;
  assign m08_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m08_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m08_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m08_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m08_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m08_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m08_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m08_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m08_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  design_1_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m08_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m08_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m08_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m08_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m08_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m08_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_m08_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m08_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m08_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m08_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m08_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m08_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m08_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m08_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m08_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_m08_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m08_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m08_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m08_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m08_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m08_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m08_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m08_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m08_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m08_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m08_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m08_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m08_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m08_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m08_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m08_couplers_WVALID),
        .s_axi_araddr(m08_couplers_to_auto_pc_ARADDR[12:0]),
        .s_axi_arprot(m08_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m08_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m08_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m08_couplers_to_auto_pc_AWADDR[12:0]),
        .s_axi_awprot(m08_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m08_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m08_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m08_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m08_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m08_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m08_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m08_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m08_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m08_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m08_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m08_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m08_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m08_couplers_to_auto_pc_WVALID));
endmodule

module microblaze_PLCM_local_memory_imp_DY09GZ
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_MPLC_Clk;
  wire [0:31]microblaze_MPLC_dlmb_ABUS;
  wire microblaze_MPLC_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_MPLC_dlmb_BE;
  wire microblaze_MPLC_dlmb_CE;
  wire [0:31]microblaze_MPLC_dlmb_READDBUS;
  wire microblaze_MPLC_dlmb_READSTROBE;
  wire microblaze_MPLC_dlmb_READY;
  wire microblaze_MPLC_dlmb_UE;
  wire microblaze_MPLC_dlmb_WAIT;
  wire [0:31]microblaze_MPLC_dlmb_WRITEDBUS;
  wire microblaze_MPLC_dlmb_WRITESTROBE;
  wire [0:31]microblaze_MPLC_dlmb_bus_ABUS;
  wire microblaze_MPLC_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_MPLC_dlmb_bus_BE;
  wire microblaze_MPLC_dlmb_bus_CE;
  wire [0:31]microblaze_MPLC_dlmb_bus_READDBUS;
  wire microblaze_MPLC_dlmb_bus_READSTROBE;
  wire microblaze_MPLC_dlmb_bus_READY;
  wire microblaze_MPLC_dlmb_bus_UE;
  wire microblaze_MPLC_dlmb_bus_WAIT;
  wire [0:31]microblaze_MPLC_dlmb_bus_WRITEDBUS;
  wire microblaze_MPLC_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_MPLC_dlmb_cntlr_ADDR;
  wire microblaze_MPLC_dlmb_cntlr_CLK;
  wire [0:31]microblaze_MPLC_dlmb_cntlr_DIN;
  wire [31:0]microblaze_MPLC_dlmb_cntlr_DOUT;
  wire microblaze_MPLC_dlmb_cntlr_EN;
  wire microblaze_MPLC_dlmb_cntlr_RST;
  wire [0:3]microblaze_MPLC_dlmb_cntlr_WE;
  wire [0:31]microblaze_MPLC_ilmb_ABUS;
  wire microblaze_MPLC_ilmb_ADDRSTROBE;
  wire microblaze_MPLC_ilmb_CE;
  wire [0:31]microblaze_MPLC_ilmb_READDBUS;
  wire microblaze_MPLC_ilmb_READSTROBE;
  wire microblaze_MPLC_ilmb_READY;
  wire microblaze_MPLC_ilmb_UE;
  wire microblaze_MPLC_ilmb_WAIT;
  wire [0:31]microblaze_MPLC_ilmb_bus_ABUS;
  wire microblaze_MPLC_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_MPLC_ilmb_bus_BE;
  wire microblaze_MPLC_ilmb_bus_CE;
  wire [0:31]microblaze_MPLC_ilmb_bus_READDBUS;
  wire microblaze_MPLC_ilmb_bus_READSTROBE;
  wire microblaze_MPLC_ilmb_bus_READY;
  wire microblaze_MPLC_ilmb_bus_UE;
  wire microblaze_MPLC_ilmb_bus_WAIT;
  wire [0:31]microblaze_MPLC_ilmb_bus_WRITEDBUS;
  wire microblaze_MPLC_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_MPLC_ilmb_cntlr_ADDR;
  wire microblaze_MPLC_ilmb_cntlr_CLK;
  wire [0:31]microblaze_MPLC_ilmb_cntlr_DIN;
  wire [31:0]microblaze_MPLC_ilmb_cntlr_DOUT;
  wire microblaze_MPLC_ilmb_cntlr_EN;
  wire microblaze_MPLC_ilmb_cntlr_RST;
  wire [0:3]microblaze_MPLC_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_MPLC_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_MPLC_dlmb_READDBUS;
  assign DLMB_ready = microblaze_MPLC_dlmb_READY;
  assign DLMB_ue = microblaze_MPLC_dlmb_UE;
  assign DLMB_wait = microblaze_MPLC_dlmb_WAIT;
  assign ILMB_ce = microblaze_MPLC_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_MPLC_ilmb_READDBUS;
  assign ILMB_ready = microblaze_MPLC_ilmb_READY;
  assign ILMB_ue = microblaze_MPLC_ilmb_UE;
  assign ILMB_wait = microblaze_MPLC_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_MPLC_Clk = LMB_Clk;
  assign microblaze_MPLC_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_MPLC_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_MPLC_dlmb_BE = DLMB_be[0:3];
  assign microblaze_MPLC_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_MPLC_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_MPLC_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_MPLC_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_MPLC_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_MPLC_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 microblaze_PLCM_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_dlmb_bram_if_cntlr_1 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_MPLC_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_MPLC_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_MPLC_dlmb_cntlr_DOUT[31],microblaze_MPLC_dlmb_cntlr_DOUT[30],microblaze_MPLC_dlmb_cntlr_DOUT[29],microblaze_MPLC_dlmb_cntlr_DOUT[28],microblaze_MPLC_dlmb_cntlr_DOUT[27],microblaze_MPLC_dlmb_cntlr_DOUT[26],microblaze_MPLC_dlmb_cntlr_DOUT[25],microblaze_MPLC_dlmb_cntlr_DOUT[24],microblaze_MPLC_dlmb_cntlr_DOUT[23],microblaze_MPLC_dlmb_cntlr_DOUT[22],microblaze_MPLC_dlmb_cntlr_DOUT[21],microblaze_MPLC_dlmb_cntlr_DOUT[20],microblaze_MPLC_dlmb_cntlr_DOUT[19],microblaze_MPLC_dlmb_cntlr_DOUT[18],microblaze_MPLC_dlmb_cntlr_DOUT[17],microblaze_MPLC_dlmb_cntlr_DOUT[16],microblaze_MPLC_dlmb_cntlr_DOUT[15],microblaze_MPLC_dlmb_cntlr_DOUT[14],microblaze_MPLC_dlmb_cntlr_DOUT[13],microblaze_MPLC_dlmb_cntlr_DOUT[12],microblaze_MPLC_dlmb_cntlr_DOUT[11],microblaze_MPLC_dlmb_cntlr_DOUT[10],microblaze_MPLC_dlmb_cntlr_DOUT[9],microblaze_MPLC_dlmb_cntlr_DOUT[8],microblaze_MPLC_dlmb_cntlr_DOUT[7],microblaze_MPLC_dlmb_cntlr_DOUT[6],microblaze_MPLC_dlmb_cntlr_DOUT[5],microblaze_MPLC_dlmb_cntlr_DOUT[4],microblaze_MPLC_dlmb_cntlr_DOUT[3],microblaze_MPLC_dlmb_cntlr_DOUT[2],microblaze_MPLC_dlmb_cntlr_DOUT[1],microblaze_MPLC_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_MPLC_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_MPLC_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_MPLC_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_MPLC_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_MPLC_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_MPLC_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_MPLC_dlmb_bus_BE),
        .LMB_Clk(microblaze_MPLC_Clk),
        .LMB_ReadStrobe(microblaze_MPLC_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_MPLC_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_MPLC_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_MPLC_dlmb_bus_CE),
        .Sl_DBus(microblaze_MPLC_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_MPLC_dlmb_bus_READY),
        .Sl_UE(microblaze_MPLC_dlmb_bus_UE),
        .Sl_Wait(microblaze_MPLC_dlmb_bus_WAIT));
  design_1_dlmb_v10_1 dlmb_v10
       (.LMB_ABus(microblaze_MPLC_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_MPLC_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_MPLC_dlmb_bus_BE),
        .LMB_CE(microblaze_MPLC_dlmb_CE),
        .LMB_Clk(microblaze_MPLC_Clk),
        .LMB_ReadDBus(microblaze_MPLC_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_MPLC_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_MPLC_dlmb_READY),
        .LMB_UE(microblaze_MPLC_dlmb_UE),
        .LMB_Wait(microblaze_MPLC_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_MPLC_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_MPLC_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_MPLC_dlmb_ABUS),
        .M_AddrStrobe(microblaze_MPLC_dlmb_ADDRSTROBE),
        .M_BE(microblaze_MPLC_dlmb_BE),
        .M_DBus(microblaze_MPLC_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_MPLC_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_MPLC_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_MPLC_dlmb_bus_CE),
        .Sl_DBus(microblaze_MPLC_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_MPLC_dlmb_bus_READY),
        .Sl_UE(microblaze_MPLC_dlmb_bus_UE),
        .Sl_Wait(microblaze_MPLC_dlmb_bus_WAIT));
  design_1_ilmb_bram_if_cntlr_1 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_MPLC_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_MPLC_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_MPLC_ilmb_cntlr_DOUT[31],microblaze_MPLC_ilmb_cntlr_DOUT[30],microblaze_MPLC_ilmb_cntlr_DOUT[29],microblaze_MPLC_ilmb_cntlr_DOUT[28],microblaze_MPLC_ilmb_cntlr_DOUT[27],microblaze_MPLC_ilmb_cntlr_DOUT[26],microblaze_MPLC_ilmb_cntlr_DOUT[25],microblaze_MPLC_ilmb_cntlr_DOUT[24],microblaze_MPLC_ilmb_cntlr_DOUT[23],microblaze_MPLC_ilmb_cntlr_DOUT[22],microblaze_MPLC_ilmb_cntlr_DOUT[21],microblaze_MPLC_ilmb_cntlr_DOUT[20],microblaze_MPLC_ilmb_cntlr_DOUT[19],microblaze_MPLC_ilmb_cntlr_DOUT[18],microblaze_MPLC_ilmb_cntlr_DOUT[17],microblaze_MPLC_ilmb_cntlr_DOUT[16],microblaze_MPLC_ilmb_cntlr_DOUT[15],microblaze_MPLC_ilmb_cntlr_DOUT[14],microblaze_MPLC_ilmb_cntlr_DOUT[13],microblaze_MPLC_ilmb_cntlr_DOUT[12],microblaze_MPLC_ilmb_cntlr_DOUT[11],microblaze_MPLC_ilmb_cntlr_DOUT[10],microblaze_MPLC_ilmb_cntlr_DOUT[9],microblaze_MPLC_ilmb_cntlr_DOUT[8],microblaze_MPLC_ilmb_cntlr_DOUT[7],microblaze_MPLC_ilmb_cntlr_DOUT[6],microblaze_MPLC_ilmb_cntlr_DOUT[5],microblaze_MPLC_ilmb_cntlr_DOUT[4],microblaze_MPLC_ilmb_cntlr_DOUT[3],microblaze_MPLC_ilmb_cntlr_DOUT[2],microblaze_MPLC_ilmb_cntlr_DOUT[1],microblaze_MPLC_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_MPLC_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_MPLC_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_MPLC_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_MPLC_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_MPLC_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_MPLC_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_MPLC_ilmb_bus_BE),
        .LMB_Clk(microblaze_MPLC_Clk),
        .LMB_ReadStrobe(microblaze_MPLC_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_MPLC_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_MPLC_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_MPLC_ilmb_bus_CE),
        .Sl_DBus(microblaze_MPLC_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_MPLC_ilmb_bus_READY),
        .Sl_UE(microblaze_MPLC_ilmb_bus_UE),
        .Sl_Wait(microblaze_MPLC_ilmb_bus_WAIT));
  design_1_ilmb_v10_1 ilmb_v10
       (.LMB_ABus(microblaze_MPLC_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_MPLC_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_MPLC_ilmb_bus_BE),
        .LMB_CE(microblaze_MPLC_ilmb_CE),
        .LMB_Clk(microblaze_MPLC_Clk),
        .LMB_ReadDBus(microblaze_MPLC_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_MPLC_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_MPLC_ilmb_READY),
        .LMB_UE(microblaze_MPLC_ilmb_UE),
        .LMB_Wait(microblaze_MPLC_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_MPLC_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_MPLC_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_MPLC_ilmb_ABUS),
        .M_AddrStrobe(microblaze_MPLC_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_MPLC_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_MPLC_ilmb_bus_CE),
        .Sl_DBus(microblaze_MPLC_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_MPLC_ilmb_bus_READY),
        .Sl_UE(microblaze_MPLC_ilmb_bus_UE),
        .Sl_Wait(microblaze_MPLC_ilmb_bus_WAIT));
  design_1_lmb_bram_1 lmb_bram
       (.addra({microblaze_MPLC_dlmb_cntlr_ADDR[0],microblaze_MPLC_dlmb_cntlr_ADDR[1],microblaze_MPLC_dlmb_cntlr_ADDR[2],microblaze_MPLC_dlmb_cntlr_ADDR[3],microblaze_MPLC_dlmb_cntlr_ADDR[4],microblaze_MPLC_dlmb_cntlr_ADDR[5],microblaze_MPLC_dlmb_cntlr_ADDR[6],microblaze_MPLC_dlmb_cntlr_ADDR[7],microblaze_MPLC_dlmb_cntlr_ADDR[8],microblaze_MPLC_dlmb_cntlr_ADDR[9],microblaze_MPLC_dlmb_cntlr_ADDR[10],microblaze_MPLC_dlmb_cntlr_ADDR[11],microblaze_MPLC_dlmb_cntlr_ADDR[12],microblaze_MPLC_dlmb_cntlr_ADDR[13],microblaze_MPLC_dlmb_cntlr_ADDR[14],microblaze_MPLC_dlmb_cntlr_ADDR[15],microblaze_MPLC_dlmb_cntlr_ADDR[16],microblaze_MPLC_dlmb_cntlr_ADDR[17],microblaze_MPLC_dlmb_cntlr_ADDR[18],microblaze_MPLC_dlmb_cntlr_ADDR[19],microblaze_MPLC_dlmb_cntlr_ADDR[20],microblaze_MPLC_dlmb_cntlr_ADDR[21],microblaze_MPLC_dlmb_cntlr_ADDR[22],microblaze_MPLC_dlmb_cntlr_ADDR[23],microblaze_MPLC_dlmb_cntlr_ADDR[24],microblaze_MPLC_dlmb_cntlr_ADDR[25],microblaze_MPLC_dlmb_cntlr_ADDR[26],microblaze_MPLC_dlmb_cntlr_ADDR[27],microblaze_MPLC_dlmb_cntlr_ADDR[28],microblaze_MPLC_dlmb_cntlr_ADDR[29],microblaze_MPLC_dlmb_cntlr_ADDR[30],microblaze_MPLC_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_MPLC_ilmb_cntlr_ADDR[0],microblaze_MPLC_ilmb_cntlr_ADDR[1],microblaze_MPLC_ilmb_cntlr_ADDR[2],microblaze_MPLC_ilmb_cntlr_ADDR[3],microblaze_MPLC_ilmb_cntlr_ADDR[4],microblaze_MPLC_ilmb_cntlr_ADDR[5],microblaze_MPLC_ilmb_cntlr_ADDR[6],microblaze_MPLC_ilmb_cntlr_ADDR[7],microblaze_MPLC_ilmb_cntlr_ADDR[8],microblaze_MPLC_ilmb_cntlr_ADDR[9],microblaze_MPLC_ilmb_cntlr_ADDR[10],microblaze_MPLC_ilmb_cntlr_ADDR[11],microblaze_MPLC_ilmb_cntlr_ADDR[12],microblaze_MPLC_ilmb_cntlr_ADDR[13],microblaze_MPLC_ilmb_cntlr_ADDR[14],microblaze_MPLC_ilmb_cntlr_ADDR[15],microblaze_MPLC_ilmb_cntlr_ADDR[16],microblaze_MPLC_ilmb_cntlr_ADDR[17],microblaze_MPLC_ilmb_cntlr_ADDR[18],microblaze_MPLC_ilmb_cntlr_ADDR[19],microblaze_MPLC_ilmb_cntlr_ADDR[20],microblaze_MPLC_ilmb_cntlr_ADDR[21],microblaze_MPLC_ilmb_cntlr_ADDR[22],microblaze_MPLC_ilmb_cntlr_ADDR[23],microblaze_MPLC_ilmb_cntlr_ADDR[24],microblaze_MPLC_ilmb_cntlr_ADDR[25],microblaze_MPLC_ilmb_cntlr_ADDR[26],microblaze_MPLC_ilmb_cntlr_ADDR[27],microblaze_MPLC_ilmb_cntlr_ADDR[28],microblaze_MPLC_ilmb_cntlr_ADDR[29],microblaze_MPLC_ilmb_cntlr_ADDR[30],microblaze_MPLC_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_MPLC_dlmb_cntlr_CLK),
        .clkb(microblaze_MPLC_ilmb_cntlr_CLK),
        .dina({microblaze_MPLC_dlmb_cntlr_DIN[0],microblaze_MPLC_dlmb_cntlr_DIN[1],microblaze_MPLC_dlmb_cntlr_DIN[2],microblaze_MPLC_dlmb_cntlr_DIN[3],microblaze_MPLC_dlmb_cntlr_DIN[4],microblaze_MPLC_dlmb_cntlr_DIN[5],microblaze_MPLC_dlmb_cntlr_DIN[6],microblaze_MPLC_dlmb_cntlr_DIN[7],microblaze_MPLC_dlmb_cntlr_DIN[8],microblaze_MPLC_dlmb_cntlr_DIN[9],microblaze_MPLC_dlmb_cntlr_DIN[10],microblaze_MPLC_dlmb_cntlr_DIN[11],microblaze_MPLC_dlmb_cntlr_DIN[12],microblaze_MPLC_dlmb_cntlr_DIN[13],microblaze_MPLC_dlmb_cntlr_DIN[14],microblaze_MPLC_dlmb_cntlr_DIN[15],microblaze_MPLC_dlmb_cntlr_DIN[16],microblaze_MPLC_dlmb_cntlr_DIN[17],microblaze_MPLC_dlmb_cntlr_DIN[18],microblaze_MPLC_dlmb_cntlr_DIN[19],microblaze_MPLC_dlmb_cntlr_DIN[20],microblaze_MPLC_dlmb_cntlr_DIN[21],microblaze_MPLC_dlmb_cntlr_DIN[22],microblaze_MPLC_dlmb_cntlr_DIN[23],microblaze_MPLC_dlmb_cntlr_DIN[24],microblaze_MPLC_dlmb_cntlr_DIN[25],microblaze_MPLC_dlmb_cntlr_DIN[26],microblaze_MPLC_dlmb_cntlr_DIN[27],microblaze_MPLC_dlmb_cntlr_DIN[28],microblaze_MPLC_dlmb_cntlr_DIN[29],microblaze_MPLC_dlmb_cntlr_DIN[30],microblaze_MPLC_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_MPLC_ilmb_cntlr_DIN[0],microblaze_MPLC_ilmb_cntlr_DIN[1],microblaze_MPLC_ilmb_cntlr_DIN[2],microblaze_MPLC_ilmb_cntlr_DIN[3],microblaze_MPLC_ilmb_cntlr_DIN[4],microblaze_MPLC_ilmb_cntlr_DIN[5],microblaze_MPLC_ilmb_cntlr_DIN[6],microblaze_MPLC_ilmb_cntlr_DIN[7],microblaze_MPLC_ilmb_cntlr_DIN[8],microblaze_MPLC_ilmb_cntlr_DIN[9],microblaze_MPLC_ilmb_cntlr_DIN[10],microblaze_MPLC_ilmb_cntlr_DIN[11],microblaze_MPLC_ilmb_cntlr_DIN[12],microblaze_MPLC_ilmb_cntlr_DIN[13],microblaze_MPLC_ilmb_cntlr_DIN[14],microblaze_MPLC_ilmb_cntlr_DIN[15],microblaze_MPLC_ilmb_cntlr_DIN[16],microblaze_MPLC_ilmb_cntlr_DIN[17],microblaze_MPLC_ilmb_cntlr_DIN[18],microblaze_MPLC_ilmb_cntlr_DIN[19],microblaze_MPLC_ilmb_cntlr_DIN[20],microblaze_MPLC_ilmb_cntlr_DIN[21],microblaze_MPLC_ilmb_cntlr_DIN[22],microblaze_MPLC_ilmb_cntlr_DIN[23],microblaze_MPLC_ilmb_cntlr_DIN[24],microblaze_MPLC_ilmb_cntlr_DIN[25],microblaze_MPLC_ilmb_cntlr_DIN[26],microblaze_MPLC_ilmb_cntlr_DIN[27],microblaze_MPLC_ilmb_cntlr_DIN[28],microblaze_MPLC_ilmb_cntlr_DIN[29],microblaze_MPLC_ilmb_cntlr_DIN[30],microblaze_MPLC_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_MPLC_dlmb_cntlr_DOUT),
        .doutb(microblaze_MPLC_ilmb_cntlr_DOUT),
        .ena(microblaze_MPLC_dlmb_cntlr_EN),
        .enb(microblaze_MPLC_ilmb_cntlr_EN),
        .rsta(microblaze_MPLC_dlmb_cntlr_RST),
        .rstb(microblaze_MPLC_ilmb_cntlr_RST),
        .wea({microblaze_MPLC_dlmb_cntlr_WE[0],microblaze_MPLC_dlmb_cntlr_WE[1],microblaze_MPLC_dlmb_cntlr_WE[2],microblaze_MPLC_dlmb_cntlr_WE[3]}),
        .web({microblaze_MPLC_ilmb_cntlr_WE[0],microblaze_MPLC_ilmb_cntlr_WE[1],microblaze_MPLC_ilmb_cntlr_WE[2],microblaze_MPLC_ilmb_cntlr_WE[3]}));
endmodule

module microblaze_PLC_Ethernet_local_memory_imp_NTI4HY
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_0_Clk;
  wire [0:31]microblaze_0_dlmb_ABUS;
  wire microblaze_0_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_BE;
  wire microblaze_0_dlmb_CE;
  wire [0:31]microblaze_0_dlmb_READDBUS;
  wire microblaze_0_dlmb_READSTROBE;
  wire microblaze_0_dlmb_READY;
  wire microblaze_0_dlmb_UE;
  wire microblaze_0_dlmb_WAIT;
  wire [0:31]microblaze_0_dlmb_WRITEDBUS;
  wire microblaze_0_dlmb_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_bus_ABUS;
  wire microblaze_0_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_dlmb_bus_BE;
  wire microblaze_0_dlmb_bus_CE;
  wire [0:31]microblaze_0_dlmb_bus_READDBUS;
  wire microblaze_0_dlmb_bus_READSTROBE;
  wire microblaze_0_dlmb_bus_READY;
  wire microblaze_0_dlmb_bus_UE;
  wire microblaze_0_dlmb_bus_WAIT;
  wire [0:31]microblaze_0_dlmb_bus_WRITEDBUS;
  wire microblaze_0_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_dlmb_cntlr_ADDR;
  wire microblaze_0_dlmb_cntlr_CLK;
  wire [0:31]microblaze_0_dlmb_cntlr_DIN;
  wire [31:0]microblaze_0_dlmb_cntlr_DOUT;
  wire microblaze_0_dlmb_cntlr_EN;
  wire microblaze_0_dlmb_cntlr_RST;
  wire [0:3]microblaze_0_dlmb_cntlr_WE;
  wire [0:31]microblaze_0_ilmb_ABUS;
  wire microblaze_0_ilmb_ADDRSTROBE;
  wire microblaze_0_ilmb_CE;
  wire [0:31]microblaze_0_ilmb_READDBUS;
  wire microblaze_0_ilmb_READSTROBE;
  wire microblaze_0_ilmb_READY;
  wire microblaze_0_ilmb_UE;
  wire microblaze_0_ilmb_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_ABUS;
  wire microblaze_0_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_0_ilmb_bus_BE;
  wire microblaze_0_ilmb_bus_CE;
  wire [0:31]microblaze_0_ilmb_bus_READDBUS;
  wire microblaze_0_ilmb_bus_READSTROBE;
  wire microblaze_0_ilmb_bus_READY;
  wire microblaze_0_ilmb_bus_UE;
  wire microblaze_0_ilmb_bus_WAIT;
  wire [0:31]microblaze_0_ilmb_bus_WRITEDBUS;
  wire microblaze_0_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_0_ilmb_cntlr_ADDR;
  wire microblaze_0_ilmb_cntlr_CLK;
  wire [0:31]microblaze_0_ilmb_cntlr_DIN;
  wire [31:0]microblaze_0_ilmb_cntlr_DOUT;
  wire microblaze_0_ilmb_cntlr_EN;
  wire microblaze_0_ilmb_cntlr_RST;
  wire [0:3]microblaze_0_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_0_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_0_dlmb_READDBUS;
  assign DLMB_ready = microblaze_0_dlmb_READY;
  assign DLMB_ue = microblaze_0_dlmb_UE;
  assign DLMB_wait = microblaze_0_dlmb_WAIT;
  assign ILMB_ce = microblaze_0_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_0_ilmb_READDBUS;
  assign ILMB_ready = microblaze_0_ilmb_READY;
  assign ILMB_ue = microblaze_0_ilmb_UE;
  assign ILMB_wait = microblaze_0_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_0_Clk = LMB_Clk;
  assign microblaze_0_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_0_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_0_dlmb_BE = DLMB_be[0:3];
  assign microblaze_0_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_0_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_0_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_0_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_0_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_0_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 microblaze_PLC_Ethernet_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_dlmb_bram_if_cntlr_2 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_dlmb_cntlr_DOUT[31],microblaze_0_dlmb_cntlr_DOUT[30],microblaze_0_dlmb_cntlr_DOUT[29],microblaze_0_dlmb_cntlr_DOUT[28],microblaze_0_dlmb_cntlr_DOUT[27],microblaze_0_dlmb_cntlr_DOUT[26],microblaze_0_dlmb_cntlr_DOUT[25],microblaze_0_dlmb_cntlr_DOUT[24],microblaze_0_dlmb_cntlr_DOUT[23],microblaze_0_dlmb_cntlr_DOUT[22],microblaze_0_dlmb_cntlr_DOUT[21],microblaze_0_dlmb_cntlr_DOUT[20],microblaze_0_dlmb_cntlr_DOUT[19],microblaze_0_dlmb_cntlr_DOUT[18],microblaze_0_dlmb_cntlr_DOUT[17],microblaze_0_dlmb_cntlr_DOUT[16],microblaze_0_dlmb_cntlr_DOUT[15],microblaze_0_dlmb_cntlr_DOUT[14],microblaze_0_dlmb_cntlr_DOUT[13],microblaze_0_dlmb_cntlr_DOUT[12],microblaze_0_dlmb_cntlr_DOUT[11],microblaze_0_dlmb_cntlr_DOUT[10],microblaze_0_dlmb_cntlr_DOUT[9],microblaze_0_dlmb_cntlr_DOUT[8],microblaze_0_dlmb_cntlr_DOUT[7],microblaze_0_dlmb_cntlr_DOUT[6],microblaze_0_dlmb_cntlr_DOUT[5],microblaze_0_dlmb_cntlr_DOUT[4],microblaze_0_dlmb_cntlr_DOUT[3],microblaze_0_dlmb_cntlr_DOUT[2],microblaze_0_dlmb_cntlr_DOUT[1],microblaze_0_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  design_1_dlmb_v10_2 dlmb_v10
       (.LMB_ABus(microblaze_0_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_dlmb_bus_BE),
        .LMB_CE(microblaze_0_dlmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_dlmb_READY),
        .LMB_UE(microblaze_0_dlmb_UE),
        .LMB_Wait(microblaze_0_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_0_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_dlmb_ABUS),
        .M_AddrStrobe(microblaze_0_dlmb_ADDRSTROBE),
        .M_BE(microblaze_0_dlmb_BE),
        .M_DBus(microblaze_0_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_0_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_0_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_dlmb_bus_CE),
        .Sl_DBus(microblaze_0_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_dlmb_bus_READY),
        .Sl_UE(microblaze_0_dlmb_bus_UE),
        .Sl_Wait(microblaze_0_dlmb_bus_WAIT));
  design_1_ilmb_bram_if_cntlr_2 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_0_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_0_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_0_ilmb_cntlr_DOUT[31],microblaze_0_ilmb_cntlr_DOUT[30],microblaze_0_ilmb_cntlr_DOUT[29],microblaze_0_ilmb_cntlr_DOUT[28],microblaze_0_ilmb_cntlr_DOUT[27],microblaze_0_ilmb_cntlr_DOUT[26],microblaze_0_ilmb_cntlr_DOUT[25],microblaze_0_ilmb_cntlr_DOUT[24],microblaze_0_ilmb_cntlr_DOUT[23],microblaze_0_ilmb_cntlr_DOUT[22],microblaze_0_ilmb_cntlr_DOUT[21],microblaze_0_ilmb_cntlr_DOUT[20],microblaze_0_ilmb_cntlr_DOUT[19],microblaze_0_ilmb_cntlr_DOUT[18],microblaze_0_ilmb_cntlr_DOUT[17],microblaze_0_ilmb_cntlr_DOUT[16],microblaze_0_ilmb_cntlr_DOUT[15],microblaze_0_ilmb_cntlr_DOUT[14],microblaze_0_ilmb_cntlr_DOUT[13],microblaze_0_ilmb_cntlr_DOUT[12],microblaze_0_ilmb_cntlr_DOUT[11],microblaze_0_ilmb_cntlr_DOUT[10],microblaze_0_ilmb_cntlr_DOUT[9],microblaze_0_ilmb_cntlr_DOUT[8],microblaze_0_ilmb_cntlr_DOUT[7],microblaze_0_ilmb_cntlr_DOUT[6],microblaze_0_ilmb_cntlr_DOUT[5],microblaze_0_ilmb_cntlr_DOUT[4],microblaze_0_ilmb_cntlr_DOUT[3],microblaze_0_ilmb_cntlr_DOUT[2],microblaze_0_ilmb_cntlr_DOUT[1],microblaze_0_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_0_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_0_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_0_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_0_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  design_1_ilmb_v10_2 ilmb_v10
       (.LMB_ABus(microblaze_0_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_0_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_0_ilmb_bus_BE),
        .LMB_CE(microblaze_0_ilmb_CE),
        .LMB_Clk(microblaze_0_Clk),
        .LMB_ReadDBus(microblaze_0_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_0_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_0_ilmb_READY),
        .LMB_UE(microblaze_0_ilmb_UE),
        .LMB_Wait(microblaze_0_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_0_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_0_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_0_ilmb_ABUS),
        .M_AddrStrobe(microblaze_0_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_0_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_0_ilmb_bus_CE),
        .Sl_DBus(microblaze_0_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_0_ilmb_bus_READY),
        .Sl_UE(microblaze_0_ilmb_bus_UE),
        .Sl_Wait(microblaze_0_ilmb_bus_WAIT));
  design_1_lmb_bram_2 lmb_bram
       (.addra({microblaze_0_dlmb_cntlr_ADDR[0],microblaze_0_dlmb_cntlr_ADDR[1],microblaze_0_dlmb_cntlr_ADDR[2],microblaze_0_dlmb_cntlr_ADDR[3],microblaze_0_dlmb_cntlr_ADDR[4],microblaze_0_dlmb_cntlr_ADDR[5],microblaze_0_dlmb_cntlr_ADDR[6],microblaze_0_dlmb_cntlr_ADDR[7],microblaze_0_dlmb_cntlr_ADDR[8],microblaze_0_dlmb_cntlr_ADDR[9],microblaze_0_dlmb_cntlr_ADDR[10],microblaze_0_dlmb_cntlr_ADDR[11],microblaze_0_dlmb_cntlr_ADDR[12],microblaze_0_dlmb_cntlr_ADDR[13],microblaze_0_dlmb_cntlr_ADDR[14],microblaze_0_dlmb_cntlr_ADDR[15],microblaze_0_dlmb_cntlr_ADDR[16],microblaze_0_dlmb_cntlr_ADDR[17],microblaze_0_dlmb_cntlr_ADDR[18],microblaze_0_dlmb_cntlr_ADDR[19],microblaze_0_dlmb_cntlr_ADDR[20],microblaze_0_dlmb_cntlr_ADDR[21],microblaze_0_dlmb_cntlr_ADDR[22],microblaze_0_dlmb_cntlr_ADDR[23],microblaze_0_dlmb_cntlr_ADDR[24],microblaze_0_dlmb_cntlr_ADDR[25],microblaze_0_dlmb_cntlr_ADDR[26],microblaze_0_dlmb_cntlr_ADDR[27],microblaze_0_dlmb_cntlr_ADDR[28],microblaze_0_dlmb_cntlr_ADDR[29],microblaze_0_dlmb_cntlr_ADDR[30],microblaze_0_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_0_ilmb_cntlr_ADDR[0],microblaze_0_ilmb_cntlr_ADDR[1],microblaze_0_ilmb_cntlr_ADDR[2],microblaze_0_ilmb_cntlr_ADDR[3],microblaze_0_ilmb_cntlr_ADDR[4],microblaze_0_ilmb_cntlr_ADDR[5],microblaze_0_ilmb_cntlr_ADDR[6],microblaze_0_ilmb_cntlr_ADDR[7],microblaze_0_ilmb_cntlr_ADDR[8],microblaze_0_ilmb_cntlr_ADDR[9],microblaze_0_ilmb_cntlr_ADDR[10],microblaze_0_ilmb_cntlr_ADDR[11],microblaze_0_ilmb_cntlr_ADDR[12],microblaze_0_ilmb_cntlr_ADDR[13],microblaze_0_ilmb_cntlr_ADDR[14],microblaze_0_ilmb_cntlr_ADDR[15],microblaze_0_ilmb_cntlr_ADDR[16],microblaze_0_ilmb_cntlr_ADDR[17],microblaze_0_ilmb_cntlr_ADDR[18],microblaze_0_ilmb_cntlr_ADDR[19],microblaze_0_ilmb_cntlr_ADDR[20],microblaze_0_ilmb_cntlr_ADDR[21],microblaze_0_ilmb_cntlr_ADDR[22],microblaze_0_ilmb_cntlr_ADDR[23],microblaze_0_ilmb_cntlr_ADDR[24],microblaze_0_ilmb_cntlr_ADDR[25],microblaze_0_ilmb_cntlr_ADDR[26],microblaze_0_ilmb_cntlr_ADDR[27],microblaze_0_ilmb_cntlr_ADDR[28],microblaze_0_ilmb_cntlr_ADDR[29],microblaze_0_ilmb_cntlr_ADDR[30],microblaze_0_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_0_dlmb_cntlr_CLK),
        .clkb(microblaze_0_ilmb_cntlr_CLK),
        .dina({microblaze_0_dlmb_cntlr_DIN[0],microblaze_0_dlmb_cntlr_DIN[1],microblaze_0_dlmb_cntlr_DIN[2],microblaze_0_dlmb_cntlr_DIN[3],microblaze_0_dlmb_cntlr_DIN[4],microblaze_0_dlmb_cntlr_DIN[5],microblaze_0_dlmb_cntlr_DIN[6],microblaze_0_dlmb_cntlr_DIN[7],microblaze_0_dlmb_cntlr_DIN[8],microblaze_0_dlmb_cntlr_DIN[9],microblaze_0_dlmb_cntlr_DIN[10],microblaze_0_dlmb_cntlr_DIN[11],microblaze_0_dlmb_cntlr_DIN[12],microblaze_0_dlmb_cntlr_DIN[13],microblaze_0_dlmb_cntlr_DIN[14],microblaze_0_dlmb_cntlr_DIN[15],microblaze_0_dlmb_cntlr_DIN[16],microblaze_0_dlmb_cntlr_DIN[17],microblaze_0_dlmb_cntlr_DIN[18],microblaze_0_dlmb_cntlr_DIN[19],microblaze_0_dlmb_cntlr_DIN[20],microblaze_0_dlmb_cntlr_DIN[21],microblaze_0_dlmb_cntlr_DIN[22],microblaze_0_dlmb_cntlr_DIN[23],microblaze_0_dlmb_cntlr_DIN[24],microblaze_0_dlmb_cntlr_DIN[25],microblaze_0_dlmb_cntlr_DIN[26],microblaze_0_dlmb_cntlr_DIN[27],microblaze_0_dlmb_cntlr_DIN[28],microblaze_0_dlmb_cntlr_DIN[29],microblaze_0_dlmb_cntlr_DIN[30],microblaze_0_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_0_ilmb_cntlr_DIN[0],microblaze_0_ilmb_cntlr_DIN[1],microblaze_0_ilmb_cntlr_DIN[2],microblaze_0_ilmb_cntlr_DIN[3],microblaze_0_ilmb_cntlr_DIN[4],microblaze_0_ilmb_cntlr_DIN[5],microblaze_0_ilmb_cntlr_DIN[6],microblaze_0_ilmb_cntlr_DIN[7],microblaze_0_ilmb_cntlr_DIN[8],microblaze_0_ilmb_cntlr_DIN[9],microblaze_0_ilmb_cntlr_DIN[10],microblaze_0_ilmb_cntlr_DIN[11],microblaze_0_ilmb_cntlr_DIN[12],microblaze_0_ilmb_cntlr_DIN[13],microblaze_0_ilmb_cntlr_DIN[14],microblaze_0_ilmb_cntlr_DIN[15],microblaze_0_ilmb_cntlr_DIN[16],microblaze_0_ilmb_cntlr_DIN[17],microblaze_0_ilmb_cntlr_DIN[18],microblaze_0_ilmb_cntlr_DIN[19],microblaze_0_ilmb_cntlr_DIN[20],microblaze_0_ilmb_cntlr_DIN[21],microblaze_0_ilmb_cntlr_DIN[22],microblaze_0_ilmb_cntlr_DIN[23],microblaze_0_ilmb_cntlr_DIN[24],microblaze_0_ilmb_cntlr_DIN[25],microblaze_0_ilmb_cntlr_DIN[26],microblaze_0_ilmb_cntlr_DIN[27],microblaze_0_ilmb_cntlr_DIN[28],microblaze_0_ilmb_cntlr_DIN[29],microblaze_0_ilmb_cntlr_DIN[30],microblaze_0_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_0_dlmb_cntlr_DOUT),
        .doutb(microblaze_0_ilmb_cntlr_DOUT),
        .ena(microblaze_0_dlmb_cntlr_EN),
        .enb(microblaze_0_ilmb_cntlr_EN),
        .rsta(microblaze_0_dlmb_cntlr_RST),
        .rstb(microblaze_0_ilmb_cntlr_RST),
        .wea({microblaze_0_dlmb_cntlr_WE[0],microblaze_0_dlmb_cntlr_WE[1],microblaze_0_dlmb_cntlr_WE[2],microblaze_0_dlmb_cntlr_WE[3]}),
        .web({microblaze_0_ilmb_cntlr_WE[0],microblaze_0_ilmb_cntlr_WE[1],microblaze_0_ilmb_cntlr_WE[2],microblaze_0_ilmb_cntlr_WE[3]}));
endmodule

module microblaze_PLC_RS485_local_memory_imp_11APUG
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_PLC_Clk;
  wire [0:31]microblaze_PLC_dlmb_ABUS;
  wire microblaze_PLC_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_PLC_dlmb_BE;
  wire microblaze_PLC_dlmb_CE;
  wire [0:31]microblaze_PLC_dlmb_READDBUS;
  wire microblaze_PLC_dlmb_READSTROBE;
  wire microblaze_PLC_dlmb_READY;
  wire microblaze_PLC_dlmb_UE;
  wire microblaze_PLC_dlmb_WAIT;
  wire [0:31]microblaze_PLC_dlmb_WRITEDBUS;
  wire microblaze_PLC_dlmb_WRITESTROBE;
  wire [0:31]microblaze_PLC_dlmb_bus_ABUS;
  wire microblaze_PLC_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_PLC_dlmb_bus_BE;
  wire microblaze_PLC_dlmb_bus_CE;
  wire [0:31]microblaze_PLC_dlmb_bus_READDBUS;
  wire microblaze_PLC_dlmb_bus_READSTROBE;
  wire microblaze_PLC_dlmb_bus_READY;
  wire microblaze_PLC_dlmb_bus_UE;
  wire microblaze_PLC_dlmb_bus_WAIT;
  wire [0:31]microblaze_PLC_dlmb_bus_WRITEDBUS;
  wire microblaze_PLC_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_PLC_dlmb_cntlr_ADDR;
  wire microblaze_PLC_dlmb_cntlr_CLK;
  wire [0:31]microblaze_PLC_dlmb_cntlr_DIN;
  wire [31:0]microblaze_PLC_dlmb_cntlr_DOUT;
  wire microblaze_PLC_dlmb_cntlr_EN;
  wire microblaze_PLC_dlmb_cntlr_RST;
  wire [0:3]microblaze_PLC_dlmb_cntlr_WE;
  wire [0:31]microblaze_PLC_ilmb_ABUS;
  wire microblaze_PLC_ilmb_ADDRSTROBE;
  wire microblaze_PLC_ilmb_CE;
  wire [0:31]microblaze_PLC_ilmb_READDBUS;
  wire microblaze_PLC_ilmb_READSTROBE;
  wire microblaze_PLC_ilmb_READY;
  wire microblaze_PLC_ilmb_UE;
  wire microblaze_PLC_ilmb_WAIT;
  wire [0:31]microblaze_PLC_ilmb_bus_ABUS;
  wire microblaze_PLC_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_PLC_ilmb_bus_BE;
  wire microblaze_PLC_ilmb_bus_CE;
  wire [0:31]microblaze_PLC_ilmb_bus_READDBUS;
  wire microblaze_PLC_ilmb_bus_READSTROBE;
  wire microblaze_PLC_ilmb_bus_READY;
  wire microblaze_PLC_ilmb_bus_UE;
  wire microblaze_PLC_ilmb_bus_WAIT;
  wire [0:31]microblaze_PLC_ilmb_bus_WRITEDBUS;
  wire microblaze_PLC_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_PLC_ilmb_cntlr_ADDR;
  wire microblaze_PLC_ilmb_cntlr_CLK;
  wire [0:31]microblaze_PLC_ilmb_cntlr_DIN;
  wire [31:0]microblaze_PLC_ilmb_cntlr_DOUT;
  wire microblaze_PLC_ilmb_cntlr_EN;
  wire microblaze_PLC_ilmb_cntlr_RST;
  wire [0:3]microblaze_PLC_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_PLC_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_PLC_dlmb_READDBUS;
  assign DLMB_ready = microblaze_PLC_dlmb_READY;
  assign DLMB_ue = microblaze_PLC_dlmb_UE;
  assign DLMB_wait = microblaze_PLC_dlmb_WAIT;
  assign ILMB_ce = microblaze_PLC_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_PLC_ilmb_READDBUS;
  assign ILMB_ready = microblaze_PLC_ilmb_READY;
  assign ILMB_ue = microblaze_PLC_ilmb_UE;
  assign ILMB_wait = microblaze_PLC_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_PLC_Clk = LMB_Clk;
  assign microblaze_PLC_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_PLC_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_PLC_dlmb_BE = DLMB_be[0:3];
  assign microblaze_PLC_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_PLC_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_PLC_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_PLC_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_PLC_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_PLC_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > design_1 microblaze_PLC_RS485_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_PLC_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_PLC_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_PLC_dlmb_cntlr_DOUT[31],microblaze_PLC_dlmb_cntlr_DOUT[30],microblaze_PLC_dlmb_cntlr_DOUT[29],microblaze_PLC_dlmb_cntlr_DOUT[28],microblaze_PLC_dlmb_cntlr_DOUT[27],microblaze_PLC_dlmb_cntlr_DOUT[26],microblaze_PLC_dlmb_cntlr_DOUT[25],microblaze_PLC_dlmb_cntlr_DOUT[24],microblaze_PLC_dlmb_cntlr_DOUT[23],microblaze_PLC_dlmb_cntlr_DOUT[22],microblaze_PLC_dlmb_cntlr_DOUT[21],microblaze_PLC_dlmb_cntlr_DOUT[20],microblaze_PLC_dlmb_cntlr_DOUT[19],microblaze_PLC_dlmb_cntlr_DOUT[18],microblaze_PLC_dlmb_cntlr_DOUT[17],microblaze_PLC_dlmb_cntlr_DOUT[16],microblaze_PLC_dlmb_cntlr_DOUT[15],microblaze_PLC_dlmb_cntlr_DOUT[14],microblaze_PLC_dlmb_cntlr_DOUT[13],microblaze_PLC_dlmb_cntlr_DOUT[12],microblaze_PLC_dlmb_cntlr_DOUT[11],microblaze_PLC_dlmb_cntlr_DOUT[10],microblaze_PLC_dlmb_cntlr_DOUT[9],microblaze_PLC_dlmb_cntlr_DOUT[8],microblaze_PLC_dlmb_cntlr_DOUT[7],microblaze_PLC_dlmb_cntlr_DOUT[6],microblaze_PLC_dlmb_cntlr_DOUT[5],microblaze_PLC_dlmb_cntlr_DOUT[4],microblaze_PLC_dlmb_cntlr_DOUT[3],microblaze_PLC_dlmb_cntlr_DOUT[2],microblaze_PLC_dlmb_cntlr_DOUT[1],microblaze_PLC_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_PLC_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_PLC_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_PLC_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_PLC_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_PLC_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_PLC_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_PLC_dlmb_bus_BE),
        .LMB_Clk(microblaze_PLC_Clk),
        .LMB_ReadStrobe(microblaze_PLC_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_PLC_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_PLC_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_PLC_dlmb_bus_CE),
        .Sl_DBus(microblaze_PLC_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_PLC_dlmb_bus_READY),
        .Sl_UE(microblaze_PLC_dlmb_bus_UE),
        .Sl_Wait(microblaze_PLC_dlmb_bus_WAIT));
  design_1_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_PLC_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_PLC_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_PLC_dlmb_bus_BE),
        .LMB_CE(microblaze_PLC_dlmb_CE),
        .LMB_Clk(microblaze_PLC_Clk),
        .LMB_ReadDBus(microblaze_PLC_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_PLC_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_PLC_dlmb_READY),
        .LMB_UE(microblaze_PLC_dlmb_UE),
        .LMB_Wait(microblaze_PLC_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_PLC_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_PLC_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_PLC_dlmb_ABUS),
        .M_AddrStrobe(microblaze_PLC_dlmb_ADDRSTROBE),
        .M_BE(microblaze_PLC_dlmb_BE),
        .M_DBus(microblaze_PLC_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_PLC_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_PLC_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_PLC_dlmb_bus_CE),
        .Sl_DBus(microblaze_PLC_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_PLC_dlmb_bus_READY),
        .Sl_UE(microblaze_PLC_dlmb_bus_UE),
        .Sl_Wait(microblaze_PLC_dlmb_bus_WAIT));
  design_1_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_PLC_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_PLC_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_PLC_ilmb_cntlr_DOUT[31],microblaze_PLC_ilmb_cntlr_DOUT[30],microblaze_PLC_ilmb_cntlr_DOUT[29],microblaze_PLC_ilmb_cntlr_DOUT[28],microblaze_PLC_ilmb_cntlr_DOUT[27],microblaze_PLC_ilmb_cntlr_DOUT[26],microblaze_PLC_ilmb_cntlr_DOUT[25],microblaze_PLC_ilmb_cntlr_DOUT[24],microblaze_PLC_ilmb_cntlr_DOUT[23],microblaze_PLC_ilmb_cntlr_DOUT[22],microblaze_PLC_ilmb_cntlr_DOUT[21],microblaze_PLC_ilmb_cntlr_DOUT[20],microblaze_PLC_ilmb_cntlr_DOUT[19],microblaze_PLC_ilmb_cntlr_DOUT[18],microblaze_PLC_ilmb_cntlr_DOUT[17],microblaze_PLC_ilmb_cntlr_DOUT[16],microblaze_PLC_ilmb_cntlr_DOUT[15],microblaze_PLC_ilmb_cntlr_DOUT[14],microblaze_PLC_ilmb_cntlr_DOUT[13],microblaze_PLC_ilmb_cntlr_DOUT[12],microblaze_PLC_ilmb_cntlr_DOUT[11],microblaze_PLC_ilmb_cntlr_DOUT[10],microblaze_PLC_ilmb_cntlr_DOUT[9],microblaze_PLC_ilmb_cntlr_DOUT[8],microblaze_PLC_ilmb_cntlr_DOUT[7],microblaze_PLC_ilmb_cntlr_DOUT[6],microblaze_PLC_ilmb_cntlr_DOUT[5],microblaze_PLC_ilmb_cntlr_DOUT[4],microblaze_PLC_ilmb_cntlr_DOUT[3],microblaze_PLC_ilmb_cntlr_DOUT[2],microblaze_PLC_ilmb_cntlr_DOUT[1],microblaze_PLC_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_PLC_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_PLC_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_PLC_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_PLC_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_PLC_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_PLC_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_PLC_ilmb_bus_BE),
        .LMB_Clk(microblaze_PLC_Clk),
        .LMB_ReadStrobe(microblaze_PLC_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_PLC_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_PLC_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_PLC_ilmb_bus_CE),
        .Sl_DBus(microblaze_PLC_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_PLC_ilmb_bus_READY),
        .Sl_UE(microblaze_PLC_ilmb_bus_UE),
        .Sl_Wait(microblaze_PLC_ilmb_bus_WAIT));
  design_1_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_PLC_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_PLC_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_PLC_ilmb_bus_BE),
        .LMB_CE(microblaze_PLC_ilmb_CE),
        .LMB_Clk(microblaze_PLC_Clk),
        .LMB_ReadDBus(microblaze_PLC_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_PLC_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_PLC_ilmb_READY),
        .LMB_UE(microblaze_PLC_ilmb_UE),
        .LMB_Wait(microblaze_PLC_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_PLC_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_PLC_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_PLC_ilmb_ABUS),
        .M_AddrStrobe(microblaze_PLC_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_PLC_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_PLC_ilmb_bus_CE),
        .Sl_DBus(microblaze_PLC_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_PLC_ilmb_bus_READY),
        .Sl_UE(microblaze_PLC_ilmb_bus_UE),
        .Sl_Wait(microblaze_PLC_ilmb_bus_WAIT));
  design_1_lmb_bram_0 lmb_bram
       (.addra({microblaze_PLC_dlmb_cntlr_ADDR[0],microblaze_PLC_dlmb_cntlr_ADDR[1],microblaze_PLC_dlmb_cntlr_ADDR[2],microblaze_PLC_dlmb_cntlr_ADDR[3],microblaze_PLC_dlmb_cntlr_ADDR[4],microblaze_PLC_dlmb_cntlr_ADDR[5],microblaze_PLC_dlmb_cntlr_ADDR[6],microblaze_PLC_dlmb_cntlr_ADDR[7],microblaze_PLC_dlmb_cntlr_ADDR[8],microblaze_PLC_dlmb_cntlr_ADDR[9],microblaze_PLC_dlmb_cntlr_ADDR[10],microblaze_PLC_dlmb_cntlr_ADDR[11],microblaze_PLC_dlmb_cntlr_ADDR[12],microblaze_PLC_dlmb_cntlr_ADDR[13],microblaze_PLC_dlmb_cntlr_ADDR[14],microblaze_PLC_dlmb_cntlr_ADDR[15],microblaze_PLC_dlmb_cntlr_ADDR[16],microblaze_PLC_dlmb_cntlr_ADDR[17],microblaze_PLC_dlmb_cntlr_ADDR[18],microblaze_PLC_dlmb_cntlr_ADDR[19],microblaze_PLC_dlmb_cntlr_ADDR[20],microblaze_PLC_dlmb_cntlr_ADDR[21],microblaze_PLC_dlmb_cntlr_ADDR[22],microblaze_PLC_dlmb_cntlr_ADDR[23],microblaze_PLC_dlmb_cntlr_ADDR[24],microblaze_PLC_dlmb_cntlr_ADDR[25],microblaze_PLC_dlmb_cntlr_ADDR[26],microblaze_PLC_dlmb_cntlr_ADDR[27],microblaze_PLC_dlmb_cntlr_ADDR[28],microblaze_PLC_dlmb_cntlr_ADDR[29],microblaze_PLC_dlmb_cntlr_ADDR[30],microblaze_PLC_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_PLC_ilmb_cntlr_ADDR[0],microblaze_PLC_ilmb_cntlr_ADDR[1],microblaze_PLC_ilmb_cntlr_ADDR[2],microblaze_PLC_ilmb_cntlr_ADDR[3],microblaze_PLC_ilmb_cntlr_ADDR[4],microblaze_PLC_ilmb_cntlr_ADDR[5],microblaze_PLC_ilmb_cntlr_ADDR[6],microblaze_PLC_ilmb_cntlr_ADDR[7],microblaze_PLC_ilmb_cntlr_ADDR[8],microblaze_PLC_ilmb_cntlr_ADDR[9],microblaze_PLC_ilmb_cntlr_ADDR[10],microblaze_PLC_ilmb_cntlr_ADDR[11],microblaze_PLC_ilmb_cntlr_ADDR[12],microblaze_PLC_ilmb_cntlr_ADDR[13],microblaze_PLC_ilmb_cntlr_ADDR[14],microblaze_PLC_ilmb_cntlr_ADDR[15],microblaze_PLC_ilmb_cntlr_ADDR[16],microblaze_PLC_ilmb_cntlr_ADDR[17],microblaze_PLC_ilmb_cntlr_ADDR[18],microblaze_PLC_ilmb_cntlr_ADDR[19],microblaze_PLC_ilmb_cntlr_ADDR[20],microblaze_PLC_ilmb_cntlr_ADDR[21],microblaze_PLC_ilmb_cntlr_ADDR[22],microblaze_PLC_ilmb_cntlr_ADDR[23],microblaze_PLC_ilmb_cntlr_ADDR[24],microblaze_PLC_ilmb_cntlr_ADDR[25],microblaze_PLC_ilmb_cntlr_ADDR[26],microblaze_PLC_ilmb_cntlr_ADDR[27],microblaze_PLC_ilmb_cntlr_ADDR[28],microblaze_PLC_ilmb_cntlr_ADDR[29],microblaze_PLC_ilmb_cntlr_ADDR[30],microblaze_PLC_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_PLC_dlmb_cntlr_CLK),
        .clkb(microblaze_PLC_ilmb_cntlr_CLK),
        .dina({microblaze_PLC_dlmb_cntlr_DIN[0],microblaze_PLC_dlmb_cntlr_DIN[1],microblaze_PLC_dlmb_cntlr_DIN[2],microblaze_PLC_dlmb_cntlr_DIN[3],microblaze_PLC_dlmb_cntlr_DIN[4],microblaze_PLC_dlmb_cntlr_DIN[5],microblaze_PLC_dlmb_cntlr_DIN[6],microblaze_PLC_dlmb_cntlr_DIN[7],microblaze_PLC_dlmb_cntlr_DIN[8],microblaze_PLC_dlmb_cntlr_DIN[9],microblaze_PLC_dlmb_cntlr_DIN[10],microblaze_PLC_dlmb_cntlr_DIN[11],microblaze_PLC_dlmb_cntlr_DIN[12],microblaze_PLC_dlmb_cntlr_DIN[13],microblaze_PLC_dlmb_cntlr_DIN[14],microblaze_PLC_dlmb_cntlr_DIN[15],microblaze_PLC_dlmb_cntlr_DIN[16],microblaze_PLC_dlmb_cntlr_DIN[17],microblaze_PLC_dlmb_cntlr_DIN[18],microblaze_PLC_dlmb_cntlr_DIN[19],microblaze_PLC_dlmb_cntlr_DIN[20],microblaze_PLC_dlmb_cntlr_DIN[21],microblaze_PLC_dlmb_cntlr_DIN[22],microblaze_PLC_dlmb_cntlr_DIN[23],microblaze_PLC_dlmb_cntlr_DIN[24],microblaze_PLC_dlmb_cntlr_DIN[25],microblaze_PLC_dlmb_cntlr_DIN[26],microblaze_PLC_dlmb_cntlr_DIN[27],microblaze_PLC_dlmb_cntlr_DIN[28],microblaze_PLC_dlmb_cntlr_DIN[29],microblaze_PLC_dlmb_cntlr_DIN[30],microblaze_PLC_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_PLC_ilmb_cntlr_DIN[0],microblaze_PLC_ilmb_cntlr_DIN[1],microblaze_PLC_ilmb_cntlr_DIN[2],microblaze_PLC_ilmb_cntlr_DIN[3],microblaze_PLC_ilmb_cntlr_DIN[4],microblaze_PLC_ilmb_cntlr_DIN[5],microblaze_PLC_ilmb_cntlr_DIN[6],microblaze_PLC_ilmb_cntlr_DIN[7],microblaze_PLC_ilmb_cntlr_DIN[8],microblaze_PLC_ilmb_cntlr_DIN[9],microblaze_PLC_ilmb_cntlr_DIN[10],microblaze_PLC_ilmb_cntlr_DIN[11],microblaze_PLC_ilmb_cntlr_DIN[12],microblaze_PLC_ilmb_cntlr_DIN[13],microblaze_PLC_ilmb_cntlr_DIN[14],microblaze_PLC_ilmb_cntlr_DIN[15],microblaze_PLC_ilmb_cntlr_DIN[16],microblaze_PLC_ilmb_cntlr_DIN[17],microblaze_PLC_ilmb_cntlr_DIN[18],microblaze_PLC_ilmb_cntlr_DIN[19],microblaze_PLC_ilmb_cntlr_DIN[20],microblaze_PLC_ilmb_cntlr_DIN[21],microblaze_PLC_ilmb_cntlr_DIN[22],microblaze_PLC_ilmb_cntlr_DIN[23],microblaze_PLC_ilmb_cntlr_DIN[24],microblaze_PLC_ilmb_cntlr_DIN[25],microblaze_PLC_ilmb_cntlr_DIN[26],microblaze_PLC_ilmb_cntlr_DIN[27],microblaze_PLC_ilmb_cntlr_DIN[28],microblaze_PLC_ilmb_cntlr_DIN[29],microblaze_PLC_ilmb_cntlr_DIN[30],microblaze_PLC_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_PLC_dlmb_cntlr_DOUT),
        .doutb(microblaze_PLC_ilmb_cntlr_DOUT),
        .ena(microblaze_PLC_dlmb_cntlr_EN),
        .enb(microblaze_PLC_ilmb_cntlr_EN),
        .rsta(microblaze_PLC_dlmb_cntlr_RST),
        .rstb(microblaze_PLC_ilmb_cntlr_RST),
        .wea({microblaze_PLC_dlmb_cntlr_WE[0],microblaze_PLC_dlmb_cntlr_WE[1],microblaze_PLC_dlmb_cntlr_WE[2],microblaze_PLC_dlmb_cntlr_WE[3]}),
        .web({microblaze_PLC_ilmb_cntlr_WE[0],microblaze_PLC_ilmb_cntlr_WE[1],microblaze_PLC_ilmb_cntlr_WE[2],microblaze_PLC_ilmb_cntlr_WE[3]}));
endmodule

module s00_couplers_imp_6CPX9W
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_R78B1Y
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_S2S6ZG
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule
