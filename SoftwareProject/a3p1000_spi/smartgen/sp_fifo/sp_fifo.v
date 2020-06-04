`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module sp_fifo(
       din,
       dout,
       wr_en,
       rd_en,
       clk,
       full,
       empty,
       rst
    );
input  [15:0] din;
output [15:0] dout;
input  wr_en;
input  rd_en;
input  clk;
output full;
output empty;
input  rst;

    wire WEP, REP, \MEM_RADDR[0] , \RBINNXTSHIFT[0] , \MEM_WADDR[0] , 
        \WBINNXTSHIFT[0] , \MEM_RADDR[1] , \RBINNXTSHIFT[1] , 
        \MEM_WADDR[1] , \WBINNXTSHIFT[1] , \MEM_RADDR[2] , 
        \RBINNXTSHIFT[2] , \MEM_WADDR[2] , \WBINNXTSHIFT[2] , 
        \MEM_RADDR[3] , \RBINNXTSHIFT[3] , \MEM_WADDR[3] , 
        \WBINNXTSHIFT[3] , \MEM_RADDR[4] , \RBINNXTSHIFT[4] , 
        \MEM_WADDR[4] , \WBINNXTSHIFT[4] , FULLINT, MEMORYWE, MEMWENEG, 
        \WGRY[0] , \WGRY[1] , \WGRY[2] , \WGRY[3] , \WGRY[4] , 
        EMPTYINT, MEMORYRE, MEMRENEG, DVLDI, DVLDX, \RGRY[0] , 
        \RGRY[1] , \RGRY[2] , \RGRY[3] , \RGRY[4] , \QXI[0] , \QXI[1] , 
        \QXI[2] , \QXI[3] , \QXI[4] , \QXI[5] , \QXI[6] , \QXI[7] , 
        \QXI[8] , \QXI[9] , \QXI[10] , \QXI[11] , \QXI[12] , \QXI[13] , 
        \QXI[14] , \QXI[15] , XOR2_21_Y, XOR2_1_Y, XOR2_22_Y, 
        XOR2_19_Y, XOR2_9_Y, AND2_10_Y, AND2_9_Y, AND2_15_Y, AND2_19_Y, 
        XOR2_27_Y, XOR2_25_Y, XOR2_2_Y, XOR2_8_Y, XOR2_15_Y, AND2_1_Y, 
        AO1_3_Y, AND2_11_Y, AND2_4_Y, AND2_12_Y, AO1_5_Y, AND2_2_Y, 
        AND2_20_Y, AO1_1_Y, AO1_7_Y, AO1_2_Y, XOR2_7_Y, XOR2_18_Y, 
        XOR2_10_Y, XOR2_16_Y, NAND2_0_Y, XOR2_12_Y, XOR2_13_Y, 
        XOR2_4_Y, XOR2_5_Y, XOR2_6_Y, AND2_6_Y, AND2_13_Y, AND2_21_Y, 
        AND2_17_Y, XOR2_17_Y, XOR2_26_Y, XOR2_23_Y, XOR2_20_Y, 
        XOR2_3_Y, AND2_18_Y, AO1_9_Y, AND2_3_Y, AND2_5_Y, AND2_16_Y, 
        AO1_0_Y, AND2_7_Y, AND2_0_Y, AO1_4_Y, AO1_8_Y, AO1_6_Y, 
        XOR2_28_Y, XOR2_14_Y, XOR2_11_Y, XOR2_0_Y, AND2_8_Y, XNOR2_4_Y, 
        XNOR2_2_Y, XNOR2_3_Y, XNOR2_0_Y, XNOR2_7_Y, AND3_0_Y, 
        AND2A_0_Y, AND2_14_Y, XOR2_24_Y, XNOR2_1_Y, XNOR2_6_Y, 
        XNOR2_5_Y, XNOR2_8_Y, AND3_1_Y, NAND2_1_Y, VCC, GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    
    AND2 AND2_9 (.A(\MEM_RADDR[2] ), .B(GND), .Y(AND2_9_Y));
    AND2 AND2_11 (.A(XOR2_2_Y), .B(XOR2_8_Y), .Y(AND2_11_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[1] ), .Y(
        XNOR2_3_Y));
    XOR2 XOR2_9 (.A(\RBINNXTSHIFT[4] ), .B(GND), .Y(XOR2_9_Y));
    AND2 AND2_EMPTYINT (.A(AND2_8_Y), .B(XNOR2_4_Y), .Y(EMPTYINT));
    XOR2 XOR2_16 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_16_Y));
    AND2 AND2_13 (.A(\MEM_WADDR[2] ), .B(GND), .Y(AND2_13_Y));
    AND2 AND2_12 (.A(AND2_1_Y), .B(XOR2_2_Y), .Y(AND2_12_Y));
    INV WEBUBBLE (.A(wr_en), .Y(WEP));
    AND2 AND2_MEMORYWE (.A(NAND2_1_Y), .B(WEP), .Y(MEMORYWE));
    DFN1E1C0 \DFN1E1C0_dout[3]  (.D(\QXI[3] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[3]));
    AND2A AND2A_0 (.A(empty), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_WADDR[1] ));
    XOR2 XOR2_1 (.A(\RBINNXTSHIFT[1] ), .B(\RBINNXTSHIFT[2] ), .Y(
        XOR2_1_Y));
    XOR2 XOR2_15 (.A(\MEM_RADDR[4] ), .B(GND), .Y(XOR2_15_Y));
    XOR2 XOR2_10 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_10_Y));
    XOR2 XOR2_22 (.A(\RBINNXTSHIFT[2] ), .B(\RBINNXTSHIFT[3] ), .Y(
        XOR2_22_Y));
    XOR2 XOR2_19 (.A(\RBINNXTSHIFT[3] ), .B(\RBINNXTSHIFT[4] ), .Y(
        XOR2_19_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    XOR2 XOR2_18 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_18_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_10_Y), .B(AO1_7_Y), .Y(
        \RBINNXTSHIFT[3] ));
    AND2 AND2_0 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_0_Y));
    XOR2 XOR2_7 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_7_Y));
    DFN1E1C0 \DFN1E1C0_dout[2]  (.D(\QXI[2] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[2]));
    INV REBUBBLE (.A(rd_en), .Y(REP));
    DFN1E1C0 \DFN1E1C0_dout[10]  (.D(\QXI[10] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[10]));
    DFN1E1C0 \DFN1E1C0_dout[11]  (.D(\QXI[11] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[11]));
    AO1 AO1_6 (.A(AND2_3_Y), .B(AO1_4_Y), .C(AO1_9_Y), .Y(AO1_6_Y));
    DFN1E1C0 \DFN1E1C0_dout[14]  (.D(\QXI[14] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[14]));
    DFN1C0 DFN1C0_full (.D(FULLINT), .CLK(clk), .CLR(rst), .Q(full));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(clk), .CLR(rst), .Q(DVLDI)
        );
    AND2 AND2_16 (.A(AND2_18_Y), .B(XOR2_23_Y), .Y(AND2_16_Y));
    AO1 AO1_1 (.A(XOR2_25_Y), .B(AND2_20_Y), .C(AND2_10_Y), .Y(AO1_1_Y)
        );
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_16_Y), .B(AO1_2_Y), .Y(
        \RBINNXTSHIFT[4] ));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_WADDR[2] ));
    DFN1E1C0 \DFN1E1C0_dout[9]  (.D(\QXI[9] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[9]));
    DFN1C0 \DFN1C0_WGRY[0]  (.D(XOR2_12_Y), .CLK(clk), .CLR(rst), .Q(
        \WGRY[0] ));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_RADDR[2] ));
    DFN1E1C0 \DFN1E1C0_dout[7]  (.D(\QXI[7] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[7]));
    AO1 AO1_4 (.A(XOR2_26_Y), .B(AND2_0_Y), .C(AND2_6_Y), .Y(AO1_4_Y));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_7_Y), .B(AND2_20_Y), .Y(
        \RBINNXTSHIFT[1] ));
    AO1 AO1_5 (.A(XOR2_15_Y), .B(AO1_2_Y), .C(AND2_19_Y), .Y(AO1_5_Y));
    AND2 AND2_2 (.A(AND2_4_Y), .B(XOR2_15_Y), .Y(AND2_2_Y));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_18_Y), .B(AO1_1_Y), .Y(
        \RBINNXTSHIFT[2] ));
    AND2 AND2_8 (.A(AND3_0_Y), .B(XNOR2_7_Y), .Y(AND2_8_Y));
    DFN1E1C0 \DFN1E1C0_dout[5]  (.D(\QXI[5] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[5]));
    AND2 AND2_5 (.A(AND2_18_Y), .B(AND2_3_Y), .Y(AND2_5_Y));
    DFN1E1C0 \DFN1E1C0_dout[15]  (.D(\QXI[15] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[15]));
    DFN1E1C0 \DFN1E1C0_dout[12]  (.D(\QXI[12] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[12]));
    AND2 AND2_4 (.A(AND2_1_Y), .B(AND2_11_Y), .Y(AND2_4_Y));
    AND2 AND2_1 (.A(XOR2_27_Y), .B(XOR2_25_Y), .Y(AND2_1_Y));
    AND2 AND2_3 (.A(XOR2_23_Y), .B(XOR2_20_Y), .Y(AND2_3_Y));
    XOR2 XOR2_23 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_23_Y));
    AND2 AND2_17 (.A(\MEM_WADDR[4] ), .B(GND), .Y(AND2_17_Y));
    DFN1E1C0 \DFN1E1C0_dout[6]  (.D(\QXI[6] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[6]));
    AND2 AND2_7 (.A(AND2_5_Y), .B(XOR2_3_Y), .Y(AND2_7_Y));
    XOR2 XOR2_27 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(XOR2_27_Y));
    DFN1C0 \DFN1C0_RGRY[0]  (.D(XOR2_21_Y), .CLK(clk), .CLR(rst), .Q(
        \RGRY[0] ));
    AND3 AND3_0 (.A(XNOR2_2_Y), .B(XNOR2_3_Y), .C(XNOR2_0_Y), .Y(
        AND3_0_Y));
    AND2 AND2_FULLINT (.A(AND2_14_Y), .B(XOR2_24_Y), .Y(FULLINT));
    XOR2 XOR2_24 (.A(\MEM_RADDR[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_24_Y));
    AO1 AO1_9 (.A(XOR2_20_Y), .B(AND2_13_Y), .C(AND2_21_Y), .Y(AO1_9_Y)
        );
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_WADDR[0] ));
    AO1 AO1_7 (.A(XOR2_2_Y), .B(AO1_1_Y), .C(AND2_9_Y), .Y(AO1_7_Y));
    NAND2 NAND2_0 (.A(empty), .B(VCC), .Y(NAND2_0_Y));
    DFN1C0 \DFN1C0_WGRY[2]  (.D(XOR2_4_Y), .CLK(clk), .CLR(rst), .Q(
        \WGRY[2] ));
    XNOR2 XNOR2_4 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_4_Y));
    XOR2 XOR2_12 (.A(\WBINNXTSHIFT[0] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XOR2_12_Y));
    XNOR2 XNOR2_1 (.A(\MEM_RADDR[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        XNOR2_1_Y));
    XNOR2 XNOR2_8 (.A(\MEM_RADDR[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_8_Y));
    XOR2 XOR2_3 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_3_Y));
    XNOR2 XNOR2_5 (.A(\MEM_RADDR[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_3 (.A(XOR2_8_Y), .B(AND2_9_Y), .C(AND2_15_Y), .Y(AO1_3_Y));
    AND2 AND2_6 (.A(\MEM_WADDR[1] ), .B(GND), .Y(AND2_6_Y));
    XOR2 XOR2_21 (.A(\RBINNXTSHIFT[0] ), .B(\RBINNXTSHIFT[1] ), .Y(
        XOR2_21_Y));
    XNOR2 XNOR2_6 (.A(\MEM_RADDR[1] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XNOR2_6_Y));
    DFN1C0 DFN1C0_DVLDX (.D(DVLDI), .CLK(clk), .CLR(rst), .Q(DVLDX));
    NAND2 NAND2_1 (.A(full), .B(VCC), .Y(NAND2_1_Y));
    DFN1C0 \DFN1C0_RGRY[2]  (.D(XOR2_22_Y), .CLK(clk), .CLR(rst), .Q(
        \RGRY[2] ));
    DFN1E1C0 \DFN1E1C0_dout[8]  (.D(\QXI[8] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[8]));
    RAM512X18 \RAM512X18_QXI[15]  (.RADDR8(GND), .RADDR7(GND), .RADDR6(
        GND), .RADDR5(GND), .RADDR4(GND), .RADDR3(\MEM_RADDR[3] ), 
        .RADDR2(\MEM_RADDR[2] ), .RADDR1(\MEM_RADDR[1] ), .RADDR0(
        \MEM_RADDR[0] ), .WADDR8(GND), .WADDR7(GND), .WADDR6(GND), 
        .WADDR5(GND), .WADDR4(GND), .WADDR3(\MEM_WADDR[3] ), .WADDR2(
        \MEM_WADDR[2] ), .WADDR1(\MEM_WADDR[1] ), .WADDR0(
        \MEM_WADDR[0] ), .WD17(GND), .WD16(din[15]), .WD15(din[14]), 
        .WD14(din[13]), .WD13(din[12]), .WD12(din[11]), .WD11(din[10]), 
        .WD10(din[9]), .WD9(din[8]), .WD8(GND), .WD7(din[7]), .WD6(
        din[6]), .WD5(din[5]), .WD4(din[4]), .WD3(din[3]), .WD2(din[2])
        , .WD1(din[1]), .WD0(din[0]), .RW0(GND), .RW1(VCC), .WW0(GND), 
        .WW1(VCC), .PIPE(GND), .REN(MEMRENEG), .WEN(MEMWENEG), .RCLK(
        clk), .WCLK(clk), .RESET(rst), .RD17(), .RD16(\QXI[15] ), 
        .RD15(\QXI[14] ), .RD14(\QXI[13] ), .RD13(\QXI[12] ), .RD12(
        \QXI[11] ), .RD11(\QXI[10] ), .RD10(\QXI[9] ), .RD9(\QXI[8] ), 
        .RD8(), .RD7(\QXI[7] ), .RD6(\QXI[6] ), .RD5(\QXI[5] ), .RD4(
        \QXI[4] ), .RD3(\QXI[3] ), .RD2(\QXI[2] ), .RD1(\QXI[1] ), 
        .RD0(\QXI[0] ));
    DFN1E1C0 \DFN1E1C0_dout[4]  (.D(\QXI[4] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[4]));
    DFN1C0 \DFN1C0_WGRY[3]  (.D(XOR2_5_Y), .CLK(clk), .CLR(rst), .Q(
        \WGRY[3] ));
    XNOR2 XNOR2_2 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[0] ), .Y(
        XNOR2_2_Y));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_11_Y), .B(AO1_8_Y), .Y(
        \WBINNXTSHIFT[3] ));
    AND2 AND2_20 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_20_Y));
    AO1 AO1_2 (.A(AND2_11_Y), .B(AO1_1_Y), .C(AO1_3_Y), .Y(AO1_2_Y));
    DFN1E1C0 \DFN1E1C0_dout[13]  (.D(\QXI[13] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[13]));
    XOR2 XOR2_0 (.A(\MEM_WADDR[4] ), .B(GND), .Y(XOR2_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_RADDR[1] ));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_WADDR[4] ));
    AND2 AND2_10 (.A(\MEM_RADDR[1] ), .B(GND), .Y(AND2_10_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_RADDR[4] ));
    XOR2 XOR2_26 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_26_Y));
    AND2 AND2_18 (.A(XOR2_17_Y), .B(XOR2_26_Y), .Y(AND2_18_Y));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_0_Y), .B(AO1_6_Y), .Y(
        \WBINNXTSHIFT[4] ));
    AND3 AND3_1 (.A(XNOR2_1_Y), .B(XNOR2_6_Y), .C(XNOR2_5_Y), .Y(
        AND3_1_Y));
    DFN1C0 \DFN1C0_RGRY[3]  (.D(XOR2_19_Y), .CLK(clk), .CLR(rst), .Q(
        \RGRY[3] ));
    DFN1C0 \DFN1C0_WGRY[4]  (.D(XOR2_6_Y), .CLK(clk), .CLR(rst), .Q(
        \WGRY[4] ));
    XOR2 XOR2_13 (.A(\WBINNXTSHIFT[1] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XOR2_13_Y));
    AND2 AND2_19 (.A(\MEM_RADDR[4] ), .B(GND), .Y(AND2_19_Y));
    XOR2 XOR2_17 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(XOR2_17_Y));
    XOR2 XOR2_5 (.A(\WBINNXTSHIFT[3] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_5_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_RADDR[3] ));
    XOR2 XOR2_14 (.A(\MEM_WADDR[2] ), .B(GND), .Y(XOR2_14_Y));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_28_Y), .B(AND2_0_Y), .Y(
        \WBINNXTSHIFT[1] ));
    DFN1E1C0 \DFN1E1C0_dout[1]  (.D(\QXI[1] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[1]));
    XOR2 XOR2_2 (.A(\MEM_RADDR[2] ), .B(GND), .Y(XOR2_2_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_14_Y), .B(AO1_4_Y), .Y(
        \WBINNXTSHIFT[2] ));
    XOR2 XOR2_25 (.A(\MEM_RADDR[1] ), .B(GND), .Y(XOR2_25_Y));
    XOR2 XOR2_20 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_20_Y));
    AND2 AND2_14 (.A(AND3_1_Y), .B(XNOR2_8_Y), .Y(AND2_14_Y));
    XOR2 XOR2_6 (.A(\WBINNXTSHIFT[4] ), .B(GND), .Y(XOR2_6_Y));
    DFN1E1C0 \DFN1E1C0_dout[0]  (.D(\QXI[0] ), .CLK(clk), .CLR(rst), 
        .E(DVLDI), .Q(dout[0]));
    XOR2 XOR2_4 (.A(\WBINNXTSHIFT[2] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XOR2_4_Y));
    XOR2 XOR2_28 (.A(\MEM_WADDR[1] ), .B(GND), .Y(XOR2_28_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_RADDR[0] ));
    XOR2 XOR2_8 (.A(\MEM_RADDR[3] ), .B(GND), .Y(XOR2_8_Y));
    AND2 AND2_15 (.A(\MEM_RADDR[3] ), .B(GND), .Y(AND2_15_Y));
    DFN1P0 DFN1P0_empty (.D(EMPTYINT), .CLK(clk), .PRE(rst), .Q(empty));
    DFN1C0 \DFN1C0_RGRY[4]  (.D(XOR2_9_Y), .CLK(clk), .CLR(rst), .Q(
        \RGRY[4] ));
    XNOR2 XNOR2_0 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_0_Y));
    DFN1C0 \DFN1C0_WGRY[1]  (.D(XOR2_13_Y), .CLK(clk), .CLR(rst), .Q(
        \WGRY[1] ));
    AND2 AND2_MEMORYRE (.A(NAND2_0_Y), .B(REP), .Y(MEMORYRE));
    XOR2 XOR2_11 (.A(\MEM_WADDR[3] ), .B(GND), .Y(XOR2_11_Y));
    AO1 AO1_0 (.A(XOR2_3_Y), .B(AO1_6_Y), .C(AND2_17_Y), .Y(AO1_0_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_7_Y));
    AND2 AND2_21 (.A(\MEM_WADDR[3] ), .B(GND), .Y(AND2_21_Y));
    AO1 AO1_8 (.A(XOR2_23_Y), .B(AO1_4_Y), .C(AND2_13_Y), .Y(AO1_8_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(clk), 
        .CLR(rst), .Q(\MEM_WADDR[3] ));
    DFN1C0 \DFN1C0_RGRY[1]  (.D(XOR2_1_Y), .CLK(clk), .CLR(rst), .Q(
        \RGRY[1] ));
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
// LPMTYPE:LPM_SOFTFIFO
// LPM_HINT:MEMFF
// INSERT_PAD:NO
// INSERT_IOREG:NO
// GEN_BHV_VHDL_VAL:F
// GEN_BHV_VERILOG_VAL:F
// MGNTIMER:F
// MGNCMPL:T
// DESDIR:D:/FPGA/a3p1000_spi/smartgen\sp_fifo
// GEN_BEHV_MODULE:F
// SMARTGEN_DIE:IS8X8M2
// SMARTGEN_PACKAGE:pq208
// AGENIII_IS_SUBPROJECT_LIBERO:T
// WWIDTH:16
// WDEPTH:16
// RWIDTH:16
// RDEPTH:16
// CLKS:1
// CLOCK_PN:clk
// WCLK_EDGE:RISE
// ACLR_PN:rst
// RESET_POLARITY:0
// INIT_RAM:F
// WE_POLARITY:0
// RE_POLARITY:0
// FF_PN:full
// AF_PN:AFULL
// WACK_PN:WACK
// OVRFLOW_PN:OVERFLOW
// WRCNT_PN:WRCNT
// WE_PN:wr_en
// EF_PN:empty
// AE_PN:AEMPTY
// DVLD_PN:DVLD
// UDRFLOW_PN:UNDERFLOW
// RDCNT_PN:RDCNT
// RE_PN:rd_en
// CONTROLLERONLY:F
// FSTOP:YES
// ESTOP:YES
// WRITEACK:NO
// OVERFLOW:NO
// WRCOUNT:NO
// DATAVALID:NO
// UNDERFLOW:NO
// RDCOUNT:NO
// AF_PORT_PN:AFVAL
// AE_PORT_PN:AEVAL
// AFFLAG:NONE
// AEFLAG:NONE
// DATA_IN_PN:din
// DATA_OUT_PN:dout
// CASCADE:0

// _End_Comments_

