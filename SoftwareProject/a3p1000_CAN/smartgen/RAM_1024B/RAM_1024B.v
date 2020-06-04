`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module RAM_1024B(
       WD,
       RD,
       WEN,
       REN,
       WADDR,
       RADDR,
       CLK
    );
input  [7:0] WD;
output [7:0] RD;
input  WEN;
input  REN;
input  [9:0] WADDR;
input  [9:0] RADDR;
input  CLK;

    wire VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    RAM4K9 RAM_1024B_R0C1 (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        WADDR[9]), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(GND), .ADDRB9(RADDR[9]), 
        .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(RADDR[6]), 
        .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(RADDR[3]), 
        .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(RADDR[0]), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(WD[7]), .DINA2(WD[6]), .DINA1(WD[5]), .DINA0(WD[4]), 
        .DINB8(GND), .DINB7(GND), .DINB6(GND), .DINB5(GND), .DINB4(GND)
        , .DINB3(GND), .DINB2(GND), .DINB1(GND), .DINB0(GND), .WIDTHA0(
        GND), .WIDTHA1(VCC), .WIDTHB0(GND), .WIDTHB1(VCC), .PIPEA(GND), 
        .PIPEB(VCC), .WMODEA(GND), .WMODEB(GND), .BLKA(WEN), .BLKB(REN)
        , .WENA(GND), .WENB(VCC), .CLKA(CLK), .CLKB(CLK), .RESET(VCC), 
        .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(
        ), .DOUTA2(), .DOUTA1(), .DOUTA0(), .DOUTB8(), .DOUTB7(), 
        .DOUTB6(), .DOUTB5(), .DOUTB4(), .DOUTB3(RD[7]), .DOUTB2(RD[6])
        , .DOUTB1(RD[5]), .DOUTB0(RD[4]));
    RAM4K9 RAM_1024B_R0C0 (.ADDRA11(GND), .ADDRA10(GND), .ADDRA9(
        WADDR[9]), .ADDRA8(WADDR[8]), .ADDRA7(WADDR[7]), .ADDRA6(
        WADDR[6]), .ADDRA5(WADDR[5]), .ADDRA4(WADDR[4]), .ADDRA3(
        WADDR[3]), .ADDRA2(WADDR[2]), .ADDRA1(WADDR[1]), .ADDRA0(
        WADDR[0]), .ADDRB11(GND), .ADDRB10(GND), .ADDRB9(RADDR[9]), 
        .ADDRB8(RADDR[8]), .ADDRB7(RADDR[7]), .ADDRB6(RADDR[6]), 
        .ADDRB5(RADDR[5]), .ADDRB4(RADDR[4]), .ADDRB3(RADDR[3]), 
        .ADDRB2(RADDR[2]), .ADDRB1(RADDR[1]), .ADDRB0(RADDR[0]), 
        .DINA8(GND), .DINA7(GND), .DINA6(GND), .DINA5(GND), .DINA4(GND)
        , .DINA3(WD[3]), .DINA2(WD[2]), .DINA1(WD[1]), .DINA0(WD[0]), 
        .DINB8(GND), .DINB7(GND), .DINB6(GND), .DINB5(GND), .DINB4(GND)
        , .DINB3(GND), .DINB2(GND), .DINB1(GND), .DINB0(GND), .WIDTHA0(
        GND), .WIDTHA1(VCC), .WIDTHB0(GND), .WIDTHB1(VCC), .PIPEA(GND), 
        .PIPEB(VCC), .WMODEA(GND), .WMODEB(GND), .BLKA(WEN), .BLKB(REN)
        , .WENA(GND), .WENB(VCC), .CLKA(CLK), .CLKB(CLK), .RESET(VCC), 
        .DOUTA8(), .DOUTA7(), .DOUTA6(), .DOUTA5(), .DOUTA4(), .DOUTA3(
        ), .DOUTA2(), .DOUTA1(), .DOUTA0(), .DOUTB8(), .DOUTB7(), 
        .DOUTB6(), .DOUTB5(), .DOUTB4(), .DOUTB3(RD[3]), .DOUTB2(RD[2])
        , .DOUTB1(RD[1]), .DOUTB0(RD[0]));
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
// DESDIR:D:/FPGA/a3p1000_CAN/smartgen\RAM_1024B
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS8X8M2
// SMARTGEN_PACKAGE:pq208
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:8
// WDEPTH:1024
// RWIDTH:8
// RDEPTH:1024
// CLKS:1
// CLOCK_PN:CLK
// RESET_POLARITY:2
// INIT_RAM:F
// DEFAULT_WORD:0x00
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

