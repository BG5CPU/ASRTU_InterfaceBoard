///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: UART_control.v
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

module UART_control( input PCLK,
                     input PRESETN,
                     input TXrd, 
                     input RXrd, 
                     input EMPTY,
                     input [7:0]RX,
                     input [7:0]INA220_DATA,

                     output reg [12:0] BAUD_val = 13'd325, 
                     output reg GD = 1'b0,
                     output reg WE,
                     output wire RE,
                     output wire OEN,
                     output wire WEN,
                     output wire [7:0]TX,
                     output wire [7:0]PC_DATA);

//<statements>
reg flag;
reg[1:0] count;

assign RE = (!TXrd)|EMPTY;
assign OEN = !RXrd;
assign WEN = flag;
assign TX = INA220_DATA;
assign PC_DATA = RX;

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        count <= 3'b0;
    else if(RXrd)
        count <= count + 1'b1;
    else
        count <= 3'b0;
end

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        WE <= 1'b1;
    else if(count == 3'd2)
        WE <= 1'b0;
    else
        WE <= 1'b1;
end

always @(posedge PCLK or negedge PRESETN)
begin
    if(!PRESETN)
        flag <= 1'b1;
    else if(!RE)
        flag <= 1'b0;
    else
        flag <= 1'b1;
end
endmodule
