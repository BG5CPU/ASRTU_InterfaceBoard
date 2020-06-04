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
reg [7:0]data_in;
wire [7:0]data;
wire SCL,SDA;

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
        data_in <= 8'h12;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'hd0;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h12;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h34;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h56;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h78;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h90;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'hAB;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'hA3;
    #(SYSCLK_PERIOD * 3000 )
        data_in <= 8'h10;
end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_0
//////////////////////////////////////////////////////////////////////
top_0 top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .data_in(data_in),

    // Outputs
    .data(data),

    // Inouts
    .SCL(SCL),
    .SDA(SDA)

);

endmodule

