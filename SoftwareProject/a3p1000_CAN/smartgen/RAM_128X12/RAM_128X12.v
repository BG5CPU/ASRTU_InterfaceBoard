`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module RAM_128X12(
       WD,
       RD,
       WEN,
       REN,
       WADDR,
       RADDR,
       CLK
    );
input  [11:0] WD;
output [11:0] RD;
input  WEN;
input  REN;
input  [6:0] WADDR;
input  [6:0] RADDR;
input  CLK;

    wire VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    RAM512X18 RAM_128X12_R0C0 (.RADDR8(GND), .RADDR7(GND), .RADDR6(
        RADDR[6]), .RADDR5(RADDR[5]), .RADDR4(RADDR[4]), .RADDR3(
        RADDR[3]), .RADDR2(RADDR[2]), .RADDR1(RADDR[1]), .RADDR0(
        RADDR[0]), .WADDR8(GND), .WADDR7(GND), .WADDR6(WADDR[6]), 
        .WADDR5(WADDR[5]), .WADDR4(WADDR[4]), .WADDR3(WADDR[3]), 
        .WADDR2(WADDR[2]), .WADDR1(WADDR[1]), .WADDR0(WADDR[0]), .WD17(
        GND), .WD16(GND), .WD15(GND), .WD14(GND), .WD13(GND), .WD12(
        GND), .WD11(WD[11]), .WD10(WD[10]), .WD9(WD[9]), .WD8(WD[8]), 
        .WD7(WD[7]), .WD6(WD[6]), .WD5(WD[5]), .WD4(WD[4]), .WD3(WD[3])
        , .WD2(WD[2]), .WD1(WD[1]), .WD0(WD[0]), .RW0(GND), .RW1(VCC), 
        .WW0(GND), .WW1(VCC), .PIPE(VCC), .REN(REN), .WEN(WEN), .RCLK(
        CLK), .WCLK(CLK), .RESET(VCC), .RD17(), .RD16(), .RD15(), 
        .RD14(), .RD13(), .RD12(), .RD11(RD[11]), .RD10(RD[10]), .RD9(
        RD[9]), .RD8(RD[8]), .RD7(RD[7]), .RD6(RD[6]), .RD5(RD[5]), 
        .RD4(RD[4]), .RD3(RD[3]), .RD2(RD[2]), .RD1(RD[1]), .RD0(RD[0])
        );
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule

// _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


// _GEN_File_Contents_

// Version:11.9.2.1
// ACTGENU_CALL:1
// BATCH:T
// FAM:PA3LC
// OUTFORMAT:Verilog
// LPMTYPE:LPM_RAM
// LPM_HINT:TWO
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:D:/FPGA/a3p1000_CAN/smartgen\RAM_128X12
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS8X8M2
// SMARTGEN_PACKAGE:pq208
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:12
// WDEPTH:128
// RWIDTH:12
// RDEPTH:128
// CLKS:1
// CLOCK_PN:CLK
// RESET_POLARITY:2
// INIT_RAM:F
// DEFAULT_WORD:0x000
// CASCADE:0
// WCLK_EDGE:RISE
// PMODE2:1
// DATA_IN_PN:WD
// WADDRESS_PN:WADDR
// WE_PN:WEN
// DATA_OUT_PN:RD
// RADDRESS_PN:RADDR
// RE_PN:REN
// WE_POLARITY:0
// RE_POLARITY:0
// PTYPE:1

// _End_Comments_

