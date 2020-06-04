///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: tesy.v
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

module tesy;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg [31:0]data_in_0, data_in_1;
wire SPISDO_0, SPISDO_1, SPISCLKO, SPIMODE, SPIRXAVAIL;
wire [31:0]data_0, data_1;

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

initial
begin
        data_in_0 <= 32'hAABB0134;
        data_in_1 <= 32'h12345678;
    #(SYSCLK_PERIOD * 500 )
        data_in_0 <= 32'hAABB0134;
        data_in_1 <= 32'h00;
    #(SYSCLK_PERIOD * 500 )
        data_in_0 <= 32'h43251672;
    #(SYSCLK_PERIOD * 500 )
        data_in_0 <= 32'h03;
    #(SYSCLK_PERIOD * 500 )
        data_in_0 <= 32'hAABB0134;
    #(SYSCLK_PERIOD * 500 )
        data_in_0 <= 32'h43251672;
end

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_0
//////////////////////////////////////////////////////////////////////
top_0 top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .data_in_0({32{1'b0}}),
    .data_in_1({32{1'b0}}),

    // Outputs
    .SPISDO_0(SPISDO_0),
    .SPIMODE(SPIMODE),
    .SPISCLKO(SPISCLKO),
    .SPISDO_1(SPISDO_1),
    .data_0(data_0),
    .data_1(data_1),
    .SPIRXAVAIL(SPIRXAVAIL)

    // Inouts

);

endmodule

