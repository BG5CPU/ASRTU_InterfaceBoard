///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: uart_test.v
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

//`timescale <time_units> / <precision>

module uart_test( input PCLK,
                  input PRESETN,
                  input TXrd,
                  input RXrd,
                  input [7:0]RX,
                  output reg [12:0] BAUD_val = 13'd325,
                  output reg [7:0] TX,
                  output reg [7:0] RX_data,
                  output wire OEN,
                  output wire WEN);
//<statements>
reg TX_state=1'b0;
reg[1:0] count;

assign WEN = !(TXrd & TX_state);
assign OEN = !RXrd;

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        count <= 3'b0;
    else if(RXrd)
        count <= count + 1'b1;
    else
        count <= 3'b0;
end

always@(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        RX_data <= 8'b0;
    else if(RXrd)
        RX_data <= RX;
    else
        RX_data <= RX_data;
end
endmodule

