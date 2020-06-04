//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Mon Mar 04 19:01:12 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top_0
module top_0(
    // Inputs
    CLK,
    MAGA_FLT,
    MAGA_INVALID,
    MAGA_PC_RD,
    MAGA_READY,
    PC_MAGA_RX,
    RESETN,
    // Outputs
    GD,
    LED_1,
    MAGA_EN,
    MAGA_PC_TD,
    PC_MAGA_TX,
    my_TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  CLK;
input  MAGA_FLT;
input  MAGA_INVALID;
input  MAGA_PC_RD;
input  MAGA_READY;
input  PC_MAGA_RX;
input  RESETN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GD;
output LED_1;
output MAGA_EN;
output MAGA_PC_TD;
output PC_MAGA_TX;
output my_TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [7:0]  COREUART_0_DATA_OUT;
wire          COREUART_0_RXRDY;
wire          COREUART_0_TXRDY;
wire   [7:0]  COREUART_1_DATA_OUT;
wire          COREUART_1_RXRDY;
wire          COREUART_1_TXRDY;
wire          GD_net_0;
wire          LED_1_net_0;
wire   [12:0] MAGA_control_0_BAUD_val;
wire          MAGA_control_0_OEN;
wire   [7:0]  MAGA_control_0_TX;
wire          MAGA_control_0_WEN;
wire          MAGA_EN_net_0;
wire          MAGA_FLT;
wire          MAGA_INVALID;
wire          MAGA_PC_RD;
wire          MAGA_PC_TD_net_0;
wire          MAGA_READY;
wire          PC_MAGA_RX;
wire          PC_MAGA_TX_net_0;
wire          RESETN;
wire   [12:0] UART_control_0_BAUD_val;
wire          UART_control_0_CSN;
wire          UART_control_0_OEN;
wire   [7:0]  UART_control_0_TX;
wire          UART_control_0_WEN;
wire          LED_1_net_1;
wire          MAGA_EN_net_1;
wire          GD_net_1;
wire          PC_MAGA_TX_net_1;
wire          MAGA_PC_TD_net_1;
wire          MAGA_PC_TD_net_2;
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
assign LED_1_net_1      = LED_1_net_0;
assign LED_1            = LED_1_net_1;
assign MAGA_EN_net_1    = MAGA_EN_net_0;
assign MAGA_EN          = MAGA_EN_net_1;
assign GD_net_1         = GD_net_0;
assign GD               = GD_net_1;
assign PC_MAGA_TX_net_1 = PC_MAGA_TX_net_0;
assign PC_MAGA_TX       = PC_MAGA_TX_net_1;
assign MAGA_PC_TD_net_1 = MAGA_PC_TD_net_0;
assign MAGA_PC_TD       = MAGA_PC_TD_net_1;
assign MAGA_PC_TD_net_2 = MAGA_PC_TD_net_0;
assign my_TX            = MAGA_PC_TD_net_2;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------top_0_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.6.102
top_0_COREUART_0_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_0(
        // Inputs
        .BAUD_VAL          ( MAGA_control_0_BAUD_val ),
        .BIT8              ( VCC_net ),
        .CLK               ( CLK ),
        .CSN               ( GND_net ),
        .DATA_IN           ( MAGA_control_0_TX ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( MAGA_control_0_OEN ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( RESETN ),
        .RX                ( PC_MAGA_RX ),
        .WEN               ( MAGA_control_0_WEN ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .DATA_OUT          ( COREUART_0_DATA_OUT ),
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_0_RXRDY ),
        .TX                ( MAGA_PC_TD_net_0 ),
        .TXRDY             ( COREUART_0_TXRDY ),
        .FRAMING_ERR       (  ) 
        );

//--------top_0_COREUART_1_COREUART   -   Actel:DirectCore:COREUART:5.6.102
top_0_COREUART_1_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_1(
        // Inputs
        .BAUD_VAL          ( UART_control_0_BAUD_val ),
        .BIT8              ( VCC_net ),
        .CLK               ( CLK ),
        .CSN               ( UART_control_0_CSN ),
        .DATA_IN           ( UART_control_0_TX ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( UART_control_0_OEN ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( RESETN ),
        .RX                ( MAGA_PC_RD ),
        .WEN               ( UART_control_0_WEN ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_1 ), // tied to 3'h0 from definition
        // Outputs
        .DATA_OUT          ( COREUART_1_DATA_OUT ),
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_1_RXRDY ),
        .TX                ( PC_MAGA_TX_net_0 ),
        .TXRDY             ( COREUART_1_TXRDY ),
        .FRAMING_ERR       (  ) 
        );

//--------LED_blink
LED_blink LED_blink_0(
        // Inputs
        .CLK    ( CLK ),
        .RESETN ( RESETN ),
        // Outputs
        .LED_1  ( LED_1_net_0 ) 
        );

//--------MAGA_control
MAGA_control MAGA_control_0(
        // Inputs
        .CLK        ( CLK ),
        .RESETN     ( RESETN ),
        .MAGA_FLT   ( MAGA_FLT ),
        .MAGA_READY ( MAGA_READY ),
        .TXrd       ( COREUART_0_TXRDY ),
        .RXrd       ( COREUART_0_RXRDY ),
        .RX         ( COREUART_0_DATA_OUT ),
        // Outputs
        .BAUD_val   ( MAGA_control_0_BAUD_val ),
        .TX         ( MAGA_control_0_TX ),
        .MAGA_EN    ( MAGA_EN_net_0 ),
        .OEN        ( MAGA_control_0_OEN ),
        .WEN        ( MAGA_control_0_WEN ) 
        );

//--------UART_control
UART_control UART_control_0(
        // Inputs
        .CLK          ( CLK ),
        .RESETN       ( RESETN ),
        .MAGA_INVALID ( MAGA_INVALID ),
        .TXrd         ( COREUART_1_TXRDY ),
        .RXrd         ( COREUART_1_RXRDY ),
        .RX           ( COREUART_1_DATA_OUT ),
        // Outputs
        .BAUD_val     ( UART_control_0_BAUD_val ),
        .TX           ( UART_control_0_TX ),
        .GD           ( GD_net_0 ),
        .CSN          ( UART_control_0_CSN ),
        .OEN          ( UART_control_0_OEN ),
        .WEN          ( UART_control_0_WEN ) 
        );


endmodule
