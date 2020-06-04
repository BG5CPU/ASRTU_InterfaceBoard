///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P1000> <Package::208 PQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns/100ps

module test;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg [7:0] data_1 = 8'b00111100;
wire TX_0, TX_1, TXRDY, RXRDY;
wire [7:0]DATA_OUT;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  UART_test
//////////////////////////////////////////////////////////////////////
UART_test UART_test_0 (
    // Inputs
    .clk(SYSCLK),
    .rst(NSYSRESET),
    .TX_data_0({8{1'b1}}),
    .TX_data_1(data_1),

    // Outputs
    .TX_0(TX_0),
    .TX_1(TX_1),
    .TXRDY(TXRDY),
    .RXRDY(RXRDY),
    .DATA_OUT(DATA_OUT)

    // Inouts

);

endmodule

