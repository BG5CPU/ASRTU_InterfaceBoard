///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: LED_blink.v
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

module LED_blink(input CLK,
                 input RESETN,
                 output reg LED_1);

//<statements>
reg [23:0]CLK_5Hz;
always@(posedge CLK or negedge RESETN)
begin
    if(!RESETN)
        CLK_5Hz <= 24'd0;
    else if(CLK_5Hz == 24'd5_000_000)
        CLK_5Hz <= 24'd0;
    else
        CLK_5Hz <= CLK_5Hz + 1'b1;
end

always@(posedge CLK or negedge RESETN)
begin
    if(!RESETN)
        LED_1 <= 1'b0;
    else if(CLK_5Hz == 24'd5_000_000)
        LED_1 <= ~LED_1;
    else
        LED_1 <= LED_1;
end
endmodule
