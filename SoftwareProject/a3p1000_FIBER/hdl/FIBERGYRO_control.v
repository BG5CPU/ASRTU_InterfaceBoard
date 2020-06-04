///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: FIBERGYRO_control.v
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

module FIBERGYRO_control( input CLK, 
                          input RESET,
                          input FIBGY_FLT_L,
                          input FIBGY_FLT_H,
                          input TXrd, 
                          input RXrd,
                          input [7:0]RX, 
                          input [7:0]TX_data,
                          output reg[12:0]BAUD_val = 13'd325, 
                          output reg[7:0]TX, 
                          output wire OEN, 
                          output wire WEN,
                          output wire FIBGY_EN_L,
                          output wire FIBGY_EN_H,
                          output wire FIBERGYRO_TX_EN,
                          output wire FIBERGYRO_RX_EN);
reg [7:0]RX_data;
reg RX_state, TX_state;

assign WEN = !(TXrd & TX_state);    //if wen=0, core sent TX data
assign OEN = !(RXrd & RX_state);    //if oen=0, read data from RX FIFO

assign FIBERGYRO_TX_EN = !WEN;      //enable RS422 TX pin
assign FIBERGYRO_RX_EN = OEN;       //enable RS422 RX pin

always@(posedge CLK or negedge RESET)
begin
    if(!RESET) begin
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

always@(posedge CLK or negedge RESET)
begin
    if(!RESET) begin
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

