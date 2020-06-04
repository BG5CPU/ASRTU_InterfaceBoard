///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: IN_test.v
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

module IN_test;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg RX;
reg [15:0]DATA_IN_1 = 16'h8CCA;
wire [7:0]Q,RX_data;
wire [23:0]OUT_DATA;
wire TX,GD,SCL,SDA,WEN;

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
    //data0 0x0B
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
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
        RX <= 1;

    //data1 0x8A
        RX <= 1;
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
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;

    //data2 0x8C
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;

    //data3 0xCA
        RX <= 1;
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
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 0;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;
    #(SYSCLK_PERIOD * 5208 )
        RX <= 1;

end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  Top_0
//////////////////////////////////////////////////////////////////////
Top_0 Top_0_0 (
    // Inputs
    .PRESETN(NSYSRESET),
    .PCLK(SYSCLK),
    .DATA_IN_1(DATA_IN_1),
    .RX(RX),

    // Outputs
    .OUT_DATA(OUT_DATA),
    .Q(Q),
    .TX(TX),
    .GD(GD),
    .WEN(WEN),
    .RX_data(RX_data),

    // Inouts
    .SCL(SCL),
    .SDA(SDA)

);

endmodule

