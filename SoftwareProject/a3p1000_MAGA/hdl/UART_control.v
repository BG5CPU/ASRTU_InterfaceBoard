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

module UART_control( input CLK,
                     input RESETN,
                     input MAGA_INVALID,
                     input TXrd, 
                     input RXrd, 
                     input [7:0]RX, 
                     output reg[12:0] BAUD_val = 13'd325, 
                     output reg[7:0] TX,
                     output reg GD = 1'b0,
                     output wire CSN,
                     output wire OEN, 
                     output wire WEN);

//<statements>
reg TX_state;
reg[1:0] count;
reg[7:0] RX_data;

assign CSN = !MAGA_INVALID;
assign WEN = !(TXrd & TX_state);
assign OEN = !RXrd;

always@(posedge CLK or negedge RESETN)
begin
    if(!RESETN)
        count <= 3'b0;
    else if(RXrd)
        count <= count + 1'b1;
    else
        count <= 3'b0;
end

always@(posedge CLK or negedge RESETN)
begin
    if(!RESETN) begin
        TX <= 8'b0;
        TX_state <= 1'b0;
    end

    else if(TXrd & (count == 2'd2)) begin
        TX <= RX_data;
        TX_state <= 1'b1;
    end

    else begin
        TX <= 8'b0;
        TX_state <= 1'b0;
    end
end

always@(posedge CLK or negedge RESETN)
begin
    if(!RESETN)
        RX_data <= 8'b0;
    else if(RXrd)
        RX_data <= RX;
    else
        RX_data <= 8'b0;
end
endmodule
