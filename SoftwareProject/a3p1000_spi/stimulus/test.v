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
reg [7:0]data_in_0, data_in_1;
wire SPISDO_0, SPISDO_1, SPISCLKO, SPIMODE, SPIRXAVAIL;
wire [7:0]data_0, data_1;

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
    data_in_0 <= 8'h32;
    data_in_1 <= 8'h45;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'hAB;
    data_in_1 <= 8'hCD;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'hFF;
    data_in_1 <= 8'h97;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'h64;
    data_in_1 <= 8'h88;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'h36;
    data_in_1 <= 8'h78;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'h38;
    data_in_1 <= 8'h96;
    #(SYSCLK_PERIOD * 2000 )

    data_in_0 <= 8'hA8;
    data_in_1 <= 8'hC4;

end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_0
//////////////////////////////////////////////////////////////////////
top_0 top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .data_in_0(data_in_0),
    .data_in_1(data_in_1),

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

