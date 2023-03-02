//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Mar  2 13:15:05 2023
//Host        : DESKTOP-DRQ34CR running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (PLCM_UART_rxd,
    PLCM_UART_txd,
    PLCM_Uart_Rx_disable_tri_o,
    PLCM_Uart_Tx_enable_tri_o,
    PLCM_Wire1_tri_io,
    PLCM_Wire2_tri_io,
    PLCM_miso,
    PLCM_mosi,
    PLCM_slave_clk,
    PLCM_slave_select,
    PLC_Ethernet_miso,
    PLC_Ethernet_miso_b,
    PLC_Ethernet_mosi,
    PLC_Ethernet_mosi_b,
    PLC_Ethernet_slave_clk,
    PLC_Ethernet_slave_clk_b,
    PLC_Ethernet_slave_select,
    PLC_Ethernet_slave_select_b,
    PLC_RS485_UART_rxd,
    PLC_RS485_UART_txd,
    PLC_RS485_Uart_Rx_disable_tri_o,
    PLC_RS485_Uart_Tx_enable_tri_o,
    PLC_RS485_Wire1_tri_io,
    PLC_RS485_Wire2_tri_io,
    reset,
    sys_clock);
  input PLCM_UART_rxd;
  output PLCM_UART_txd;
  output [0:0]PLCM_Uart_Rx_disable_tri_o;
  output [0:0]PLCM_Uart_Tx_enable_tri_o;
  inout [0:0]PLCM_Wire1_tri_io;
  inout [0:0]PLCM_Wire2_tri_io;
  input PLCM_miso;
  output PLCM_mosi;
  output PLCM_slave_clk;
  output [0:0]PLCM_slave_select;
  input PLC_Ethernet_miso;
  input PLC_Ethernet_miso_b;
  output PLC_Ethernet_mosi;
  output PLC_Ethernet_mosi_b;
  output PLC_Ethernet_slave_clk;
  output PLC_Ethernet_slave_clk_b;
  output [0:0]PLC_Ethernet_slave_select;
  output [0:0]PLC_Ethernet_slave_select_b;
  input PLC_RS485_UART_rxd;
  output PLC_RS485_UART_txd;
  output [0:0]PLC_RS485_Uart_Rx_disable_tri_o;
  output [0:0]PLC_RS485_Uart_Tx_enable_tri_o;
  inout [0:0]PLC_RS485_Wire1_tri_io;
  inout [0:0]PLC_RS485_Wire2_tri_io;
  input reset;
  input sys_clock;

  wire PLCM_UART_rxd;
  wire PLCM_UART_txd;
  wire [0:0]PLCM_Uart_Rx_disable_tri_o;
  wire [0:0]PLCM_Uart_Tx_enable_tri_o;
  wire [0:0]PLCM_Wire1_tri_i_0;
  wire [0:0]PLCM_Wire1_tri_io_0;
  wire [0:0]PLCM_Wire1_tri_o_0;
  wire [0:0]PLCM_Wire1_tri_t_0;
  wire [0:0]PLCM_Wire2_tri_i_0;
  wire [0:0]PLCM_Wire2_tri_io_0;
  wire [0:0]PLCM_Wire2_tri_o_0;
  wire [0:0]PLCM_Wire2_tri_t_0;
  wire PLCM_miso;
  wire PLCM_mosi;
  wire PLCM_slave_clk;
  wire [0:0]PLCM_slave_select;
  wire PLC_Ethernet_miso;
  wire PLC_Ethernet_miso_b;
  wire PLC_Ethernet_mosi;
  wire PLC_Ethernet_mosi_b;
  wire PLC_Ethernet_slave_clk;
  wire PLC_Ethernet_slave_clk_b;
  wire [0:0]PLC_Ethernet_slave_select;
  wire [0:0]PLC_Ethernet_slave_select_b;
  wire PLC_RS485_UART_rxd;
  wire PLC_RS485_UART_txd;
  wire [0:0]PLC_RS485_Uart_Rx_disable_tri_o;
  wire [0:0]PLC_RS485_Uart_Tx_enable_tri_o;
  wire [0:0]PLC_RS485_Wire1_tri_i_0;
  wire [0:0]PLC_RS485_Wire1_tri_io_0;
  wire [0:0]PLC_RS485_Wire1_tri_o_0;
  wire [0:0]PLC_RS485_Wire1_tri_t_0;
  wire [0:0]PLC_RS485_Wire2_tri_i_0;
  wire [0:0]PLC_RS485_Wire2_tri_io_0;
  wire [0:0]PLC_RS485_Wire2_tri_o_0;
  wire [0:0]PLC_RS485_Wire2_tri_t_0;
  wire reset;
  wire sys_clock;

  IOBUF PLCM_Wire1_tri_iobuf_0
       (.I(PLCM_Wire1_tri_o_0),
        .IO(PLCM_Wire1_tri_io[0]),
        .O(PLCM_Wire1_tri_i_0),
        .T(PLCM_Wire1_tri_t_0));
  IOBUF PLCM_Wire2_tri_iobuf_0
       (.I(PLCM_Wire2_tri_o_0),
        .IO(PLCM_Wire2_tri_io[0]),
        .O(PLCM_Wire2_tri_i_0),
        .T(PLCM_Wire2_tri_t_0));
  IOBUF PLC_RS485_Wire1_tri_iobuf_0
       (.I(PLC_RS485_Wire1_tri_o_0),
        .IO(PLC_RS485_Wire1_tri_io[0]),
        .O(PLC_RS485_Wire1_tri_i_0),
        .T(PLC_RS485_Wire1_tri_t_0));
  IOBUF PLC_RS485_Wire2_tri_iobuf_0
       (.I(PLC_RS485_Wire2_tri_o_0),
        .IO(PLC_RS485_Wire2_tri_io[0]),
        .O(PLC_RS485_Wire2_tri_i_0),
        .T(PLC_RS485_Wire2_tri_t_0));
  design_1 design_1_i
       (.PLCM_UART_rxd(PLCM_UART_rxd),
        .PLCM_UART_txd(PLCM_UART_txd),
        .PLCM_Uart_Rx_disable_tri_o(PLCM_Uart_Rx_disable_tri_o),
        .PLCM_Uart_Tx_enable_tri_o(PLCM_Uart_Tx_enable_tri_o),
        .PLCM_Wire1_tri_i(PLCM_Wire1_tri_i_0),
        .PLCM_Wire1_tri_o(PLCM_Wire1_tri_o_0),
        .PLCM_Wire1_tri_t(PLCM_Wire1_tri_t_0),
        .PLCM_Wire2_tri_i(PLCM_Wire2_tri_i_0),
        .PLCM_Wire2_tri_o(PLCM_Wire2_tri_o_0),
        .PLCM_Wire2_tri_t(PLCM_Wire2_tri_t_0),
        .PLCM_miso(PLCM_miso),
        .PLCM_mosi(PLCM_mosi),
        .PLCM_slave_clk(PLCM_slave_clk),
        .PLCM_slave_select(PLCM_slave_select),
        .PLC_Ethernet_miso(PLC_Ethernet_miso),
        .PLC_Ethernet_miso_b(PLC_Ethernet_miso_b),
        .PLC_Ethernet_mosi(PLC_Ethernet_mosi),
        .PLC_Ethernet_mosi_b(PLC_Ethernet_mosi_b),
        .PLC_Ethernet_slave_clk(PLC_Ethernet_slave_clk),
        .PLC_Ethernet_slave_clk_b(PLC_Ethernet_slave_clk_b),
        .PLC_Ethernet_slave_select(PLC_Ethernet_slave_select),
        .PLC_Ethernet_slave_select_b(PLC_Ethernet_slave_select_b),
        .PLC_RS485_UART_rxd(PLC_RS485_UART_rxd),
        .PLC_RS485_UART_txd(PLC_RS485_UART_txd),
        .PLC_RS485_Uart_Rx_disable_tri_o(PLC_RS485_Uart_Rx_disable_tri_o),
        .PLC_RS485_Uart_Tx_enable_tri_o(PLC_RS485_Uart_Tx_enable_tri_o),
        .PLC_RS485_Wire1_tri_i(PLC_RS485_Wire1_tri_i_0),
        .PLC_RS485_Wire1_tri_o(PLC_RS485_Wire1_tri_o_0),
        .PLC_RS485_Wire1_tri_t(PLC_RS485_Wire1_tri_t_0),
        .PLC_RS485_Wire2_tri_i(PLC_RS485_Wire2_tri_i_0),
        .PLC_RS485_Wire2_tri_o(PLC_RS485_Wire2_tri_o_0),
        .PLC_RS485_Wire2_tri_t(PLC_RS485_Wire2_tri_t_0),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
