//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Mar 02 20:00:35 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// UART_test
module UART_test(
    // Inputs
    TX_data_0,
    TX_data_1,
    clk,
    rst,
    // Outputs
    DATA_OUT,
    RXRDY,
    TXRDY,
    TX_0,
    TX_1
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] TX_data_0;
input  [7:0] TX_data_1;
input        clk;
input        rst;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [7:0] DATA_OUT;
output       RXRDY;
output       TXRDY;
output       TX_0;
output       TX_1;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          clk;
wire   [7:0]  COREUART_1_DATA_OUT;
wire          COREUART_1_RXRDY;
wire          COREUART_1_TXRDY;
wire   [7:0]  DATA_OUT_net_0;
wire          rst;
wire          RXRDY_net_0;
wire          TX_0_net_0;
wire          TX_1_net_0;
wire   [7:0]  TX_data_0;
wire   [7:0]  TX_data_1;
wire          TXRDY_net_0;
wire   [12:0] UART_control_0_BAUD_val;
wire          UART_control_0_oen;
wire   [7:0]  UART_control_0_TX;
wire          UART_control_0_wen;
wire   [12:0] UART_control_1_BAUD_val;
wire          UART_control_1_oen;
wire   [7:0]  UART_control_1_TX;
wire          UART_control_1_wen;
wire          TX_0_net_1;
wire          TX_1_net_1;
wire          TXRDY_net_1;
wire          RXRDY_net_1;
wire   [7:0]  DATA_OUT_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [2:0]  BAUD_VAL_FRACTION_const_net_0;
wire   [2:0]  BAUD_VAL_FRACTION_const_net_1;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                       = 1'b1;
assign GND_net                       = 1'b0;
assign BAUD_VAL_FRACTION_const_net_0 = 3'h0;
assign BAUD_VAL_FRACTION_const_net_1 = 3'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_0_net_1     = TX_0_net_0;
assign TX_0           = TX_0_net_1;
assign TX_1_net_1     = TX_1_net_0;
assign TX_1           = TX_1_net_1;
assign TXRDY_net_1    = TXRDY_net_0;
assign TXRDY          = TXRDY_net_1;
assign RXRDY_net_1    = RXRDY_net_0;
assign RXRDY          = RXRDY_net_1;
assign DATA_OUT_net_1 = DATA_OUT_net_0;
assign DATA_OUT[7:0]  = DATA_OUT_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------UART_test_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.6.102
UART_test_COREUART_0_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_0(
        // Inputs
        .BIT8              ( VCC_net ),
        .CLK               ( clk ),
        .CSN               ( GND_net ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( UART_control_0_oen ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( rst ),
        .RX                ( TX_1_net_0 ),
        .WEN               ( UART_control_0_wen ),
        .BAUD_VAL          ( UART_control_0_BAUD_val ),
        .DATA_IN           ( UART_control_0_TX ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( RXRDY_net_0 ),
        .TX                ( TX_0_net_0 ),
        .TXRDY             ( TXRDY_net_0 ),
        .FRAMING_ERR       (  ),
        .DATA_OUT          ( DATA_OUT_net_0 ) 
        );

//--------UART_test_COREUART_1_COREUART   -   Actel:DirectCore:COREUART:5.6.102
UART_test_COREUART_1_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_1(
        // Inputs
        .BIT8              ( VCC_net ),
        .CLK               ( clk ),
        .CSN               ( GND_net ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( UART_control_1_oen ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( rst ),
        .RX                ( TX_0_net_0 ),
        .WEN               ( UART_control_1_wen ),
        .BAUD_VAL          ( UART_control_1_BAUD_val ),
        .DATA_IN           ( UART_control_1_TX ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_1 ), // tied to 3'h0 from definition
        // Outputs
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_1_RXRDY ),
        .TX                ( TX_1_net_0 ),
        .TXRDY             ( COREUART_1_TXRDY ),
        .FRAMING_ERR       (  ),
        .DATA_OUT          ( COREUART_1_DATA_OUT ) 
        );

//--------UART_control
UART_control UART_control_0(
        // Inputs
        .clk      ( clk ),
        .rst      ( rst ),
        .TXrd     ( TXRDY_net_0 ),
        .RXrd     ( RXRDY_net_0 ),
        .RX       ( DATA_OUT_net_0 ),
        .TX_data  ( TX_data_0 ),
        // Outputs
        .oen      ( UART_control_0_oen ),
        .wen      ( UART_control_0_wen ),
        .BAUD_val ( UART_control_0_BAUD_val ),
        .TX       ( UART_control_0_TX ) 
        );

//--------UART_control
UART_control UART_control_1(
        // Inputs
        .clk      ( clk ),
        .rst      ( rst ),
        .TXrd     ( COREUART_1_TXRDY ),
        .RXrd     ( COREUART_1_RXRDY ),
        .RX       ( COREUART_1_DATA_OUT ),
        .TX_data  ( TX_data_1 ),
        // Outputs
        .oen      ( UART_control_1_oen ),
        .wen      ( UART_control_1_wen ),
        .BAUD_val ( UART_control_1_BAUD_val ),
        .TX       ( UART_control_1_TX ) 
        );


endmodule
