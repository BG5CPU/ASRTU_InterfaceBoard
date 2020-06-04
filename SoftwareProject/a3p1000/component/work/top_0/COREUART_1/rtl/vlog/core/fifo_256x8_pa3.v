// ********************************************************************
// Actel Corporation Proprietary and Confidential
//  Copyright 2008 Actel Corporation.  All rights reserved.
//
// ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
// ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
// IN ADVANCE IN WRITING.
//
// Description: CoreUART/ CoreUARTapb UART core
//
//
//  Revision Information:
// Date     Description
// Jun09    Revision 4.1
// Aug10    Revision 4.2
//
// SVN Revision Information:
// SVN $Revision: 8508 $
// SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
//
// Resolved SARs
// SAR      Date     Who   Description
// 20741    2Sep10   AS    Increased baud rate by ensuring fifo ctrl runs off
//                         sys clk (not baud clock).  See note below.
//
// Notes:
// best viewed with tabstops set to "4"

`timescale 1 ns/100 ps
// Version: 6.1 Production 6.1.0.112

module top_0_COREUART_1_fifo_256x8(DO, RCLOCK, WCLOCK, DI, WRB, RDB, RESET, FULL, EMPTY);
output [7:0] DO;
input RCLOCK;
input WCLOCK;
input [7:0] DI;
input WRB;
input RDB;
input RESET;
output FULL;
output EMPTY;

parameter SYNC_RESET = 0;
parameter [7:0] LEVEL = 255;

wire  AEMPTY, AFULL, FULL, EMPTY;
reg [7:0] DO;
wire [7:0] DO_0;

always @ (posedge RCLOCK)
  begin
    DO <= DO_0;
  end

top_0_COREUART_1_fifo_256x8_pa3 top_0_COREUART_1_fifo_256x8_pa3(.DATA(DI), .Q(DO_0), .WE(WRB), .RE(RDB), .WCLOCK(WCLOCK), 
	                    .RCLOCK(RCLOCK), .AEMPTY(AEMPTY), .AFULL(GEQTH), 
			    .FULL(FULL), .EMPTY(EMPTY), .RESET(RESET), .LEVEL(LEVEL) );

endmodule

module top_0_COREUART_1_fifo_256x8_pa3(DATA,Q,WE,RE,WCLOCK,RCLOCK,FULL,EMPTY,RESET,
        AEMPTY,AFULL, LEVEL);
input [7:0] DATA;
output [7:0] Q;
input  WE, RE, WCLOCK, RCLOCK;
output  FULL, EMPTY;
input  RESET;
output  AEMPTY, AFULL;
input [7:0] LEVEL;

    wire WEAP, VCC, GND;
    
    VCC VCC_1_net(.Y(VCC));
    GND GND_1_net(.Y(GND));
    INV REBUBBLEA(.A(RE), .Y(WEAP));
    FIFO4K18 FIFOBLOCK0(.AEVAL11(GND), .AEVAL10(GND), .AEVAL9(GND)
        , .AEVAL8(GND), .AEVAL7(GND), .AEVAL6(GND), .AEVAL5(GND), 
        .AEVAL4(GND), .AEVAL3(VCC), .AEVAL2(GND), .AEVAL1(GND), 
        .AEVAL0(GND), .AFVAL11(GND), .AFVAL10(LEVEL[7]), .AFVAL9(LEVEL[6]), 
        .AFVAL8(LEVEL[5]), .AFVAL7(LEVEL[4]), .AFVAL6(LEVEL[3]), .AFVAL5(LEVEL[2]), 
        .AFVAL4(LEVEL[1]), .AFVAL3(LEVEL[0]), .AFVAL2(GND), .AFVAL1(GND), 
        .AFVAL0(GND), .WD17(GND), .WD16(GND), .WD15(GND), .WD14(
        GND), .WD13(GND), .WD12(GND), .WD11(GND), .WD10(GND), 
        .WD9(GND), .WD8(GND), .WD7(DATA[7]), .WD6(DATA[6]), .WD5(
        DATA[5]), .WD4(DATA[4]), .WD3(DATA[3]), .WD2(DATA[2]), 
        .WD1(DATA[1]), .WD0(DATA[0]), .WW0(VCC), .WW1(VCC), .WW2(
        GND), .RW0(VCC), .RW1(VCC), .RW2(GND), .RPIPE(GND), .WEN(
        WE), .REN(WEAP), .WBLK(GND), .RBLK(GND), .WCLK(WCLOCK), 
        .RCLK(RCLOCK), .RESET(RESET), .ESTOP(VCC), .FSTOP(VCC), 
        .RD17(), .RD16(), .RD15(), .RD14(), .RD13(), .RD12(), 
        .RD11(), .RD10(), .RD9(), .RD8(), .RD7(Q[7]), .RD6(Q[6]), 
        .RD5(Q[5]), .RD4(Q[4]), .RD3(Q[3]), .RD2(Q[2]), .RD1(Q[1])
        , .RD0(Q[0]), .FULL(), .AFULL(FULL), .EMPTY(EMPTY), 
        .AEMPTY(AEMPTY));
    
endmodule
