//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Feb 27 17:37:26 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Top_0
module Top_0(
    // Inputs
    CLK,
    FIBERGYRO_RX,
    FIBGY_FLT_H,
    FIBGY_FLT_L,
    RESET,
    TX_data,
    // Outputs
    FIBERGYRO_RX_EN,
    FIBERGYRO_TX,
    FIBERGYRO_TX_EN,
    FIBGY_EN_H,
    FIBGY_EN_L
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        CLK;
input        FIBERGYRO_RX;
input        FIBGY_FLT_H;
input        FIBGY_FLT_L;
input        RESET;
input  [7:0] TX_data;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FIBERGYRO_RX_EN;
output       FIBERGYRO_TX;
output       FIBERGYRO_TX_EN;
output       FIBGY_EN_H;
output       FIBGY_EN_L;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [7:0]  COREUART_0_DATA_OUT;
wire          COREUART_0_RXRDY;
wire          COREUART_0_TXRDY;
wire   [12:0] FIBERGYRO_control_0_BAUD_val;
wire          FIBERGYRO_control_0_OEN;
wire   [7:0]  FIBERGYRO_control_0_TX;
wire          FIBERGYRO_control_0_WEN;
wire          FIBERGYRO_RX;
wire          FIBERGYRO_RX_EN_net_0;
wire          FIBERGYRO_TX_net_0;
wire          FIBERGYRO_TX_EN_net_0;
wire          FIBGY_EN_H_net_0;
wire          FIBGY_EN_L_net_0;
wire          FIBGY_FLT_H;
wire          FIBGY_FLT_L;
wire          RESET;
wire   [7:0]  TX_data;
wire          FIBERGYRO_TX_net_1;
wire          FIBGY_EN_L_net_1;
wire          FIBGY_EN_H_net_1;
wire          FIBERGYRO_TX_EN_net_1;
wire          FIBERGYRO_RX_EN_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [2:0]  BAUD_VAL_FRACTION_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                       = 1'b1;
assign GND_net                       = 1'b0;
assign BAUD_VAL_FRACTION_const_net_0 = 3'h0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FIBERGYRO_TX_net_1    = FIBERGYRO_TX_net_0;
assign FIBERGYRO_TX          = FIBERGYRO_TX_net_1;
assign FIBGY_EN_L_net_1      = FIBGY_EN_L_net_0;
assign FIBGY_EN_L            = FIBGY_EN_L_net_1;
assign FIBGY_EN_H_net_1      = FIBGY_EN_H_net_0;
assign FIBGY_EN_H            = FIBGY_EN_H_net_1;
assign FIBERGYRO_TX_EN_net_1 = FIBERGYRO_TX_EN_net_0;
assign FIBERGYRO_TX_EN       = FIBERGYRO_TX_EN_net_1;
assign FIBERGYRO_RX_EN_net_1 = FIBERGYRO_RX_EN_net_0;
assign FIBERGYRO_RX_EN       = FIBERGYRO_RX_EN_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Top_0_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.6.102
Top_0_COREUART_0_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_0(
        // Inputs
        .BAUD_VAL          ( FIBERGYRO_control_0_BAUD_val ),
        .BIT8              ( VCC_net ),
        .CLK               ( CLK ),
        .CSN               ( GND_net ),
        .DATA_IN           ( FIBERGYRO_control_0_TX ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( FIBERGYRO_control_0_OEN ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( RESET ),
        .RX                ( FIBERGYRO_RX ),
        .WEN               ( FIBERGYRO_control_0_WEN ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .DATA_OUT          ( COREUART_0_DATA_OUT ),
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_0_RXRDY ),
        .TX                ( FIBERGYRO_TX_net_0 ),
        .TXRDY             ( COREUART_0_TXRDY ),
        .FRAMING_ERR       (  ) 
        );

//--------FIBERGYRO_control
FIBERGYRO_control FIBERGYRO_control_0(
        // Inputs
        .CLK             ( CLK ),
        .RESET           ( RESET ),
        .FIBGY_FLT_L     ( FIBGY_FLT_L ),
        .FIBGY_FLT_H     ( FIBGY_FLT_H ),
        .TXrd            ( COREUART_0_TXRDY ),
        .RXrd            ( COREUART_0_RXRDY ),
        .RX              ( COREUART_0_DATA_OUT ),
        .TX_data         ( TX_data ),
        // Outputs
        .BAUD_val        ( FIBERGYRO_control_0_BAUD_val ),
        .TX              ( FIBERGYRO_control_0_TX ),
        .OEN             ( FIBERGYRO_control_0_OEN ),
        .WEN             ( FIBERGYRO_control_0_WEN ),
        .FIBGY_EN_L      ( FIBGY_EN_L_net_0 ),
        .FIBGY_EN_H      ( FIBGY_EN_H_net_0 ),
        .FIBERGYRO_TX_EN ( FIBERGYRO_TX_EN_net_0 ),
        .FIBERGYRO_RX_EN ( FIBERGYRO_RX_EN_net_0 ) 
        );


endmodule
