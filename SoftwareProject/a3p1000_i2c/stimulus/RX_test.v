///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: RX_test.v
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

module RX_test;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg [7:0]ADDR;
reg [7:0]data_in_0,data_in_1;
wire [7:0]data_0,data_1,S_DATA;
wire SCL,SDA,INT;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b1;
end

//////////////////////////////////////////////////////////////////////
// Reset Pulse
//////////////////////////////////////////////////////////////////////
initial
begin
    #(SYSCLK_PERIOD * 5 )
        NSYSRESET = 1'b0;
    #(SYSCLK_PERIOD * 5 )
        NSYSRESET = 1'b1;
end


//////////////////////////////////////////////////////////////////////
// Clock Driver
//////////////////////////////////////////////////////////////////////
always @(SYSCLK)
    #(SYSCLK_PERIOD / 2.0) SYSCLK <= !SYSCLK;


initial
begin
        data_in_0 <= 8'h12;
        data_in_1 <= 8'hC9;
        ADDR <= 8'h0A;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'hA8;
        data_in_1 <= 8'h15;
        ADDR <= 8'h0B;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h03;
        data_in_1 <= 8'hF9;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h34;
        data_in_1 <= 8'hB1;
        ADDR <= 8'h0A;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h56;
        data_in_1 <= 8'hD6;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h78;
        data_in_1 <= 8'h57;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h90;
        data_in_1 <= 8'h81;
        ADDR <= 8'h0B;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'hAB;
        data_in_1 <= 8'h95;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'hA3;
        data_in_1 <= 8'h18;
    #(SYSCLK_PERIOD * 3000 )
        data_in_0 <= 8'h10;
        data_in_1 <= 8'hC0;
end

//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_0
//////////////////////////////////////////////////////////////////////
top_0 top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .data_in_0(data_in_0),
    .ADDR(ADDR),
    .data_in_1(data_in_1),

    // Outputs
    .data_0(data_0),
    .data_1(data_1),
    .S_DATA(S_DATA),
    .INT(INT),

    // Inouts
    .SCL(SCL),
    .SDA(SDA)

);

endmodule

