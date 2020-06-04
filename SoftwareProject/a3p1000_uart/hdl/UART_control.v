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

module UART_control( clk, rst, TXrd, RXrd, RX, TX_data,
                     BAUD_val, TX, oen, wen);
input clk, rst, TXrd, RXrd;
input[7:0] RX, TX_data;

output oen, wen;
output reg[7:0]TX;
output reg[12:0]BAUD_val = 13'd325;

reg RX_state, TX_state;
reg[7:0] RX_data;
wire oen,wen;
assign wen = !(TXrd & TX_state);
assign oen = !(RXrd & RX_state);

always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        TX <= 8'b0;
        TX_state <= 1'b0;
    end

    else if(TXrd & (TX_data != TX)) begin
        TX <= TX_data;
        TX_state <= 1'b1;
    end
    
    else begin
        TX_state <= 1'b0;
        TX <= 8'b0;
    end
end

always@(posedge clk or negedge rst)
begin
    if(!rst) begin
        RX_data <= 8'b0;
        RX_state <= 1'b0;
    end
    
    else if(RXrd) begin
        RX_data <= RX;
        RX_state <= 1'b1;
    end
    
    else
        RX_state <= 1'b0;
end
//<statements>

endmodule

