///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: spi_to_uart.v
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

module spi_to_uart;

parameter SYSCLK_PERIOD = 20;// 50MHZ

reg SYSCLK;
reg NSYSRESET;
reg RX;
wire SPISDO;
//wire SPISDO_0;
wire SPISCLKO;
wire TX;
wire [15:0]Q;
wire EMPTY;
wire [15:0]SPI_data;
wire RE;
wire SPIRXAVAIL;
//wire [3:0]next_state;
//wire [15:0]PRDATA;
//wire [15:0]SPI_data;
//wire PC_valid;
//wire [15:0]PC_data_reg;

initial
begin
    SYSCLK = 1'b0;
    NSYSRESET = 1'b0;
    RX    = 1'b1;
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
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
//0X3A
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
//0XBA
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
//0X3B
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
//0XB6
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b0;
    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

    #(SYSCLK_PERIOD * 5208)
        RX <= 1'b1;

end
//////////////////////////////////////////////////////////////////////
// Instantiate Unit Under Test:  top_0
//////////////////////////////////////////////////////////////////////
top_0 top_0_0 (
    // Inputs
    .PCLK(SYSCLK),
    .PRESETN(NSYSRESET),
    .rxd(RX),
    .SPISDI(1'b0),
    //.data_in(16'h0ABC),

    // Outputs
    .SPISDO(SPISDO),
    //.SPISDO_0(SPISDO_0),
    .txd(TX),
//    .SPI_data(SPI_data),
    .SPISCLKO(SPISCLKO),
    .dout(Q),
    .empty(EMPTY),
    .SPI_data(SPI_data),
    .RE(RE),
    .SPIRXAVAIL(SPIRXAVAIL)
    //.next_state(next_state),
    //.PRDATA(PRDATA)
//    .SPI_valid(SPI_valid),
 //   .PC_valid(PC_valid)
//    .PC_data_reg(PC_data_reg)
    // Inouts

);

endmodule

