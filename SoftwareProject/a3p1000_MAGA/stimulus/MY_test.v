///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: MY_test.v
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

module MY_test;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg MAGA_INVALID = 1'b1;
reg RX;
wire MAGA_PC_RD;
wire MAGA_EN,MAGA_PC_TD,GD,TX,my_TX;
wire [7:0]DATA_OUT;

assign MAGA_PC_RD = RX;
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
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


initial
begin
    #(SYSCLK_PERIOD * 10 )
        NSYSRESET = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Top
//////////////////////////////////////////////////////////////////////
Top Top_0 (
    // Inputs
    .CLK(SYSCLK),
    .RESETN(NSYSRESET),
    .MAGA_FLT({1{1'b0}}),
    .MAGA_INVALID(MAGA_INVALID),
    .MAGA_READY({1{1'b1}}),
    .MAGA_PC_RD(MAGA_PC_RD),
    .RX(RX),

    // Outputs
    .MAGA_EN(MAGA_EN),
    .MAGA_PC_TD(MAGA_PC_TD),
    .GD(GD),
    .TX(TX),
    .my_TX(my_TX),
    .DATA_OUT(DATA_OUT)
    // Inouts

);

endmodule

