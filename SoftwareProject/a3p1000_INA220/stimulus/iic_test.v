///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: iic_test.v
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

module iic_test;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg WE = 1'b0;
reg RE = 1'b0;
reg [7:0]DATA_IN_0 = 8'h0B;
reg [15:0]DATA_IN_1 = 16'hCF_03;
wire [7:0]Q;
wire [23:0]OUT_DATA;
wire SCL,SDA,WE_OUT,EMPTY;

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

//always @(posedge SYSCLK)
//begin
    //WE = !WE;
    //RE = !RE;
//end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Top_0
//////////////////////////////////////////////////////////////////////
Top_0 Top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .DATA_IN_0(DATA_IN_0),
    .DATA_IN_1(DATA_IN_1),
    .WE(WE),
    .RE(RE),

     //Outputs
    .OUT_DATA(OUT_DATA),
    .Q(Q),
    .WE_OUT(WE_OUT),
    .EMPTY(EMPTY),

    // Inouts
    .SCL(SCL),
    .SDA(SDA)

);

endmodule

