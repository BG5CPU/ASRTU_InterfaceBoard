`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module I2C_slave_Z5(
       I2C_slave_0_BIF_1_PWDATA,
       I2C_slave_0_BIF_1_PADDR,
       OUT_DATA_c,
       DATA_IN_1_c,
       I2C_slave_0_BIF_1_PRDATA,
       COREI2C_1_INT_0,
       I2C_slave_0_BIF_1_PSELx,
       SCLO_int,
       OUT_EN,
       I2C_slave_0_BIF_1_PENABLE,
       I2C_slave_0_BIF_1_PWRITE,
       PRESETN_c,
       PCLK_c
    );
output [7:0] I2C_slave_0_BIF_1_PWDATA;
output [3:2] I2C_slave_0_BIF_1_PADDR;
output [23:0] OUT_DATA_c;
input  [15:0] DATA_IN_1_c;
input  [7:0] I2C_slave_0_BIF_1_PRDATA;
input  COREI2C_1_INT_0;
output I2C_slave_0_BIF_1_PSELx;
input  SCLO_int;
output OUT_EN;
output I2C_slave_0_BIF_1_PENABLE;
output I2C_slave_0_BIF_1_PWRITE;
input  PRESETN_c;
input  PCLK_c;

    wire \current_state_0[1]_net_1 , \next_state[1]_net_1 , N_3, 
        \ACK_count[1]_net_1 , \ACK_count[0]_net_1 , 
        \next_state_4_0_1[3] , N_218, un1_current_state_11, 
        un1_current_state_8, \next_state_4_0_0[2] , 
        \current_state[2]_net_1 , N_214, \next_state_4_0_a5_2[2] , 
        un34_next_state, next_state48, \next_state_4_0_a5_0[2] , N_220, 
        \current_state[0]_net_1 , PSEL_2_2, un1_next_state_12, 
        un1_next_state_10, PSEL_2_1, un1_next_state_11_2, 
        \next_state[0]_net_1 , un1_next_state_1, un1_next_state70_2_0, 
        \current_state[3]_net_1 , RW_EN6_2, \next_state_4_0_a5_0[1] , 
        next_state81_2, next_state47, PENABLE5_2, un1_next_state_14, 
        un1_next_state_2, PSEL6_0, \next_state[3]_net_1 , 
        next_state48_1, \S_DATA[3]_net_1 , \S_DATA[5]_net_1 , 
        \S_DATA[6]_net_1 , un1_current_state_13_0, 
        \current_state[1]_net_1 , next_state47_1_0, \S_DATA[4]_net_1 , 
        un34_next_state_13, un34_next_state_5, un34_next_state_4, 
        un34_next_state_11, un34_next_state_7, \data[11]_net_1 , 
        \data[10]_net_1 , un34_next_state_9, un34_next_state_3, 
        \data[6]_net_1 , \data[7]_net_1 , un34_next_state_8, 
        un34_next_state_1, \data[15]_net_1 , \data[14]_net_1 , 
        \data[8]_net_1 , \data[9]_net_1 , \data[1]_net_1 , 
        \data[0]_net_1 , \data[3]_net_1 , \data[2]_net_1 , 
        \data[5]_net_1 , \data[4]_net_1 , \data[13]_net_1 , 
        \data[12]_net_1 , un1_S_DATA_2_3, next_state46_2, 
        next_state46_1_0, next_state46_3, \S_DATA[7]_net_1 , 
        un1_S_DATA_2_2, un1_S_DATA_2_1, \S_DATA[2]_net_1 , 
        un1_S_DATA_1_1, un1_next_state_12_0, ACK_count9_0, 
        \ACK_count[3]_net_1 , \ACK_count[2]_net_1 , N_211, 
        next_state49, next_state47_1, next_state47_2, 
        \next_state_4[1] , N_203, N_206_i, next_state81_1, 
        un1_next_state70_2, \next_state[2]_net_1 , 
        \PADDR_1_RNO[2]_net_1 , N_186, N_187, un1_next_state_9, 
        un1_next_state_13, un1_next_state_9_2, un1_next_state_14_1, 
        PSEL6, un1_next_state_7, PENABLE5, PSEL_2, un1_S_DATA_1, 
        un1_current_state_10, N_212, N_204, \next_state_4[2] , N_215, 
        \next_state_4[3] , N_208, un1_RW_EN10_net_1, \OUT_DATA_3[4] , 
        \OUT_DATA_3[5] , \OUT_DATA_3[6] , \OUT_DATA_3[7] , 
        un1_current_state_26, N_210, \next_state_RNO[0]_net_1 , 
        \OUT_DATA_4[4] , \OUT_DATA_4[5] , \OUT_DATA_4[6] , 
        \OUT_DATA_4[7] , \OUT_DATA_4[0] , \OUT_DATA_4[1] , 
        \OUT_DATA_4[2] , \OUT_DATA_4[3] , \S_DATA[0]_net_1 , 
        \S_DATA[1]_net_1 , \PADDR_2[3] , N_185, N_190, 
        un1_next_state_9_1, PADDR21, \data_4[0] , \data_4[1] , 
        \data_4[2] , \data_4[3] , PADDR24, un1_next_state70_1, 
        un1_current_state_13_2, next_state70, \PWDATA_3[0] , 
        \PWDATA_3[1] , \PWDATA_3[2] , \PWDATA_3[3] , \PWDATA_3[6] , 
        \data_4[12] , \data_4[13] , \data_4[14] , \data_4[15] , 
        \data_4[11] , \data_4[10] , \data_4[9] , \data_4[8] , 
        \data_4[7] , \data_4[6] , \data_4[5] , \data_4[4] , 
        \PWDATA_3[7] , \PWDATA_3[5] , \PWDATA_3[4] , OUT_EN_2, 
        RW_EN_net_1, \ACK_count_3[3] , I_9, \ACK_count_3[0] , I_5, I_7, 
        N_2, GND, VCC;
    
    NOR3A PENABLE_RNO_2 (.A(un1_next_state_14_1), .B(
        \next_state[3]_net_1 ), .C(\next_state[1]_net_1 ), .Y(
        un1_next_state_14));
    MX2 \data_RNO[14]  (.A(DATA_IN_1_c[14]), .B(\data[10]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[14] ));
    DFN1E1C0 \OUT_DATA[6]  (.D(\OUT_DATA_4[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[6]));
    MX2 \data_RNO[11]  (.A(DATA_IN_1_c[11]), .B(\data[7]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[11] ));
    NOR3B \next_state_RNIMP581[3]  (.A(\next_state[3]_net_1 ), .B(
        un1_next_state_12_0), .C(\next_state[2]_net_1 ), .Y(
        un1_next_state_12));
    NOR2B \next_state_RNIMP581[0]  (.A(un1_next_state_9_1), .B(
        un1_next_state_9_2), .Y(un1_next_state_9));
    DFN1E1C0 \data[5]  (.D(\data_4[5] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[5]_net_1 ));
    NOR2B \PWDATA_RNO[5]  (.A(\data[13]_net_1 ), .B(PADDR24), .Y(
        \PWDATA_3[5] ));
    OR3 \next_state_RNO_1[3]  (.A(N_218), .B(un1_current_state_11), .C(
        un1_current_state_8), .Y(\next_state_4_0_1[3] ));
    DFN0C1 \ACK_count[1]  (.D(I_5), .CLK(SCLO_int), .CLR(
        un1_RW_EN10_net_1), .Q(\ACK_count[1]_net_1 ));
    NOR2A \current_state_RNI42GO[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(N_220));
    NOR2B \PWDATA_RNO[4]  (.A(\data[12]_net_1 ), .B(PADDR24), .Y(
        \PWDATA_3[4] ));
    OR2A un1_RW_EN10 (.A(PRESETN_c), .B(COREI2C_1_INT_0), .Y(
        un1_RW_EN10_net_1));
    NOR2 \data_RNIFS6O[0]  (.A(\data[1]_net_1 ), .B(\data[0]_net_1 ), 
        .Y(un34_next_state_5));
    NOR3C \data_RNII1N73[0]  (.A(un34_next_state_5), .B(
        un34_next_state_4), .C(un34_next_state_11), .Y(
        un34_next_state_13));
    DFN1C0 \current_state[2]  (.D(\next_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[2]_net_1 ));
    NOR3A \next_state_RNO_0[0]  (.A(N_220), .B(
        \current_state[2]_net_1 ), .C(N_204), .Y(N_210));
    DFN0C1 \ACK_count[3]  (.D(\ACK_count_3[3] ), .CLK(SCLO_int), .CLR(
        un1_RW_EN10_net_1), .Q(\ACK_count[3]_net_1 ));
    DFN1E1C0 \data[9]  (.D(\data_4[9] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[9]_net_1 ));
    DFN1E1C0 \data[10]  (.D(\data_4[10] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[10]_net_1 ));
    OR2B \current_state_RNI63O41[1]  (.A(next_state81_2), .B(
        \current_state[1]_net_1 ), .Y(N_203));
    OA1A \ACK_count_RNO[3]  (.A(ACK_count9_0), .B(\ACK_count[1]_net_1 )
        , .C(I_9), .Y(\ACK_count_3[3] ));
    DFN1E1C0 \OUT_DATA[18]  (.D(OUT_DATA_c[14]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[18]));
    DFN1E1C0 \OUT_DATA[14]  (.D(OUT_DATA_c[10]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[14]));
    OA1 \PADDR_1_RNO_0[2]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[3]_net_1 ), .Y(N_186));
    NOR2 \next_state_RNITU2K_0[3]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_9_2));
    DFN1E1C0 \data[13]  (.D(\data_4[13] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[13]_net_1 ));
    NOR2A \data_RNO[3]  (.A(DATA_IN_1_c[3]), .B(
        \current_state[1]_net_1 ), .Y(\data_4[3] ));
    DFN1E1C0 \OUT_DATA[3]  (.D(\OUT_DATA_4[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[3]));
    DFN1E1C0 \OUT_DATA[23]  (.D(OUT_DATA_c[19]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[23]));
    XOR2 \next_state_RNO_0[1]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(N_206_i));
    NOR2A \next_state_RNIMP581_0[0]  (.A(un1_next_state_9_2), .B(
        un1_next_state_9_1), .Y(N_190));
    NOR2 \current_state_RNI1VFO_0[1]  (.A(\current_state[0]_net_1 ), 
        .B(\current_state[1]_net_1 ), .Y(RW_EN6_2));
    AOI1B RW_EN_RNO (.A(next_state81_2), .B(next_state81_1), .C(
        un1_next_state70_2_0), .Y(un1_next_state70_2));
    OR3 PENABLE_RNO (.A(un1_next_state_13), .B(un1_next_state_12), .C(
        PENABLE5_2), .Y(PENABLE5));
    OR3 \next_state_RNO[2]  (.A(N_215), .B(\next_state_4_0_0[2] ), .C(
        N_212), .Y(\next_state_4[2] ));
    DFN1C0 \next_state[1]  (.D(\next_state_4[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[1]_net_1 ));
    NOR2B un4_ACK_count_1_I_6 (.A(\ACK_count[1]_net_1 ), .B(
        \ACK_count[0]_net_1 ), .Y(N_3));
    XAI1A RW_EN_RNO_0 (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(RW_EN6_2), .Y(
        un1_next_state70_2_0));
    AO1A \next_state_RNO_1[2]  (.A(\current_state_0[1]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(N_214), .Y(\next_state_4_0_0[2] )
        );
    DFN1E1C0 \OUT_DATA[12]  (.D(OUT_DATA_c[8]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[12]));
    NOR2 \data_RNIVC7O[8]  (.A(\data[8]_net_1 ), .B(\data[9]_net_1 ), 
        .Y(un34_next_state_7));
    NOR2B \next_state_RNIN94U[2]  (.A(un1_next_state_9_1), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_1));
    DFN1E1C0 \data[4]  (.D(\data_4[4] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[4]_net_1 ));
    DFN1E1C0 \data[11]  (.D(\data_4[11] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[11]_net_1 ));
    NOR2A \S_DATA_RNIPRCD[0]  (.A(\S_DATA[7]_net_1 ), .B(
        \S_DATA[0]_net_1 ), .Y(next_state47_1));
    DFN1E1C0 \OUT_DATA[2]  (.D(\OUT_DATA_4[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[2]));
    DFN1E1C0 \OUT_DATA[10]  (.D(OUT_DATA_c[6]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[10]));
    NOR3A \data_RNIIDEG1[6]  (.A(un34_next_state_3), .B(
        \data[6]_net_1 ), .C(\data[7]_net_1 ), .Y(un34_next_state_9));
    AOI1 \next_state_RNO[0]  (.A(N_203), .B(\current_state[0]_net_1 ), 
        .C(N_210), .Y(\next_state_RNO[0]_net_1 ));
    NOR3B \next_state_RNO_2[3]  (.A(next_state48), .B(N_220), .C(
        un34_next_state), .Y(N_218));
    DFN1C0 \PADDR_1[3]  (.D(\PADDR_2[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PADDR[3]));
    OA1B \OUT_DATA_RNO[2]  (.A(OUT_DATA_c[2]), .B(
        I2C_slave_0_BIF_1_PRDATA[2]), .C(\current_state[0]_net_1 ), .Y(
        \OUT_DATA_4[2] ));
    NOR2 \S_DATA_RNIJLCD[0]  (.A(\S_DATA[0]_net_1 ), .B(
        \S_DATA[1]_net_1 ), .Y(next_state46_2));
    DFN1C0 \next_state[0]  (.D(\next_state_RNO[0]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\next_state[0]_net_1 ));
    NOR2A \data_RNO[2]  (.A(DATA_IN_1_c[2]), .B(
        \current_state[1]_net_1 ), .Y(\data_4[2] ));
    NOR3C \data_RNIIA9M6[6]  (.A(un34_next_state_9), .B(
        un34_next_state_8), .C(un34_next_state_13), .Y(un34_next_state)
        );
    DFN1C0 \PWDATA[4]  (.D(\PWDATA_3[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[4]));
    NOR3B \current_state_RNI620H1[3]  (.A(\current_state[2]_net_1 ), 
        .B(next_state81_1), .C(\current_state[3]_net_1 ), .Y(
        un1_current_state_8));
    DFN1E1C0 \S_DATA[6]  (.D(I2C_slave_0_BIF_1_PRDATA[6]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[6]_net_1 ));
    NOR2B \PWDATA_RNO[7]  (.A(\data[15]_net_1 ), .B(PADDR24), .Y(
        \PWDATA_3[7] ));
    DFN1C0 \PWDATA[7]  (.D(\PWDATA_3[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[7]));
    DFN1C0 \current_state_0[1]  (.D(\next_state[1]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\current_state_0[1]_net_1 ));
    GND GND_i (.Y(GND));
    MX2 \data_RNO[4]  (.A(DATA_IN_1_c[4]), .B(\data[0]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[4] ));
    DFN1E1C0 \S_DATA[2]  (.D(I2C_slave_0_BIF_1_PRDATA[2]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[2]_net_1 ));
    DFN1C0 \PWDATA[0]  (.D(\PWDATA_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[0]));
    NOR3A \data_RNIER3U1[14]  (.A(un34_next_state_1), .B(
        \data[15]_net_1 ), .C(\data[14]_net_1 ), .Y(un34_next_state_8));
    DFN1E1C0 \OUT_DATA[8]  (.D(OUT_DATA_c[4]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[8]));
    MX2 \PWDATA_RNO[2]  (.A(PADDR21), .B(\data[10]_net_1 ), .S(PADDR24)
        , .Y(\PWDATA_3[2] ));
    DFN1E1C0 \OUT_DATA[11]  (.D(OUT_DATA_c[7]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[11]));
    NOR2B \next_state_RNIPQ2K[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(un1_next_state_9_1));
    NOR2A \current_state_RNI31GO[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(un1_current_state_13_2));
    MX2 \OUT_DATA_RNO[5]  (.A(\OUT_DATA_3[5] ), .B(OUT_DATA_c[1]), .S(
        \current_state[0]_net_1 ), .Y(\OUT_DATA_4[5] ));
    MX2 \PWDATA_RNO[6]  (.A(PADDR21), .B(\data[14]_net_1 ), .S(PADDR24)
        , .Y(\PWDATA_3[6] ));
    AO1 \next_state_RNO[3]  (.A(N_208), .B(N_220), .C(
        \next_state_4_0_1[3] ), .Y(\next_state_4[3] ));
    DFN1E1C0 \data[1]  (.D(\data_4[1] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[1]_net_1 ));
    DFN1C0 PSEL (.D(PSEL_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PSELx));
    DFN1E1C0 \data[6]  (.D(\data_4[6] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[6]_net_1 ));
    MX2 \PWDATA_RNO[3]  (.A(N_190), .B(\data[11]_net_1 ), .S(PADDR24), 
        .Y(\PWDATA_3[3] ));
    AO1 \S_DATA_RNIRFG43[2]  (.A(un1_S_DATA_2_3), .B(un1_S_DATA_2_2), 
        .C(un1_S_DATA_1), .Y(next_state49));
    DFN1E1C0 \OUT_DATA[5]  (.D(\OUT_DATA_4[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[5]));
    NOR2B \next_state_RNITU2K[3]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(PADDR24));
    DFN1E1C0 \S_DATA[7]  (.D(I2C_slave_0_BIF_1_PRDATA[7]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[7]_net_1 ));
    NOR2A \data_RNO[1]  (.A(DATA_IN_1_c[1]), .B(
        \current_state[1]_net_1 ), .Y(\data_4[1] ));
    OA1B \OUT_DATA_RNO[1]  (.A(OUT_DATA_c[1]), .B(
        I2C_slave_0_BIF_1_PRDATA[1]), .C(\current_state[0]_net_1 ), .Y(
        \OUT_DATA_4[1] ));
    DFN1E1C0 \S_DATA[5]  (.D(I2C_slave_0_BIF_1_PRDATA[5]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[5]_net_1 ));
    DFN1E1C0 \data[8]  (.D(\data_4[8] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[8]_net_1 ));
    OR2 \OUT_DATA_RNO_0[4]  (.A(I2C_slave_0_BIF_1_PRDATA[4]), .B(
        OUT_DATA_c[4]), .Y(\OUT_DATA_3[4] ));
    DFN1E1C0 \OUT_DATA[9]  (.D(OUT_DATA_c[5]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[9]));
    VCC VCC_i (.Y(VCC));
    NOR3B \current_state_RNI620H1[1]  (.A(next_state81_2), .B(
        \current_state[0]_net_1 ), .C(\current_state[1]_net_1 ), .Y(
        un1_current_state_10));
    OR2 \next_state_RNIHM8S1[1]  (.A(N_187), .B(un1_next_state_9), .Y(
        PADDR21));
    NOR2A \S_DATA_RNISUCD[3]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[7]_net_1 ), .Y(un1_S_DATA_2_1));
    MX2 \data_RNO[15]  (.A(DATA_IN_1_c[15]), .B(\data[11]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[15] ));
    AO1 \S_DATA_RNISGG43[4]  (.A(un1_S_DATA_2_3), .B(next_state46_1_0), 
        .C(next_state47), .Y(N_204));
    DFN0C1 \ACK_count[2]  (.D(I_7), .CLK(SCLO_int), .CLR(
        un1_RW_EN10_net_1), .Q(\ACK_count[2]_net_1 ));
    NOR3B \S_DATA_RNIDH3K[5]  (.A(\S_DATA[7]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .C(\S_DATA[6]_net_1 ), .Y(un1_S_DATA_1_1));
    NOR3 \PADDR_1_RNO[2]  (.A(N_186), .B(N_187), .C(un1_next_state_9), 
        .Y(\PADDR_1_RNO[2]_net_1 ));
    OR3 \next_state_RNI0SI24[1]  (.A(PSEL6_0), .B(un1_next_state_7), 
        .C(un1_next_state_9), .Y(PSEL6));
    NOR3A \S_DATA_RNIKPPQ[4]  (.A(next_state46_3), .B(
        \S_DATA[7]_net_1 ), .C(\S_DATA[4]_net_1 ), .Y(next_state46_1_0)
        );
    MX2 \PWDATA_RNO[0]  (.A(N_190), .B(\data[8]_net_1 ), .S(PADDR24), 
        .Y(\PWDATA_3[0] ));
    DFN1E1C0 \data[7]  (.D(\data_4[7] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[7]_net_1 ));
    DFN1E1C0 \data[14]  (.D(\data_4[14] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[14]_net_1 ));
    NOR3 \S_DATA_RNIAE3K[4]  (.A(\S_DATA[6]_net_1 ), .B(
        \S_DATA[4]_net_1 ), .C(\S_DATA[5]_net_1 ), .Y(next_state47_1_0)
        );
    XOR2 un4_ACK_count_1_I_9 (.A(N_2), .B(\ACK_count[3]_net_1 ), .Y(
        I_9));
    DFN1C0 PENABLE (.D(PENABLE5), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PENABLE));
    NOR2A \next_state_RNIRS2K[1]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(N_187));
    XOR2 un4_ACK_count_1_I_5 (.A(\ACK_count[0]_net_1 ), .B(
        \ACK_count[1]_net_1 ), .Y(I_5));
    DFN1E1C0 \data[0]  (.D(\data_4[0] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[0]_net_1 ));
    DFN1C0 \PWDATA[1]  (.D(\PWDATA_3[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[1]));
    NOR3C \S_DATA_RNIN0TE1[3]  (.A(next_state47_1), .B(next_state47_2), 
        .C(next_state48_1), .Y(next_state48));
    NOR2A \current_state_RNI53GO[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(next_state81_2));
    NOR3B \current_state_RNI620H1_0[1]  (.A(next_state81_2), .B(
        \current_state[1]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        un1_current_state_11));
    AO1A \next_state_RNIJO8S1[3]  (.A(\next_state[3]_net_1 ), .B(
        un1_next_state_11_2), .C(un1_next_state_2), .Y(PSEL6_0));
    MX2 \data_RNO[8]  (.A(DATA_IN_1_c[8]), .B(\data[4]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[8] ));
    OA1B \OUT_DATA_RNO[0]  (.A(OUT_DATA_c[0]), .B(
        I2C_slave_0_BIF_1_PRDATA[0]), .C(\current_state[0]_net_1 ), .Y(
        \OUT_DATA_4[0] ));
    OR3A \next_state_RNO[1]  (.A(N_203), .B(N_206_i), .C(N_211), .Y(
        \next_state_4[1] ));
    NOR3B PENABLE_RNO_0 (.A(\next_state[0]_net_1 ), .B(
        un1_next_state_9_2), .C(\next_state[1]_net_1 ), .Y(
        un1_next_state_13));
    OR2 \OUT_DATA_RNO_0[5]  (.A(I2C_slave_0_BIF_1_PRDATA[5]), .B(
        OUT_DATA_c[5]), .Y(\OUT_DATA_3[5] ));
    DFN1E1C0 \OUT_DATA[1]  (.D(\OUT_DATA_4[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[1]));
    DFN1E1C0 \data[15]  (.D(\data_4[15] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[15]_net_1 ));
    DFN1E1C0 \OUT_DATA[22]  (.D(OUT_DATA_c[18]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[22]));
    AO1 \current_state_RNIC4023[2]  (.A(un1_current_state_13_0), .B(
        un1_current_state_13_2), .C(next_state70), .Y(
        un1_next_state70_1));
    OR2 \current_state_RNIC4023[1]  (.A(un1_current_state_10), .B(
        un1_current_state_11), .Y(un1_current_state_26));
    MX2 \data_RNO[9]  (.A(DATA_IN_1_c[9]), .B(\data[5]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[9] ));
    DFN1E1C0 \OUT_DATA[20]  (.D(OUT_DATA_c[16]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[20]));
    NOR3C \next_state_RNIPB4U[0]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[2]_net_1 ), .Y(
        un1_next_state_2));
    NOR3A \next_state_RNO_3[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        N_214));
    NOR3A \current_state_RNI620H1_0[3]  (.A(RW_EN6_2), .B(
        \current_state[2]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        next_state70));
    NOR3C \S_DATA_RNIO1TE1[4]  (.A(next_state47_1), .B(next_state47_2), 
        .C(next_state47_1_0), .Y(next_state47));
    NOR3A \data_RNIG49N1[10]  (.A(un34_next_state_7), .B(
        \data[11]_net_1 ), .C(\data[10]_net_1 ), .Y(un34_next_state_11)
        );
    MX2 \data_RNO[7]  (.A(DATA_IN_1_c[7]), .B(\data[3]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[7] ));
    MX2 \data_RNO[5]  (.A(DATA_IN_1_c[5]), .B(\data[1]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[5] ));
    MX2 \PWDATA_RNO[1]  (.A(N_190), .B(\data[9]_net_1 ), .S(PADDR24), 
        .Y(\PWDATA_3[1] ));
    MX2 \OUT_DATA_RNO[4]  (.A(\OUT_DATA_3[4] ), .B(OUT_DATA_c[0]), .S(
        \current_state[0]_net_1 ), .Y(\OUT_DATA_4[4] ));
    XOR2 un4_ACK_count_1_I_7 (.A(N_3), .B(\ACK_count[2]_net_1 ), .Y(
        I_7));
    AOI1B \next_state_RNO_4[2]  (.A(un34_next_state), .B(next_state48), 
        .C(\next_state_4_0_a5_0[2] ), .Y(\next_state_4_0_a5_2[2] ));
    NOR3C \S_DATA_RNIN0TE1[5]  (.A(next_state46_2), .B(next_state46_3), 
        .C(un1_S_DATA_1_1), .Y(un1_S_DATA_1));
    NOR2A \next_state_RNIPQ2K_0[0]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(un1_next_state_12_0));
    OR2 PSEL_RNO (.A(PSEL_2_2), .B(PSEL6), .Y(PSEL_2));
    DFN1C0 PWRITE (.D(PSEL6), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PWRITE));
    DFN1E1C0 \OUT_DATA[21]  (.D(OUT_DATA_c[17]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[21]));
    NOR2 \data_RNILR1V[12]  (.A(\data[13]_net_1 ), .B(\data[12]_net_1 )
        , .Y(un34_next_state_1));
    DFN1E1C0 \data[2]  (.D(\data_4[2] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[2]_net_1 ));
    DFN1E0C0 RW_EN (.D(un1_current_state_13_2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_2), .Q(RW_EN_net_1));
    NOR3B \S_DATA_RNIKPPQ[2]  (.A(\S_DATA[4]_net_1 ), .B(
        un1_S_DATA_2_1), .C(\S_DATA[2]_net_1 ), .Y(un1_S_DATA_2_2));
    NOR2A \next_state_RNIN94U[1]  (.A(un1_next_state_14_1), .B(
        \next_state[1]_net_1 ), .Y(un1_next_state_7));
    OR3 PSEL_RNO_0 (.A(un1_next_state_12), .B(un1_next_state_10), .C(
        PSEL_2_1), .Y(PSEL_2_2));
    DFN1E1C0 \OUT_DATA[17]  (.D(OUT_DATA_c[13]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[17]));
    DFN1C0 \PWDATA[6]  (.D(\PWDATA_3[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[6]));
    MX2 \data_RNO[6]  (.A(DATA_IN_1_c[6]), .B(\data[2]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[6] ));
    OR3 \next_state_RNO_0[3]  (.A(\current_state[2]_net_1 ), .B(N_204), 
        .C(\current_state[0]_net_1 ), .Y(N_208));
    NOR2B \current_state_RNI1VFO[1]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(next_state81_1));
    MX2 \data_RNO[10]  (.A(DATA_IN_1_c[10]), .B(\data[6]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[10] ));
    OR2 \OUT_DATA_RNO_0[6]  (.A(I2C_slave_0_BIF_1_PRDATA[6]), .B(
        OUT_DATA_c[6]), .Y(\OUT_DATA_3[6] ));
    NOR2 \next_state_RNIRS2K_0[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_11_2));
    MX2 \OUT_DATA_RNO[6]  (.A(\OUT_DATA_3[6] ), .B(OUT_DATA_c[2]), .S(
        \current_state[0]_net_1 ), .Y(\OUT_DATA_4[6] ));
    NOR2A \next_state_RNO_2[1]  (.A(next_state81_2), .B(next_state47), 
        .Y(\next_state_4_0_a5_0[1] ));
    OA1C \ACK_count_RNO[0]  (.A(ACK_count9_0), .B(\ACK_count[1]_net_1 )
        , .C(\ACK_count[0]_net_1 ), .Y(\ACK_count_3[0] ));
    DFN1E1C0 \OUT_DATA[16]  (.D(OUT_DATA_c[12]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[16]));
    NOR2A \next_state_RNIQR2K[0]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(un1_next_state_14_1));
    OR3 PENABLE_RNO_1 (.A(un1_next_state_14), .B(un1_next_state_2), .C(
        un1_next_state_1), .Y(PENABLE5_2));
    DFN1E1C0 \OUT_DATA[13]  (.D(OUT_DATA_c[9]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[13]));
    DFN1C0 \next_state[3]  (.D(\next_state_4[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[3]_net_1 ));
    DFN1C0 \current_state[0]  (.D(\next_state[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[0]_net_1 ));
    OA1B \OUT_DATA_RNO[3]  (.A(OUT_DATA_c[3]), .B(
        I2C_slave_0_BIF_1_PRDATA[3]), .C(\current_state[0]_net_1 ), .Y(
        \OUT_DATA_4[3] ));
    DFN1E1C0 \S_DATA[1]  (.D(I2C_slave_0_BIF_1_PRDATA[1]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[1]_net_1 ));
    OR3 \PADDR_1_RNO_0[3]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[2]_net_1 ), .Y(N_185));
    NOR2 \data_RNIJ07O[2]  (.A(\data[3]_net_1 ), .B(\data[2]_net_1 ), 
        .Y(un34_next_state_4));
    DFN1E1C0 \S_DATA[0]  (.D(I2C_slave_0_BIF_1_PRDATA[0]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[0]_net_1 ));
    NOR2A \ACK_count_RNIDEM[3]  (.A(\ACK_count[3]_net_1 ), .B(
        \ACK_count[2]_net_1 ), .Y(ACK_count9_0));
    NOR3A \next_state_RNO_0[2]  (.A(next_state81_1), .B(
        \current_state[2]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        N_215));
    DFN1E1C0 \S_DATA[3]  (.D(I2C_slave_0_BIF_1_PRDATA[3]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[3]_net_1 ));
    DFN1C0 \PWDATA[5]  (.D(\PWDATA_3[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[5]));
    OR2 \OUT_DATA_RNO_0[7]  (.A(I2C_slave_0_BIF_1_PRDATA[7]), .B(
        OUT_DATA_c[7]), .Y(\OUT_DATA_3[7] ));
    DFN1E1C0 \OUT_DATA[0]  (.D(\OUT_DATA_4[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[0]));
    NOR3C \S_DATA_RNIGLPQ[5]  (.A(\S_DATA[6]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .C(next_state46_2), .Y(un1_S_DATA_2_3));
    DFN1E1C0 \OUT_DATA[15]  (.D(OUT_DATA_c[11]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[15]));
    NOR2A \next_state_RNO_5[2]  (.A(N_220), .B(
        \current_state[0]_net_1 ), .Y(\next_state_4_0_a5_0[2] ));
    AX1 OUT_EN_RNO (.A(\ACK_count[1]_net_1 ), .B(ACK_count9_0), .C(
        RW_EN_net_1), .Y(OUT_EN_2));
    AO1 \PADDR_1_RNO[3]  (.A(N_185), .B(\next_state[3]_net_1 ), .C(
        N_190), .Y(\PADDR_2[3] ));
    DFN0C1 \ACK_count[0]  (.D(\ACK_count_3[0] ), .CLK(SCLO_int), .CLR(
        un1_RW_EN10_net_1), .Q(\ACK_count[0]_net_1 ));
    MX2 \OUT_DATA_RNO[7]  (.A(\OUT_DATA_3[7] ), .B(OUT_DATA_c[3]), .S(
        \current_state[0]_net_1 ), .Y(\OUT_DATA_4[7] ));
    NOR3B \S_DATA_RNI9D3K[3]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .C(\S_DATA[6]_net_1 ), .Y(next_state48_1));
    DFN1E1C0 \OUT_DATA[4]  (.D(\OUT_DATA_4[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[4]));
    DFN1C0 \current_state[1]  (.D(\next_state[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[1]_net_1 ));
    NOR3A PSEL_RNO_1 (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .C(\next_state[0]_net_1 ), .Y(
        un1_next_state_10));
    DFN1E1C0 \OUT_DATA[7]  (.D(\OUT_DATA_4[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_26), .Q(OUT_DATA_c[7]));
    AND3 un4_ACK_count_1_I_8 (.A(\ACK_count[0]_net_1 ), .B(
        \ACK_count[1]_net_1 ), .C(\ACK_count[2]_net_1 ), .Y(N_2));
    NOR3A \next_state_RNO_1[1]  (.A(\next_state_4_0_a5_0[1] ), .B(
        next_state49), .C(next_state48), .Y(N_211));
    DFN1E1C0 \S_DATA[4]  (.D(I2C_slave_0_BIF_1_PRDATA[4]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(un1_current_state_8), .Q(
        \S_DATA[4]_net_1 ));
    DFN0C0 OUT_EN_inst_1 (.D(OUT_EN_2), .CLK(SCLO_int), .CLR(PRESETN_c)
        , .Q(OUT_EN));
    NOR2 \S_DATA_RNILNCD[1]  (.A(\S_DATA[1]_net_1 ), .B(
        \S_DATA[2]_net_1 ), .Y(next_state47_2));
    DFN1C0 \current_state[3]  (.D(\next_state[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[3]_net_1 ));
    NOR2 \S_DATA_RNINPCD[2]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[2]_net_1 ), .Y(next_state46_3));
    DFN1C0 \PWDATA[2]  (.D(\PWDATA_3[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[2]));
    MX2 \data_RNO[13]  (.A(DATA_IN_1_c[13]), .B(\data[9]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[13] ));
    NOR2A \data_RNO[0]  (.A(DATA_IN_1_c[0]), .B(
        \current_state[1]_net_1 ), .Y(\data_4[0] ));
    NOR2 \data_RNIN47O[4]  (.A(\data[5]_net_1 ), .B(\data[4]_net_1 ), 
        .Y(un34_next_state_3));
    DFN1E1C0 \data[12]  (.D(\data_4[12] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_next_state70_1), .Q(\data[12]_net_1 ));
    NOR2B \current_state_RNI31GO[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(un1_current_state_13_0));
    DFN1C0 \PWDATA[3]  (.D(\PWDATA_3[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[3]));
    AO1 PSEL_RNO_2 (.A(un1_next_state_11_2), .B(\next_state[0]_net_1 ), 
        .C(un1_next_state_1), .Y(PSEL_2_1));
    DFN1C0 \PADDR_1[2]  (.D(\PADDR_1_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(I2C_slave_0_BIF_1_PADDR[2]));
    DFN1E1C0 \OUT_DATA[19]  (.D(OUT_DATA_c[15]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_10), .Q(OUT_DATA_c[19]));
    NOR3A \next_state_RNO_2[2]  (.A(\next_state_4_0_a5_2[2] ), .B(
        N_204), .C(next_state49), .Y(N_212));
    MX2 \data_RNO[12]  (.A(DATA_IN_1_c[12]), .B(\data[8]_net_1 ), .S(
        \current_state_0[1]_net_1 ), .Y(\data_4[12] ));
    DFN1C0 \next_state[2]  (.D(\next_state_4[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[2]_net_1 ));
    DFN1E1C0 \data[3]  (.D(\data_4[3] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(un1_next_state70_1), .Q(\data[3]_net_1 ));
    
endmodule


module IIC_FIFO_1(
       rx_dout_reg,
       Q_net_0,
       UART_control_0_WE,
       PRESETN_c,
       WEAP,
       PCLK_c,
       AFULL
    );
input  [7:0] rx_dout_reg;
output [7:0] Q_net_0;
input  UART_control_0_WE;
input  PRESETN_c;
input  WEAP;
input  PCLK_c;
output AFULL;

    wire AEMPTY, EMPTY, FULL, FIFOBLOCK0_RD8_2, FIFOBLOCK0_RD9_2, 
        FIFOBLOCK0_RD10_2, FIFOBLOCK0_RD11_2, FIFOBLOCK0_RD12_2, 
        FIFOBLOCK0_RD13_2, FIFOBLOCK0_RD14_2, FIFOBLOCK0_RD15_2, 
        FIFOBLOCK0_RD16_2, FIFOBLOCK0_RD17_2, IIC_FIFO_1_GND, 
        IIC_FIFO_1_VCC;
    
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(IIC_FIFO_1_GND), .AEVAL10(
        IIC_FIFO_1_GND), .AEVAL9(IIC_FIFO_1_GND), .AEVAL8(
        IIC_FIFO_1_GND), .AEVAL7(IIC_FIFO_1_GND), .AEVAL6(
        IIC_FIFO_1_GND), .AEVAL5(IIC_FIFO_1_GND), .AEVAL4(
        IIC_FIFO_1_GND), .AEVAL3(IIC_FIFO_1_VCC), .AEVAL2(
        IIC_FIFO_1_GND), .AEVAL1(IIC_FIFO_1_GND), .AEVAL0(
        IIC_FIFO_1_GND), .AFVAL11(IIC_FIFO_1_GND), .AFVAL10(
        IIC_FIFO_1_GND), .AFVAL9(IIC_FIFO_1_GND), .AFVAL8(
        IIC_FIFO_1_GND), .AFVAL7(IIC_FIFO_1_GND), .AFVAL6(
        IIC_FIFO_1_GND), .AFVAL5(IIC_FIFO_1_VCC), .AFVAL4(
        IIC_FIFO_1_GND), .AFVAL3(IIC_FIFO_1_GND), .AFVAL2(
        IIC_FIFO_1_GND), .AFVAL1(IIC_FIFO_1_GND), .AFVAL0(
        IIC_FIFO_1_GND), .WD17(IIC_FIFO_1_GND), .WD16(IIC_FIFO_1_GND), 
        .WD15(IIC_FIFO_1_GND), .WD14(IIC_FIFO_1_GND), .WD13(
        IIC_FIFO_1_GND), .WD12(IIC_FIFO_1_GND), .WD11(IIC_FIFO_1_GND), 
        .WD10(IIC_FIFO_1_GND), .WD9(IIC_FIFO_1_GND), .WD8(
        IIC_FIFO_1_GND), .WD7(rx_dout_reg[7]), .WD6(rx_dout_reg[6]), 
        .WD5(rx_dout_reg[5]), .WD4(rx_dout_reg[4]), .WD3(
        rx_dout_reg[3]), .WD2(rx_dout_reg[2]), .WD1(rx_dout_reg[1]), 
        .WD0(rx_dout_reg[0]), .WW0(IIC_FIFO_1_VCC), .WW1(
        IIC_FIFO_1_VCC), .WW2(IIC_FIFO_1_GND), .RW0(IIC_FIFO_1_VCC), 
        .RW1(IIC_FIFO_1_VCC), .RW2(IIC_FIFO_1_GND), .RPIPE(
        IIC_FIFO_1_GND), .WEN(UART_control_0_WE), .REN(WEAP), .WBLK(
        IIC_FIFO_1_GND), .RBLK(IIC_FIFO_1_GND), .WCLK(PCLK_c), .RCLK(
        PCLK_c), .RESET(PRESETN_c), .ESTOP(IIC_FIFO_1_VCC), .FSTOP(
        IIC_FIFO_1_VCC), .RD17(FIFOBLOCK0_RD17_2), .RD16(
        FIFOBLOCK0_RD16_2), .RD15(FIFOBLOCK0_RD15_2), .RD14(
        FIFOBLOCK0_RD14_2), .RD13(FIFOBLOCK0_RD13_2), .RD12(
        FIFOBLOCK0_RD12_2), .RD11(FIFOBLOCK0_RD11_2), .RD10(
        FIFOBLOCK0_RD10_2), .RD9(FIFOBLOCK0_RD9_2), .RD8(
        FIFOBLOCK0_RD8_2), .RD7(Q_net_0[7]), .RD6(Q_net_0[6]), .RD5(
        Q_net_0[5]), .RD4(Q_net_0[4]), .RD3(Q_net_0[3]), .RD2(
        Q_net_0[2]), .RD1(Q_net_0[1]), .RD0(Q_net_0[0]), .FULL(FULL), 
        .AFULL(AFULL), .EMPTY(EMPTY), .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(IIC_FIFO_1_VCC));
    GND GND_i (.Y(IIC_FIFO_1_GND));
    
endmodule


module IIC_control_Z6(
       IIC_control_0_BIF_1_PWDATA,
       IIC_control_0_BIF_1_PADDR,
       INA220_DATA_2,
       COREI2C_0_INT_0,
       Q_net_0,
       PRDATA_0_iv_0,
       seradr0_m,
       PRDATA_iv_1,
       PRDATA_iv_0,
       SCLO_int,
       OUT_EN,
       IIC_control_0_BIF_1_PENABLE,
       IIC_control_0_BIF_1_PWRITE,
       WE_OUT,
       AFULL,
       IIC_control_0_BIF_1_PSELx,
       PRESETN_c,
       PCLK_c,
       WEAP
    );
output [7:0] IIC_control_0_BIF_1_PWDATA;
output [3:2] IIC_control_0_BIF_1_PADDR;
output [7:0] INA220_DATA_2;
input  COREI2C_0_INT_0;
input  [7:0] Q_net_0;
input  [2:0] PRDATA_0_iv_0;
input  [2:0] seradr0_m;
input  [7:3] PRDATA_iv_1;
input  [7:3] PRDATA_iv_0;
input  SCLO_int;
output OUT_EN;
output IIC_control_0_BIF_1_PENABLE;
output IIC_control_0_BIF_1_PWRITE;
output WE_OUT;
input  AFULL;
output IIC_control_0_BIF_1_PSELx;
input  PRESETN_c;
input  PCLK_c;
output WEAP;

    wire W_count_1_sqmuxa, N_3, \ACK_count[1]_net_1 , 
        \ACK_count[0]_net_1 , next_state_6_4_1_1_0, N_149, 
        \current_state[2]_net_1 , N_67, \next_state_6_i_0_0_4[2] , 
        N_77, \next_state_6_i_0_0_2[2] , N_101, 
        \next_state_6_i_0_0_1[2] , N_83, N_82, N_428, 
        next_state_6_4_1_a2_9_0_1, \current_state[1]_net_1 , N_136, 
        \next_state_6_0_0_1[3] , \next_state_6_0_0_a2_0[3] , N_45, 
        \next_state_6_0_0_0[3] , N_29, \next_state_6_0_0_a2_1_0[3] , 
        N_108, \next_state_6_0_0_3[0] , \next_state_6_0_0_0[0] , N_120, 
        \next_state_6_0_0_1[0] , \next_state_6_0_0_a2_1_0[1] , N_130, 
        N_119, \next_state_6_0_0_a2_0_0[0] , N_138, N_118, 
        \next_state_6_0_0_0[1] , N_112, \next_state_6_i_0_0_a2_0_0[2] , 
        \next_state_6_0_0_a2_2_0[3] , \S_DATA[5]_net_1 , 
        \next_state_6_i_0_0_a2_6_2[2] , N_93, 
        \next_state_6_i_0_0_a2_6_0[2] , \S_DATA[7]_net_1 , 
        \S_DATA[4]_net_1 , PSEL_2_1, un1_next_state_16_1, 
        un1_next_state_16_0, PSEL_2_0, \next_state[1]_net_1 , 
        un1_next_state_8_0, count_en_R_net_1, 
        \next_state_6_0_0_a2_0[0] , \S_DATA[3]_net_1 , 
        \S_DATA[6]_net_1 , \current_state[4]_net_1 , 
        \next_state_6_i_0_0_a2_9_0[2] , \next_state_6_0_0_a2_0_2[1] , 
        N_144, \next_state_6_0_0_a2_0_0[1] , N_135, 
        \INA220_DATA_3_0[0] , \current_state[0]_net_1 , PSEL6_4, 
        un1_next_state_18, un1_next_state_15, N_284, PSEL6_3, 
        un1_next_state_17, PSEL6_0, un1_next_state_13, 
        \next_state[4]_net_1 , count_en_W_net_1, un1_PADDR22_0, 
        we_en_2_0_a2_3_a2_0, \current_state[3]_net_1 , 
        count_en_R_2_0_a2_0, PENABLE5_3, PENABLE5_1, un1_next_state_3, 
        \next_state_6_0_0_a2_3_0[0] , un79_next_state_5, 
        un79_next_state_4, \PADDR_2_0_a5_1_0[3] , 
        \next_state[3]_net_1 , un1_next_state_19_0, un4_next_state_5, 
        un4_next_state_3, \W_count[3]_net_1 , \W_count[2]_net_1 , 
        un4_next_state_4, un4_next_state_1, \W_count[6]_net_1 , 
        \W_count[7]_net_1 , \W_count[0]_net_1 , \W_count[1]_net_1 , 
        \W_count[4]_net_1 , \W_count[5]_net_1 , \next_state[0]_net_1 , 
        \next_state[2]_net_1 , un1_next_state_17_0, 
        un1_next_state_18_1, un1_next_state_15_1, un79_next_state_3, 
        \R_count[2]_net_1 , \R_count[3]_net_1 , un79_next_state_1, 
        \R_count[6]_net_1 , \R_count[7]_net_1 , \R_count[1]_net_1 , 
        \R_count[0]_net_1 , \R_count[5]_net_1 , \R_count[4]_net_1 , 
        un1_next_state_11_0, ACK_count9_0, \ACK_count[3]_net_1 , 
        \ACK_count[2]_net_1 , \next_state_6_i_0_0_a2_1[2] , N_70_1, 
        N_43, \INA220_DATA_3[1] , \INA220_DATA_3[2] , 
        \INA220_DATA_3[3] , \INA220_DATA_3[4] , \INA220_DATA_3[5] , 
        \S_DATA[0]_net_1 , \S_DATA[2]_net_1 , \S_DATA[1]_net_1 , 
        \next_state_6[3] , count_en_W_2, N_111, 
        \next_state_RNO[2]_net_1 , \next_state_RNO_1[2]_net_1 , N_75, 
        N_148, N_24, \next_state_6[4] , N_53, N_134, N_132, 
        count_en_R_2, N_133, we_en_2, \INA220_DATA_3[6] , PSEL_2, 
        PSEL6, un1_next_state_13_1, un1_next_state_5, un1_PADDR22, 
        N_282, PADDR22, \PADDR_2[3] , PENABLE5, N_60, N_126, N_143, 
        N_145, N_113, N_116, N_50, \next_state_6[1] , N_115, 
        \next_state_6[0] , N_121, \INA220_DATA_3[7] , 
        \INA220_DATA_3[0] , \next_state_6_i_0_0_a2_5_0[2] , N_99_1, 
        WE_0_sqmuxa, we_en_net_1, \R_count_5[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , N_37, \R_count_5[2] , I_29, 
        \R_count_5[3] , I_27, \R_count_5[4] , I_33, \R_count_5[5] , 
        I_28, \R_count_5[6] , I_31, \R_count_5[7] , I_34, 
        \W_count_5[0] , \DWACT_ADD_CI_0_partial_sum_0[0] , 
        \W_count_5[1] , I_30_0, \W_count_5[3] , I_27_0, \W_count_5[4] , 
        I_33_0, \W_count_5[5] , I_28_0, \W_count_5[6] , I_31_0, 
        \W_count_5[7] , I_34_0, \ACK_count_3[0] , \ACK_count_3[3] , 
        I_9_0, N_274_i, RW_EN_net_1, N_27, N_150, W_count_0_sqmuxa, 
        N_140, un1_current_state_22, N_139, N_34, N_16, I_30, N_18, 
        I_29_0, N_20, RW_EN3, \PWDATA_3[0] , PADDR23, \PWDATA_3[1] , 
        \PWDATA_3[3] , \PWDATA_3[7] , un1_next_state_13_2, 
        \PWDATA_3[6] , \PWDATA_3[5] , PADDR21, \PWDATA_3[4] , 
        \PWDATA_3[2] , PADDR25, un1_next_state_2, un1_next_state_6, 
        un1_current_state6_net_1, count_en_R_RNIPLBU_net_1, I_5_0, 
        I_7_0, N_2, \DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0_4[0] , 
        \DWACT_ADD_CI_0_pog_array_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_2[0] , 
        \DWACT_ADD_CI_0_g_array_12[0] , \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_2[0] , 
        \DWACT_ADD_CI_0_g_array_12_2[0] , 
        \DWACT_ADD_CI_0_pog_array_0_5[0] , 
        \DWACT_ADD_CI_0_g_array_11[0] , 
        \DWACT_ADD_CI_0_g_array_0_6[0] , 
        \DWACT_ADD_CI_0_g_array_12_1[0] , 
        \DWACT_ADD_CI_0_g_array_2[0] , \DWACT_ADD_CI_0_g_array_0_4[0] , 
        \DWACT_ADD_CI_0_g_array_1_2[0] , 
        \DWACT_ADD_CI_0_g_array_0_5[0] , 
        \DWACT_ADD_CI_0_g_array_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \DWACT_ADD_CI_0_g_array_0_1[0] , 
        \DWACT_ADD_CI_0_partial_sum[7] , 
        \DWACT_ADD_CI_0_partial_sum[4] , 
        \DWACT_ADD_CI_0_partial_sum[6] , 
        \DWACT_ADD_CI_0_partial_sum[1] , 
        \DWACT_ADD_CI_0_partial_sum[2] , 
        \DWACT_ADD_CI_0_partial_sum[5] , 
        \DWACT_ADD_CI_0_partial_sum[3] , 
        \DWACT_ADD_CI_0_pog_array_1_1_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_3_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_4_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_1_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_2_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_5_0[0] , 
        \DWACT_ADD_CI_0_g_array_11_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_6_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_4_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_5_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_3_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_1_0[0] , 
        \DWACT_ADD_CI_0_partial_sum_0[7] , 
        \DWACT_ADD_CI_0_partial_sum_0[4] , 
        \DWACT_ADD_CI_0_partial_sum_0[6] , 
        \DWACT_ADD_CI_0_partial_sum_0[1] , 
        \DWACT_ADD_CI_0_partial_sum_0[2] , 
        \DWACT_ADD_CI_0_partial_sum_0[5] , 
        \DWACT_ADD_CI_0_partial_sum_0[3] , GND, VCC;
    
    NOR2B PENABLE_RNO_2 (.A(\next_state[4]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(un1_next_state_3));
    DFN1C0 count_en_W (.D(count_en_W_2), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(count_en_W_net_1));
    NOR3A \next_state_RNO_7[0]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[6]_net_1 ), .C(\current_state[4]_net_1 ), .Y(
        \next_state_6_0_0_a2_0[0] ));
    MX2 \PWDATA_RNO[5]  (.A(PADDR21), .B(Q_net_0[5]), .S(PADDR23), .Y(
        \PWDATA_3[5] ));
    NOR3C \next_state_RNO_1[3]  (.A(N_144), .B(N_148), .C(
        \next_state_6_0_0_a2_2_0[3] ), .Y(N_111));
    NOR3 \current_state_RNITUJC[0]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[4]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        N_83));
    DFN0C1 \ACK_count[1]  (.D(I_5_0), .CLK(SCLO_int), .CLR(
        un1_current_state6_net_1), .Q(\ACK_count[1]_net_1 ));
    OR2B WE_RNO (.A(we_en_net_1), .B(we_en_2), .Y(WE_0_sqmuxa));
    XOR2 un1_W_count_I_31 (.A(\DWACT_ADD_CI_0_partial_sum_0[6] ), .B(
        \DWACT_ADD_CI_0_g_array_11_0[0] ), .Y(I_31_0));
    NOR2A \S_DATA_RNIKEB3[3]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .Y(\next_state_6_i_0_0_a2_9_0[2] ));
    AO1 \next_state_RNO_2[4]  (.A(N_149), .B(\current_state[2]_net_1 ), 
        .C(N_67), .Y(next_state_6_4_1_1_0));
    NOR2B \W_count_RNO[4]  (.A(I_33_0), .B(N_37), .Y(\W_count_5[4] ));
    NOR3A \next_state_RNO_3[4]  (.A(N_145), .B(\S_DATA[4]_net_1 ), .C(
        \S_DATA[6]_net_1 ), .Y(N_143));
    MX2 \PWDATA_RNO[4]  (.A(\next_state[4]_net_1 ), .B(Q_net_0[4]), .S(
        PADDR23), .Y(\PWDATA_3[4] ));
    NOR3A \next_state_RNO_5[1]  (.A(\S_DATA[3]_net_1 ), .B(
        \S_DATA[6]_net_1 ), .C(N_135), .Y(\next_state_6_0_0_a2_0_0[1] )
        );
    NOR3A \W_count_RNIA5C41[2]  (.A(un4_next_state_3), .B(
        \W_count[3]_net_1 ), .C(\W_count[2]_net_1 ), .Y(
        un4_next_state_5));
    XOR2 un1_R_count_I_28 (.A(\DWACT_ADD_CI_0_partial_sum[5] ), .B(
        \DWACT_ADD_CI_0_g_array_12_1[0] ), .Y(I_28));
    AND2 un1_W_count_I_46 (.A(\DWACT_ADD_CI_0_pog_array_0_1_0[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_2_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_0[0] ));
    NOR3C \next_state_RNIAD9E1[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[2]_net_1 ), .C(un1_next_state_17_0), .Y(
        un1_next_state_17));
    OA1C \current_state_RNISTJC[0]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        \next_state_6_0_0_a2_1_0[1] ));
    DFN1C0 \current_state[2]  (.D(\next_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[2]_net_1 ));
    NOR2B \W_count_RNO[6]  (.A(I_31_0), .B(N_37), .Y(\W_count_5[6] ));
    DFN1C0 \W_count[1]  (.D(\W_count_5[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[1]_net_1 ));
    NOR3C \next_state_RNO_7[2]  (.A(N_130), .B(\S_DATA[6]_net_1 ), .C(
        N_99_1), .Y(\next_state_6_i_0_0_a2_5_0[2] ));
    OR3 \next_state_RNO_0[0]  (.A(\next_state_6_0_0_0[0] ), .B(N_120), 
        .C(\next_state_6_0_0_1[0] ), .Y(\next_state_6_0_0_3[0] ));
    DFN0C1 \ACK_count[3]  (.D(\ACK_count_3[3] ), .CLK(SCLO_int), .CLR(
        un1_current_state6_net_1), .Q(\ACK_count[3]_net_1 ));
    XOR2 un1_R_count_I_34 (.A(\DWACT_ADD_CI_0_partial_sum[7] ), .B(
        \DWACT_ADD_CI_0_g_array_12_2[0] ), .Y(I_34));
    XOR2 un1_R_count_I_29 (.A(\DWACT_ADD_CI_0_partial_sum[2] ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_29));
    XOR2 un1_R_count_I_19 (.A(\R_count[4]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[4] ));
    NOR2B \next_state_RNIAD9E1_1[1]  (.A(un1_next_state_13_2), .B(
        un1_next_state_13_1), .Y(un1_next_state_13));
    OR2 count_en_W_RNI643V8 (.A(PSEL6_4), .B(PSEL6_3), .Y(PSEL6));
    AO1 un1_R_count_I_44 (.A(\DWACT_ADD_CI_0_pog_array_0_5[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_6[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_2[0] ));
    AO1 \next_state_RNO[4]  (.A(next_state_6_4_1_a2_9_0_1), .B(N_53), 
        .C(next_state_6_4_1_1_0), .Y(\next_state_6[4] ));
    DFN1C0 \R_count[6]  (.D(\R_count_5[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[6]_net_1 ));
    OA1A \ACK_count_RNO[3]  (.A(ACK_count9_0), .B(\ACK_count[1]_net_1 )
        , .C(I_9_0), .Y(\ACK_count_3[3] ));
    NOR3C \next_state_RNO_3[1]  (.A(N_144), .B(
        \next_state_6_0_0_a2_0_0[1] ), .C(N_130), .Y(
        \next_state_6_0_0_a2_0_2[1] ));
    NOR2B \R_count_RNO[2]  (.A(I_29), .B(N_37), .Y(\R_count_5[2] ));
    OR2A un1_current_state6 (.A(PRESETN_c), .B(COREI2C_0_INT_0), .Y(
        un1_current_state6_net_1));
    NOR3C \next_state_RNO_0[4]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[1]_net_1 ), .C(N_136), .Y(
        next_state_6_4_1_a2_9_0_1));
    DFN1C0 \R_count[7]  (.D(\R_count_5[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[7]_net_1 ));
    NOR3A \next_state_RNO_0[1]  (.A(\next_state_6_0_0_a2_0_2[1] ), .B(
        N_132), .C(N_145), .Y(N_113));
    DFN1C0 \W_count[5]  (.D(\W_count_5[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[5]_net_1 ));
    OR2 RW_EN_RNO (.A(N_126), .B(RW_EN3), .Y(N_20));
    NOR2B \current_state_RNIR81L_0[0]  (.A(we_en_2_0_a2_3_a2_0), .B(
        N_130), .Y(we_en_2));
    NOR3C \next_state_RNO_10[2]  (.A(N_93), .B(\S_DATA[5]_net_1 ), .C(
        \next_state_6_i_0_0_a2_6_0[2] ), .Y(
        \next_state_6_i_0_0_a2_6_2[2] ));
    AO1 PENABLE_RNO (.A(un1_next_state_19_0), .B(un1_next_state_13_1), 
        .C(PENABLE5_3), .Y(PENABLE5));
    NOR3 \next_state_RNO[2]  (.A(\next_state_6_i_0_0_4[2] ), .B(
        \next_state_RNO_1[2]_net_1 ), .C(N_75), .Y(
        \next_state_RNO[2]_net_1 ));
    DFN1C0 \next_state[1]  (.D(\next_state_6[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[1]_net_1 ));
    OR3 count_en_W_RNIE02T3 (.A(un1_next_state_17), .B(PSEL6_0), .C(
        un1_next_state_13), .Y(PSEL6_3));
    NOR2B un4_ACK_count_1_I_6 (.A(\ACK_count[1]_net_1 ), .B(
        \ACK_count[0]_net_1 ), .Y(N_3));
    NOR2B RW_EN_RNO_0 (.A(\next_state_6_0_0_a2_3_0[0] ), .B(N_138), .Y(
        N_126));
    OA1 \next_state_RNO_1[2]  (.A(\next_state_6_i_0_0_a2_1[2] ), .B(
        \next_state_6_i_0_0_a2_5_0[2] ), .C(N_136), .Y(
        \next_state_RNO_1[2]_net_1 ));
    NOR2A \current_state_RNIT8D8_0[0]  (.A(\current_state[3]_net_1 ), 
        .B(\current_state[0]_net_1 ), .Y(N_138));
    OR3B \current_state_RNIQ5KV3[1]  (.A(un79_next_state_4), .B(
        un79_next_state_5), .C(\current_state[1]_net_1 ), .Y(N_45));
    XA1A \next_state_RNO_11[0]  (.A(\S_DATA[5]_net_1 ), .B(
        \S_DATA[4]_net_1 ), .C(\current_state[2]_net_1 ), .Y(N_140));
    OA1 PSEL_RNIDR913 (.A(PRDATA_iv_0[3]), .B(PRDATA_iv_1[3]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[3] ));
    XOR2 un1_R_count_I_30 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_30));
    AO1 un1_R_count_I_40 (.A(\DWACT_ADD_CI_0_pog_array_0_4[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_2[0] ));
    AO1 un1_W_count_I_41 (.A(\DWACT_ADD_CI_0_pog_array_1_1_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_2_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_0[0] ));
    XOR2 un1_R_count_I_26 (.A(\R_count[2]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[2] ));
    XOR2 un1_R_count_I_16 (.A(\R_count[3]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(
        \DWACT_ADD_CI_0_pog_array_0_2[0] ));
    OR3 \next_state_RNO[0]  (.A(\next_state_6_0_0_3[0] ), .B(N_116), 
        .C(N_121), .Y(\next_state_6[0] ));
    NOR3A \current_state_RNISTJC_2[0]  (.A(\current_state[3]_net_1 ), 
        .B(\current_state[0]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        count_en_R_2_0_a2_0));
    NOR2B count_en_R_RNIPLBU (.A(count_en_R_2), .B(count_en_R_net_1), 
        .Y(count_en_R_RNIPLBU_net_1));
    NOR2 \W_count_RNIR86I[4]  (.A(\W_count[4]_net_1 ), .B(
        \W_count[5]_net_1 ), .Y(un4_next_state_1));
    NOR2A \next_state_RNO_2[3]  (.A(N_138), .B(
        \current_state[4]_net_1 ), .Y(\next_state_6_0_0_a2_0[3] ));
    XOR2 un1_W_count_I_34 (.A(\DWACT_ADD_CI_0_partial_sum_0[7] ), .B(
        \DWACT_ADD_CI_0_g_array_12_2_0[0] ), .Y(I_34_0));
    XOR2 un1_W_count_I_27 (.A(\DWACT_ADD_CI_0_partial_sum_0[3] ), .B(
        \DWACT_ADD_CI_0_g_array_12_0[0] ), .Y(I_27_0));
    OR3 \next_state_RNO_1[4]  (.A(N_134), .B(N_133), .C(N_143), .Y(
        N_53));
    NOR3A \next_state_RNO_6[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(\current_state[4]_net_1 ), .Y(
        N_108));
    DFN1C0 \PADDR_1[3]  (.D(\PADDR_2[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PADDR[3]));
    NOR3C \PWDATA_RNO_1[2]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[2]_net_1 ), .C(\next_state[3]_net_1 ), .Y(
        un1_next_state_2));
    AO1 \next_state_RNO_11[2]  (.A(un4_next_state_5), .B(
        un4_next_state_4), .C(\S_DATA[4]_net_1 ), .Y(N_43));
    NOR3 \next_state_RNO_12[2]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        N_82));
    DFN1C0 \next_state[0]  (.D(\next_state_6[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[0]_net_1 ));
    DFN1C0 \PWDATA[4]  (.D(\PWDATA_3[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[4]));
    DFN1E1C0 \S_DATA[6]  (.D(\INA220_DATA_3[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[6]_net_1 ));
    NOR2B \PWDATA_RNO[7]  (.A(Q_net_0[7]), .B(PADDR23), .Y(
        \PWDATA_3[7] ));
    NOR2A \current_state_RNIVAD8_0[1]  (.A(\current_state[1]_net_1 ), 
        .B(\current_state[4]_net_1 ), .Y(N_130));
    NOR2B \next_state_RNO_5[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(\next_state_6_0_0_a2_1_0[3] ));
    NOR3A \next_state_RNI7RRP1_0[2]  (.A(un1_next_state_15_1), .B(
        \next_state[3]_net_1 ), .C(\next_state[2]_net_1 ), .Y(
        un1_next_state_15));
    XOR2 un1_W_count_I_25 (.A(\W_count[7]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[7] ));
    DFN1C0 \PWDATA[7]  (.D(\PWDATA_3[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[7]));
    XOR2 un1_W_count_I_23 (.A(\W_count[1]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[1] ));
    GND GND_i (.Y(GND));
    DFN1C0 \W_count[2]  (.D(N_18), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \W_count[2]_net_1 ));
    XOR2 un1_W_count_I_14 (.A(\W_count[4]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_3_0[0] ));
    DFN1E1C0 \S_DATA[2]  (.D(\INA220_DATA_3[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[2]_net_1 ));
    DFN1C0 \PWDATA[0]  (.D(\PWDATA_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[0]));
    NOR2A \next_state_RNIMN4N_1[1]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(un1_next_state_13_2));
    OR2 \current_state_RNISTJC[2]  (.A(N_24), .B(
        \current_state[2]_net_1 ), .Y(N_27));
    NOR2A \next_state_RNIAD9E1_2[1]  (.A(un1_next_state_13_2), .B(
        un1_next_state_13_1), .Y(N_282));
    MX2 \PWDATA_RNO[2]  (.A(PADDR25), .B(Q_net_0[2]), .S(PADDR23), .Y(
        \PWDATA_3[2] ));
    AND2 un1_W_count_I_6 (.A(\W_count[1]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_g_array_0_1_0[0] ));
    XOR2 un1_R_count_I_21 (.A(\R_count[6]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[6] ));
    NOR2A \S_DATA_RNI0815[3]  (.A(N_70_1), .B(\S_DATA[3]_net_1 ), .Y(
        N_133));
    XOR2 un1_W_count_I_30 (.A(\DWACT_ADD_CI_0_partial_sum_0[1] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_30_0));
    OR3 \next_state_RNO_9[2]  (.A(N_83), .B(N_82), .C(N_428), .Y(
        \next_state_6_i_0_0_1[2] ));
    NOR2B \next_state_RNO_2[0]  (.A(N_150), .B(
        \current_state[4]_net_1 ), .Y(N_121));
    NOR3A \W_count_RNIQLC41[7]  (.A(un4_next_state_1), .B(
        \W_count[6]_net_1 ), .C(\W_count[7]_net_1 ), .Y(
        un4_next_state_4));
    MX2A \PWDATA_RNO[6]  (.A(un1_PADDR22), .B(Q_net_0[6]), .S(PADDR23), 
        .Y(\PWDATA_3[6] ));
    NOR2A \next_state_RNO_4[3]  (.A(\current_state[2]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .Y(\next_state_6_0_0_a2_2_0[3] ));
    OR3 \next_state_RNO[3]  (.A(\next_state_6_0_0_1[3] ), .B(
        count_en_W_2), .C(N_111), .Y(\next_state_6[3] ));
    DFN1C0 PSEL (.D(PSEL_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        IIC_control_0_BIF_1_PSELx));
    DFN1C0 we_en (.D(we_en_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        we_en_net_1));
    DFN1C0 \R_count[3]  (.D(\R_count_5[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[3]_net_1 ));
    AO1 \PWDATA_RNO_0[5]  (.A(\PADDR_2_0_a5_1_0[3] ), .B(
        un1_next_state_11_0), .C(un1_next_state_15), .Y(PADDR21));
    NOR2B \PWDATA_RNO[3]  (.A(Q_net_0[3]), .B(PADDR23), .Y(
        \PWDATA_3[3] ));
    OA1 PSEL_RNIECR42 (.A(seradr0_m[2]), .B(PRDATA_0_iv_0[2]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[2] ));
    NOR3C \S_DATA_RNIFJEA2[5]  (.A(un4_next_state_4), .B(
        un4_next_state_5), .C(\S_DATA[5]_net_1 ), .Y(N_145));
    DFN1E1C0 \S_DATA[7]  (.D(\INA220_DATA_3[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[7]_net_1 ));
    AO1 un1_W_count_I_44 (.A(\DWACT_ADD_CI_0_pog_array_0_5_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_6_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_2_0[0] ));
    AND2 un1_W_count_I_10 (.A(\W_count[5]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_g_array_0_5_0[0] ));
    NOR2B PSEL_RNI3KND (.A(IIC_control_0_BIF_1_PSELx), .B(
        \current_state[0]_net_1 ), .Y(\INA220_DATA_3_0[0] ));
    NOR2A \next_state_RNO_14[2]  (.A(\S_DATA[7]_net_1 ), .B(
        \S_DATA[4]_net_1 ), .Y(\next_state_6_i_0_0_a2_6_0[2] ));
    NOR2B \next_state_RNIMN4N[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_16_1));
    DFN1E1C0 \S_DATA[5]  (.D(\INA220_DATA_3[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[5]_net_1 ));
    AND2 un1_W_count_I_8 (.A(\W_count[4]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_g_array_0_4_0[0] ));
    OR3B \next_state_RNO_6[0]  (.A(un4_next_state_4), .B(
        un4_next_state_5), .C(N_140), .Y(N_50));
    VCC VCC_i (.Y(VCC));
    AND2 un1_R_count_I_9 (.A(\R_count[6]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_6[0] ));
    DFN1C0 \W_count[4]  (.D(\W_count_5[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[4]_net_1 ));
    OR2 \current_state_RNILQR51[1]  (.A(N_150), .B(count_en_W_2), .Y(
        RW_EN3));
    DFN1E1C0 \INA220_DATA[4]  (.D(\INA220_DATA_3[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[4]));
    NOR3A \next_state_RNO_9[0]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(N_29), .Y(N_118));
    NOR2B \W_count_RNO[7]  (.A(I_34_0), .B(N_37), .Y(\W_count_5[7] ));
    NOR3A \R_count_RNI61NT1[7]  (.A(un79_next_state_1), .B(
        \R_count[6]_net_1 ), .C(\R_count[7]_net_1 ), .Y(
        un79_next_state_4));
    NOR2B \R_count_RNO[3]  (.A(I_27), .B(N_37), .Y(\R_count_5[3] ));
    AND2 un1_R_count_I_8 (.A(\R_count[4]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_4[0] ));
    DFN0C1 \ACK_count[2]  (.D(I_7_0), .CLK(SCLO_int), .CLR(
        un1_current_state6_net_1), .Q(\ACK_count[2]_net_1 ));
    XOR2 un1_W_count_I_12 (.A(\W_count[1]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_0[0] ));
    NOR3B \current_state_RNISTJC_0[0]  (.A(\current_state[2]_net_1 ), 
        .B(\current_state[0]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        N_139));
    NOR2B count_en_W_RNIULBU (.A(count_en_W_net_1), .B(count_en_W_2), 
        .Y(W_count_0_sqmuxa));
    AO1 un1_W_count_I_40 (.A(\DWACT_ADD_CI_0_pog_array_0_4_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_4_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_5_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_2_0[0] ));
    DFN1C0 \R_count[2]  (.D(\R_count_5[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[2]_net_1 ));
    DFN1E1C0 \INA220_DATA[6]  (.D(\INA220_DATA_3[6] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[6]));
    XOR2 un1_W_count_I_28 (.A(\DWACT_ADD_CI_0_partial_sum_0[5] ), .B(
        \DWACT_ADD_CI_0_g_array_12_1_0[0] ), .Y(I_28_0));
    AO1C \current_state_RNIMH2A1[0]  (.A(N_29), .B(N_139), .C(N_37), 
        .Y(un1_current_state_22));
    DFN1C0 count_en_R (.D(count_en_R_2), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(count_en_R_net_1));
    DFN1C0 \W_count[0]  (.D(\W_count_5[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[0]_net_1 ));
    NOR2B \PWDATA_RNO[0]  (.A(Q_net_0[0]), .B(PADDR23), .Y(
        \PWDATA_3[0] ));
    XOR2 un1_R_count_I_24 (.A(\R_count[0]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    XOR2 un1_R_count_I_14 (.A(\R_count[4]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(
        \DWACT_ADD_CI_0_pog_array_0_3[0] ));
    XOR2 un1_W_count_I_29 (.A(\DWACT_ADD_CI_0_partial_sum_0[2] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(I_29_0));
    XOR2 un4_ACK_count_1_I_9 (.A(N_2), .B(\ACK_count[3]_net_1 ), .Y(
        I_9_0));
    DFN1C0 PENABLE (.D(PENABLE5), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        IIC_control_0_BIF_1_PENABLE));
    NOR2 \next_state_RNIKL4N_0[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_16_0));
    XOR2 un4_ACK_count_1_I_5 (.A(\ACK_count[0]_net_1 ), .B(
        \ACK_count[1]_net_1 ), .Y(I_5_0));
    AO1A count_en_W_RNIQ5F01 (.A(\next_state[1]_net_1 ), .B(
        \next_state[4]_net_1 ), .C(count_en_W_net_1), .Y(PSEL6_0));
    DFN1C0 \PWDATA[1]  (.D(\PWDATA_3[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[1]));
    OA1 PSEL_RNIHV913 (.A(PRDATA_iv_0[4]), .B(PRDATA_iv_1[4]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[4] ));
    DFN1E1C0 \INA220_DATA[7]  (.D(\INA220_DATA_3[7] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[7]));
    OA1A \next_state_RNO_4[4]  (.A(\current_state[1]_net_1 ), .B(N_27), 
        .C(\current_state[4]_net_1 ), .Y(N_67));
    NOR2B \next_state_RNIAD9E1_0[1]  (.A(\PADDR_2_0_a5_1_0[3] ), .B(
        un1_next_state_13_1), .Y(N_284));
    NOR2B \R_count_RNO[5]  (.A(I_28), .B(N_37), .Y(\R_count_5[5] ));
    NOR2A \next_state_RNILM4N[0]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(un1_next_state_17_0));
    NOR2A \S_DATA_RNINHB3[6]  (.A(\S_DATA[5]_net_1 ), .B(
        \S_DATA[6]_net_1 ), .Y(N_70_1));
    OR3 \next_state_RNO[1]  (.A(N_113), .B(\next_state_6_0_0_0[1] ), 
        .C(N_115), .Y(\next_state_6[1] ));
    OR3 PENABLE_RNO_0 (.A(un1_next_state_17), .B(PENABLE5_1), .C(
        un1_next_state_18), .Y(PENABLE5_3));
    AO1 un1_R_count_I_35 (.A(\DWACT_ADD_CI_0_pog_array_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2[0] ));
    AO1 un1_R_count_I_45 (.A(\DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12[0] ));
    XOR2 un1_R_count_I_33 (.A(\DWACT_ADD_CI_0_partial_sum[4] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .Y(I_33));
    DFN1C0 \W_count[6]  (.D(\W_count_5[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[6]_net_1 ));
    AO1 un1_R_count_I_43 (.A(\DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1[0] ));
    DFN1C0 \R_count[1]  (.D(N_16), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \R_count[1]_net_1 ));
    NOR2 \PWDATA_RNO_1[5]  (.A(\next_state[4]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_11_0));
    OA1 \S_DATA_RNIEQFF2[6]  (.A(\S_DATA[6]_net_1 ), .B(N_132), .C(
        \next_state_6_i_0_0_a2_9_0[2] ), .Y(N_134));
    NOR3A \R_count_RNIMGMT1[2]  (.A(un79_next_state_3), .B(
        \R_count[2]_net_1 ), .C(\R_count[3]_net_1 ), .Y(
        un79_next_state_5));
    OA1 PSEL_RNITBA13 (.A(PRDATA_iv_0[7]), .B(PRDATA_iv_1[7]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[7] ));
    MX2 \W_count_RNO[2]  (.A(AFULL), .B(I_29_0), .S(N_37), .Y(N_18));
    NOR2B \R_count_RNO[6]  (.A(I_31), .B(N_37), .Y(\R_count_5[6] ));
    OR2A RE_RNO (.A(count_en_W_2), .B(count_en_W_net_1), .Y(
        W_count_1_sqmuxa));
    OR2A \current_state_RNIMH2A1_0[0]  (.A(N_37), .B(we_en_2), .Y(N_34)
        );
    DFN1C0 \W_count[3]  (.D(\W_count_5[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[3]_net_1 ));
    XOR2 un1_R_count_I_20 (.A(\R_count[3]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[3] ));
    AND2 un1_R_count_I_10 (.A(\R_count[5]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_5[0] ));
    OR3 \next_state_RNIO3125[2]  (.A(un1_next_state_18), .B(
        un1_next_state_15), .C(N_284), .Y(PSEL6_4));
    OA1 PSEL_RNIP7A13 (.A(PRDATA_iv_0[6]), .B(PRDATA_iv_1[6]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[6] ));
    NOR2B \current_state_RNIR81L[0]  (.A(count_en_R_2_0_a2_0), .B(
        N_130), .Y(count_en_R_2));
    NOR2B \R_count_RNO[4]  (.A(I_33), .B(N_37), .Y(\R_count_5[4] ));
    XOR2 un1_W_count_I_26 (.A(\W_count[2]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[2] ));
    NOR2B \next_state_RNO_3[2]  (.A(N_27), .B(\current_state[4]_net_1 )
        , .Y(N_77));
    NOR3B \current_state_RNISTJC_1[0]  (.A(\current_state[3]_net_1 ), 
        .B(\current_state[0]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        we_en_2_0_a2_3_a2_0));
    NOR2A \next_state_RNO_4[0]  (.A(\next_state_6_0_0_a2_3_0[0] ), .B(
        N_24), .Y(N_120));
    OR3 \PWDATA_RNO_0[6]  (.A(un1_PADDR22_0), .B(N_282), .C(PADDR22), 
        .Y(un1_PADDR22));
    NOR2A \next_state_RNIH3N21[2]  (.A(un1_next_state_13_2), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_6));
    DFN1C0 \next_state[4]  (.D(\next_state_6[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[4]_net_1 ));
    DFN1P0 WE (.D(WE_0_sqmuxa), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        WE_OUT));
    NOR2B \PWDATA_RNO[1]  (.A(Q_net_0[1]), .B(PADDR23), .Y(
        \PWDATA_3[1] ));
    MX2 \R_count_RNO[1]  (.A(AFULL), .B(I_30), .S(N_37), .Y(N_16));
    MX2 \next_state_RNO_6[1]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[4]_net_1 ), .S(\current_state[2]_net_1 ), .Y(
        N_60));
    NOR3C \next_state_RNO_1[0]  (.A(N_50), .B(
        \next_state_6_0_0_a2_0[0] ), .C(N_136), .Y(N_116));
    NOR2B \next_state_RNO_13[2]  (.A(N_139), .B(
        \current_state[1]_net_1 ), .Y(N_428));
    DFN1E1C0 \INA220_DATA[2]  (.D(\INA220_DATA_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[2]));
    XOR2 un4_ACK_count_1_I_7 (.A(N_3), .B(\ACK_count[2]_net_1 ), .Y(
        I_7_0));
    OR2 \next_state_RNO_4[2]  (.A(N_149), .B(\next_state_6_i_0_0_1[2] )
        , .Y(\next_state_6_i_0_0_2[2] ));
    XOR2 un1_R_count_I_22 (.A(\R_count[5]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[5] ));
    XOR2 un1_R_count_I_12 (.A(\R_count[1]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_pog_array_0[0] ));
    NOR2B \W_count_RNO[3]  (.A(I_27_0), .B(N_37), .Y(\W_count_5[3] ));
    NOR3 \S_DATA_RNILS05[0]  (.A(\S_DATA[0]_net_1 ), .B(
        \S_DATA[2]_net_1 ), .C(\S_DATA[1]_net_1 ), .Y(N_93));
    OR2 PSEL_RNO (.A(PSEL_2_1), .B(PSEL6), .Y(PSEL_2));
    OR2 \current_state_RNIVAD8[1]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[4]_net_1 ), .Y(N_29));
    AND2 un1_W_count_I_1 (.A(\W_count[0]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    OA1 PSEL_RNIB9R42 (.A(seradr0_m[1]), .B(PRDATA_0_iv_0[1]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[1] ));
    NOR2B \next_state_RNIKL4N[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_13_1));
    NOR3C \S_DATA_RNIEIEA2[4]  (.A(un4_next_state_4), .B(
        un4_next_state_5), .C(\S_DATA[4]_net_1 ), .Y(N_132));
    AO1 un1_W_count_I_35 (.A(\DWACT_ADD_CI_0_pog_array_1_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_1_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_0[0] ));
    XOR2 un1_W_count_I_33 (.A(\DWACT_ADD_CI_0_partial_sum_0[4] ), .B(
        \DWACT_ADD_CI_0_g_array_2_0[0] ), .Y(I_33_0));
    NOR2A \current_state_RNIUVJC[2]  (.A(\current_state[2]_net_1 ), .B(
        N_29), .Y(\next_state_6_0_0_a2_3_0[0] ));
    XOR2 un1_W_count_I_17 (.A(\W_count[5]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_4_0[0] ));
    DFN1C0 PWRITE (.D(PSEL6), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        IIC_control_0_BIF_1_PWRITE));
    AND2 un1_W_count_I_5 (.A(\W_count[2]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_g_array_0_2_0[0] ));
    DFN1C0 \R_count[4]  (.D(\R_count_5[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[4]_net_1 ));
    DFN1E1P0 RW_EN (.D(RW_EN3), .CLK(PCLK_c), .PRE(PRESETN_c), .E(N_20)
        , .Q(RW_EN_net_1));
    NOR2B \next_state_RNO_8[2]  (.A(N_130), .B(N_136), .Y(
        \next_state_6_i_0_0_a2_0_0[2] ));
    XOR2 un1_W_count_I_21 (.A(\W_count[6]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[6] ));
    AO1 PSEL_RNO_0 (.A(un1_next_state_16_1), .B(un1_next_state_16_0), 
        .C(PSEL_2_0), .Y(PSEL_2_1));
    OR2 \current_state_RNIT8D8[0]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(N_24));
    DFN1C0 \PWDATA[6]  (.D(\PWDATA_3[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[6]));
    OR2 \next_state_RNIRG0H2[2]  (.A(un1_next_state_6), .B(N_284), .Y(
        PADDR23));
    NOR3A \next_state_RNIG2N21_0[4]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[4]_net_1 ), .C(\next_state[1]_net_1 ), .Y(
        un1_next_state_15_1));
    AND2 un1_R_count_I_6 (.A(\R_count[1]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_1[0] ));
    NOR2B \W_count_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum_0[0] ), .B(
        N_37), .Y(\W_count_5[0] ));
    AO1 un1_R_count_I_38 (.A(\DWACT_ADD_CI_0_pog_array_0_2[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_3[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_1[0] ));
    DFN1E1C0 \INA220_DATA[3]  (.D(\INA220_DATA_3[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[3]));
    AND2 un1_W_count_I_7 (.A(\W_count[3]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_g_array_0_3_0[0] ));
    XOR2 un1_W_count_I_15 (.A(\W_count[6]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_5_0[0] ));
    AO1 \next_state_RNO_0[3]  (.A(\next_state_6_0_0_a2_0[3] ), .B(N_45)
        , .C(\next_state_6_0_0_0[3] ), .Y(\next_state_6_0_0_1[3] ));
    XOR2 un1_W_count_I_13 (.A(\W_count[2]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_1_0[0] ));
    NOR3A \S_DATA_RNIV9TA[7]  (.A(N_93), .B(\S_DATA[7]_net_1 ), .C(
        \current_state[0]_net_1 ), .Y(N_144));
    AND2 un1_R_count_I_49 (.A(\DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_4[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ));
    NOR2B \W_count_RNO[1]  (.A(I_30_0), .B(N_37), .Y(\W_count_5[1] ));
    AO1A \next_state_RNO_3[3]  (.A(N_29), .B(
        \next_state_6_0_0_a2_1_0[3] ), .C(N_108), .Y(
        \next_state_6_0_0_0[3] ));
    NOR3C \next_state_RNO_2[1]  (.A(N_144), .B(N_148), .C(N_99_1), .Y(
        N_115));
    AO1 \next_state_RNIQF0H2[0]  (.A(un1_next_state_19_0), .B(
        un1_next_state_13_1), .C(un1_next_state_5), .Y(PADDR22));
    OA1C \ACK_count_RNO[0]  (.A(ACK_count9_0), .B(\ACK_count[1]_net_1 )
        , .C(\ACK_count[0]_net_1 ), .Y(\ACK_count_3[0] ));
    AO1 \next_state_RNO_5[0]  (.A(\next_state_6_0_0_a2_1_0[1] ), .B(
        N_130), .C(N_119), .Y(\next_state_6_0_0_1[0] ));
    DFN1C0 \current_state[4]  (.D(\next_state[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[4]_net_1 ));
    NOR2A \S_DATA_RNILFB3[4]  (.A(\S_DATA[4]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .Y(N_99_1));
    AND2 un1_R_count_I_7 (.A(\R_count[3]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_3[0] ));
    DFN1E1C0 \INA220_DATA[0]  (.D(\INA220_DATA_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[0]));
    OR3 PENABLE_RNO_1 (.A(count_en_R_net_1), .B(count_en_W_net_1), .C(
        un1_next_state_3), .Y(PENABLE5_1));
    DFN1C0 \next_state[3]  (.D(\next_state_6[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[3]_net_1 ));
    AO1 count_en_R_RNI8QJN1 (.A(un1_next_state_16_1), .B(
        un1_next_state_16_0), .C(count_en_R_net_1), .Y(un1_PADDR22_0));
    AO1 un1_W_count_I_45 (.A(\DWACT_ADD_CI_0_pog_array_0_1_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_2_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_0[0] ));
    AO1 un1_W_count_I_43 (.A(\DWACT_ADD_CI_0_pog_array_0_3_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_4_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1_0[0] ));
    NOR2B \next_state_RNO_7[1]  (.A(\S_DATA[4]_net_1 ), .B(
        \S_DATA[5]_net_1 ), .Y(N_135));
    DFN1C0 \R_count[0]  (.D(\R_count_5[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[0]_net_1 ));
    DFN1C0 \current_state[0]  (.D(\next_state[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[0]_net_1 ));
    NOR2A \ACK_count_RNI7EO1[3]  (.A(\ACK_count[3]_net_1 ), .B(
        \ACK_count[2]_net_1 ), .Y(ACK_count9_0));
    NOR2B \W_count_RNO[5]  (.A(I_28_0), .B(N_37), .Y(\W_count_5[5] ));
    DFN1C0 \W_count[7]  (.D(\W_count_5[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\W_count[7]_net_1 ));
    NOR3C \next_state_RNO_6[2]  (.A(N_130), .B(N_70_1), .C(N_43), .Y(
        \next_state_6_i_0_0_a2_1[2] ));
    DFN1E1C0 \S_DATA[1]  (.D(\INA220_DATA_3[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[1]_net_1 ));
    DFN1E1C0 \INA220_DATA[1]  (.D(\INA220_DATA_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[1]));
    DFN1E1C0 \S_DATA[0]  (.D(\INA220_DATA_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[0]_net_1 ));
    AO1 un1_R_count_I_36 (.A(\DWACT_ADD_CI_0_pog_array_0[0] ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .C(\DWACT_ADD_CI_0_g_array_0_1[0] ), 
        .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    AND2 un1_R_count_I_46 (.A(\DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_2[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1[0] ));
    AND2 un1_R_count_I_1 (.A(\R_count[0]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    AO1 un1_W_count_I_38 (.A(\DWACT_ADD_CI_0_pog_array_0_2_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_2_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_3_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_1_0[0] ));
    OR2 \PWDATA_RNO_0[2]  (.A(un1_next_state_2), .B(un1_next_state_13), 
        .Y(PADDR25));
    OR2 \current_state_RNIR81L[2]  (.A(N_27), .B(N_29), .Y(N_37));
    OR3 \next_state_RNO_0[2]  (.A(N_77), .B(\next_state_6_i_0_0_2[2] ), 
        .C(N_101), .Y(\next_state_6_i_0_0_4[2] ));
    DFN1E1C0 \S_DATA[3]  (.D(\INA220_DATA_3[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[3]_net_1 ));
    DFN1C0 \PWDATA[5]  (.D(\PWDATA_3[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[5]));
    OA1 PSEL_RNI86R42 (.A(seradr0_m[0]), .B(PRDATA_0_iv_0[0]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[0] ));
    XOR2 un1_W_count_I_24 (.A(\W_count[0]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[0] ));
    XOR2 un1_R_count_I_27 (.A(\DWACT_ADD_CI_0_partial_sum[3] ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_27));
    XOR2 un1_R_count_I_17 (.A(\R_count[5]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(
        \DWACT_ADD_CI_0_pog_array_0_4[0] ));
    NOR2A \next_state_RNIMN4N_0[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(\PADDR_2_0_a5_1_0[3] ));
    NOR3B \next_state_RNO_5[2]  (.A(\next_state_6_i_0_0_a2_6_2[2] ), 
        .B(N_148), .C(N_24), .Y(N_101));
    NOR2 \W_count_RNIJ06I[0]  (.A(\W_count[0]_net_1 ), .B(
        \W_count[1]_net_1 ), .Y(un4_next_state_3));
    AND2 un1_R_count_I_5 (.A(\R_count[2]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_2[0] ));
    AX1 OUT_EN_RNO (.A(\ACK_count[1]_net_1 ), .B(ACK_count9_0), .C(
        RW_EN_net_1), .Y(N_274_i));
    OR3 \PADDR_1_RNO[3]  (.A(un1_PADDR22_0), .B(N_282), .C(N_284), .Y(
        \PADDR_2[3] ));
    DFN0C1 \ACK_count[0]  (.D(\ACK_count_3[0] ), .CLK(SCLO_int), .CLR(
        un1_current_state6_net_1), .Q(\ACK_count[0]_net_1 ));
    DFN1E1C0 \INA220_DATA[5]  (.D(\INA220_DATA_3[5] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_34), .Q(INA220_DATA_2[5]));
    NOR2 \R_count_RNI96RU[0]  (.A(\R_count[1]_net_1 ), .B(
        \R_count[0]_net_1 ), .Y(un79_next_state_3));
    NOR2 \current_state_RNIQHQG[1]  (.A(N_27), .B(
        \current_state[1]_net_1 ), .Y(N_150));
    DFN1C0 \current_state[1]  (.D(\next_state[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[1]_net_1 ));
    OA1 PSEL_RNIL3A13 (.A(PRDATA_iv_0[5]), .B(PRDATA_iv_1[5]), .C(
        \INA220_DATA_3_0[0] ), .Y(\INA220_DATA_3[5] ));
    NOR3A \next_state_RNI7RRP1[2]  (.A(un1_next_state_18_1), .B(
        \next_state[3]_net_1 ), .C(\next_state[2]_net_1 ), .Y(
        un1_next_state_18));
    XOR2 un1_R_count_I_25 (.A(\R_count[7]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[7] ));
    XOR2 un1_R_count_I_15 (.A(\R_count[6]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(
        \DWACT_ADD_CI_0_pog_array_0_5[0] ));
    NOR3B \S_DATA_RNIKQOB[3]  (.A(N_130), .B(\S_DATA[6]_net_1 ), .C(
        \S_DATA[3]_net_1 ), .Y(N_148));
    XOR2 un1_R_count_I_23 (.A(\R_count[1]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    XOR2 un1_R_count_I_13 (.A(\R_count[2]_net_1 ), .B(
        count_en_R_RNIPLBU_net_1), .Y(
        \DWACT_ADD_CI_0_pog_array_0_1[0] ));
    AO1A PSEL_RNO_1 (.A(\next_state[1]_net_1 ), .B(un1_next_state_8_0), 
        .C(count_en_R_net_1), .Y(PSEL_2_0));
    XOR2 un1_W_count_I_19 (.A(\W_count[4]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[4] ));
    AO1 \next_state_RNO_3[0]  (.A(\next_state_6_0_0_a2_0_0[0] ), .B(
        N_138), .C(N_118), .Y(\next_state_6_0_0_0[0] ));
    AND3 un4_ACK_count_1_I_8 (.A(\ACK_count[0]_net_1 ), .B(
        \ACK_count[1]_net_1 ), .C(\ACK_count[2]_net_1 ), .Y(N_2));
    AO1 \next_state_RNO_1[1]  (.A(\next_state_6_0_0_a2_1_0[1] ), .B(
        N_130), .C(N_112), .Y(\next_state_6_0_0_0[1] ));
    NOR2 \next_state_RNIMN4N_2[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_19_0));
    NOR3A \next_state_RNIG2N21[4]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[4]_net_1 ), .Y(
        un1_next_state_18_1));
    DFN1E1C0 \S_DATA[4]  (.D(\INA220_DATA_3[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_current_state_22), .Q(\S_DATA[4]_net_1 ));
    DFN0P0 OUT_EN_inst_1 (.D(N_274_i), .CLK(SCLO_int), .PRE(PRESETN_c), 
        .Q(OUT_EN));
    DFN1C0 \current_state[3]  (.D(\next_state[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[3]_net_1 ));
    XOR2 un1_R_count_I_31 (.A(\DWACT_ADD_CI_0_partial_sum[6] ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .Y(I_31));
    XOR2 un1_W_count_I_20 (.A(\W_count[3]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[3] ));
    AO1 un1_R_count_I_41 (.A(\DWACT_ADD_CI_0_pog_array_1_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11[0] ));
    NOR3A \S_DATA_RNIVV3F[7]  (.A(N_93), .B(\S_DATA[7]_net_1 ), .C(
        N_24), .Y(N_136));
    DFN1C0 \PWDATA[2]  (.D(\PWDATA_3[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[2]));
    NOR2 \R_count_RNIHERU[4]  (.A(\R_count[5]_net_1 ), .B(
        \R_count[4]_net_1 ), .Y(un79_next_state_1));
    NOR2B \R_count_RNO[7]  (.A(I_34), .B(N_37), .Y(\R_count_5[7] ));
    AO1 un1_W_count_I_36 (.A(\DWACT_ADD_CI_0_pog_array_0_0[0] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_1_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_0[0] ));
    AND2 un1_W_count_I_9 (.A(\W_count[6]_net_1 ), .B(W_count_0_sqmuxa), 
        .Y(\DWACT_ADD_CI_0_g_array_0_6_0[0] ));
    NOR2B \current_state_RNIR81L_1[0]  (.A(N_139), .B(N_130), .Y(
        count_en_W_2));
    AND2 un1_W_count_I_49 (.A(\DWACT_ADD_CI_0_pog_array_0_3_0[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_4_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_1_0[0] ));
    DFN1C0 \PWDATA[3]  (.D(\PWDATA_3[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(IIC_control_0_BIF_1_PWDATA[3]));
    AOI1B \next_state_RNO_10[0]  (.A(un4_next_state_5), .B(
        un4_next_state_4), .C(N_83), .Y(N_119));
    NOR2A PSEL_RNO_2 (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_8_0));
    DFN1C0 \PADDR_1[2]  (.D(PADDR22), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(IIC_control_0_BIF_1_PADDR[2]));
    AOI1 \next_state_RNO_8[0]  (.A(un79_next_state_5), .B(
        un79_next_state_4), .C(\current_state[4]_net_1 ), .Y(
        \next_state_6_0_0_a2_0_0[0] ));
    OA1 \next_state_RNO_2[2]  (.A(N_134), .B(N_133), .C(
        \next_state_6_i_0_0_a2_0_0[2] ), .Y(N_75));
    XOR2 un1_W_count_I_22 (.A(\W_count[5]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_partial_sum_0[5] ));
    NOR2A \current_state_RNINE184[1]  (.A(N_138), .B(N_45), .Y(N_149));
    NOR3A \next_state_RNIG2N21[0]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[3]_net_1 ), .Y(
        un1_next_state_5));
    NOR2B \R_count_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        N_37), .Y(\R_count_5[0] ));
    XOR2 un1_W_count_I_16 (.A(\W_count[3]_net_1 ), .B(W_count_0_sqmuxa)
        , .Y(\DWACT_ADD_CI_0_pog_array_0_2_0[0] ));
    NOR3A \next_state_RNO_4[1]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .C(N_60), .Y(N_112));
    DFI1P0 RE (.D(W_count_1_sqmuxa), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .QN(WEAP));
    DFN1C0 \R_count[5]  (.D(\R_count_5[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\R_count[5]_net_1 ));
    DFN1C0 \next_state[2]  (.D(\next_state_RNO[2]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\next_state[2]_net_1 ));
    
endmodule


module Top_0_COREUART_1_Clock_gen_0s_0s(
       PRESETN_c,
       PCLK_c,
       baud_clock
    );
input  PRESETN_c;
input  PCLK_c;
output baud_clock;

    wire baud_cntr_25_0, \baud_cntr[11] , baud_cntr_c10, 
        baud_cntr8_10_2, baud_cntr8_10_1, \baud_cntr[4] , 
        \baud_cntr[7] , \baud_cntr[5] , \baud_cntr[6] , baud_cntr8_10, 
        baud_cntr_c3, baud_cntr8, baud_cntr8_3, \baud_cntr_RNO_0[12] , 
        \baud_cntr[12] , \baud_cntr_RNO_0[11] , \baud_cntr_RNO_0[10] , 
        baud_cntr_c9, \baud_cntr[10] , \baud_cntr_RNO_0[9] , 
        baud_cntr_c8, \baud_cntr[9] , \baud_cntr_RNO_0[7] , 
        baud_cntr_15_0, \baud_cntr_RNO_0[5] , baud_cntr_c4, 
        \baud_cntr_RNO_0[4] , \baud_cntr_RNO_0[3] , baud_cntr_c2, 
        \baud_cntr[3] , \baud_cntr_RNO_0[1] , \baud_cntr[0] , 
        \baud_cntr[1] , \baud_cntr[8] , baud_cntr_c1, \baud_cntr[2] , 
        \baud_cntr_i[0] , baud_cntr_c5, baud_cntr8_2, 
        \baud_cntr_RNO_0[8] , \baud_cntr_RNO_0[6] , 
        \baud_cntr_RNO_0[2] , xmit_cntr_e0, \xmit_cntr[0]_net_1 , 
        xmit_cntr_n1, \xmit_cntr[1]_net_1 , xmit_cntr_n2, xmit_cntr_c1, 
        \xmit_cntr[2]_net_1 , xmit_cntr_n3, \xmit_cntr[3]_net_1 , GND, 
        VCC;
    
    DFN1C0 \genblk1.baud_cntr[4]  (.D(\baud_cntr_RNO_0[4] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[4] ));
    AX1C \xmit_cntr_RNO[3]  (.A(\xmit_cntr[2]_net_1 ), .B(xmit_cntr_c1)
        , .C(\xmit_cntr[3]_net_1 ), .Y(xmit_cntr_n3));
    DFN1C0 \genblk1.baud_cntr[1]  (.D(\baud_cntr_RNO_0[1] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[1] ));
    DFN1C0 \genblk1.baud_cntr[3]  (.D(\baud_cntr_RNO_0[3] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[3] ));
    DFN1E1C0 \xmit_cntr[3]  (.D(xmit_cntr_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[3]_net_1 ));
    OR2A \genblk1.baud_cntr_RNIR6E12[8]  (.A(baud_cntr8_10), .B(
        \baud_cntr[8] ), .Y(baud_cntr_c8));
    OR2 \genblk1.baud_cntr_RNIJ9HO2[10]  (.A(baud_cntr_c9), .B(
        \baud_cntr[10] ), .Y(baud_cntr_c10));
    XOR2 \xmit_cntr_RNO[2]  (.A(xmit_cntr_c1), .B(\xmit_cntr[2]_net_1 )
        , .Y(xmit_cntr_n2));
    AX1B \genblk1.baud_cntr_RNO[3]  (.A(baud_cntr_c2), .B(baud_cntr8), 
        .C(\baud_cntr[3] ), .Y(\baud_cntr_RNO_0[3] ));
    DFN1C0 \genblk1.baud_cntr[9]  (.D(\baud_cntr_RNO_0[9] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[9] ));
    DFN1C0 \genblk1.baud_clock_int  (.D(baud_cntr8), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(baud_clock));
    XO1A \genblk1.baud_cntr_RNO[2]  (.A(\baud_cntr[2] ), .B(
        baud_cntr_c1), .C(baud_cntr8), .Y(\baud_cntr_RNO_0[2] ));
    VCC VCC_i (.Y(VCC));
    AX1B \genblk1.baud_cntr_RNO[9]  (.A(baud_cntr_c8), .B(baud_cntr8), 
        .C(\baud_cntr[9] ), .Y(\baud_cntr_RNO_0[9] ));
    INV \genblk1.baud_cntr_RNO[0]  (.A(\baud_cntr[0] ), .Y(
        \baud_cntr_i[0] ));
    XOR2 \xmit_cntr_RNO[1]  (.A(\xmit_cntr[0]_net_1 ), .B(
        \xmit_cntr[1]_net_1 ), .Y(xmit_cntr_n1));
    AX1B \genblk1.baud_cntr_RNO[5]  (.A(baud_cntr_c4), .B(baud_cntr8), 
        .C(\baud_cntr[5] ), .Y(\baud_cntr_RNO_0[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[7]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .Y(baud_cntr_15_0));
    DFN1C0 \genblk1.baud_cntr[7]  (.D(\baud_cntr_RNO_0[7] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[7] ));
    NOR3A \genblk1.baud_cntr_RNI2F0U1[9]  (.A(baud_cntr8_2), .B(
        \baud_cntr[10] ), .C(\baud_cntr[9] ), .Y(baud_cntr8_3));
    DFN1C0 \genblk1.baud_cntr[5]  (.D(\baud_cntr_RNO_0[5] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[12]  (.A(\baud_cntr[11] ), .B(
        baud_cntr_c10), .Y(baud_cntr_25_0));
    NOR3A \genblk1.baud_cntr_RNIIU2T[7]  (.A(baud_cntr8_10_1), .B(
        \baud_cntr[4] ), .C(\baud_cntr[7] ), .Y(baud_cntr8_10_2));
    DFN1C0 \genblk1.baud_cntr[8]  (.D(\baud_cntr_RNO_0[8] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[8] ));
    GND GND_i (.Y(GND));
    DFN1C0 \genblk1.baud_cntr[0]  (.D(\baud_cntr_i[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\baud_cntr[0] ));
    NOR3 \genblk1.baud_cntr_RNIACT61[12]  (.A(\baud_cntr[8] ), .B(
        \baud_cntr[12] ), .C(\baud_cntr[11] ), .Y(baud_cntr8_2));
    NOR2B \xmit_cntr_RNI7E0S[1]  (.A(\xmit_cntr[0]_net_1 ), .B(
        \xmit_cntr[1]_net_1 ), .Y(xmit_cntr_c1));
    AXO1 \genblk1.baud_cntr_RNO[8]  (.A(baud_cntr8_3), .B(
        \baud_cntr[8] ), .C(baud_cntr8_10), .Y(\baud_cntr_RNO_0[8] ));
    XOR2 \xmit_cntr_RNO[0]  (.A(\xmit_cntr[0]_net_1 ), .B(baud_clock), 
        .Y(xmit_cntr_e0));
    NOR2B \genblk1.baud_cntr_RNIMR5O3[9]  (.A(baud_cntr8_3), .B(
        baud_cntr8_10), .Y(baud_cntr8));
    AX1B \genblk1.baud_cntr_RNO[7]  (.A(baud_cntr8), .B(baud_cntr_15_0)
        , .C(\baud_cntr[7] ), .Y(\baud_cntr_RNO_0[7] ));
    OR2 \genblk1.baud_cntr_RNI32N82[9]  (.A(baud_cntr_c8), .B(
        \baud_cntr[9] ), .Y(baud_cntr_c9));
    XO1A \genblk1.baud_cntr_RNO[6]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .C(baud_cntr8), .Y(\baud_cntr_RNO_0[6] ));
    DFN1E1C0 \xmit_cntr[2]  (.D(xmit_cntr_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[2]_net_1 ));
    OR2 \genblk1.baud_cntr_RNIV4HE[1]  (.A(\baud_cntr[0] ), .B(
        \baud_cntr[1] ), .Y(baud_cntr_c1));
    DFN1C0 \genblk1.baud_cntr[10]  (.D(\baud_cntr_RNO_0[10] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[10] ));
    NOR2 \genblk1.baud_cntr_RNI9FHE[5]  (.A(\baud_cntr[5] ), .B(
        \baud_cntr[6] ), .Y(baud_cntr8_10_1));
    OR2 \genblk1.baud_cntr_RNI0PPL[2]  (.A(baud_cntr_c1), .B(
        \baud_cntr[2] ), .Y(baud_cntr_c2));
    OR2 \genblk1.baud_cntr_RNI2E2T[3]  (.A(baud_cntr_c2), .B(
        \baud_cntr[3] ), .Y(baud_cntr_c3));
    DFN1C0 \genblk1.baud_cntr[6]  (.D(\baud_cntr_RNO_0[6] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[6] ));
    OR2 \genblk1.baud_cntr_RNI54B41[4]  (.A(baud_cntr_c3), .B(
        \baud_cntr[4] ), .Y(baud_cntr_c4));
    AX1B \genblk1.baud_cntr_RNO[12]  (.A(baud_cntr8), .B(
        baud_cntr_25_0), .C(\baud_cntr[12] ), .Y(\baud_cntr_RNO_0[12] )
        );
    DFN1C0 \genblk1.baud_cntr[12]  (.D(\baud_cntr_RNO_0[12] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[12] ));
    DFN1E1C0 \xmit_cntr[1]  (.D(xmit_cntr_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[1]_net_1 ));
    AX1B \genblk1.baud_cntr_RNO[4]  (.A(baud_cntr_c3), .B(baud_cntr8), 
        .C(\baud_cntr[4] ), .Y(\baud_cntr_RNO_0[4] ));
    NOR2A \genblk1.baud_cntr_RNIKC5Q1[7]  (.A(baud_cntr8_10_2), .B(
        baud_cntr_c3), .Y(baud_cntr8_10));
    OR2 \genblk1.baud_cntr_RNI9RJB1[5]  (.A(baud_cntr_c4), .B(
        \baud_cntr[5] ), .Y(baud_cntr_c5));
    DFN1C0 \genblk1.baud_cntr[2]  (.D(\baud_cntr_RNO_0[2] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[2] ));
    AX1B \genblk1.baud_cntr_RNO[10]  (.A(baud_cntr_c9), .B(baud_cntr8), 
        .C(\baud_cntr[10] ), .Y(\baud_cntr_RNO_0[10] ));
    DFN1C0 \xmit_cntr[0]  (.D(xmit_cntr_e0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\xmit_cntr[0]_net_1 ));
    DFN1C0 \genblk1.baud_cntr[11]  (.D(\baud_cntr_RNO_0[11] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[11] ));
    AX1B \genblk1.baud_cntr_RNO[11]  (.A(baud_cntr_c10), .B(baud_cntr8)
        , .C(\baud_cntr[11] ), .Y(\baud_cntr_RNO_0[11] ));
    AX1B \genblk1.baud_cntr_RNO[1]  (.A(\baud_cntr[0] ), .B(baud_cntr8)
        , .C(\baud_cntr[1] ), .Y(\baud_cntr_RNO_0[1] ));
    
endmodule


module Top_0_COREUART_1_fifo_256x8_pa3_1(
       rx_byte,
       DO_0,
       rx_state,
       PRESETN_c,
       PCLK_c,
       rx_dout_reg_empty,
       fifo_write,
       next_rx_state4
    );
input  [7:0] rx_byte;
output [7:0] DO_0;
input  [1:0] rx_state;
input  PRESETN_c;
input  PCLK_c;
input  rx_dout_reg_empty;
input  fifo_write;
output next_rx_state4;

    wire WEAP, fifo_write_rx_1, fifo_full_rx, fifo_empty_rx, AEMPTY, 
        FIFOBLOCK0_FULL_1, FIFOBLOCK0_RD8_1, FIFOBLOCK0_RD9_1, 
        FIFOBLOCK0_RD10_1, FIFOBLOCK0_RD11_1, FIFOBLOCK0_RD12_1, 
        FIFOBLOCK0_RD13_1, FIFOBLOCK0_RD14_1, FIFOBLOCK0_RD15_1, 
        FIFOBLOCK0_RD16_1, FIFOBLOCK0_RD17_1, 
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND, 
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC;
    
    OR2 FIFOBLOCK0_RNO_0 (.A(fifo_full_rx), .B(fifo_write), .Y(
        fifo_write_rx_1));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL10(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL9(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL8(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL7(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL6(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL5(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL4(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL3(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AEVAL2(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL1(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AEVAL0(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AFVAL11(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AFVAL10(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL9(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL8(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL7(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL6(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL5(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL4(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL3(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .AFVAL2(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AFVAL1(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .AFVAL0(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD17(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD16(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD15(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD14(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD13(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD12(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD11(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD10(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD9(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD8(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WD7(rx_byte[7]), .WD6(
        rx_byte[6]), .WD5(rx_byte[5]), .WD4(rx_byte[4]), .WD3(
        rx_byte[3]), .WD2(rx_byte[2]), .WD1(rx_byte[1]), .WD0(
        rx_byte[0]), .WW0(Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .WW1(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .WW2(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .RW0(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .RW1(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .RW2(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .RPIPE(
        Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WEN(fifo_write_rx_1), 
        .REN(WEAP), .WBLK(Top_0_COREUART_1_fifo_256x8_pa3_1_GND), 
        .RBLK(Top_0_COREUART_1_fifo_256x8_pa3_1_GND), .WCLK(PCLK_c), 
        .RCLK(PCLK_c), .RESET(PRESETN_c), .ESTOP(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .FSTOP(
        Top_0_COREUART_1_fifo_256x8_pa3_1_VCC), .RD17(
        FIFOBLOCK0_RD17_1), .RD16(FIFOBLOCK0_RD16_1), .RD15(
        FIFOBLOCK0_RD15_1), .RD14(FIFOBLOCK0_RD14_1), .RD13(
        FIFOBLOCK0_RD13_1), .RD12(FIFOBLOCK0_RD12_1), .RD11(
        FIFOBLOCK0_RD11_1), .RD10(FIFOBLOCK0_RD10_1), .RD9(
        FIFOBLOCK0_RD9_1), .RD8(FIFOBLOCK0_RD8_1), .RD7(DO_0[7]), .RD6(
        DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), .RD3(DO_0[3]), .RD2(
        DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), .FULL(
        FIFOBLOCK0_FULL_1), .AFULL(fifo_full_rx), .EMPTY(fifo_empty_rx)
        , .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(Top_0_COREUART_1_fifo_256x8_pa3_1_VCC));
    NOR3A FIFOBLOCK0_RNO (.A(next_rx_state4), .B(rx_state[0]), .C(
        rx_state[1]), .Y(WEAP));
    NOR2A FIFOBLOCK0_RNIQ3BO (.A(rx_dout_reg_empty), .B(fifo_empty_rx), 
        .Y(next_rx_state4));
    GND GND_i (.Y(Top_0_COREUART_1_fifo_256x8_pa3_1_GND));
    
endmodule


module Top_0_COREUART_1_fifo_256x8_0s_4294967295s_0(
       rx_state,
       rx_byte,
       rx_dout,
       next_rx_state4,
       fifo_write,
       rx_dout_reg_empty,
       PRESETN_c,
       PCLK_c
    );
input  [1:0] rx_state;
input  [7:0] rx_byte;
output [7:0] rx_dout;
output next_rx_state4;
input  fifo_write;
input  rx_dout_reg_empty;
input  PRESETN_c;
input  PCLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(PCLK_c), .Q(rx_dout[2]));
    Top_0_COREUART_1_fifo_256x8_pa3_1 Top_0_COREUART_1_fifo_256x8_pa3 
        (.rx_byte({rx_byte[7], rx_byte[6], rx_byte[5], rx_byte[4], 
        rx_byte[3], rx_byte[2], rx_byte[1], rx_byte[0]}), .DO_0({
        \DO_0[7] , \DO_0[6] , \DO_0[5] , \DO_0[4] , \DO_0[3] , 
        \DO_0[2] , \DO_0[1] , \DO_0[0] }), .rx_state({rx_state[1], 
        rx_state[0]}), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), 
        .rx_dout_reg_empty(rx_dout_reg_empty), .fifo_write(fifo_write), 
        .next_rx_state4(next_rx_state4));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(PCLK_c), .Q(rx_dout[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(PCLK_c), .Q(rx_dout[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(PCLK_c), .Q(rx_dout[1]));
    VCC VCC_i (.Y(VCC));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(PCLK_c), .Q(rx_dout[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(PCLK_c), .Q(rx_dout[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(PCLK_c), .Q(rx_dout[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(PCLK_c), .Q(rx_dout[6]));
    
endmodule


module Top_0_COREUART_1_Rx_async_0s_1s_0s_1s_2s_3s(
       rx_byte,
       TX_c,
       PRESETN_c,
       PCLK_c,
       fifo_write,
       baud_clock
    );
output [7:0] rx_byte;
input  TX_c;
input  PRESETN_c;
input  PCLK_c;
output fifo_write;
input  baud_clock;

    wire N_56, \last_bit_0_i_a2_1[0] , \last_bit_0_i_a2_0[0] , N_163_1, 
        N_218, N_57, N_58, N_26, \receive_count[0]_net_1 , 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , receive_count_e2_i_0, 
        \receive_count[2]_net_1 , N_41, receive_count_e1_i_0, 
        \receive_count[1]_net_1 , rx_byte_1_sqmuxa_0_a4_0_a2_0, 
        rx_byte_1_sqmuxa_1, \receive_count[3]_net_1 , 
        receive_count8_i_i_0_a2_0_0, clear_parity_en_9_0_a2_0, 
        \rx_bit_cnt[3]_net_1 , \rx_bit_cnt[2]_net_1 , rx_state19_NE_0, 
        \rx_bit_cnt[1]_net_1 , receive_count8_i_i_0_a2_0_4_1, 
        receive_count8_i_i_0_a2_0_4_0, m13_0, N_31_mux, N_14, N_40, 
        N_16, \rx_bit_cnt[0]_net_1 , clear_parity_en_9, N_67, N_22, 
        N_24, rx_byte_1_sqmuxa, rx_state19_i, N_46_i, N_289, N_48_i, 
        \last_bit[0]_net_1 , \last_bit_RNO_0[0] , N_20, N_59, N_36, 
        N_287, \samples[2]_net_1 , \samples[1]_net_1 , i5_mux, i6_mux, 
        N_19, N_25, N_23, \samples[0]_net_1 , N_42, rx_bit_cnte, N_216, 
        N_12, N_51, i3_mux, N_277, \rx_shift_11[6] , 
        \rx_shift[7]_net_1 , \rx_shift_11[5] , \rx_shift[6]_net_1 , 
        \rx_shift_11[4] , \rx_shift[5]_net_1 , \rx_shift_11[3] , 
        \rx_shift[4]_net_1 , \rx_shift_11[2] , \rx_shift[3]_net_1 , 
        \rx_shift_11[1] , \rx_shift[2]_net_1 , \rx_shift_11[0] , 
        \rx_shift[1]_net_1 , \rx_shift[0]_net_1 , GND, VCC;
    
    MX2A \rx_state_RNO_1[0]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_23));
    NOR2A \rx_shift_RNO[5]  (.A(\rx_shift[6]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[5] ));
    DFN1E1P0 \samples[0]  (.D(\samples[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(baud_clock), .Q(\samples[0]_net_1 ));
    NOR3C \rx_state_RNO_2[0]  (.A(\rx_state[1]_net_1 ), .B(
        \receive_count[3]_net_1 ), .C(m13_0), .Y(N_31_mux));
    DFN1E1C0 \rx_shift[2]  (.D(\rx_shift_11[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[2]_net_1 ));
    NOR2A \samples_RNINO5E1[0]  (.A(N_163_1), .B(N_36), .Y(N_57));
    OR3 \rx_state_RNI5RU62[0]  (.A(N_57), .B(N_58), .C(N_56), .Y(N_218)
        );
    NOR2A \rx_shift_RNO[3]  (.A(\rx_shift[4]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[3] ));
    DFN1E1C0 \rx_byte[0]  (.D(\rx_shift[0]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[0]));
    DFN1C0 \receive_count[1]  (.D(N_24), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[1]_net_1 ));
    NOR2B \rx_state_RNO_0[1]  (.A(\rx_state[0]_net_1 ), .B(baud_clock), 
        .Y(N_289));
    NOR2A \rx_state_RNI16JC[1]  (.A(baud_clock), .B(
        \rx_state[1]_net_1 ), .Y(rx_byte_1_sqmuxa_1));
    DFN1E1C0 \rx_shift[7]  (.D(N_216), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_shift[7]_net_1 ));
    NOR3C \receive_count_RNI7HCC[1]  (.A(\last_bit_0_i_a2_1[0] ), .B(
        \last_bit_0_i_a2_0[0] ), .C(N_163_1), .Y(N_56));
    OR3C fifo_write_RNO (.A(clear_parity_en_9_0_a2_0), .B(N_67), .C(
        rx_byte_1_sqmuxa_1), .Y(clear_parity_en_9));
    DFN1E1C0 \rx_shift[0]  (.D(\rx_shift_11[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[0]_net_1 ));
    NOR3B fifo_write_RNO_0 (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_state[0]_net_1 ), .C(\rx_bit_cnt[2]_net_1 ), .Y(
        clear_parity_en_9_0_a2_0));
    VCC VCC_i (.Y(VCC));
    NOR2A \rx_shift_RNO[1]  (.A(\rx_shift[2]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[1] ));
    DFN1C0 \receive_count[3]  (.D(N_20), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[3]_net_1 ));
    DFN1P0 fifo_write_inst_1 (.D(clear_parity_en_9), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(fifo_write));
    DFN1E1C0 \rx_byte[4]  (.D(\rx_shift[4]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[4]));
    OR2B \rx_bit_cnt_RNIPL7Q[1]  (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_40));
    NOR2A \rx_shift_RNO[2]  (.A(\rx_shift[3]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[2] ));
    DFN1E1C0 \rx_bit_cnt[2]  (.D(N_14), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[2]_net_1 ));
    XOR2 \receive_count_RNO_0[2]  (.A(\receive_count[2]_net_1 ), .B(
        N_41), .Y(receive_count_e2_i_0));
    DFN1E1C0 \rx_bit_cnt[1]  (.D(N_16), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[1]_net_1 ));
    AO1 \receive_count_RNIJQDU[3]  (.A(baud_clock), .B(N_163_1), .C(
        N_59), .Y(rx_bit_cnte));
    OR3C \receive_count_RNIDAKB[1]  (.A(baud_clock), .B(
        \receive_count[0]_net_1 ), .C(\receive_count[1]_net_1 ), .Y(
        N_41));
    AX1A \receive_count_RNO_0[3]  (.A(N_41), .B(
        \receive_count[2]_net_1 ), .C(\receive_count[3]_net_1 ), .Y(
        N_48_i));
    NOR2 \receive_count_RNINLJ2_0[1]  (.A(\receive_count[1]_net_1 ), 
        .B(\receive_count[0]_net_1 ), .Y(\last_bit_0_i_a2_1[0] ));
    NOR2 \rx_bit_cnt_RNO[0]  (.A(\rx_bit_cnt[0]_net_1 ), .B(N_163_1), 
        .Y(N_51));
    AOI1 \receive_count_RNO[2]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e2_i_0), .Y(N_22));
    DFN1E1P0 \samples[1]  (.D(\samples[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(baud_clock), .Q(\samples[1]_net_1 ));
    NOR2A \rx_shift_RNO[6]  (.A(\rx_shift[7]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[6] ));
    XOR2 \last_bit_RNIUD4M[0]  (.A(\last_bit[0]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_46_i));
    MX2C \rx_state_RNO[1]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_25));
    NOR2A \rx_shift_RNO[0]  (.A(\rx_shift[1]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[0] ));
    XA1C \rx_bit_cnt_RNO[2]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), .C(
        N_163_1), .Y(N_14));
    DFN1E1C0 \rx_byte[1]  (.D(\rx_shift[1]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[1]));
    DFN1C0 \receive_count[2]  (.D(N_22), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[2]_net_1 ));
    DFN1E1C0 \rx_state[1]  (.D(N_25), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_289), .Q(\rx_state[1]_net_1 ));
    NOR2 \rx_shift_RNO[7]  (.A(N_36), .B(N_163_1), .Y(N_216));
    DFN1E1C0 \rx_byte[6]  (.D(\rx_shift[6]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[6]));
    AOI1 \receive_count_RNO[1]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e1_i_0), .Y(N_24));
    NOR2A \receive_count_RNIRPJ2_0[3]  (.A(\receive_count[3]_net_1 ), 
        .B(\receive_count[2]_net_1 ), .Y(\last_bit_0_i_a2_0[0] ));
    DFN1E1C0 \rx_shift[4]  (.D(\rx_shift_11[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[4]_net_1 ));
    NOR2A \last_bit_RNO[0]  (.A(\last_bit[0]_net_1 ), .B(N_56), .Y(
        \last_bit_RNO_0[0] ));
    NOR2 fifo_write_RNO_1 (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_67));
    NOR2A \receive_count_RNINLJ2[1]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_1));
    DFN1E1C0 \rx_byte[7]  (.D(\rx_shift[7]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[7]));
    NOR2A \receive_count_RNIRPJ2[3]  (.A(\receive_count[2]_net_1 ), .B(
        \receive_count[3]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_0));
    DFN1E1C0 \rx_byte[3]  (.D(\rx_shift[3]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[3]));
    GND GND_i (.Y(GND));
    NOR2B \rx_state_RNIBM5G[0]  (.A(\rx_state[0]_net_1 ), .B(
        rx_byte_1_sqmuxa_1), .Y(rx_byte_1_sqmuxa_0_a4_0_a2_0));
    AOI1 \receive_count_RNO[3]  (.A(N_218), .B(baud_clock), .C(N_48_i), 
        .Y(N_20));
    AOI1 \samples_RNI8N7I[1]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[1]_net_1 ), .Y(
        i6_mux));
    DFN1E1C0 \rx_byte[2]  (.D(\rx_shift[2]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[2]));
    XOR2 \samples_RNIDG0Q[2]  (.A(\samples[2]_net_1 ), .B(
        \samples[1]_net_1 ), .Y(N_287));
    MIN3 \samples_RNI2N071[0]  (.A(\samples[2]_net_1 ), .B(
        \samples[0]_net_1 ), .C(\samples[1]_net_1 ), .Y(N_36));
    AX1E \receive_count_RNO_0[1]  (.A(baud_clock), .B(
        \receive_count[0]_net_1 ), .C(\receive_count[1]_net_1 ), .Y(
        receive_count_e1_i_0));
    AXOI4 \receive_count_RNO[0]  (.A(N_218), .B(baud_clock), .C(
        \receive_count[0]_net_1 ), .Y(N_26));
    NOR3C \rx_state_RNI7HCC[0]  (.A(receive_count8_i_i_0_a2_0_4_0), .B(
        receive_count8_i_i_0_a2_0_4_1), .C(receive_count8_i_i_0_a2_0_0)
        , .Y(N_58));
    DFN1E1C0 \rx_shift[6]  (.D(\rx_shift_11[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[6]_net_1 ));
    MX2C \rx_state_RNO[0]  (.A(i3_mux), .B(N_23), .S(
        \rx_state[0]_net_1 ), .Y(N_277));
    NOR2A \rx_shift_RNO[4]  (.A(\rx_shift[5]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[4] ));
    DFN1E1C0 \rx_shift[1]  (.D(\rx_shift_11[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[1]_net_1 ));
    OR2 \last_bit_RNI83GT1[0]  (.A(rx_state19_NE_0), .B(N_46_i), .Y(
        rx_state19_i));
    DFN1E1C0 \rx_shift[3]  (.D(\rx_shift_11[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[3]_net_1 ));
    DFN1E1C0 \rx_state[0]  (.D(N_277), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(baud_clock), .Q(\rx_state[0]_net_1 ));
    DFN1E1P0 \samples[2]  (.D(TX_c), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        baud_clock), .Q(\samples[2]_net_1 ));
    NOR2B \rx_state_RNIL157[0]  (.A(\rx_state[1]_net_1 ), .B(
        \rx_state[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_0));
    DFN1C0 \receive_count[0]  (.D(N_26), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[0]_net_1 ));
    DFN1E1C0 \rx_byte[5]  (.D(\rx_shift[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[5]));
    NOR3B \receive_count_RNI848E[3]  (.A(\receive_count[2]_net_1 ), .B(
        \receive_count[3]_net_1 ), .C(N_41), .Y(N_59));
    DFN1E1C0 \rx_shift[5]  (.D(\rx_shift_11[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[5]_net_1 ));
    NOR2 \rx_state_RNIL157_0[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_163_1));
    DFN1E1C0 \rx_bit_cnt[0]  (.D(N_51), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[0]_net_1 ));
    MX2C \samples_RNISTFU1[0]  (.A(i6_mux), .B(N_19), .S(N_287), .Y(
        i5_mux));
    OR2A \rx_bit_cnt_RNO_0[3]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), 
        .Y(N_42));
    NOR2A \rx_state_RNIJPLD2[0]  (.A(rx_byte_1_sqmuxa_0_a4_0_a2_0), .B(
        rx_state19_i), .Y(rx_byte_1_sqmuxa));
    DFN1P0 \last_bit[0]  (.D(\last_bit_RNO_0[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\last_bit[0]_net_1 ));
    NOR2B \rx_state_RNO_3[0]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(m13_0));
    OR3A \rx_bit_cnt_RNIALB71[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_bit_cnt[2]_net_1 ), .C(\rx_bit_cnt[1]_net_1 ), .Y(
        rx_state19_NE_0));
    XA1C \rx_bit_cnt_RNO[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(N_42), .C(
        N_163_1), .Y(N_12));
    AOI1 \samples_RNI7M7I[0]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[0]_net_1 ), .Y(
        N_19));
    DFN1E1C0 \rx_bit_cnt[3]  (.D(N_12), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[3]_net_1 ));
    MX2C \rx_state_RNO_0[0]  (.A(N_56), .B(N_31_mux), .S(
        \receive_count[2]_net_1 ), .Y(i3_mux));
    XA1B \rx_bit_cnt_RNO[1]  (.A(\rx_bit_cnt[0]_net_1 ), .B(
        \rx_bit_cnt[1]_net_1 ), .C(N_163_1), .Y(N_16));
    
endmodule


module Top_0_COREUART_1_COREUART_1s_1s_0s_15s_0s_0s(
       rx_dout_reg,
       TX_c,
       PRESETN_c,
       PCLK_c,
       COREUART_1_RXRDY
    );
output [7:0] rx_dout_reg;
input  TX_c;
input  PRESETN_c;
input  PCLK_c;
output COREUART_1_RXRDY;

    wire rx_dout_reg_empty_i, rx_dout_reg_empty_net_1, N_142_i, 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , \rx_state_ns[0] , 
        next_rx_state4, rx_dout_reg4, rx_dout_reg_empty_1_sqmuxa, 
        \rx_dout[0] , \rx_dout[1] , \rx_dout[2] , \rx_dout[3] , 
        \rx_dout[4] , \rx_dout[5] , \rx_dout[6] , \rx_dout[7] , 
        baud_clock, \rx_byte[0] , \rx_byte[1] , \rx_byte[2] , 
        \rx_byte[3] , \rx_byte[4] , \rx_byte[5] , \rx_byte[6] , 
        \rx_byte[7] , fifo_write, GND, VCC;
    
    DFN1E0C0 \rx_dout_reg[2]  (.D(\rx_dout[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[2]));
    DFN1C0 \genblk1.RXRDY  (.D(rx_dout_reg_empty_i), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(COREUART_1_RXRDY));
    DFN1E0C0 \rx_dout_reg[5]  (.D(\rx_dout[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[5]));
    DFN1C0 \rx_state[0]  (.D(\rx_state_ns[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\rx_state[0]_net_1 ));
    DFN1E0C0 \rx_dout_reg[7]  (.D(\rx_dout[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[7]));
    DFN1E0P0 rx_dout_reg_empty (.D(rx_dout_reg4), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(rx_dout_reg_empty_1_sqmuxa), .Q(
        rx_dout_reg_empty_net_1));
    Top_0_COREUART_1_Clock_gen_0s_0s make_CLOCK_GEN (.PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .baud_clock(baud_clock));
    DFN1E0C0 \rx_dout_reg[4]  (.D(\rx_dout[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[4]));
    NOR2A rx_dout_reg_empty_RNO (.A(rx_dout_reg4), .B(COREUART_1_RXRDY)
        , .Y(rx_dout_reg_empty_1_sqmuxa));
    VCC VCC_i (.Y(VCC));
    DFN1E0C0 \rx_dout_reg[1]  (.D(\rx_dout[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[1]));
    OA1B \rx_state_RNO[0]  (.A(\rx_state[1]_net_1 ), .B(next_rx_state4)
        , .C(\rx_state[0]_net_1 ), .Y(\rx_state_ns[0] ));
    DFN1E0C0 \rx_dout_reg[0]  (.D(\rx_dout[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[0]));
    GND GND_i (.Y(GND));
    OR2B \rx_state_RNIBCDT[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(rx_dout_reg4));
    Top_0_COREUART_1_fifo_256x8_0s_4294967295s_0 \genblk3.rx_fifo  (
        .rx_state({\rx_state[1]_net_1 , \rx_state[0]_net_1 }), 
        .rx_byte({\rx_byte[7] , \rx_byte[6] , \rx_byte[5] , 
        \rx_byte[4] , \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , 
        \rx_byte[0] }), .rx_dout({\rx_dout[7] , \rx_dout[6] , 
        \rx_dout[5] , \rx_dout[4] , \rx_dout[3] , \rx_dout[2] , 
        \rx_dout[1] , \rx_dout[0] }), .next_rx_state4(next_rx_state4), 
        .fifo_write(fifo_write), .rx_dout_reg_empty(
        rx_dout_reg_empty_net_1), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    XOR2 \rx_state_RNO[1]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_142_i));
    INV \genblk1.RXRDY_RNO  (.A(rx_dout_reg_empty_net_1), .Y(
        rx_dout_reg_empty_i));
    DFN1C0 \rx_state[1]  (.D(N_142_i), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\rx_state[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[6]  (.D(\rx_dout[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[6]));
    Top_0_COREUART_1_Rx_async_0s_1s_0s_1s_2s_3s make_RX (.rx_byte({
        \rx_byte[7] , \rx_byte[6] , \rx_byte[5] , \rx_byte[4] , 
        \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , \rx_byte[0] }), 
        .TX_c(TX_c), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), 
        .fifo_write(fifo_write), .baud_clock(baud_clock));
    DFN1E0C0 \rx_dout_reg[3]  (.D(\rx_dout[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[3]));
    
endmodule


module UART_control(
       UART_control_0_WE,
       PRESETN_c,
       PCLK_c,
       WEN_c,
       IIC_FIFO_1_EMPTY,
       COREUART_0_TXRDY_i_0,
       UART_control_0_RE,
       COREUART_0_RXRDY
    );
output UART_control_0_WE;
input  PRESETN_c;
input  PCLK_c;
output WEN_c;
input  IIC_FIFO_1_EMPTY;
input  COREUART_0_TXRDY_i_0;
output UART_control_0_RE;
input  COREUART_0_RXRDY;

    wire WE4, \count[1]_net_1 , \count[0]_net_1 , \count_3[0] , 
        \count_3[1] , GND, VCC;
    
    DFN1C0 \count[1]  (.D(\count_3[1] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\count[1]_net_1 ));
    NOR2A \count_RNO[0]  (.A(COREUART_0_RXRDY), .B(\count[0]_net_1 ), 
        .Y(\count_3[0] ));
    OR2A WE_RNO (.A(\count[1]_net_1 ), .B(\count[0]_net_1 ), .Y(WE4));
    DFN1P0 WE (.D(WE4), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        UART_control_0_WE));
    DFN1P0 flag (.D(UART_control_0_RE), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(WEN_c));
    VCC VCC_i (.Y(VCC));
    XA1 \count_RNO[1]  (.A(\count[0]_net_1 ), .B(\count[1]_net_1 ), .C(
        COREUART_0_RXRDY), .Y(\count_3[1] ));
    DFN1C0 \count[0]  (.D(\count_3[0] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\count[0]_net_1 ));
    OR2 RE (.A(COREUART_0_TXRDY_i_0), .B(IIC_FIFO_1_EMPTY), .Y(
        UART_control_0_RE));
    GND GND_i (.Y(GND));
    
endmodule


module uart_test(
       rx_dout_reg,
       RX_data_c,
       COREUART_1_RXRDY,
       PRESETN_c,
       PCLK_c
    );
input  [7:0] rx_dout_reg;
output [7:0] RX_data_c;
input  COREUART_1_RXRDY;
input  PRESETN_c;
input  PCLK_c;

    wire GND, VCC;
    
    DFN1E1C0 \RX_data[6]  (.D(rx_dout_reg[6]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[6]));
    DFN1E1C0 \RX_data[7]  (.D(rx_dout_reg[7]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[7]));
    DFN1E1C0 \RX_data[5]  (.D(rx_dout_reg[5]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[5]));
    DFN1E1C0 \RX_data[4]  (.D(rx_dout_reg[4]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[4]));
    DFN1E1C0 \RX_data[2]  (.D(rx_dout_reg[2]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[2]));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \RX_data[3]  (.D(rx_dout_reg[3]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[3]));
    DFN1E1C0 \RX_data[0]  (.D(rx_dout_reg[0]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[0]));
    DFN1E1C0 \RX_data[1]  (.D(rx_dout_reg[1]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[1]));
    GND GND_i (.Y(GND));
    
endmodule


module CAPB3II_0(
       PRDATA_iv_1_0,
       PRDATA_iv_0_0,
       I2C_slave_0_BIF_1_PRDATA,
       PRDATA_0_iv_0,
       seradr0_m,
       serdat,
       sersta_i_0_0,
       N_400,
       N_409,
       N_408,
       N_407,
       N_413,
       N_412,
       N_411,
       N_405,
       N_404,
       N_403,
       I2C_slave_0_BIF_1_PSELx,
       N_350,
       N_401,
       N_1443_i
    );
input  PRDATA_iv_1_0;
input  PRDATA_iv_0_0;
output [7:0] I2C_slave_0_BIF_1_PRDATA;
input  [2:0] PRDATA_0_iv_0;
input  [2:0] seradr0_m;
input  [6:3] serdat;
input  sersta_i_0_0;
input  N_400;
input  N_409;
input  N_408;
input  N_407;
input  N_413;
input  N_412;
input  N_411;
input  N_405;
input  N_404;
input  N_403;
input  I2C_slave_0_BIF_1_PSELx;
input  N_350;
input  N_401;
input  N_1443_i;

    wire PRDATA_3_1_net_1, PRDATA_3_0_net_1, PRDATA_4_2_net_1, 
        PRDATA_4_1_net_1, PRDATA_6_2_net_1, PRDATA_6_1_net_1, 
        PRDATA_5_2_net_1, PRDATA_5_1_net_1, GND, VCC;
    
    NOR2B PRDATA_6 (.A(PRDATA_6_2_net_1), .B(PRDATA_6_1_net_1), .Y(
        I2C_slave_0_BIF_1_PRDATA[6]));
    NOR3A PRDATA_5_2 (.A(I2C_slave_0_BIF_1_PSELx), .B(N_407), .C(N_408)
        , .Y(PRDATA_5_2_net_1));
    NOR2B PRDATA_4 (.A(PRDATA_4_2_net_1), .B(PRDATA_4_1_net_1), .Y(
        I2C_slave_0_BIF_1_PRDATA[4]));
    OA1 PRDATA_0 (.A(seradr0_m[0]), .B(PRDATA_0_iv_0[0]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[0]));
    NOR2B PRDATA_5 (.A(PRDATA_5_2_net_1), .B(PRDATA_5_1_net_1), .Y(
        I2C_slave_0_BIF_1_PRDATA[5]));
    OA1A PRDATA_3_0 (.A(sersta_i_0_0), .B(N_350), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(PRDATA_3_0_net_1));
    NOR3A PRDATA_4_2 (.A(I2C_slave_0_BIF_1_PSELx), .B(N_403), .C(N_404)
        , .Y(PRDATA_4_2_net_1));
    OA1C PRDATA_3_1 (.A(N_1443_i), .B(serdat[3]), .C(N_401), .Y(
        PRDATA_3_1_net_1));
    VCC VCC_i (.Y(VCC));
    OA1C PRDATA_6_1 (.A(N_1443_i), .B(serdat[6]), .C(N_413), .Y(
        PRDATA_6_1_net_1));
    NOR3A PRDATA_6_2 (.A(I2C_slave_0_BIF_1_PSELx), .B(N_411), .C(N_412)
        , .Y(PRDATA_6_2_net_1));
    NOR3B PRDATA_3 (.A(PRDATA_3_0_net_1), .B(PRDATA_3_1_net_1), .C(
        N_400), .Y(I2C_slave_0_BIF_1_PRDATA[3]));
    GND GND_i (.Y(GND));
    OA1 PRDATA_2 (.A(seradr0_m[2]), .B(PRDATA_0_iv_0[2]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[2]));
    OA1 PRDATA_1 (.A(seradr0_m[1]), .B(PRDATA_0_iv_0[1]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[1]));
    OA1C PRDATA_4_1 (.A(N_1443_i), .B(serdat[4]), .C(N_405), .Y(
        PRDATA_4_1_net_1));
    OA1 PRDATA_7 (.A(PRDATA_iv_0_0), .B(PRDATA_iv_1_0), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[7]));
    OA1C PRDATA_5_1 (.A(N_1443_i), .B(serdat[5]), .C(N_409), .Y(
        PRDATA_5_1_net_1));
    
endmodule


module CoreAPB3_Z1_0(
       sersta_i_0_0,
       serdat,
       seradr0_m,
       PRDATA_0_iv_0,
       I2C_slave_0_BIF_1_PRDATA,
       PRDATA_iv_0_0,
       PRDATA_iv_1_0,
       N_1443_i,
       N_401,
       N_350,
       I2C_slave_0_BIF_1_PSELx,
       N_403,
       N_404,
       N_405,
       N_411,
       N_412,
       N_413,
       N_407,
       N_408,
       N_409,
       N_400
    );
input  sersta_i_0_0;
input  [6:3] serdat;
input  [2:0] seradr0_m;
input  [2:0] PRDATA_0_iv_0;
output [7:0] I2C_slave_0_BIF_1_PRDATA;
input  PRDATA_iv_0_0;
input  PRDATA_iv_1_0;
input  N_1443_i;
input  N_401;
input  N_350;
input  I2C_slave_0_BIF_1_PSELx;
input  N_403;
input  N_404;
input  N_405;
input  N_411;
input  N_412;
input  N_413;
input  N_407;
input  N_408;
input  N_409;
input  N_400;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAPB3II_0 CAPB3IIII (.PRDATA_iv_1_0(PRDATA_iv_1_0), .PRDATA_iv_0_0(
        PRDATA_iv_0_0), .I2C_slave_0_BIF_1_PRDATA({
        I2C_slave_0_BIF_1_PRDATA[7], I2C_slave_0_BIF_1_PRDATA[6], 
        I2C_slave_0_BIF_1_PRDATA[5], I2C_slave_0_BIF_1_PRDATA[4], 
        I2C_slave_0_BIF_1_PRDATA[3], I2C_slave_0_BIF_1_PRDATA[2], 
        I2C_slave_0_BIF_1_PRDATA[1], I2C_slave_0_BIF_1_PRDATA[0]}), 
        .PRDATA_0_iv_0({PRDATA_0_iv_0[2], PRDATA_0_iv_0[1], 
        PRDATA_0_iv_0[0]}), .seradr0_m({seradr0_m[2], seradr0_m[1], 
        seradr0_m[0]}), .serdat({serdat[6], serdat[5], serdat[4], 
        serdat[3]}), .sersta_i_0_0(sersta_i_0_0), .N_400(N_400), 
        .N_409(N_409), .N_408(N_408), .N_407(N_407), .N_413(N_413), 
        .N_412(N_412), .N_411(N_411), .N_405(N_405), .N_404(N_404), 
        .N_403(N_403), .I2C_slave_0_BIF_1_PSELx(
        I2C_slave_0_BIF_1_PSELx), .N_350(N_350), .N_401(N_401), 
        .N_1443_i(N_1443_i));
    
endmodule


module IIC_FIFO_0(
       INA220_DATA_2,
       Q_c,
       UART_control_0_RE,
       WE_OUT,
       PRESETN_c,
       PCLK_c,
       IIC_FIFO_1_EMPTY
    );
input  [7:0] INA220_DATA_2;
output [7:0] Q_c;
input  UART_control_0_RE;
input  WE_OUT;
input  PRESETN_c;
input  PCLK_c;
output IIC_FIFO_1_EMPTY;

    wire AEMPTY, AFULL, FULL, FIFOBLOCK0_RD8_3, FIFOBLOCK0_RD9_3, 
        FIFOBLOCK0_RD10_3, FIFOBLOCK0_RD11_3, FIFOBLOCK0_RD12_3, 
        FIFOBLOCK0_RD13_3, FIFOBLOCK0_RD14_3, FIFOBLOCK0_RD15_3, 
        FIFOBLOCK0_RD16_3, FIFOBLOCK0_RD17_3, IIC_FIFO_0_GND, 
        IIC_FIFO_0_VCC, WEAP;
    
    INV REBUBBLEA (.A(UART_control_0_RE), .Y(WEAP));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(IIC_FIFO_0_GND), .AEVAL10(
        IIC_FIFO_0_GND), .AEVAL9(IIC_FIFO_0_GND), .AEVAL8(
        IIC_FIFO_0_GND), .AEVAL7(IIC_FIFO_0_GND), .AEVAL6(
        IIC_FIFO_0_GND), .AEVAL5(IIC_FIFO_0_GND), .AEVAL4(
        IIC_FIFO_0_GND), .AEVAL3(IIC_FIFO_0_VCC), .AEVAL2(
        IIC_FIFO_0_GND), .AEVAL1(IIC_FIFO_0_GND), .AEVAL0(
        IIC_FIFO_0_GND), .AFVAL11(IIC_FIFO_0_GND), .AFVAL10(
        IIC_FIFO_0_GND), .AFVAL9(IIC_FIFO_0_GND), .AFVAL8(
        IIC_FIFO_0_GND), .AFVAL7(IIC_FIFO_0_GND), .AFVAL6(
        IIC_FIFO_0_GND), .AFVAL5(IIC_FIFO_0_VCC), .AFVAL4(
        IIC_FIFO_0_GND), .AFVAL3(IIC_FIFO_0_GND), .AFVAL2(
        IIC_FIFO_0_GND), .AFVAL1(IIC_FIFO_0_GND), .AFVAL0(
        IIC_FIFO_0_GND), .WD17(IIC_FIFO_0_GND), .WD16(IIC_FIFO_0_GND), 
        .WD15(IIC_FIFO_0_GND), .WD14(IIC_FIFO_0_GND), .WD13(
        IIC_FIFO_0_GND), .WD12(IIC_FIFO_0_GND), .WD11(IIC_FIFO_0_GND), 
        .WD10(IIC_FIFO_0_GND), .WD9(IIC_FIFO_0_GND), .WD8(
        IIC_FIFO_0_GND), .WD7(INA220_DATA_2[7]), .WD6(INA220_DATA_2[6])
        , .WD5(INA220_DATA_2[5]), .WD4(INA220_DATA_2[4]), .WD3(
        INA220_DATA_2[3]), .WD2(INA220_DATA_2[2]), .WD1(
        INA220_DATA_2[1]), .WD0(INA220_DATA_2[0]), .WW0(IIC_FIFO_0_VCC)
        , .WW1(IIC_FIFO_0_VCC), .WW2(IIC_FIFO_0_GND), .RW0(
        IIC_FIFO_0_VCC), .RW1(IIC_FIFO_0_VCC), .RW2(IIC_FIFO_0_GND), 
        .RPIPE(IIC_FIFO_0_GND), .WEN(WE_OUT), .REN(WEAP), .WBLK(
        IIC_FIFO_0_GND), .RBLK(IIC_FIFO_0_GND), .WCLK(PCLK_c), .RCLK(
        PCLK_c), .RESET(PRESETN_c), .ESTOP(IIC_FIFO_0_VCC), .FSTOP(
        IIC_FIFO_0_VCC), .RD17(FIFOBLOCK0_RD17_3), .RD16(
        FIFOBLOCK0_RD16_3), .RD15(FIFOBLOCK0_RD15_3), .RD14(
        FIFOBLOCK0_RD14_3), .RD13(FIFOBLOCK0_RD13_3), .RD12(
        FIFOBLOCK0_RD12_3), .RD11(FIFOBLOCK0_RD11_3), .RD10(
        FIFOBLOCK0_RD10_3), .RD9(FIFOBLOCK0_RD9_3), .RD8(
        FIFOBLOCK0_RD8_3), .RD7(Q_c[7]), .RD6(Q_c[6]), .RD5(Q_c[5]), 
        .RD4(Q_c[4]), .RD3(Q_c[3]), .RD2(Q_c[2]), .RD1(Q_c[1]), .RD0(
        Q_c[0]), .FULL(FULL), .AFULL(AFULL), .EMPTY(IIC_FIFO_1_EMPTY), 
        .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(IIC_FIFO_0_VCC));
    GND GND_i (.Y(IIC_FIFO_0_GND));
    
endmodule


module COREI2C_COREI2CREAL_Z3_0(
       seradr0_m,
       IIC_control_0_BIF_1_PWDATA,
       seradr0apb,
       IIC_control_0_BIF_1_PADDR,
       SDAO_0_0,
       PRDATA_iv_0,
       PRDATA_iv_1,
       PRDATA_0_iv_0,
       COREI2C_0_INT_0,
       IIC_control_0_BIF_1_PWRITE,
       IIC_control_0_BIF_1_PENABLE,
       IIC_control_0_BIF_1_PSELx,
       seradr0apb4_0,
       SDA_in,
       OUT_EN_0,
       OUT_EN,
       SDA_d,
       SCLO_int,
       PRESETN_c,
       PCLK_c
    );
output [2:0] seradr0_m;
input  [7:0] IIC_control_0_BIF_1_PWDATA;
input  [7:0] seradr0apb;
input  [3:2] IIC_control_0_BIF_1_PADDR;
input  SDAO_0_0;
output [7:3] PRDATA_iv_0;
output [7:3] PRDATA_iv_1;
output [2:0] PRDATA_0_iv_0;
output COREI2C_0_INT_0;
input  IIC_control_0_BIF_1_PWRITE;
input  IIC_control_0_BIF_1_PENABLE;
input  IIC_control_0_BIF_1_PSELx;
output seradr0apb4_0;
input  SDA_in;
input  OUT_EN_0;
input  OUT_EN;
output SDA_d;
output SCLO_int;
input  PRESETN_c;
input  PCLK_c;

    wire \COREI2C_0_INT_0[0] , \sercon_10[3] , \fsmsta_0[2]_net_1 , 
        \fsmsta_10[2] , un1_ens1_pre_2_sqmuxa, \fsmsta_0[3]_net_1 , 
        \fsmsta_10[3] , \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , \framesync[1]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12[0] , \framesync[2]_net_1 , 
        \fsmdet_i[3] , \fsmdet[3]_net_1 , SDAO_int6_i, un1_framesync_1, 
        nedetect_net_1, SDAO_int_1_sqmuxa_1_net_1, 
        SDAO_int_3_sqmuxa_net_1, fsmsta_0_sqmuxa_2_s7_i, 
        fsmsta_0_sqmuxa_1, fsmsta19, fsmsta_1_sqmuxa_2_s8_i, N_732_i, 
        N_723, \fsmsta[2]_net_1 , N_803, \fsmsta_10k_i_a2_0[2]_net_1 , 
        N_802, \fsmsta_10k_i_a2_0[1]_net_1 , un1_sersta65_1, 
        SDAO_int_3_sqmuxa_0, \fsmsta_nxt_cnst_i_m_1[2] , 
        \fsmsta_nxt_cnst_i_m_0[2] , \fsmsta_0_RNIHQ8H3[3]_net_1 , 
        N_734_i, fsmsta33, fsmsta_1_sqmuxa_1_s9, 
        ens1_pre_1_sqmuxa_1_s6, fsmsta_0_sqmuxa_s5, 
        \fsmsta_10s_iv_2[2] , \fsmsta_nxt_4_i_m[2] , 
        \fsmsta_nxt_34_i_m[1] , \fsmsta_10s_iv_0[2] , 
        un1_framesync24_1, SDAO_int_m_0, fsmsta_nxt20_m, 
        \fsmsta_10s_1_iv_2[0] , \SDAO[0] , N_807, 
        \fsmsta_10s_1_iv_1[0] , fsmsta_nxt_m, \fsmsta_nxt_4_m[0] , 
        SDAInt_m, \fsmsta_10s_0_iv_2[3] , un1_framesync24_2_s4, 
        \fsmsta_10s_0_iv_1[3] , \fsmsta_nxt_4_m[3] , 
        \fsmsta_10s_1_iv_0[4] , un1_framesync24_3, 
        \fsmsta_10s_0_iv_0[1] , \fsmsta_10s_0_iv_0_0[1] , 
        un1_ack_0_sqmuxa_0, bsd7_tmp_0_sqmuxa_1, ack_0_sqmuxa_1, 
        bsd7_12_iv_0, \PWDATA_i_m_0[7] , bsd7_tmp_1_sqmuxa, 
        \fsmsta_nxt_cnst_m_1[4] , \fsmsta_nxt_cnst_i_a4_0[4] , N_727_1, 
        \fsmsta_nxt_cnst_m_0[4] , \fsmsta[4]_net_1 , ack_net_1, 
        fsmsta_nxt93, \fsmsta_nxt_cnst_m_1[1] , N_730, N_731, N_729, 
        \fsmmod_ns_0_2_0[2] , N_1119_1, \fsmmod_ns_0_4_tz[2] , 
        \fsmmod_ns_0_0[2] , fsmmod_tr10_5_0, N_1117_2, N_1280, 
        un1_SCLI_ff_reg_1_sqmuxa_1_0, \sercon[6]_net_1 , 
        ack_bit_0_sqmuxa, bsd7_tmp_i_m_0, bsd7_tmp_net_1, SCLInt_net_1, 
        un1_framesync24_6_s7_2, un1_framesync24, 
        un1_framesync24_6_s7_1_0, un1_framesync24_6_s7_0, un1_sersta65, 
        un1_framesync24_2, un1_framesync24_4, bsd7_tmp_1_sqmuxa_2_0, 
        serdat4, \fsmsta_nxt_cnst_0_0[0] , N_725, 
        \fsmsta_10k_0_a2_0[4] , ens1_pre_0_sqmuxa_s2_1, fsmsta32_s3_1, 
        fsmmod_tr14_2, N_1123_4, fsmmod_tr14_0, \sercon[4]_net_1 , 
        N_1123_3, \fsmmod_ns_i_a3_2[0] , \fsmmod_ns_i_a3_4[0] , 
        \fsmmod_ns_i_a3_0[0] , un2_PCLKint_p1, \fsmmod[0]_net_1 , 
        N_1106, PCLKint_net_1, \fsmmod[2]_net_1 , sersta77_2, N_718, 
        \fsmsta_10s_0_iv_0_0_tz_0[1] , \fsmsta_nxt_4_m_0[1] , 
        \fsmsta_nxt_34_m_0[1] , un1_fsmsync_2, un1_fsmsync_0, 
        \fsmsync[5]_net_1 , \fsmsync[2]_net_1 , \fsmsync[1]_net_1 , 
        \fsmsync[6]_net_1 , \fsmmod_ns_i_a3_1_0[4] , 
        \fsmmod_ns_i_a3_1_tz_tz_0[4] , \fsmmod[4]_net_1 , 
        \fsmsta_nxt_cnst_0_a4_0[0] , N_740, \fsmsta[0]_net_1 , 
        \fsmsta_nxt_cnst_0_a4_0_0[0] , N_751, 
        \fsmsta_nxt_cnst_i_a4_0_0[1] , \fsmsta[1]_net_1 , 
        un1_fsmmod_2_1, un1_framesync_5_0, un1_framesync_4, 
        un1_framesync24_1_0, un1_fsmmod_2_0, un1_fsmmod_1, 
        \fsmsync_ns_0_1[0] , \fsmsync_ns_0_a4_1_0[0] , N_1314, 
        \fsmsync_ns_0_0[0] , fsmsync_tr3_0_0, N_914_4, N_915, 
        un1_framesync_3, un1_SDAO_int17_1, un1_adrcomp_2_sqmuxa_0, 
        counter_PRESETN_1, adrcomp12, \fsmsync_ns_i_a4_10[3] , 
        \fsmsync_ns_i_a4_4_0[3] , \fsmsync_ns_i_o2_0[3] , N_135, 
        \fsmsync_ns_i_a4_9[3] , \fsmsync_ns_i_a4_1_2[3] , 
        \fsmsync_ns_i_a4_3[3] , \fsmsync_ns_i_a4_7_1[3] , 
        \fsmsync_ns_i_a4_8[3] , \fsmsync_RNO_6[3]_net_1 , N_74, 
        \fsmsync_ns_i_a4_5_1[3] , \fsmsync_ns_i_a4_0[3] , 
        \fsmsync_RNO_15[3]_net_1 , \fsmsync_ns_i_a4_2[3] , 
        fsmsync_ns_i_a4_143_0, fsmsync_ns_i_a4_145_0, N_98, 
        \fsmsync_ns_i_a4_5_0[3] , N_138, N_93, 
        \fsmsync_ns_i_a4_1_1[3] , \fsmsync_ns_i_a4_7[3] , 
        fsmsync_ns_i_a4_141_2, N_72, un1_sercon_0, fsmmod5_0, 
        \fsmdet[5]_net_1 , ens1_pre_2_sqmuxa_1_0, ens1_pre_3_sqmuxa, 
        un1_sersta69_4, un1_sersta65_1_3, un1_sersta69_0, 
        un1_sersta69_1, un1_sersta69_3, un1_sersta64_3, 
        un1_sersta65_1_4, sersta79, sersta78, un1_sersta64_2, sersta80, 
        sersta74, un1_sersta58_1, un1_sersta60_1, un1_sersta78, 
        un1_sersta58_0, sersta63, sersta62, sersta59_3, 
        \fsmsync_ns_i_0[2] , N_1318, N_1322, un1_sersta64_1_0, 
        un1_sersta64_0, N_761, sersta64, counter_PRESETN_3, 
        un18_counter_PRESETN, counter_PRESETN_1_0, \fsmsync[4]_net_1 , 
        fsmsta_0_sqmuxa_s5_0, adrcomp_net_1, framesync_1_sqmuxa_1_2, 
        sersta81_3, framesync_1_sqmuxa_1_1, sersta76, sersta82, 
        sersta77, fsmsync_tr13_20_0_i_0, fsmsync_tr13_19_0_i_0, 
        \fsmsync[3]_net_1 , \fsmsync_ns_i_0[7] , SDAInt_net_1, 
        \fsmsync[7]_net_1 , N_1109_4, un1_framesync24_1_1, 
        pedetect_net_1, adrcompen_net_1, 
        \fsmmod_ns_i_a3_i_a5_0_5_3[3] , N_133_3, 
        \fsmmod_ns_i_a3_i_a5_0_5_0[3] , \sercon[5]_net_1 , 
        un1_sercon_1_4, un1_seradr0_NE, fsmsta_nxt86, un1_sercon_1_3, 
        un1_sercon_1_2, un1_sercon_1_0, \sercon[2]_net_1 , 
        un1_fsmdet_1, \sercon_8_1[4] , un1_sersta64_0_0, 
        un1_framesync24_1_0_0, un1_framesync_2_0, un1_framesync_3_0, 
        un1_framesync24_0, \framesync[3]_net_1 , un1_framesync, 
        \fsmsync[0]_net_1 , \fsmmod_ns_0_2_tz_2[2] , 
        \fsmmod_ns_0_2_tz_0[2] , \framesync[0]_net_1 , 
        \sersta_4_0_1[3] , sersta71_2, \sersta_4_0_a4_0[3] , 
        \sersta_4_0_0[3] , \fsmsta[3]_net_1 , \sersta_4_0_0[4] , 
        \sersta_4_0_a4_0_0[4] , fsmmod_tr16_2_0, fsmmod_tr7_2_0, 
        \fsmsync_ns_i_a4_3_0[3] , N_89, N_1313_tz_tz, N_1311_tz_tz, 
        \fsmsync_ns_i_a4_5_tz_tz_1[3] , \fsmsync_ns_i_a4_5_tz_tz_0[3] , 
        \fsmmod_ns_0_tz_0[6] , N_1139_1, \fsmmod_ns_0_a3_0[6] , 
        un2_PCLKint_p1_0, \fsmsync_ns_0_o2_0[0] , 
        \fsmsync_ns_i_a4_1_tz_tz[3] , fsmsync_ns_i_a4_141_0, 
        fsmsync_tr19_5, fsmsync_tr19_1, fsmsync_tr19_0, fsmsync_tr19_4, 
        sersta74_0, fsmsync_tr13_18_0_i_0, \indelay[2]_net_1 , 
        sersta60_0, \serdat[0]_net_1 , un4_PRDATA, \sercon_m[0] , 
        \serdat[1]_net_1 , \sercon_m[1] , \serdat[6]_net_1 , 
        \sercon_m[6] , \sersta[3]_net_1 , un9_PRDATA_net_1, 
        \seradr0_m[6]_net_1 , \serdat[7]_net_1 , \sercon_m[7] , 
        \sersta[4]_net_1 , \seradr0_m[7]_net_1 , \serdat[2]_net_1 , 
        \sercon_m[2] , \serdat[3]_net_1 , \sercon_m[3] , 
        \sersta[0]_net_1 , \seradr0_m[3]_net_1 , \serdat[5]_net_1 , 
        \sercon_m[5] , \sersta[2]_net_1 , \seradr0_m[5]_net_1 , 
        \serdat[4]_net_1 , \sercon_m[4] , \sersta[1]_net_1 , 
        \seradr0_m[4]_net_1 , sersta75_0, sersta69_1, 
        fsmsync_ns_i_a4_138_0, \indelay[3]_net_1 , sersta64_1_0, 
        sersta81_2, sersta61_0, sersta63_0, sersta76_1, 
        \sersta_4_0_o3_0[4] , sersta80_0, sersta79_0, sersta72_1, 
        sersta82_1, fsmsync_tr13_20_0_i_a5_1_0, \indelay[1]_net_1 , 
        sersta78_0, \fsmsync_ns_0_a3_i_1[0] , \fsmsync_ns_0_a3_i_0[0] , 
        \fsmmod[6]_net_1 , \fsmmod[5]_net_1 , sersta71_1, 
        fsmsync_tr3_1_2, \fsmmod[1]_net_1 , N_1318_tz_tz, fsmsta19_3, 
        fsmsta19_2, fsmsta19_1, indelaylde_i_a5_1, \indelay[0]_net_1 , 
        fsmsync_tr8_tz_tz_2, fsmsync_tr8_tz_tz_0, \fsmmod[3]_net_1 , 
        \fsmsync_ns_i_a4_1_tz_tz_0[3] , fsmsync_tr15_0_4_0, 
        un1_seradr0_NE_3, un1_seradr0_3, un1_seradr0_2, un1_seradr0_6, 
        un1_seradr0_NE_2, un1_seradr0_5, un1_seradr0_NE_1, 
        un1_seradr0_1_0, \fsmmod_ns_i_a3_4_tz_2[0] , starto_en_net_1, 
        \fsmmod_ns_i_a3_4_tz_1[0] , PCLKint_ff_net_1, 
        \fsmsync_ns_0_o2_1_1[0] , \fsmsync_ns_0_o2_1_0[0] , 
        indelay_150_0, N_929_tz_tz, N_1276, \fsmsync_RNO[1]_net_1 , 
        N_1046, N_1306_tz_tz_tz, \fsmmod_ns_i_a3_8_tz[0] , 
        \fsmmod_ns_i_a3_1[4] , fsmmod5, N_97, \fsmsync_RNO_0[4]_net_1 , 
        fsmmod_tr16_2, N_1109_5, \fsmmod_ns_i_a3_i_a5_0_5[3] , 
        N_1123_8, fsmmod_tr7_2, \fsmsync_ns_i_i_a5_0_1[5] , sersta61, 
        sersta61_2, un1_sersta64, framesync24, un1_sersta58, 
        \fsmsta_nxt_cnst[0] , N_726, N_727, N_804, N_804_1, N_650, 
        un1_framesync24_6_s7, \fsmsta_10s_iv[2] , N_653, 
        \fsmsta_nxt_cnst[3] , N_654, un1_fsmdet_2, PCLK_count17, 
        \PCLK_count1[2]_net_1 , \PCLK_count1[3]_net_1 , 
        \PCLK_count1[1]_net_1 , \fsmsync_RNO[2]_net_1 , N_1326, 
        \fsmsync_RNO[3]_net_1 , \fsmsync_RNO[7]_net_1 , N_131, 
        \fsmsync_ns[0] , N_1327, N_1328, N_78, framesync_1_sqmuxa_1, 
        framesync_2_sqmuxa, N_662, framesync_0_sqmuxa_1, 
        un1_framesync_4_sqmuxa, \sersta_4[3] , N_767, sersta74_1, 
        framesync10, un1_sersta58_2, counter_PRESETN, 
        un14_counter_PRESETN, busfree_net_1, 
        un1_SCLI_ff_reg_1_sqmuxa_1, bsd7_1_sqmuxa_1, 
        bsd7_tmp_0_sqmuxa_2, SDAO_int_0_sqmuxa, SDAO_int12, 
        bsd7_tmp_i_m, bsd7_12_iv, \serdat_i_m[7] , un1_sercon_0_0, 
        un1_SCLI_ff_reg_1, \SCLI_ff_reg[1]_net_1 , 
        \SCLI_ff_reg[2]_net_1 , \SCLI_ff_reg[0]_net_1 , \sersta_4[4] , 
        \sersta_4[2] , N_764, N_765, N_752, \sersta_4[0] , N_762, 
        N_763, N_1120_3, sersta65, sersta69, sersta70, sersta67, 
        N_763_1, un1_framesync24_5, serdat_2_sqmuxa, un1_ack_3_sqmuxa, 
        un1_ack_1_sqmuxa, serdat_1_sqmuxa, ack_1_sqmuxa_1, N_651, 
        un1_bsd7_tmp_0_sqmuxa, bsd7_tmp_0_sqmuxa_3, bsd7_tmp_0_sqmuxa, 
        ack_bit_1_sqmuxa, un1_sersta58_3, ack_3_sqmuxa, un1_sersta65_0, 
        \fsmmod_RNO[0]_net_1 , \fsmmod_ns_i_a3_8[0] , 
        \fsmmod_ns_i_a3_4_0[0] , \sercon_8[4] , un1_fsmmod_2, 
        un1_adrcomp_1, sersta73, un1_adrcomp, sersta72, un1_fsmdet, 
        sersta75, N_1118, \fsmmod_ns[2] , \fsmmod_ns_0_2[2] , 
        SDAO_int17, un1_fsmmod, sersta64_1, N_88, N_86, un1_sersta64_1, 
        un1_adrcomp_2_sqmuxa, un1_fsmmod_1_0, un1_adrcompen, 
        un1_fsmmod_1_2, adrcompen_2_sqmuxa, un1_framesync24_6, 
        un1_SCLI_ff_reg, fsmmod_tr10_8_1, \fsmmod_ns_i_a3_4_0_tz[0] , 
        SDAO_int_m_0_0, \fsmsync_ns_i_0_tz[6] , N_1321, 
        \fsmsync_ns_i_a4_0_0[6] , \fsmsync_RNO[6]_net_1 , 
        \fsmmod_ns[6] , fsmmod_tr18_1_0, \fsmsta_nxt_cnst_0_a4_0_0[2] , 
        \fsmsta_nxt_cnst_0_a4_2_0[2] , \fsmmod_RNO[5]_net_1 , 
        fsmmod_tr17_0, \fsmmod_ns[1] , \fsmmod_ns_0_a3_0[1] , 
        PCLK_count1_n3, PCLK_count1_0_sqmuxa, PCLK_count1_n3_tz, 
        PCLK_count1_c1, PCLK_count1_n2, PCLK_count1_n2_tz, N_76, 
        \fsmsync_ns_i_i_a5_0[5] , N_82, \fsmmod_ns_i_a3_i_a5_0[3] , 
        \indelay_RNO[2]_net_1 , indelay_c1, N_101_i, sclscl_net_1, 
        N_124, \fsmsync_RNO[4]_net_1 , N_1315, \fsmmod_RNO[4]_net_1 , 
        SDA_d0_net_1, \sercon[0]_net_1 , un1_PRDATA, \sercon[7]_net_1 , 
        \SDAI_ff_reg_4[0] , \SCLI_ff_reg_4[0] , mst, 
        \SCLI_ff_reg_4[2] , un1_adrcomp_2_sqmuxa_1, \serdat_20[0] , 
        un1_ack_0_sqmuxa_2, un1_sersta64_1_1, adrcomp_2_sqmuxa_1, 
        fsmsta_nxt93_1, \fsmdet_RNO[1]_net_1 , \fsmdet_i_0[0] , 
        \fsmdet_i_0[1] , N_1214_1, \fsmdet_RNO[3]_net_1 , 
        \fsmdet_i_0[6] , N_1208_1, N_1218, \fsmdet_RNO[6]_net_1 , 
        \serdat_20[6] , \serdat_20[5] , \serdat_20[4] , \serdat_20[3] , 
        \serdat_20[2] , \serdat_20[1] , ack_bit_0_sqmuxa_1, sercon18, 
        sersta81_1, un1_sersta65_1_2, fsmsta13, \sercon_10[4] , 
        \sercon_5[3] , PCLKint_5, sclscl_1_sqmuxa, un1_PCLKint5, 
        PCLK_count2_ov_i_0, un1_SDAInt5, \SDAI_ff_reg[0]_net_1 , 
        \SDAI_ff_reg[2]_net_1 , \SDAI_ff_reg[1]_net_1 , 
        \SDAI_ff_reg_4[1] , \SDAI_ff_reg_4[2] , bsd7_tmp_9, 
        \serdat_20[7] , \fsmdet_RNO[5]_net_1 , \fsmdet_i_0[2] , 
        \fsmdet_i_0[4] , ens1_pre_4_sqmuxa, N_724, ack_12, 
        un1_ack_0_sqmuxa_3, serdat33, \sersta_4[1] , N_753, 
        un1_sersta69, \fsmdet_RNO[4]_net_1 , N_1217, un1_serdat52_1, 
        un1_serdat52, \SCLI_ff_reg_4[1] , SCLO_int5_0_0, 
        pedetect_0_sqmuxa, framesync24_1, \framesync_7[3] , N_670, 
        \framesync_7[2] , N_669, \framesync_7[1] , N_668, 
        \framesync_7[0] , N_667, I_16, \DWACT_ADD_CI_0_partial_sum[0] , 
        I_18, I_15, nedetect_0_sqmuxa, un1_framesync_0, 
        framesync_1_sqmuxa_2, un1_serdat52_0, SDAO_int_7, 
        SDAO_int_1_sqmuxa, N_674, un1_SDAO_int_1_sqmuxa_1, 
        SDAO_int_2_m, ack_bit_net_1, bsd7_net_1, \fsmdet_RNO[2]_net_1 , 
        N_108, N_100, N_146, N_869, \indelay_RNO[3]_net_1 , 
        PCLK_count1_n1, \PCLK_count1[0]_net_1 , PCLK_count1_n0, 
        PCLKint_ff_4, PCLK_count1_1_sqmuxa, PCLK_count2_ov_0_sqmuxa, 
        PCLK_count1_ov_net_1, fsmsta_nxt19, \fsmsta_nxt_4[2] , 
        ens1_pre_1_sqmuxa_2, \fsmsta_10[0] , N_801, \fsmsta_10[1] , 
        \fsmsta_10[4] , N_805, un1_sersta60, un1_fsmdet_0, 
        \indelay_RNO[1]_net_1 , indelay_n1, \indelay_RNO[0]_net_1 , 
        N_1350, \sercon[1]_net_1 , GND, VCC;
    
    NOR2B \sercon_RNIDKQEL[3]  (.A(ack_bit_1_sqmuxa), .B(
        COREI2C_0_INT_0), .Y(ack_bit_0_sqmuxa));
    OR3 \fsmsta_RNIPCHP9[4]  (.A(un1_sersta64_3), .B(un1_sersta64_0), 
        .C(un1_sersta64_1_0), .Y(un1_sersta64_1));
    OAI1 \fsmsta_0_RNIHQ8H3[3]  (.A(\fsmsta_nxt_cnst_0_a4_0_0[2] ), .B(
        \fsmsta_nxt_cnst_0_a4_2_0[2] ), .C(framesync24), .Y(
        \fsmsta_0_RNIHQ8H3[3]_net_1 ));
    AO1C \sersta_RNO_3[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .C(\COREI2C_0_INT_0[0] ), .Y(
        \sersta_4_0_0[3] ));
    MX2A \framesync_RNO_0[3]  (.A(framesync10), .B(I_16), .S(
        un1_framesync_4_sqmuxa), .Y(N_670));
    NOR3C \seradr0_m[2]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[2]), .Y(
        seradr0_m[2]));
    NOR3B busfree_RNI5AFR (.A(SCLInt_net_1), .B(busfree_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(N_86));
    AO1B \fsmsync_RNO_16[3]  (.A(\fsmsync_ns_i_a4_5_0[3] ), .B(
        fsmsync_ns_i_a4_143_0), .C(N_138), .Y(\fsmsync_ns_i_a4_2[3] ));
    AO1C \fsmdet_RNO[6]  (.A(\fsmdet[5]_net_1 ), .B(N_1218), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO[6]_net_1 ));
    OR2A \fsmdet_RNO_0[6]  (.A(SDAInt_net_1), .B(\fsmdet_i_0[6] ), .Y(
        N_1218));
    AX1C \PCLK_count1_RNO_0[3]  (.A(PCLK_count1_c1), .B(
        \PCLK_count1[2]_net_1 ), .C(\PCLK_count1[3]_net_1 ), .Y(
        PCLK_count1_n3_tz));
    OR2 SCLO_int_RNO_2 (.A(un1_sersta64_3), .B(un1_sersta65_1_4), .Y(
        un1_sersta69_3));
    NOR3C ack_RNIOCA43 (.A(SDAInt_net_1), .B(ack_net_1), .C(
        un1_framesync24), .Y(\fsmsta_nxt_4_m[3] ));
    DFN1C0 \fsmsync[1]  (.D(\fsmsync_RNO[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[1]_net_1 ));
    NOR2A \fsmsync_RNO_25[3]  (.A(N_1311_tz_tz), .B(\indelay[1]_net_1 )
        , .Y(fsmsync_tr13_20_0_i_a5_1_0));
    NOR2B \sercon_RNIRLLG[7]  (.A(\sercon[7]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[7] ));
    NOR2A \serdat_write_proc.un4_PRDATA  (.A(
        IIC_control_0_BIF_1_PADDR[3]), .B(IIC_control_0_BIF_1_PADDR[2])
        , .Y(un4_PRDATA));
    NOR2 \fsmmod_RNI256B6[1]  (.A(ens1_pre_0_sqmuxa_s2_1), .B(
        fsmsta_1_sqmuxa_1_s9), .Y(N_804_1));
    NOR3C \seradr0_m[0]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[0]), .Y(
        seradr0_m[0]));
    OR2B \sercon_RNIOPNB1[6]  (.A(un1_SCLI_ff_reg), .B(
        \sercon[6]_net_1 ), .Y(un1_serdat52));
    NOR3B \fsmsta_0_RNI2MS31[2]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta_0[2]_net_1 ), .Y(sersta82_1));
    OA1B \fsmmod_RNO[5]  (.A(fsmmod_tr16_2), .B(fsmmod_tr17_0), .C(
        fsmmod5), .Y(\fsmmod_RNO[5]_net_1 ));
    AO1A \fsmsta_RNO_4[0]  (.A(N_723), .B(\fsmsta[2]_net_1 ), .C(N_725)
        , .Y(\fsmsta_nxt_cnst_0_0[0] ));
    NOR2B \sercon_RNILFLG[1]  (.A(\sercon[1]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[1] ));
    DFN1C0 \indelay[2]  (.D(\indelay_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[2]_net_1 ));
    NOR2 \fsmsta_RNO_5[4]  (.A(sersta77_2), .B(N_718), .Y(
        \fsmsta_nxt_cnst_i_a4_0[4] ));
    OR2A \SCLI_ff_reg_RNO[0]  (.A(\sercon[6]_net_1 ), .B(SCLO_int), .Y(
        \SCLI_ff_reg_4[0] ));
    NOR2B \fsmsta_RNO_10[0]  (.A(ack_net_1), .B(N_751), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[0] ));
    DFN1P0 \framesync[0]  (.D(\framesync_7[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[0]_net_1 ));
    OR2 SCLInt_RNO (.A(un1_serdat52), .B(un1_SCLI_ff_reg_1), .Y(
        un1_serdat52_1));
    OR2A \fsmmod_RNO_7[2]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(\fsmmod_ns_0_2_tz_0[2] ));
    NOR2B \fsmmod_RNO_8[0]  (.A(\sercon[5]_net_1 ), .B(PCLKint_net_1), 
        .Y(\fsmmod_ns_i_a3_4_tz_1[0] ));
    DFN1C0 \fsmsync[5]  (.D(N_76), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \fsmsync[5]_net_1 ));
    OA1 \fsmmod_RNO_0[2]  (.A(fsmmod_tr10_8_1), .B(
        \fsmmod_ns_0_2_tz_2[2] ), .C(N_1119_1), .Y(\fsmmod_ns_0_2[2] ));
    XOR2 un1_framesync_1_I_16 (.A(\framesync[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16));
    OR2 \fsmmod_RNI7DKF[3]  (.A(\fsmmod[3]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .Y(fsmsync_tr8_tz_tz_0));
    NOR3C \fsmsta_0_RNI6VPB1_0[2]  (.A(sersta77_2), .B(
        \fsmsta_0[2]_net_1 ), .C(N_1120_3), .Y(sersta65));
    OR2B \fsmsta_nxt_cnst_0_a4[2]  (.A(N_723), .B(\fsmsta[2]_net_1 ), 
        .Y(N_732_i));
    AO1 pedetect_RNIKRHV6 (.A(un1_framesync_5_0), .B(un1_framesync_4), 
        .C(un1_framesync24_1_0), .Y(un1_fsmmod_2_1));
    NOR3A \sersta_RNO_1[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(N_751), .Y(N_765));
    AO1 \serdat_RNI1SH71[0]  (.A(\serdat[0]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[0] ), .Y(PRDATA_0_iv_0[0]));
    NOR3C \fsmsync_RNO_5[3]  (.A(\fsmsync_ns_i_a4_0[3] ), .B(
        \fsmsync_RNO_15[3]_net_1 ), .C(\fsmsync_ns_i_a4_2[3] ), .Y(
        \fsmsync_ns_i_a4_7_1[3] ));
    AO1B \fsmmod_RNO_3[4]  (.A(\fsmmod_ns_i_a3_1_tz_tz_0[4] ), .B(
        SCLInt_net_1), .C(\fsmmod[4]_net_1 ), .Y(
        \fsmmod_ns_i_a3_1_0[4] ));
    NOR2A \framesync_RNIBFJR[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(N_1123_4));
    DFN1E0C0 \serdat[5]  (.D(\serdat_20[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[5]_net_1 ));
    NOR3C \fsmmod_RNO_2[3]  (.A(N_133_3), .B(
        \fsmmod_ns_i_a3_i_a5_0_5_0[3] ), .C(N_1109_4), .Y(
        \fsmmod_ns_i_a3_i_a5_0_5_3[3] ));
    XOR2 adrcomp_RNO_8 (.A(seradr0apb[6]), .B(\serdat[5]_net_1 ), .Y(
        un1_seradr0_5));
    OA1B \fsmsta_RNO_6[1]  (.A(SDAO_int_m_0_0), .B(
        \fsmsta_10s_0_iv_0_0_tz_0[1] ), .C(un1_fsmdet_2), .Y(
        \fsmsta_10s_0_iv_0_0[1] ));
    NOR2A \framesync_RNI09136[1]  (.A(un1_framesync_3), .B(
        un1_SDAO_int17_1), .Y(SDAO_int_3_sqmuxa_0));
    DFN1C0 \fsmmod[5]  (.D(\fsmmod_RNO[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[5]_net_1 ));
    DFN1C0 \fsmmod[4]  (.D(\fsmmod_RNO[4]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[4]_net_1 ));
    NOR2B \fsmmod_RNO_4[3]  (.A(\sercon[5]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .Y(\fsmmod_ns_i_a3_i_a5_0_5_0[3] ));
    NOR2B \indelay_RNO_1[3]  (.A(\indelay[3]_net_1 ), .B(
        \fsmsync[3]_net_1 ), .Y(N_869));
    XO1 \sersta_RNO[1]  (.A(\fsmsta[0]_net_1 ), .B(N_753), .C(N_752), 
        .Y(\sersta_4[1] ));
    OR3B \fsmsync_RNO_2[6]  (.A(\fsmsync[5]_net_1 ), .B(
        \sercon[4]_net_1 ), .C(\COREI2C_0_INT_0[0] ), .Y(N_1321));
    NOR2B \fsmsta_0_RNI8S5K7[2]  (.A(un1_sersta60), .B(framesync24), 
        .Y(un1_framesync24_4));
    MX2 \serdat_RNO[3]  (.A(IIC_control_0_BIF_1_PWDATA[3]), .B(
        \serdat[2]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[3] ));
    OR2A \fsmsync_RNI817A[2]  (.A(\fsmsync[2]_net_1 ), .B(
        COREI2C_0_INT_0), .Y(N_89));
    MX2 \framesync_RNO[1]  (.A(\fsmdet[3]_net_1 ), .B(N_668), .S(N_662)
        , .Y(\framesync_7[1] ));
    XOR2 un1_framesync_1_I_13 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2 \indelay_RNI6CRD[3]  (.A(\indelay[1]_net_1 ), .B(
        \indelay[3]_net_1 ), .Y(N_146));
    OR2 \fsmsync_RNO_1[4]  (.A(\indelay[3]_net_1 ), .B(SCLInt_net_1), 
        .Y(fsmsync_ns_i_a4_138_0));
    NOR3C \seradr0_m[1]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[1]), .Y(
        seradr0_m[1]));
    OR3 \fsmmod_RNO[2]  (.A(\fsmmod_ns_0_2[2] ), .B(N_1118), .C(
        \fsmmod_ns_0_2_0[2] ), .Y(\fsmmod_ns[2] ));
    OR2 \fsmmod_RNIJV8V[6]  (.A(\fsmsync_ns_0_a3_i_0[0] ), .B(
        N_1313_tz_tz), .Y(\fsmsync_ns_0_a3_i_1[0] ));
    NOR2A adrcompen_RNO (.A(\fsmdet[3]_net_1 ), .B(adrcomp12), .Y(
        un1_adrcomp_2_sqmuxa_1));
    AO1 \sersta_RNI350C1[0]  (.A(\sersta[0]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[3]_net_1 ), .Y(PRDATA_iv_0[3])
        );
    NOR2A \fsmsync_RNO_26[3]  (.A(\indelay[0]_net_1 ), .B(
        \indelay[1]_net_1 ), .Y(N_124));
    NOR2B \fsmsta_0_RNILHLI1_2[2]  (.A(sersta69_1), .B(sersta77_2), .Y(
        sersta69));
    NOR2B \indelay_RNO_0[3]  (.A(\indelay[2]_net_1 ), .B(
        \fsmsync[3]_net_1 ), .Y(indelay_150_0));
    NOR3C \fsmsta_RNINCU41[4]  (.A(sersta78_0), .B(\fsmsta[4]_net_1 ), 
        .C(sersta74_1), .Y(sersta78));
    AO1A SDAO_int_RNI7E9MP (.A(\SDAO[0] ), .B(un1_framesync24_2_s4), 
        .C(\fsmsta_10s_0_iv_1[3] ), .Y(\fsmsta_10s_0_iv_2[3] ));
    DFN1P0 \fsmmod[0]  (.D(\fsmmod_RNO[0]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmmod[0]_net_1 ));
    NOR2B \PCLK_count1_RNO[2]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n2_tz), .Y(PCLK_count1_n2));
    OR2 \fsmsync_RNITG2G[1]  (.A(\fsmsync[1]_net_1 ), .B(
        \fsmsync[0]_net_1 ), .Y(N_1318));
    OR2 SCLO_int_RNO_5 (.A(sersta80), .B(sersta74), .Y(un1_sersta69_0));
    NOR3C \fsmsync_RNO_4[6]  (.A(fsmsync_tr19_1), .B(fsmsync_tr19_0), 
        .C(fsmsync_tr19_4), .Y(fsmsync_tr19_5));
    MX2C ack_RNO_0 (.A(un1_ack_0_sqmuxa_0), .B(serdat33), .S(
        un1_ack_3_sqmuxa), .Y(un1_ack_0_sqmuxa_3));
    OR2A \fsmmod_RNIQ2H92[4]  (.A(N_78), .B(\fsmsync_ns_0_o2_0[0] ), 
        .Y(N_1314));
    OR3A \fsmdet_RNIPGJJL[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .C(ack_bit_0_sqmuxa), .Y(
        un1_SCLI_ff_reg_1_sqmuxa_1_0));
    NOR3B adrcompen_RNITA1J5 (.A(fsmsta_nxt93_1), .B(
        un1_framesync24_1_1), .C(un1_fsmdet_0), .Y(ens1_pre_4_sqmuxa));
    NOR3A \sercon_RNIIRON5[2]  (.A(un1_framesync24_3), .B(SDAInt_net_1)
        , .C(\sercon[2]_net_1 ), .Y(\fsmsta_nxt_34_i_m[1] ));
    OR2 \fsmsync_RNO_17[3]  (.A(N_1313_tz_tz), .B(\indelay[0]_net_1 ), 
        .Y(N_100));
    XOR2 un1_framesync_1_I_18 (.A(\framesync[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    OA1 \fsmsync_RNO_3[3]  (.A(N_93), .B(\fsmsync_ns_i_a4_1_1[3] ), .C(
        \fsmsync_ns_i_a4_7[3] ), .Y(\fsmsync_ns_i_a4_1_2[3] ));
    NOR3B adrcompen_RNI2B6651 (.A(un1_framesync24_6_s7_2), .B(
        un1_framesync24_6_s7_1_0), .C(un1_fsmdet_2), .Y(
        un1_framesync24_6_s7));
    NOR2A bsd7_RNO_5 (.A(serdat4), .B(IIC_control_0_BIF_1_PWDATA[7]), 
        .Y(\PWDATA_i_m_0[7] ));
    NOR3B \sercon_RNI5TKCL[6]  (.A(un1_sersta65_1), .B(
        \sercon[6]_net_1 ), .C(un1_sersta58_3), .Y(ack_bit_1_sqmuxa));
    NOR2 \fsmmod_RNIBHKF_0[4]  (.A(\fsmmod[4]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(\fsmmod_ns_i_a3_8_tz[0] ));
    DFN1C0 \fsmmod[2]  (.D(\fsmmod_ns[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[2]_net_1 ));
    NOR2A \sersta_RNO_0[0]  (.A(N_723), .B(\fsmsta[0]_net_1 ), .Y(
        N_762));
    NOR2B \sercon_RNIPJLG[5]  (.A(\sercon[5]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[5] ));
    NOR2A SDAO_int_RNO_0 (.A(un1_fsmmod_1_0), .B(SDAO_int17), .Y(
        SDAO_int_1_sqmuxa));
    OR2A \framesync_RNIDO0O[2]  (.A(\framesync[2]_net_1 ), .B(N_89), 
        .Y(N_98));
    OR3C \fsmsync_RNO[3]  (.A(\fsmsync_ns_i_a4_9[3] ), .B(
        \fsmsync_ns_i_a4_8[3] ), .C(\fsmsync_ns_i_a4_10[3] ), .Y(
        \fsmsync_RNO[3]_net_1 ));
    NOR2B \fsmsta_RNILTOE[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(sersta81_2));
    NOR2 \fsmmod_RNI9FKF[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(N_1311_tz_tz));
    NOR2B \framesync_RNIIQ6N1[0]  (.A(framesync24_1), .B(N_1123_4), .Y(
        framesync24));
    NOR3C \fsmsta_0_RNI6VPB1[2]  (.A(sersta74_1), .B(
        \fsmsta_0[2]_net_1 ), .C(N_1120_3), .Y(sersta62));
    DFN1E0C0 \serdat[1]  (.D(\serdat_20[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[1]_net_1 ));
    NOR3C adrcomp_RNO_7 (.A(un1_sercon_1_0), .B(nedetect_net_1), .C(
        un1_framesync_1), .Y(un1_sercon_1_2));
    NOR3A \fsmsta_0_RNIVIS31[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(sersta63_0));
    NOR3B \fsmmod_RNO_1[2]  (.A(\fsmmod[2]_net_1 ), .B(N_1117_2), .C(
        PCLKint_ff_net_1), .Y(N_1118));
    OR3 \fsmsta_RNO_8[0]  (.A(fsmsta_nxt_m), .B(\fsmsta_nxt_4_m[0] ), 
        .C(SDAInt_m), .Y(\fsmsta_10s_1_iv_1[0] ));
    NOR2 \sercon_RNIJGM71[3]  (.A(COREI2C_0_INT_0), .B(serdat4), .Y(
        bsd7_tmp_1_sqmuxa_2_0));
    AND2 SDAO_int_1_sqmuxa_1 (.A(SDAO_int_3_sqmuxa_net_1), .B(
        SDAO_int6_i), .Y(SDAO_int_1_sqmuxa_1_net_1));
    NOR3A \fsmsta_RNI2F5M_0[3]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta80_0));
    AO1 \framesync_RNI4LDE3[0]  (.A(un1_framesync_2_0), .B(
        framesync24_1), .C(N_1123_8), .Y(un1_framesync_4));
    OR3 \fsmsync_RNO_12[3]  (.A(N_93), .B(\fsmsync_ns_i_a4_1_tz_tz[3] )
        , .C(N_97), .Y(\fsmsync_ns_i_a4_7[3] ));
    NOR3C \SCLI_ff_reg_RNIDVH91_0[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(
        un1_SCLI_ff_reg_1));
    NOR3C \fsmsync_RNO_1[3]  (.A(\fsmsync_RNO_6[3]_net_1 ), .B(N_74), 
        .C(\fsmsync_ns_i_a4_5_1[3] ), .Y(\fsmsync_ns_i_a4_8[3] ));
    OR2 \fsmdet_RNIA4HM1[3]  (.A(un1_fsmmod_1), .B(un2_PCLKint_p1), .Y(
        un1_fsmmod_2_0));
    NOR2A \fsmsta_RNO_9[0]  (.A(\fsmsta_nxt_cnst_0_a4_0[0] ), .B(
        fsmsta_nxt93), .Y(N_725));
    NOR3B pedetect_RNI7MJBC_0 (.A(bsd7_tmp_1_sqmuxa), .B(
        bsd7_tmp_1_sqmuxa_2_0), .C(pedetect_net_1), .Y(ack_1_sqmuxa_1));
    AO1 \fsmsync_RNO_2[3]  (.A(\fsmsync_ns_i_a4_4_0[3] ), .B(
        \fsmsync_ns_i_o2_0[3] ), .C(N_135), .Y(\fsmsync_ns_i_a4_10[3] )
        );
    AO1 \framesync_RNI6NDE3[0]  (.A(un1_framesync_2_0), .B(
        un1_framesync_3_0), .C(un1_framesync24_0), .Y(
        un1_framesync24_1_0_0));
    NOR2B \fsmsync_RNO_2[0]  (.A(N_1315), .B(\fsmsync[4]_net_1 ), .Y(
        N_1328));
    NOR2A \sercon_RNI8KRB[3]  (.A(COREI2C_0_INT_0), .B(SCLInt_net_1), 
        .Y(un1_sercon_0));
    NOR3 bsd7_RNO (.A(\serdat_i_m[7] ), .B(bsd7_12_iv_0), .C(
        bsd7_tmp_i_m), .Y(bsd7_12_iv));
    OR3 \fsmsync_RNIDIPO1[1]  (.A(un18_counter_PRESETN), .B(
        counter_PRESETN_1_0), .C(counter_PRESETN_1), .Y(
        counter_PRESETN_3));
    NOR3C \fsmsync_RNO_8[0]  (.A(N_131), .B(N_1318_tz_tz), .C(
        fsmsync_tr3_1_2), .Y(N_915));
    DFN1E0C0 \fsmsta[1]  (.D(\fsmsta_10[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[1]_net_1 ));
    OR3 adrcomp_RNO_2 (.A(un1_seradr0_NE_2), .B(un1_seradr0_NE_1), .C(
        un1_seradr0_NE_3), .Y(un1_seradr0_NE));
    AO1 \fsmdet_RNO[1]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[1] ), .C(
        N_1214_1), .Y(\fsmdet_RNO[1]_net_1 ));
    AO1 \fsmmod_RNO_2[2]  (.A(N_1119_1), .B(\fsmmod_ns_0_4_tz[2] ), .C(
        \fsmmod_ns_0_0[2] ), .Y(\fsmmod_ns_0_2_0[2] ));
    OA1 \fsmsta_RNO_12[1]  (.A(SDAInt_net_1), .B(\sercon[2]_net_1 ), 
        .C(un1_framesync24_3), .Y(\fsmsta_nxt_34_m_0[1] ));
    OA1B \fsmdet_RNIV96N11[3]  (.A(bsd7_tmp_0_sqmuxa_1), .B(
        un1_SCLI_ff_reg_1_sqmuxa_1_0), .C(serdat4), .Y(serdat_1_sqmuxa)
        );
    DFN1C0 \sercon[4]  (.D(\sercon_10[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sercon[4]_net_1 ));
    NOR2B SDAO_int_RNI8DI86 (.A(un1_framesync24_2), .B(\SDAO[0] ), .Y(
        SDAO_int_m_0));
    OR3A \fsmsync_RNO_10[3]  (.A(\fsmsync[5]_net_1 ), .B(
        \COREI2C_0_INT_0[0] ), .C(\sercon[4]_net_1 ), .Y(
        \fsmsync_ns_i_o2_0[3] ));
    DFN1C0 \indelay[1]  (.D(\indelay_RNO[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[1]_net_1 ));
    OR3 \fsmmod_RNO_4[2]  (.A(\fsmmod_ns_0_2_tz_0[2] ), .B(
        \framesync[2]_net_1 ), .C(\COREI2C_0_INT_0[0] ), .Y(
        \fsmmod_ns_0_2_tz_2[2] ));
    MX2A SDAO_int_RNO (.A(SDAO_int_1_sqmuxa), .B(N_674), .S(
        un1_SDAO_int_1_sqmuxa_1), .Y(SDAO_int_7));
    OR2B \fsmsta_10k_i_a2_RNO[2]  (.A(fsmsta_0_sqmuxa_1), .B(fsmsta19), 
        .Y(fsmsta_0_sqmuxa_2_s7_i));
    DFN1C0 \PCLK_count1[2]  (.D(PCLK_count1_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[2]_net_1 ));
    NOR3B \fsmmod_RNICADO[4]  (.A(\fsmmod[4]_net_1 ), .B(SCLO_int), .C(
        SCLInt_net_1), .Y(un14_counter_PRESETN));
    OR3 \fsmsync_RNO_6[3]  (.A(N_93), .B(N_1318_tz_tz), .C(N_98), .Y(
        \fsmsync_RNO_6[3]_net_1 ));
    NOR2B \sercon_RNIOILG[4]  (.A(un1_PRDATA), .B(\sercon[4]_net_1 ), 
        .Y(\sercon_m[4] ));
    NOR2B \sercon_RNIKELG[0]  (.A(\sercon[0]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[0] ));
    XOR2 adrcomp_RNO_10 (.A(seradr0apb[4]), .B(\serdat[3]_net_1 ), .Y(
        un1_seradr0_3));
    OR2A \fsmsync_RNO_27[3]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(fsmsync_ns_i_a4_141_0));
    NOR2 \sercon_RNIHFB4[3]  (.A(\sercon[4]_net_1 ), .B(
        COREI2C_0_INT_0), .Y(N_1109_4));
    OA1C \fsmsta_0_RNIH11T[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[2] ));
    AO1 \fsmsta_0_RNITBOG2[3]  (.A(sersta71_1), .B(sersta71_2), .C(
        sersta72), .Y(un1_sersta65_1_2));
    NOR2A \framesync_RNI7BJR[0]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(un1_framesync_3_0));
    NOR2B \fsmdet_RNIS2096[5]  (.A(fsmsta13), .B(counter_PRESETN_1), 
        .Y(un1_adrcomp_1));
    NOR3C \fsmsync_RNO_0[3]  (.A(\fsmsync_ns_i_a4_1_2[3] ), .B(
        \fsmsync_ns_i_a4_3[3] ), .C(\fsmsync_ns_i_a4_7_1[3] ), .Y(
        \fsmsync_ns_i_a4_9[3] ));
    DFN1C0 \fsmsync[4]  (.D(\fsmsync_RNO[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[4]_net_1 ));
    NOR2A \fsmmod_RNO_2[6]  (.A(\fsmmod[6]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_a3_0[6] ));
    NOR2 \fsmmod_RNI7DKF[0]  (.A(\fsmmod[0]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(mst));
    NOR2A \sersta_RNO_2[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(\sersta_4_0_a4_0[3] ));
    OR2A \fsmdet_RNIEUO4[5]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[5]_net_1 ), .Y(fsmmod5_0));
    DFN1E0P0 SDAO_int (.D(SDAO_int_7), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(SDAO_int_1_sqmuxa_1_net_1), .Q(\SDAO[0] ));
    NOR2B \fsmsta_RNO_6[0]  (.A(N_727_1), .B(sersta77_2), .Y(N_727));
    OR3 nedetect_RNI4981K (.A(framesync_1_sqmuxa_1), .B(
        framesync_0_sqmuxa_1), .C(un1_framesync_4_sqmuxa), .Y(N_662));
    AO1 \fsmsync_RNO_22[3]  (.A(N_1311_tz_tz), .B(N_1313_tz_tz), .C(
        fsmsync_tr13_18_0_i_0), .Y(N_72));
    NOR2B \fsmmod_RNI44GH[3]  (.A(\fsmmod[3]_net_1 ), .B(SCLInt_net_1), 
        .Y(N_1139_1));
    NOR2A ack_RNIVTO06_0 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .Y(
        fsmsta_0_sqmuxa_1));
    OA1B \fsmmod_RNO[3]  (.A(\fsmmod_ns_i_a3_i_a5_0_5[3] ), .B(
        \fsmmod_ns_i_a3_i_a5_0[3] ), .C(fsmmod5), .Y(N_82));
    OR3 \fsmsync_RNI424O[1]  (.A(\fsmsync[4]_net_1 ), .B(
        \fsmsync[1]_net_1 ), .C(\fsmsync[5]_net_1 ), .Y(
        counter_PRESETN_1_0));
    NOR2B adrcompen_RNINJ0K2 (.A(fsmsta_nxt93_1), .B(adrcompen_net_1), 
        .Y(fsmsta_nxt93));
    OA1B \fsmmod_RNO[1]  (.A(fsmmod_tr7_2), .B(\fsmmod_ns_0_a3_0[1] ), 
        .C(fsmmod5), .Y(\fsmmod_ns[1] ));
    DFN1P0 \sersta[4]  (.D(\sersta_4[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[4]_net_1 ));
    NOR2B \fsmmod_RNO_2[1]  (.A(\sercon[5]_net_1 ), .B(SDAInt_net_1), 
        .Y(fsmmod_tr7_2_0));
    MX2 \serdat_RNO[0]  (.A(IIC_control_0_BIF_1_PWDATA[0]), .B(
        ack_net_1), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[0] ));
    AOI1 \fsmdet_RNO[5]  (.A(\fsmdet_i_0[2] ), .B(\fsmdet_i_0[4] ), .C(
        N_1214_1), .Y(\fsmdet_RNO[5]_net_1 ));
    OR2 \fsmsta_RNIJMGU[4]  (.A(N_718), .B(\fsmsta[4]_net_1 ), .Y(
        N_734_i));
    OA1 \fsmsta_RNO_9[1]  (.A(un1_framesync24_1), .B(un1_sersta65), .C(
        \SDAO[0] ), .Y(SDAO_int_m_0_0));
    NOR2B \serdat_RNISLQR1[0]  (.A(seradr0apb[0]), .B(fsmsta19), .Y(
        fsmsta_nxt86));
    AOI1 \fsmmod_RNO_4[0]  (.A(\fsmmod[0]_net_1 ), .B(
        \sercon[4]_net_1 ), .C(N_1106), .Y(\fsmmod_ns_i_a3_0[0] ));
    NOR3C pedetect_RNIJ2DT2 (.A(un1_adrcomp), .B(pedetect_net_1), .C(
        framesync24), .Y(un1_framesync24_1_0));
    NOR2B adrcomp_RNI7BI02 (.A(adrcomp_net_1), .B(ens1_pre_3_sqmuxa), 
        .Y(fsmsta_0_sqmuxa_s5_0));
    OR2 \sercon_RNIHPCC[4]  (.A(N_89), .B(\sercon[4]_net_1 ), .Y(N_97));
    AO1 \serdat_RNIB6I71[5]  (.A(\serdat[5]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[5] ), .Y(PRDATA_iv_1[5]));
    NOR2A un9_PRDATA (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .Y(un9_PRDATA_net_1));
    NOR2B \sercon_RNI98341[5]  (.A(N_1109_4), .B(un1_sersta58_2), .Y(
        framesync10));
    AOI1 \fsmsync_RNO[2]  (.A(N_1326), .B(\fsmsync[0]_net_1 ), .C(
        \fsmsync_ns_i_0[2] ), .Y(\fsmsync_RNO[2]_net_1 ));
    AOI1 \fsmdet_RNO[3]  (.A(\fsmdet_i_0[1] ), .B(\fsmdet_i_0[6] ), .C(
        N_1208_1), .Y(\fsmdet_RNO[3]_net_1 ));
    AOI1 \fsmsync_RNO_20[3]  (.A(un1_fsmmod_1_2), .B(
        \indelay[1]_net_1 ), .C(\indelay[3]_net_1 ), .Y(
        fsmsync_tr13_19_0_i_0));
    NOR2B \fsmsta_0_RNILHLI1_3[2]  (.A(sersta82_1), .B(sersta74_1), .Y(
        sersta82));
    NOR3A \fsmsta_0_RNIDT0T[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta60_0));
    OR3 \sercon_RNIUK882[3]  (.A(un1_sercon_0), .B(counter_PRESETN_1), 
        .C(N_1123_8), .Y(un1_framesync_0));
    OA1 \fsmsync_RNO_14[3]  (.A(N_93), .B(fsmsync_ns_i_a4_141_2), .C(
        N_72), .Y(\fsmsync_ns_i_a4_0[3] ));
    GND GND_i (.Y(GND));
    NOR2B SDA_d0 (.A(OUT_EN_0), .B(SDAO_0_0), .Y(SDA_d0_net_1));
    NOR3B \fsmmod_RNO_3[2]  (.A(N_763_1), .B(N_1120_3), .C(
        \sercon[4]_net_1 ), .Y(fsmmod_tr10_8_1));
    XOR2 \fsmmod_RNO_3[3]  (.A(PCLKint_ff_net_1), .B(PCLKint_net_1), 
        .Y(N_101_i));
    NOR2 \fsmsta_RNILTOE_0[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta64_1));
    AO1B \fsmmod_RNO[4]  (.A(fsmmod_tr14_2), .B(N_1119_1), .C(
        \fsmmod_ns_i_a3_1[4] ), .Y(\fsmmod_RNO[4]_net_1 ));
    NOR2A nedetect_RNO (.A(SCLInt_net_1), .B(un1_SCLI_ff_reg), .Y(
        nedetect_0_sqmuxa));
    NOR2A \sercon_RNIG5QH[4]  (.A(\sercon[4]_net_1 ), .B(mst), .Y(
        adrcomp12));
    DFN1E0C0 adrcomp (.D(un1_adrcomp_2_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(adrcomp_2_sqmuxa_1), .Q(adrcomp_net_1));
    NOR2B \SDAI_ff_reg_RNO[1]  (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_4[1] ));
    AO1 \fsmsta_RNO_0[0]  (.A(\fsmsta_nxt_cnst[0] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_1_iv_2[0] ), .Y(N_650));
    MX2 \serdat_RNO[6]  (.A(IIC_control_0_BIF_1_PWDATA[6]), .B(
        \serdat[5]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[6] ));
    NOR2B \fsmsta_RNIEVHT[2]  (.A(N_1120_3), .B(N_763_1), .Y(
        sersta59_3));
    NOR3C \seradr0_m[5]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[5]), .Y(
        \seradr0_m[5]_net_1 ));
    NOR2A \fsmsta_RNO_3[1]  (.A(\fsmsta_nxt_cnst_i_a4_0_0[1] ), .B(
        fsmsta_nxt93), .Y(N_730));
    NOR2B \sercon_RNIRV1UA[3]  (.A(bsd7_tmp_1_sqmuxa), .B(
        COREI2C_0_INT_0), .Y(bsd7_tmp_0_sqmuxa_1));
    NOR2 \fsmsta_RNIP1PE_0[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(N_1120_3));
    XOR2 \PCLK_count1_RNO_0[2]  (.A(PCLK_count1_c1), .B(
        \PCLK_count1[2]_net_1 ), .Y(PCLK_count1_n2_tz));
    AO1C \fsmmod_RNO_3[0]  (.A(\COREI2C_0_INT_0[0] ), .B(
        \fsmmod_ns_i_a3_4_tz_2[0] ), .C(\fsmmod[0]_net_1 ), .Y(
        \fsmmod_ns_i_a3_4[0] ));
    XOR2 adrcomp_RNO_12 (.A(seradr0apb[7]), .B(\serdat[6]_net_1 ), .Y(
        un1_seradr0_6));
    OA1A adrcomp_RNO_0 (.A(un1_seradr0_NE), .B(fsmsta_nxt86), .C(
        un1_sercon_1_3), .Y(un1_sercon_1_4));
    DFN1C0 \fsmdet[5]  (.D(\fsmdet_RNO[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[5]_net_1 ));
    NOR2A pedetect_RNICMHD1 (.A(pedetect_net_1), .B(serdat4), .Y(
        serdat33));
    NOR2A \fsmsta_RNI23DR2[2]  (.A(\fsmsta[2]_net_1 ), .B(fsmsta_nxt93)
        , .Y(N_727_1));
    NOR2 pedetect_RNIU72R5 (.A(pedetect_net_1), .B(un1_fsmdet_2), .Y(
        ens1_pre_1_sqmuxa_2));
    NOR2B \fsmmod_RNIL19V[2]  (.A(\fsmmod_ns_i_a3_8_tz[0] ), .B(
        \fsmsync_ns_i_a4_1_tz_tz_0[3] ), .Y(
        \fsmsync_ns_i_a4_1_tz_tz[3] ));
    NOR3A \fsmsta_0_RNILHLI1[2]  (.A(sersta76_1), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta76));
    MX2 \serdat_RNO[1]  (.A(IIC_control_0_BIF_1_PWDATA[1]), .B(
        \serdat[0]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[1] ));
    AO1 \serdat_RNI72I71[3]  (.A(\serdat[3]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[3] ), .Y(PRDATA_iv_1[3]));
    NOR2B adrcompen_RNO_1 (.A(nedetect_net_1), .B(framesync24), .Y(
        un1_framesync24_6));
    MX2 \serdat_RNO[2]  (.A(IIC_control_0_BIF_1_PWDATA[2]), .B(
        \serdat[1]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[2] ));
    OA1B \fsmsta_RNO_7[1]  (.A(N_718), .B(N_740), .C(\fsmsta[1]_net_1 )
        , .Y(\fsmsta_nxt_cnst_i_a4_0_0[1] ));
    NOR2A \fsmsta_0_RNIADLTH[2]  (.A(un1_framesync24_6_s7_0), .B(
        un1_sersta65), .Y(un1_framesync24_6_s7_1_0));
    OR2 SCLO_int_RNO_4 (.A(\fsmsync[1]_net_1 ), .B(\fsmsync[6]_net_1 ), 
        .Y(un1_fsmsync_0));
    OR2 adrcomp_RNI0B5U (.A(mst), .B(adrcomp_net_1), .Y(un1_adrcomp));
    NOR3C \seradr0_m[3]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[3]), .Y(
        \seradr0_m[3]_net_1 ));
    NOR2A \fsmmod_RNO_4[4]  (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .Y(\fsmmod_ns_i_a3_1_tz_tz_0[4] ));
    DFN1P0 \fsmdet[2]  (.D(\fsmdet_RNO[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[2] ));
    OR2 \fsmsta_RNIUR1R6[4]  (.A(un1_sersta60_1), .B(un1_sersta78), .Y(
        un1_sersta58_1));
    NOR2B \indelay_RNI39RD[0]  (.A(\indelay[0]_net_1 ), .B(
        \indelay[1]_net_1 ), .Y(indelay_c1));
    OR3 \sersta_RNO[3]  (.A(\sersta_4_0_1[3] ), .B(sersta81_3), .C(
        N_767), .Y(\sersta_4[3] ));
    NOR2A \framesync_RNI9DJR[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(un1_framesync));
    AO1A \fsmsta_RNIEPS92[4]  (.A(N_761), .B(\fsmsta[4]_net_1 ), .C(
        sersta64), .Y(un1_sersta64_0));
    NOR2B \framesync_RNIIQ6N1_0[0]  (.A(N_1123_3), .B(N_1123_4), .Y(
        N_1123_8));
    AO1 \sercon_RNIDKE3F[3]  (.A(un1_fsmmod_2), .B(\sercon[6]_net_1 ), 
        .C(COREI2C_0_INT_0), .Y(\sercon_5[3] ));
    NOR2 \serdat_RNI2CPG[2]  (.A(\serdat[4]_net_1 ), .B(
        \serdat[2]_net_1 ), .Y(fsmsta19_1));
    AND2 \fsmsta_10k_i_a2[1]  (.A(fsmsta_1_sqmuxa_2_s8_i), .B(
        \fsmsta_10k_i_a2_0[1]_net_1 ), .Y(N_802));
    NOR2B \fsmsta_RNIJROE[1]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(sersta77_2));
    NOR2B \sercon_RNINHLG[3]  (.A(un1_PRDATA), .B(COREI2C_0_INT_0), .Y(
        \sercon_m[3] ));
    OA1B \fsmmod_RNO[6]  (.A(fsmmod_tr18_1_0), .B(
        \fsmmod_ns_0_tz_0[6] ), .C(fsmmod5), .Y(\fsmmod_ns[6] ));
    DFN1P0 \sersta[3]  (.D(\sersta_4[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[3]_net_1 ));
    NOR3B \fsmmod_RNO_9[2]  (.A(N_1276), .B(nedetect_net_1), .C(
        fsmmod5), .Y(N_1280));
    AO1 \serdat_RNI94I71[4]  (.A(\serdat[4]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[4] ), .Y(PRDATA_iv_1[4]));
    NOR2A \fsmmod_RNIR8PG3[2]  (.A(\fsmmod[2]_net_1 ), .B(fsmmod5), .Y(
        N_1119_1));
    NOR2 \fsmsync_RNO_24[3]  (.A(N_89), .B(\framesync[0]_net_1 ), .Y(
        N_138));
    XOR2 adrcomp_RNO_11 (.A(seradr0apb[3]), .B(\serdat[2]_net_1 ), .Y(
        un1_seradr0_2));
    AO1 ack_RNIT2GC22 (.A(\fsmsta_nxt_cnst[3] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_0_iv_2[3] ), .Y(N_653));
    OA1 \fsmsta_RNI6JTC5[3]  (.A(un1_sersta65_1_2), .B(sersta75), .C(
        framesync24), .Y(un1_framesync24_1));
    AND2 un1_framesync_1_I_1 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    NOR2A PCLKint_ff_RNIRDPI_0 (.A(PCLKint_ff_net_1), .B(PCLKint_net_1)
        , .Y(N_133_3));
    NOR2 \fsmsta_0_RNICKQED[2]  (.A(un1_framesync24_2), .B(
        un1_framesync24_4), .Y(un1_framesync24_6_s7_0));
    OR2 \fsmmod_RNICIKF[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[4]_net_1 ), .Y(un1_fsmmod_1_2));
    AO1 \serdat_RNI50I71[2]  (.A(\serdat[2]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[2] ), .Y(PRDATA_0_iv_0[2]));
    DFN1E1P0 busfree (.D(\fsmdet_i[3] ), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_fsmdet), .Q(busfree_net_1));
    DFN1E1C0 \sercon[7]  (.D(IIC_control_0_BIF_1_PWDATA[7]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[7]_net_1 ));
    DFN1E1P0 ack_bit (.D(IIC_control_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(ack_bit_0_sqmuxa_1), .Q(ack_bit_net_1));
    NOR2B \fsmsta_RNI0QOK2[2]  (.A(sersta59_3), .B(framesync24), .Y(
        un1_framesync24));
    DFN1P0 \SCLI_ff_reg[2]  (.D(\SCLI_ff_reg_4[2] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[2]_net_1 ));
    OR3 pedetect_RNIJI0CQ2 (.A(serdat_1_sqmuxa), .B(ack_1_sqmuxa_1), 
        .C(serdat_2_sqmuxa), .Y(un1_ack_1_sqmuxa));
    NOR2B adrcomp_RNIT3NJ (.A(adrcomp_net_1), .B(counter_PRESETN_1), 
        .Y(un1_framesync_5_0));
    MX2 \serdat_RNO[5]  (.A(IIC_control_0_BIF_1_PWDATA[5]), .B(
        \serdat[4]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[5] ));
    OR3 bsd7_tmp_RNO_0 (.A(bsd7_tmp_0_sqmuxa_3), .B(bsd7_tmp_0_sqmuxa), 
        .C(bsd7_tmp_0_sqmuxa_2), .Y(un1_bsd7_tmp_0_sqmuxa));
    XA1 \indelay_RNO[2]  (.A(indelay_c1), .B(\indelay[2]_net_1 ), .C(
        \fsmsync[3]_net_1 ), .Y(\indelay_RNO[2]_net_1 ));
    NOR3C \serdat_RNI7QOQ1[0]  (.A(fsmsta19_2), .B(fsmsta19_1), .C(
        fsmsta19_3), .Y(fsmsta19));
    NOR3A \fsmsta_0_RNIEU0T[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_2_0[2] ));
    NOR2B ack_bit_RNO (.A(ack_bit_0_sqmuxa), .B(sercon18), .Y(
        ack_bit_0_sqmuxa_1));
    NOR3C \framesync_RNIIQ6N1[1]  (.A(\framesync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(un1_framesync), .Y(un1_framesync_1));
    DFN1P0 \fsmsync[0]  (.D(\fsmsync_ns[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmsync[0]_net_1 ));
    NOR3C \seradr0_m[6]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[6]), .Y(
        \seradr0_m[6]_net_1 ));
    NOR2B \SDAI_ff_reg_RNO[0]  (.A(SDA_in), .B(\sercon[6]_net_1 ), .Y(
        \SDAI_ff_reg_4[0] ));
    DFN1E0P0 \fsmsta[0]  (.D(\fsmsta_10[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[0]_net_1 ));
    OR3 \fsmdet_RNIED1I1[3]  (.A(fsmsta33), .B(un1_fsmmod_1), .C(
        counter_PRESETN_1), .Y(un1_fsmdet_0));
    OR3 \fsmsync_RNO_11[3]  (.A(\fsmsync_ns_i_a4_1_tz_tz[3] ), .B(
        \framesync[3]_net_1 ), .C(N_89), .Y(\fsmsync_ns_i_a4_1_1[3] ));
    OR2B SDAInt_RNIMSFB (.A(SDAInt_net_1), .B(SCLInt_net_1), .Y(
        N_1214_1));
    NOR2B \fsmsta_RNINCU41_0[3]  (.A(sersta80_0), .B(sersta81_2), .Y(
        sersta80));
    NOR2A \fsmsta_RNINVOE_0[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta78_0));
    NOR2B \fsmmod_RNI55GH[4]  (.A(\fsmmod[4]_net_1 ), .B(SCLInt_net_1), 
        .Y(un2_PCLKint_p1_0));
    AOI1B adrcomp_RNO_3 (.A(fsmsta19), .B(ack_net_1), .C(
        un1_sercon_1_2), .Y(un1_sercon_1_3));
    NOR2B \fsmsta_RNI4OKQ5[4]  (.A(un1_sersta69), .B(framesync24), .Y(
        un1_framesync24_2));
    NOR2B \sercon_RNI6PI3C[3]  (.A(serdat4), .B(bsd7_tmp_0_sqmuxa_1), 
        .Y(bsd7_tmp_0_sqmuxa_2));
    OA1 \fsmsta_RNO_14[0]  (.A(N_718), .B(N_740), .C(\fsmsta[0]_net_1 )
        , .Y(\fsmsta_nxt_cnst_0_a4_0[0] ));
    NOR2 \fsmsta_RNILTOE_0[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_763_1));
    AO1 \fsmsta_0_RNIRGFU2[2]  (.A(sersta60_0), .B(N_1120_3), .C(
        sersta61), .Y(un1_sersta60_1));
    NOR3C \fsmsta_0_RNI6VPB1[3]  (.A(sersta61_2), .B(
        \fsmsta_0[3]_net_1 ), .C(N_763_1), .Y(sersta67));
    NOR2A \fsmsta_RNO_4[1]  (.A(\fsmsta[2]_net_1 ), .B(N_751), .Y(
        N_731));
    AOI1B \indelay_RNO[1]  (.A(N_146), .B(indelaylde_i_a5_1), .C(
        indelay_n1), .Y(\indelay_RNO[1]_net_1 ));
    OR2 \fsmmod_RNI4TD21[2]  (.A(N_1311_tz_tz), .B(N_93), .Y(
        fsmsync_ns_i_a4_143_0));
    DFN1E0C0 \serdat[6]  (.D(\serdat_20[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[6]_net_1 ));
    OR2A \fsmmod_RNO_2[0]  (.A(fsmmod5), .B(\fsmmod_ns_i_a3_4_0_tz[0] )
        , .Y(\fsmmod_ns_i_a3_4_0[0] ));
    NOR3A \sercon_RNO_0[4]  (.A(\sercon_8_1[4] ), .B(adrcomp12), .C(
        \fsmdet[5]_net_1 ), .Y(\sercon_8[4] ));
    NOR2A SDAO_int_RNIQKNF (.A(\SDAO[0] ), .B(SDAInt_net_1), .Y(
        fsmsta_nxt19));
    OR2B starto_en_RNO (.A(N_86), .B(N_93), .Y(N_88));
    DFN1E0P0 PCLKint (.D(PCLKint_5), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_PCLKint5), .Q(PCLKint_net_1));
    AOI1B \fsmmod_RNO_1[5]  (.A(sclscl_net_1), .B(pedetect_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(fsmmod_tr17_0));
    OA1B \fsmsync_RNO[5]  (.A(\fsmsync_ns_i_i_a5_0_1[5] ), .B(
        \fsmsync_ns_i_i_a5_0[5] ), .C(N_135), .Y(N_76));
    NOR3 \fsmsta_0_RNIVK0O4[2]  (.A(sersta76), .B(sersta82), .C(
        sersta77), .Y(framesync_1_sqmuxa_1_1));
    OR2 \fsmsta_0_RNITBOG2_0[3]  (.A(sersta73), .B(sersta75), .Y(
        un1_sersta65_1_3));
    OR2 \fsmmod_RNI9FKF[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .Y(N_1276));
    OR2 SCLInt_RNIRAJO1 (.A(N_135), .B(SCLInt_net_1), .Y(N_1315));
    NOR3B \fsmdet_RNIJ8SRA[3]  (.A(\sercon[6]_net_1 ), .B(un1_sersta58)
        , .C(\fsmdet[3]_net_1 ), .Y(bsd7_tmp_1_sqmuxa));
    NOR2A \fsmsta_RNIO0PE[2]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_740));
    OA1 SCLO_int_RNO_0 (.A(un1_sersta69_3), .B(un1_sersta69_4), .C(
        un1_sercon_0), .Y(un1_sercon_0_0));
    DFN1E0C0 \serdat[7]  (.D(\serdat_20[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[7]_net_1 ));
    OA1A \sercon_0_RNI94Q25[3]  (.A(un1_framesync_4), .B(
        \COREI2C_0_INT_0[0] ), .C(ens1_pre_3_sqmuxa), .Y(
        ens1_pre_2_sqmuxa_1_0));
    NOR2 \framesync_RNI7BJR_1[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(framesync24_1));
    XA1 \fsmsta_RNO_12[0]  (.A(SDAInt_net_1), .B(ack_net_1), .C(
        un1_framesync24), .Y(\fsmsta_nxt_4_m[0] ));
    NOR3B \fsmsta_RNINCU41_0[4]  (.A(\sersta_4_0_a4_0_0[4] ), .B(
        sersta74_1), .C(\fsmsta[4]_net_1 ), .Y(sersta70));
    MX2A \framesync_RNO[3]  (.A(framesync_2_sqmuxa), .B(N_670), .S(
        N_662), .Y(\framesync_7[3] ));
    OR3 SCLO_int_RNO_1 (.A(un1_fsmsync_0), .B(\fsmsync[5]_net_1 ), .C(
        \fsmsync[2]_net_1 ), .Y(un1_fsmsync_2));
    NOR2B \fsmmod_RNO_8[2]  (.A(PCLKint_net_1), .B(\fsmmod[2]_net_1 ), 
        .Y(fsmmod_tr10_5_0));
    DFN1C0 \fsmmod[6]  (.D(\fsmmod_ns[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[6]_net_1 ));
    NOR3 adrcompen_RNO_0 (.A(adrcomp12), .B(\fsmdet[3]_net_1 ), .C(
        un1_framesync24_6), .Y(adrcompen_2_sqmuxa));
    OR2A \fsmsta_10k_i_a2_RNO[1]  (.A(fsmsta_0_sqmuxa_1), .B(fsmsta19), 
        .Y(fsmsta_1_sqmuxa_2_s8_i));
    NOR2 \fsmmod_RNIAGKF[2]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .Y(\fsmsync_ns_i_a4_1_tz_tz_0[3] ));
    OR3 \fsmsta_RNIITD34[4]  (.A(sersta70), .B(sersta69), .C(sersta73), 
        .Y(un1_sersta69));
    DFN1C0 \PCLK_count1[3]  (.D(PCLK_count1_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[3]_net_1 ));
    AO1C \fsmdet_RNO[4]  (.A(\fsmdet[3]_net_1 ), .B(N_1217), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO[4]_net_1 ));
    OR2 \fsmmod_RNIBHKF[4]  (.A(\fsmmod[4]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(fsmsync_tr8_tz_tz_2));
    NOR2B adrcompen_RNI5PPS (.A(adrcompen_net_1), .B(adrcomp_net_1), 
        .Y(un1_adrcompen));
    NOR2A \PCLK_count1_RNO[0]  (.A(PCLK_count1_0_sqmuxa), .B(
        \PCLK_count1[0]_net_1 ), .Y(PCLK_count1_n0));
    NOR3A \fsmsta_0_RNI2MS31_1[2]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta69_1));
    NOR2A \PCLK_count1_RNI9TEA3[3]  (.A(PCLK_count17), .B(
        counter_PRESETN), .Y(PCLK_count1_0_sqmuxa));
    NOR2A \fsmsta_RNILTOE[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta81_1));
    OR2A \fsmsync_RNO_13[3]  (.A(\framesync[1]_net_1 ), .B(N_89), .Y(
        \fsmsync_ns_i_a4_3_0[3] ));
    DFN1E0C0 adrcompen (.D(un1_adrcomp_2_sqmuxa_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(adrcompen_2_sqmuxa), .Q(adrcompen_net_1));
    NOR2 \fsmmod_RNI6CKF[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(N_1313_tz_tz));
    NOR3C \fsmsta_0_RNI6VPB1_0[3]  (.A(sersta81_2), .B(
        \fsmsta_0[3]_net_1 ), .C(sersta61_2), .Y(sersta73));
    AO1A \fsmsta_RNO_2[1]  (.A(\SDAO[0] ), .B(un1_framesync24_2_s4), 
        .C(\fsmsta_10s_0_iv_0_0[1] ), .Y(\fsmsta_10s_0_iv_0[1] ));
    NOR3B \fsmsync_RNO_0[5]  (.A(\COREI2C_0_INT_0[0] ), .B(
        \fsmsync[2]_net_1 ), .C(N_93), .Y(\fsmsync_ns_i_i_a5_0_1[5] ));
    AO1B \indelay_RNO[0]  (.A(N_146), .B(indelaylde_i_a5_1), .C(N_1350)
        , .Y(\indelay_RNO[0]_net_1 ));
    OR3 \fsmsync_RNO_21[3]  (.A(\COREI2C_0_INT_0[0] ), .B(
        fsmsync_ns_i_a4_141_0), .C(N_1313_tz_tz), .Y(
        fsmsync_ns_i_a4_141_2));
    NOR3A \sercon_0_RNICJU6C[3]  (.A(N_804_1), .B(fsmsta_0_sqmuxa_s5), 
        .C(fsmsta32_s3_1), .Y(N_804));
    AO1B \fsmsync_RNO_9[3]  (.A(fsmsync_tr13_20_0_i_0), .B(
        fsmsync_tr13_19_0_i_0), .C(\fsmsync[3]_net_1 ), .Y(
        \fsmsync_ns_i_a4_4_0[3] ));
    OR2A \fsmmod_RNO_0[0]  (.A(fsmmod5), .B(\fsmmod_ns_i_a3_8_tz[0] ), 
        .Y(\fsmmod_ns_i_a3_8[0] ));
    NOR3B \fsmmod_RNO_0[4]  (.A(N_1123_4), .B(fsmmod_tr14_0), .C(
        \COREI2C_0_INT_0[0] ), .Y(fsmmod_tr14_2));
    NOR2 \framesync_RNIBFJR_0[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(un1_framesync_2_0));
    DFN1P0 PCLKint_ff (.D(PCLKint_ff_4), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(PCLKint_ff_net_1));
    AOI1B adrcomp_RNO (.A(un1_sercon_1_4), .B(un1_sersta64_1_1), .C(
        un1_adrcomp_2_sqmuxa), .Y(adrcomp_2_sqmuxa_1));
    NOR2B \fsmsta_RNINCU41[2]  (.A(sersta64_1_0), .B(sersta64_1), .Y(
        sersta64));
    DFN1C0 \PCLK_count1[1]  (.D(PCLK_count1_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[1]_net_1 ));
    NOR2B \fsmsta_RNIARHT[3]  (.A(sersta81_1), .B(sersta81_2), .Y(
        sersta81_3));
    NOR3B \fsmsta_0_RNII21T[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta_0[3]_net_1 ), .Y(sersta76_1));
    NOR3B bsd7_RNO_3 (.A(bsd7_tmp_1_sqmuxa), .B(bsd7_tmp_1_sqmuxa_2_0), 
        .C(nedetect_net_1), .Y(bsd7_1_sqmuxa_1));
    NOR2B \fsmsync_RNO_1[5]  (.A(\fsmsync[5]_net_1 ), .B(
        COREI2C_0_INT_0), .Y(\fsmsync_ns_i_i_a5_0[5] ));
    NOR3C \indelay_RNI5LSL[2]  (.A(\indelay[2]_net_1 ), .B(
        \indelay[0]_net_1 ), .C(\fsmsync[3]_net_1 ), .Y(
        indelaylde_i_a5_1));
    OR3 \fsmsta_RNI3BIS3[4]  (.A(sersta79), .B(sersta78), .C(sersta80), 
        .Y(un1_sersta78));
    AO1 \serdat_RNI3UH71[1]  (.A(\serdat[1]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[1] ), .Y(PRDATA_0_iv_0[1]));
    NOR3B \framesync_RNIRINGF[3]  (.A(SDAO_int12), .B(un1_sersta58), 
        .C(un1_SDAO_int17_1), .Y(SDAO_int_0_sqmuxa));
    DFN1P0 \SDAI_ff_reg[1]  (.D(\SDAI_ff_reg_4[1] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[1]_net_1 ));
    AND2 \fsmsta_10k_i_a2[2]  (.A(fsmsta_0_sqmuxa_2_s7_i), .B(
        \fsmsta_10k_i_a2_0[2]_net_1 ), .Y(N_803));
    MX2 \sercon_RNIMJMIG[3]  (.A(\sercon_5[3] ), .B(
        IIC_control_0_BIF_1_PWDATA[3]), .S(sercon18), .Y(
        \sercon_10[3] ));
    MX2B \fsmsta_RNO[1]  (.A(N_651), .B(N_802), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[1] ));
    NOR2B adrcomp_RNIOSP36 (.A(un1_framesync24_5), .B(un1_adrcomp), .Y(
        fsmsta13));
    NOR2 \fsmmod_RNICIKF_0[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[4]_net_1 ), .Y(N_1318_tz_tz));
    OA1C \fsmsync_RNO_0[7]  (.A(\fsmsync[6]_net_1 ), .B(SDAInt_net_1), 
        .C(\fsmsync[7]_net_1 ), .Y(\fsmsync_ns_i_0[7] ));
    OAI1 SCLO_int_RNO (.A(un1_sercon_0_0), .B(un1_fsmsync_2), .C(
        \sercon[6]_net_1 ), .Y(SCLO_int5_0_0));
    NOR3A \fsmsync_RNO_7[6]  (.A(\sercon[4]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(\COREI2C_0_INT_0[0] ), .Y(
        fsmsync_tr19_4));
    NOR2B \fsmmod_RNI0MJQ_0[4]  (.A(N_133_3), .B(\fsmmod[4]_net_1 ), 
        .Y(fsmsta33));
    NOR2A \framesync_RNI7BJR_0[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(N_1123_3));
    XOR2 un1_framesync_1_I_15 (.A(\framesync[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    OR2 \fsmmod_RNIQCTE1[3]  (.A(\fsmsync_ns_0_a3_i_1[0] ), .B(N_131), 
        .Y(N_78));
    XA1 \sersta_RNO_0[2]  (.A(\fsmsta_0[2]_net_1 ), .B(sersta77_2), .C(
        N_751), .Y(N_764));
    DFN1E0C0 \serdat[2]  (.D(\serdat_20[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[2]_net_1 ));
    DFN1P0 \fsmdet[4]  (.D(\fsmdet_RNO[4]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[4] ));
    OR2 \fsmsta_RNO_10[1]  (.A(\fsmsta_nxt_4_m_0[1] ), .B(
        \fsmsta_nxt_34_m_0[1] ), .Y(\fsmsta_10s_0_iv_0_0_tz_0[1] ));
    OR2 \fsmdet_RNIO2V83[5]  (.A(fsmmod5_0), .B(un1_sersta64), .Y(
        fsmmod5));
    NOR3C \seradr0_m[4]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[4]), .Y(
        \seradr0_m[4]_net_1 ));
    DFN1C0 \fsmmod[1]  (.D(\fsmmod_ns[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[1]_net_1 ));
    DFN1E1C0 \sercon[6]  (.D(IIC_control_0_BIF_1_PWDATA[6]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[6]_net_1 ));
    DFN1P0 \SCLI_ff_reg[0]  (.D(\SCLI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[0]_net_1 ));
    OR3A \fsmsync_RNO_0[4]  (.A(N_914_4), .B(fsmsync_ns_i_a4_138_0), 
        .C(N_1306_tz_tz_tz), .Y(\fsmsync_RNO_0[4]_net_1 ));
    OR3 \sersta_RNO[0]  (.A(N_762), .B(N_763), .C(N_752), .Y(
        \sersta_4[0] ));
    NOR2A \fsmmod_RNO_0[6]  (.A(N_1139_1), .B(N_93), .Y(
        fsmmod_tr18_1_0));
    MX2A bsd7_tmp_RNO (.A(bsd7_tmp_0_sqmuxa), .B(
        IIC_control_0_BIF_1_PWDATA[7]), .S(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_9));
    AO1 bsd7_RNO_2 (.A(\PWDATA_i_m_0[7] ), .B(bsd7_tmp_1_sqmuxa), .C(
        \fsmdet[3]_net_1 ), .Y(bsd7_12_iv_0));
    DFN1C0 \fsmsync[7]  (.D(\fsmsync_RNO[7]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[7]_net_1 ));
    AO1A \framesync_RNIKS6N1[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(un1_framesync), .Y(un1_framesync24_0)
        );
    DFN1E0C0 \fsmsta_0[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta_0[2]_net_1 ));
    DFN1C0 \PCLK_count1[0]  (.D(PCLK_count1_n0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[0]_net_1 ));
    NOR2A \fsmsync_RNO_6[6]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(fsmsync_tr19_0));
    AO1 \fsmsync_RNO_23[3]  (.A(\fsmsync_ns_i_a4_5_tz_tz_1[3] ), .B(
        \fsmsync_ns_i_a4_5_tz_tz_0[3] ), .C(N_93), .Y(
        \fsmsync_ns_i_a4_5_0[3] ));
    NOR3C \sercon_write_proc.un1_PSEL  (.A(IIC_control_0_BIF_1_PSELx), 
        .B(IIC_control_0_BIF_1_PENABLE), .C(IIC_control_0_BIF_1_PWRITE)
        , .Y(seradr0apb4_0));
    AO1A \fsmsta_RNO_3[0]  (.A(\SDAO[0] ), .B(N_807), .C(
        \fsmsta_10s_1_iv_1[0] ), .Y(\fsmsta_10s_1_iv_2[0] ));
    NOR2 \fsmsync_RNO_30[3]  (.A(\fsmmod[3]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .Y(\fsmsync_ns_i_a4_5_tz_tz_0[3] ));
    AO1 SDAO_int_RNO_2 (.A(SDAO_int_3_sqmuxa_0), .B(un1_sersta65_1), 
        .C(SDAO_int_0_sqmuxa), .Y(un1_SDAO_int_1_sqmuxa_1));
    AO1 \fsmsync_RNO_8[3]  (.A(fsmsync_ns_i_a4_143_0), .B(
        fsmsync_ns_i_a4_145_0), .C(N_98), .Y(\fsmsync_ns_i_a4_5_1[3] ));
    NOR2 \fsmsta_10k_i_a2_0[2]  (.A(fsmsta33), .B(fsmsta_1_sqmuxa_1_s9)
        , .Y(\fsmsta_10k_i_a2_0[2]_net_1 ));
    XA1 \indelay_RNO_0[1]  (.A(\indelay[1]_net_1 ), .B(
        \indelay[0]_net_1 ), .C(\fsmsync[3]_net_1 ), .Y(indelay_n1));
    NOR2 \fsmsta_10k_i_a2_0[1]  (.A(ens1_pre_1_sqmuxa_1_s6), .B(
        fsmsta_0_sqmuxa_s5), .Y(\fsmsta_10k_i_a2_0[1]_net_1 ));
    NOR3B \fsmsta_RNI2F5M[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta64_1_0));
    NOR2B ack_RNIVTO06 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .Y(
        fsmsta_1_sqmuxa_1_s9));
    NOR2B \fsmsta_RNINVOE[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_a4_0_0[4] ));
    NOR2B \fsmsta_RNINCU41[3]  (.A(sersta72_1), .B(sersta81_2), .Y(
        sersta72));
    AO1A \fsmsync_RNO_1[2]  (.A(N_1318), .B(N_1322), .C(N_135), .Y(
        \fsmsync_ns_i_0[2] ));
    DFN1E0P0 \fsmsta[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[3]_net_1 ));
    DFN1C0 \sersta[1]  (.D(\sersta_4[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[1]_net_1 ));
    OR2A \SCLI_ff_reg_RNIP31G[0]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[0]_net_1 ), .Y(\SCLI_ff_reg_4[1] ));
    NOR3B \fsmmod_RNO_1[0]  (.A(\fsmmod_ns_i_a3_4[0] ), .B(
        \fsmmod_ns_i_a3_0[0] ), .C(un2_PCLKint_p1), .Y(
        \fsmmod_ns_i_a3_2[0] ));
    OR2A PCLKint_RNO (.A(PCLKint_net_1), .B(counter_PRESETN), .Y(
        PCLKint_5));
    OR2 \fsmmod_RNIDJKF[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(\fsmsync_ns_0_a3_i_0[0] ));
    NOR2B adrcomp_RNO_13 (.A(\sercon[2]_net_1 ), .B(adrcompen_net_1), 
        .Y(un1_sercon_1_0));
    NOR3C \seradr0_m[7]  (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb[7]), .Y(
        \seradr0_m[7]_net_1 ));
    NOR2B \framesync_RNO_0[1]  (.A(I_15), .B(un1_framesync_4_sqmuxa), 
        .Y(N_668));
    NOR3A pedetect_RNIDI69C1 (.A(un1_ack_3_sqmuxa), .B(serdat4), .C(
        pedetect_net_1), .Y(serdat_2_sqmuxa));
    AND2 SDAO_int_3_sqmuxa (.A(un1_sersta65_1), .B(SDAO_int_3_sqmuxa_0)
        , .Y(SDAO_int_3_sqmuxa_net_1));
    NOR2 \sercon_RNIKB0N[4]  (.A(counter_PRESETN_1), .B(adrcomp12), .Y(
        un1_adrcomp_2_sqmuxa_0));
    AOI1B \fsmsta_RNO_2[4]  (.A(\fsmsta_nxt_cnst_i_a4_0[4] ), .B(
        N_727_1), .C(\fsmsta_nxt_cnst_m_0[4] ), .Y(
        \fsmsta_nxt_cnst_m_1[4] ));
    OR2A PCLKint_ff_RNIRDPI (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .Y(N_93));
    OR3A busfree_RNO_1 (.A(\sercon[6]_net_1 ), .B(\fsmdet[3]_net_1 ), 
        .C(un2_PCLKint_p1), .Y(un1_fsmdet_1));
    OR2 \fsmmod_RNI0MJQ[4]  (.A(\fsmmod[4]_net_1 ), .B(N_93), .Y(
        \fsmsync_ns_0_o2_0[0] ));
    NOR2 PCLK_count1_ov_RNO (.A(PCLK_count17), .B(counter_PRESETN), .Y(
        PCLK_count1_1_sqmuxa));
    AO1 adrcompen_RNITA1J5_0 (.A(un1_framesync24_1_1), .B(
        fsmsta_nxt93_1), .C(un1_fsmdet_0), .Y(un1_fsmdet_2));
    NOR3B SDAO_int_RNO_3 (.A(un1_sersta65_1), .B(SDAO_int_3_sqmuxa_0), 
        .C(ack_bit_net_1), .Y(SDAO_int_2_m));
    OR2A \indelay_RNO_0[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[0]_net_1 ), .Y(N_1350));
    AO1 \fsmmod_RNO_1[6]  (.A(N_133_3), .B(N_1139_1), .C(
        \fsmmod_ns_0_a3_0[6] ), .Y(\fsmmod_ns_0_tz_0[6] ));
    MX2B ack_RNIK90G3 (.A(\fsmsta_0[3]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst[3] ));
    DFN1C0 \fsmsync[6]  (.D(\fsmsync_RNO[6]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[6]_net_1 ));
    OR2A \sercon_RNIOONV[5]  (.A(\sercon[5]_net_1 ), .B(sersta59_3), 
        .Y(un1_sersta58_2));
    NOR2 \fsmsync_RNO[7]  (.A(\fsmsync_ns_i_0[7] ), .B(N_135), .Y(
        \fsmsync_RNO[7]_net_1 ));
    NOR3A \fsmsync_RNO_9[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .C(\fsmmod[5]_net_1 ), .Y(fsmsync_tr3_1_2));
    NOR2B bsd7_RNO_4 (.A(bsd7_tmp_i_m_0), .B(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_i_m));
    OR2 PCLKint_ff_RNO (.A(counter_PRESETN), .B(PCLKint_net_1), .Y(
        PCLKint_ff_4));
    DFN1E1P0 SDAInt (.D(\SDAI_ff_reg[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_SDAInt5), .Q(SDAInt_net_1));
    NOR3C \indelay_RNI7AQS[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[0]_net_1 ), .C(fsmsync_tr15_0_4_0), .Y(N_914_4));
    OR2A \framesync_RNIOI052[3]  (.A(\framesync[3]_net_1 ), .B(
        N_1123_8), .Y(SDAO_int12));
    OA1B ack_RNIUV7H8 (.A(un1_framesync24_1), .B(un1_framesync24), .C(
        \fsmsta_nxt_4[2] ), .Y(\fsmsta_nxt_4_i_m[2] ));
    OR3 \sercon_RNIM93TU[2]  (.A(\fsmsta_nxt_4_i_m[2] ), .B(
        \fsmsta_nxt_34_i_m[1] ), .C(\fsmsta_10s_iv_0[2] ), .Y(
        \fsmsta_10s_iv_2[2] ));
    DFN1E0C0 \fsmsta[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[2]_net_1 ));
    OR3C \fsmmod_RNO[0]  (.A(\fsmmod_ns_i_a3_8[0] ), .B(
        \fsmmod_ns_i_a3_2[0] ), .C(\fsmmod_ns_i_a3_4_0[0] ), .Y(
        \fsmmod_RNO[0]_net_1 ));
    OR2A \fsmsync_RNO_18[3]  (.A(un1_fsmmod_1_2), .B(
        \indelay[2]_net_1 ), .Y(N_108));
    OR3 \fsmsta_RNO_3[4]  (.A(un1_framesync24_1), .B(SDAO_int_m_0), .C(
        un1_framesync24_3), .Y(\fsmsta_10s_1_iv_0[4] ));
    NOR3A \fsmsta_0_RNILHLI1[3]  (.A(sersta79_0), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(sersta79));
    OR2A \fsmsta_RNO_8[1]  (.A(fsmsta_nxt86), .B(ack_net_1), .Y(N_724));
    OR3 \fsmmod_RNIJG8K1[1]  (.A(un1_adrcompen), .B(\fsmmod[1]_net_1 ), 
        .C(un1_fsmmod_1_2), .Y(un1_fsmmod_1_0));
    DFN1C0 \fsmdet[0]  (.D(SCLInt_net_1), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(\fsmdet_i_0[0] ));
    DFN1P0 \SDAI_ff_reg[0]  (.D(\SDAI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[0]_net_1 ));
    OR3 SDAO_int_RNI6E2KG (.A(un1_framesync24_1), .B(SDAO_int_m_0), .C(
        fsmsta_nxt20_m), .Y(\fsmsta_10s_iv_0[2] ));
    NOR3B \fsmmod_RNO_6[0]  (.A(starto_en_net_1), .B(
        \fsmmod_ns_i_a3_4_tz_1[0] ), .C(PCLKint_ff_net_1), .Y(
        \fsmmod_ns_i_a3_4_tz_2[0] ));
    OR2 ack_RNO (.A(bsd7_tmp_0_sqmuxa_1), .B(SDAInt_net_1), .Y(ack_12));
    AOI1B \sercon_0_RNI4QSIA[3]  (.A(un1_sersta64_1), .B(
        \COREI2C_0_INT_0[0] ), .C(un1_adrcomp_2_sqmuxa_0), .Y(
        un1_adrcomp_2_sqmuxa));
    NOR2A \fsmmod_RNO_1[1]  (.A(\fsmmod[1]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_a3_0[1] ));
    MX2 \serdat_RNO[7]  (.A(IIC_control_0_BIF_1_PWDATA[7]), .B(
        \serdat[6]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[7] ));
    DFN1C0 \fsmdet[3]  (.D(\fsmdet_RNO[3]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[3]_net_1 ));
    NOR3A \fsmmod_RNO_5[0]  (.A(N_131), .B(N_1276), .C(
        \fsmmod[0]_net_1 ), .Y(\fsmmod_ns_i_a3_4_0_tz[0] ));
    OR2 \framesync_RNIOHK55[0]  (.A(un1_framesync24_1_0_0), .B(
        framesync24), .Y(un1_framesync24_5));
    NOR2A \fsmmod_RNO_2[5]  (.A(\sercon[5]_net_1 ), .B(SDAInt_net_1), 
        .Y(fsmmod_tr16_2_0));
    OR2 \fsmmod_RNO_1[4]  (.A(\fsmmod_ns_i_a3_1_0[4] ), .B(fsmmod5), 
        .Y(\fsmmod_ns_i_a3_1[4] ));
    NOR3 \serdat_RNI656P[1]  (.A(\serdat[5]_net_1 ), .B(
        \serdat[6]_net_1 ), .C(\serdat[1]_net_1 ), .Y(fsmsta19_3));
    NOR2A PCLKint_RNO_0 (.A(PCLK_count2_ov_i_0), .B(counter_PRESETN), 
        .Y(un1_PCLKint5));
    MX2A \framesync_RNO[0]  (.A(framesync_2_sqmuxa), .B(N_667), .S(
        N_662), .Y(\framesync_7[0] ));
    NOR3C \fsmmod_RNO_0[5]  (.A(N_1109_4), .B(fsmmod_tr16_2_0), .C(
        N_1109_5), .Y(fsmmod_tr16_2));
    NOR3C \fsmsync_RNO_2[4]  (.A(\fsmsync_ns_i_a4_1_tz_tz_0[3] ), .B(
        N_1313_tz_tz), .C(\fsmmod_ns_i_a3_8_tz[0] ), .Y(
        N_1306_tz_tz_tz));
    MX2 \serdat_RNO[4]  (.A(IIC_control_0_BIF_1_PWDATA[4]), .B(
        \serdat[3]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[4] ));
    OR2 \fsmdet_RNI8EMPA[3]  (.A(un1_sersta58), .B(\fsmdet[3]_net_1 ), 
        .Y(un1_sersta58_3));
    NOR2B un1_framesync_1_I_20 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \framesync[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    AO1A \sersta_RNO_0[3]  (.A(sersta71_2), .B(\sersta_4_0_a4_0[3] ), 
        .C(\sersta_4_0_0[3] ), .Y(\sersta_4_0_1[3] ));
    NOR2B pedetect_RNIO9VC1 (.A(pedetect_net_1), .B(sersta64), .Y(
        un1_sersta64_0_0));
    MX2 \fsmsta_RNO[4]  (.A(N_654), .B(N_805), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[4] ));
    DFN1E1C0 \sercon[0]  (.D(IIC_control_0_BIF_1_PWDATA[0]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[0]_net_1 ));
    OR3 adrcomp_RNO_6 (.A(un1_seradr0_3), .B(un1_seradr0_2), .C(
        un1_seradr0_6), .Y(un1_seradr0_NE_3));
    AO1A \sercon_0_RNI1SKRA1[3]  (.A(\COREI2C_0_INT_0[0] ), .B(
        ack_bit_1_sqmuxa), .C(ack_3_sqmuxa), .Y(un1_ack_3_sqmuxa));
    XOR2 adrcomp_RNO_9 (.A(seradr0apb[2]), .B(\serdat[1]_net_1 ), .Y(
        un1_seradr0_1_0));
    NOR3A \fsmdet_RNIED1I1_0[3]  (.A(counter_PRESETN_1), .B(fsmsta33), 
        .C(un1_fsmmod_1), .Y(ens1_pre_3_sqmuxa));
    AO1 \sersta_RNI9B0C1[3]  (.A(\sersta[3]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[6]_net_1 ), .Y(PRDATA_iv_0[6])
        );
    DFN1C0 \fsmmod[3]  (.D(N_82), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \fsmmod[3]_net_1 ));
    OR3 SCLO_int_RNO_3 (.A(un1_sersta65_1_3), .B(un1_sersta69_0), .C(
        un1_sersta69_1), .Y(un1_sersta69_4));
    NOR2 \fsmmod_RNI7DKF_0[3]  (.A(\fsmmod[3]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .Y(N_131));
    NOR3A \fsmsta_0_RNI2MS31_0[2]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta_0[2]_net_1 ), .Y(sersta74_0));
    OA1 \fsmsta_RNO_13[0]  (.A(un1_framesync24_3), .B(
        un1_framesync24_4), .C(SDAInt_net_1), .Y(SDAInt_m));
    AO1A \fsmsync_RNO_19[3]  (.A(un1_fsmmod_1_2), .B(
        fsmsync_tr13_20_0_i_a5_1_0), .C(N_124), .Y(
        fsmsync_tr13_20_0_i_0));
    NOR2B \fsmsync_RNO_5[0]  (.A(\fsmsync[0]_net_1 ), .B(SCLInt_net_1), 
        .Y(\fsmsync_ns_0_a4_1_0[0] ));
    DFN1E0C0 \serdat[4]  (.D(\serdat_20[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[4]_net_1 ));
    DFN1P0 \fsmdet[1]  (.D(\fsmdet_RNO[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[1] ));
    DFN1P0 \framesync[2]  (.D(\framesync_7[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[2]_net_1 ));
    NOR3B \sercon_RNO_1[4]  (.A(\sercon[6]_net_1 ), .B(
        \sercon[4]_net_1 ), .C(fsmsta33), .Y(\sercon_8_1[4] ));
    AO1D nedetect_RNIC2596 (.A(un1_framesync_0), .B(nedetect_net_1), 
        .C(framesync_1_sqmuxa_2), .Y(un1_framesync_4_sqmuxa));
    NOR2 \fsmsta_RNO_4[4]  (.A(ens1_pre_0_sqmuxa_s2_1), .B(
        fsmsta32_s3_1), .Y(\fsmsta_10k_0_a2_0[4] ));
    AO1C \fsmsync_RNO[4]  (.A(N_1315), .B(\fsmsync[4]_net_1 ), .C(
        \fsmsync_RNO_0[4]_net_1 ), .Y(\fsmsync_RNO[4]_net_1 ));
    AO1 \sersta_RNIBD0C1[4]  (.A(\sersta[4]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[7]_net_1 ), .Y(PRDATA_iv_0[7])
        );
    OR2A \fsmsync_RNO_28[3]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[2]_net_1 ), .Y(fsmsync_tr13_18_0_i_0));
    OR3 \fsmsta_RNIIKOGA[4]  (.A(un1_sersta65_0), .B(un1_sersta65_1_3), 
        .C(un1_sersta65_1_4), .Y(un1_sersta65_1));
    OR2A \fsmsync_RNO_0[2]  (.A(SCLInt_net_1), .B(N_1314), .Y(N_1326));
    NOR2A SDAO_int_RNIODIU4 (.A(un1_sersta65), .B(fsmsta_nxt19), .Y(
        fsmsta_nxt20_m));
    DFN1E0C0 \serdat[3]  (.D(\serdat_20[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[3]_net_1 ));
    OR3 \sersta_RNO[2]  (.A(N_764), .B(N_765), .C(N_752), .Y(
        \sersta_4[2] ));
    MX2C \fsmsta_10k_i_a2_RNI79LJE2[2]  (.A(\fsmsta_10s_iv[2] ), .B(
        N_803), .S(un1_fsmdet_2), .Y(\fsmsta_10[2] ));
    AO1 \fsmsync_RNO_1[0]  (.A(\fsmsync_ns_0_a4_1_0[0] ), .B(N_1314), 
        .C(\fsmsync_ns_0_0[0] ), .Y(\fsmsync_ns_0_1[0] ));
    NOR2B \fsmsta_0_RNIUOQE4[2]  (.A(un1_sersta65_0), .B(framesync24), 
        .Y(un1_sersta65));
    DFN1E0P0 bsd7 (.D(bsd7_12_iv), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_SCLI_ff_reg_1_sqmuxa_1), .Q(bsd7_net_1));
    DFN1P0 \SDAI_ff_reg[2]  (.D(\SDAI_ff_reg_4[2] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[2]_net_1 ));
    OR2A adrcomp_RNO_1 (.A(mst), .B(sersta64), .Y(un1_sersta64_1_1));
    AOI1B \fsmsta_RNO_11[1]  (.A(ack_net_1), .B(SDAInt_net_1), .C(
        un1_framesync24), .Y(\fsmsta_nxt_4_m_0[1] ));
    OR2A \SCLI_ff_reg_RNO[2]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[1]_net_1 ), .Y(\SCLI_ff_reg_4[2] ));
    NOR2A \fsmsta_RNO_11[0]  (.A(un1_sersta65), .B(\SDAO[0] ), .Y(
        fsmsta_nxt_m));
    NOR3C \fsmsta_RNI98TN9[4]  (.A(framesync_1_sqmuxa_1_1), .B(
        framesync_2_sqmuxa), .C(framesync_1_sqmuxa_1_2), .Y(
        framesync_1_sqmuxa_1));
    NOR2B \PCLK_count1_RNITEU4[0]  (.A(\PCLK_count1[0]_net_1 ), .B(
        \PCLK_count1[1]_net_1 ), .Y(PCLK_count1_c1));
    AO1B \fsmsync_RNO_7[3]  (.A(N_100), .B(N_108), .C(
        \fsmsync[3]_net_1 ), .Y(N_74));
    NOR3A \fsmsta_RNI2F5M_1[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta72_1));
    DFN1C0 \indelay[0]  (.D(\indelay_RNO[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[0]_net_1 ));
    NOR2A \fsmsync_RNO_7[0]  (.A(SCLInt_net_1), .B(\indelay[3]_net_1 ), 
        .Y(fsmsync_tr3_0_0));
    NOR3A busfree_RNI5AFR_0 (.A(busfree_net_1), .B(\fsmmod[5]_net_1 ), 
        .C(SCLInt_net_1), .Y(un18_counter_PRESETN));
    AO1 SDAO_int_RNI4O0B1 (.A(\SDAO[0] ), .B(OUT_EN), .C(SDA_d0_net_1), 
        .Y(SDA_d));
    NOR2B \fsmsta_0_RNILHLI1_0[2]  (.A(sersta61_0), .B(sersta61_2), .Y(
        sersta61));
    OR3 busfree_RNO_0 (.A(adrcomp12), .B(\fsmdet[5]_net_1 ), .C(
        un1_fsmdet_1), .Y(un1_fsmdet));
    OR2A \fsmsta_RNI3G5M[1]  (.A(\fsmsta[1]_net_1 ), .B(N_751), .Y(
        N_723));
    NOR2A \indelay_RNI5BRD[2]  (.A(\indelay[2]_net_1 ), .B(
        \indelay[1]_net_1 ), .Y(fsmsync_tr15_0_4_0));
    AO1 pedetect_RNIK8QKO1 (.A(serdat33), .B(un1_ack_3_sqmuxa), .C(
        ack_0_sqmuxa_1), .Y(un1_ack_0_sqmuxa_2));
    DFN1C0 \sersta[2]  (.D(\sersta_4[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[2]_net_1 ));
    AO1A \fsmsync_RNO_0[6]  (.A(\fsmsync[6]_net_1 ), .B(N_1321), .C(
        \fsmsync_ns_i_a4_0_0[6] ), .Y(\fsmsync_ns_i_0_tz[6] ));
    DFN1P0 \framesync[3]  (.D(\framesync_7[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[3]_net_1 ));
    OR2B \fsmsync_RNO_2[2]  (.A(\fsmsync[2]_net_1 ), .B(N_93), .Y(
        N_1322));
    NOR3C pedetect_RNI7MJBC (.A(bsd7_tmp_1_sqmuxa), .B(
        bsd7_tmp_1_sqmuxa_2_0), .C(pedetect_net_1), .Y(ack_0_sqmuxa_1));
    DFN1E0P0 ack (.D(ack_12), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_ack_0_sqmuxa_3), .Q(ack_net_1));
    NOR2B un1_framesync_1_I_22 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \framesync[2]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_12[0] ));
    NOR3C \fsmmod_RNO_0[1]  (.A(N_1109_4), .B(fsmmod_tr7_2_0), .C(
        N_1109_5), .Y(fsmmod_tr7_2));
    DFN1E0P0 \fsmsta[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[4]_net_1 ));
    OR2A nedetect_RNO_0 (.A(\sercon[6]_net_1 ), .B(un1_SCLI_ff_reg_1), 
        .Y(un1_serdat52_0));
    AO1 SDAO_int_RNO_1 (.A(bsd7_net_1), .B(SDAO_int_0_sqmuxa), .C(
        SDAO_int_2_m), .Y(N_674));
    NOR2B \fsmsta_RNIKSOE[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(sersta71_2));
    DFN1E1P0 bsd7_tmp (.D(bsd7_tmp_9), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_bsd7_tmp_0_sqmuxa), .Q(bsd7_tmp_net_1));
    AO1 \fsmdet_RNO[2]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[2] ), .C(
        N_1208_1), .Y(\fsmdet_RNO[2]_net_1 ));
    DFN1C0 \fsmsync[2]  (.D(\fsmsync_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[2]_net_1 ));
    ZOR3 SDAInt_RNO (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \SDAI_ff_reg[2]_net_1 ), .C(\SDAI_ff_reg[1]_net_1 ), .Y(
        un1_SDAInt5));
    NOR2A \fsmsta_RNIMUOE[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(sersta61_2));
    OR3 \fsmdet_RNIQ23VE[3]  (.A(un1_fsmmod_2_1), .B(un1_fsmmod_2_0), 
        .C(un1_adrcomp_1), .Y(un1_fsmmod_2));
    NOR3B starto_en_RNIUAL81 (.A(\fsmmod[0]_net_1 ), .B(
        starto_en_net_1), .C(N_93), .Y(N_1109_5));
    AO1 \fsmsta_RNO_0[4]  (.A(\fsmsta_nxt_cnst_m_1[4] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_1_iv_0[4] ), .Y(N_654));
    NOR2 \fsmsync_RNO_29[3]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[4]_net_1 ), .Y(\fsmsync_ns_i_a4_5_tz_tz_1[3] ));
    NOR2B \fsmsta_RNINCU41_1[3]  (.A(sersta75_0), .B(N_763_1), .Y(
        sersta75));
    NOR2B \fsmmod_RNI37DA[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ens1_pre_0_sqmuxa_s2_1));
    NOR2A ack_RNIOIHF (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[2] ));
    DFN1E1C0 \sercon[1]  (.D(IIC_control_0_BIF_1_PWDATA[1]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[1]_net_1 ));
    MX2 \fsmsta_RNO[0]  (.A(N_650), .B(N_801), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[0] ));
    OR3 \SCLI_ff_reg_RNIDVH91[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(
        un1_SCLI_ff_reg));
    NOR3C \fsmsta_0_RNIG01T[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta79_0));
    MX2 \sercon_0_RNI61G6K2[3]  (.A(N_653), .B(N_804), .S(un1_fsmdet_2)
        , .Y(\fsmsta_10[3] ));
    NOR3A \sercon_RNIUK882_0[3]  (.A(N_1123_8), .B(un1_sercon_0), .C(
        counter_PRESETN_1), .Y(framesync_2_sqmuxa));
    NOR2A \fsmsta_RNO_1[4]  (.A(\fsmsta_10k_0_a2_0[4] ), .B(
        fsmsta_0_sqmuxa_1), .Y(N_805));
    OR3C \PCLK_count1_RNI0RD7[3]  (.A(\PCLK_count1[2]_net_1 ), .B(
        \PCLK_count1[3]_net_1 ), .C(\PCLK_count1[1]_net_1 ), .Y(
        PCLK_count17));
    DFN1E0C0 nedetect (.D(nedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52_0), .Q(nedetect_net_1));
    OA1B \sersta_RNO_1[3]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(N_751), .Y(N_767));
    NOR2B \PCLK_count1_RNO[3]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n3_tz), .Y(PCLK_count1_n3));
    OR2 \fsmdet_RNO_0[4]  (.A(\fsmdet_i_0[4] ), .B(SDAInt_net_1), .Y(
        N_1217));
    DFN1P0 \SCLI_ff_reg[1]  (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[1]_net_1 ));
    NOR3A \fsmsta_0_RNII21T_0[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta71_1));
    OR2A SDAInt_RNIMSFB_0 (.A(SCLInt_net_1), .B(SDAInt_net_1), .Y(
        N_1208_1));
    AOI1 \fsmsta_RNICUJN2[4]  (.A(sersta81_3), .B(\fsmsta[4]_net_1 ), 
        .C(sersta74), .Y(framesync_1_sqmuxa_1_2));
    NOR2A \fsmmod_RNI0J941[4]  (.A(un2_PCLKint_p1_0), .B(N_93), .Y(
        un2_PCLKint_p1));
    NOR2B \fsmdet_RNIAH7I[3]  (.A(N_1276), .B(\fsmdet[3]_net_1 ), .Y(
        un1_fsmmod_1));
    NOR2B \SDAI_ff_reg_RNO[2]  (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_4[2] ));
    AO1 \fsmsta_RNICUJN2_0[4]  (.A(sersta81_3), .B(\fsmsta[4]_net_1 ), 
        .C(sersta82), .Y(un1_sersta64_3));
    OR3 \fsmmod_RNIRDTE1[3]  (.A(N_1276), .B(fsmsync_tr8_tz_tz_0), .C(
        fsmsync_tr8_tz_tz_2), .Y(N_929_tz_tz));
    NOR3B \fsmsync_RNO_1[6]  (.A(fsmsync_tr19_5), .B(N_929_tz_tz), .C(
        N_93), .Y(N_1046));
    DFN1C0 PCLK_count1_ov (.D(PCLK_count1_1_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(PCLK_count1_ov_net_1));
    XO1 adrcomp_RNO_4 (.A(\serdat[4]_net_1 ), .B(seradr0apb[5]), .C(
        un1_seradr0_5), .Y(un1_seradr0_NE_2));
    OR2 \fsmsta_RNO_7[0]  (.A(un1_framesync24_2_s4), .B(
        un1_framesync24_1), .Y(N_807));
    NOR2B \sercon_RNIMGLG[2]  (.A(\sercon[2]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[2] ));
    NOR2B \fsmdet_RNICSO4[3]  (.A(\fsmdet[3]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(bsd7_tmp_0_sqmuxa));
    NOR2 \sercon_write_proc.un1_PRDATA  (.A(
        IIC_control_0_BIF_1_PADDR[3]), .B(IIC_control_0_BIF_1_PADDR[2])
        , .Y(un1_PRDATA));
    NOR2B \fsmmod_RNO_2[4]  (.A(\sercon[4]_net_1 ), .B(N_1123_3), .Y(
        fsmmod_tr14_0));
    NOR2B \fsmmod_RNI8CDA[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(fsmsta32_s3_1));
    DFN1E1C0 starto_en (.D(N_86), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        N_88), .Q(starto_en_net_1));
    NOR2A \fsmmod_RNIQ1BM[0]  (.A(\fsmmod[0]_net_1 ), .B(adrcomp_net_1)
        , .Y(un1_fsmmod));
    AO1 \sersta_RNO[4]  (.A(N_761), .B(\fsmsta[4]_net_1 ), .C(
        \sersta_4_0_0[4] ), .Y(\sersta_4[4] ));
    AO1 \fsmmod_RNO_6[2]  (.A(fsmmod_tr10_5_0), .B(N_1117_2), .C(
        N_1280), .Y(\fsmmod_ns_0_0[2] ));
    OR3 \fsmmod_RNI92133[4]  (.A(adrcomp12), .B(counter_PRESETN_3), .C(
        un14_counter_PRESETN), .Y(counter_PRESETN));
    MX2 \framesync_RNO[2]  (.A(\fsmdet[3]_net_1 ), .B(N_669), .S(N_662)
        , .Y(\framesync_7[2] ));
    NOR3C \fsmmod_RNO_7[0]  (.A(pedetect_net_1), .B(sclscl_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(N_1106));
    OR3 \fsmsta_RNO_2[0]  (.A(\fsmsta_nxt_cnst_0_0[0] ), .B(N_726), .C(
        N_727), .Y(\fsmsta_nxt_cnst[0] ));
    OR3 ack_RNI2MLQD (.A(fsmsta_nxt20_m), .B(\fsmsta_nxt_4_m[3] ), .C(
        \fsmsta_nxt_34_i_m[1] ), .Y(\fsmsta_10s_0_iv_1[3] ));
    NOR3A nedetect_RNIFU504_0 (.A(nedetect_net_1), .B(un1_framesync_0), 
        .C(framesync24), .Y(framesync_1_sqmuxa_2));
    NOR2B pedetect_RNIA4643 (.A(un1_sersta64_0_0), .B(framesync24), .Y(
        un1_sersta64));
    AO1B \sersta_RNO_0[4]  (.A(\sersta_4_0_a4_0_0[4] ), .B(sersta77_2), 
        .C(COREI2C_0_INT_0), .Y(\sersta_4_0_0[4] ));
    NOR2 \sercon_RNI1R4B3[4]  (.A(fsmmod5), .B(\sercon[4]_net_1 ), .Y(
        N_1117_2));
    OR3 \fsmsync_RNO_4[3]  (.A(\fsmsync_ns_i_a4_3_0[3] ), .B(N_93), .C(
        N_135), .Y(\fsmsync_ns_i_a4_3[3] ));
    OR2A \fsmsta_RNI654N[3]  (.A(fsmsta_nxt19), .B(\fsmsta[3]_net_1 ), 
        .Y(N_718));
    AND2 \fsmsta_RNI4HPF4[4]  (.A(\fsmsta_0_RNIHQ8H3[3]_net_1 ), .B(
        N_734_i), .Y(\fsmsta_nxt_cnst_i_m_0[2] ));
    OR2B \SDAO_int_write_proc.SDAO_int6  (.A(un1_framesync_1), .B(
        nedetect_net_1), .Y(SDAO_int6_i));
    NOR2B \fsmsta_0_RNILHLI1_4[2]  (.A(sersta74_0), .B(sersta74_1), .Y(
        sersta74));
    AO1 \fsmsta_RNO_0[1]  (.A(\fsmsta_nxt_cnst_m_1[1] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_0_iv_0[1] ), .Y(N_651));
    AO1 \serdat_RNID8I71[6]  (.A(\serdat[6]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[6] ), .Y(PRDATA_iv_1[6]));
    AO1 \sersta_RNI790C1[2]  (.A(\sersta[2]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[5]_net_1 ), .Y(PRDATA_iv_0[5])
        );
    OR2 \fsmsta_0_RNI7C3NA[2]  (.A(un1_sersta58_1), .B(un1_sersta58_0), 
        .Y(un1_sersta58));
    OR3 \fsmsta_RNI9AC85[4]  (.A(sersta70), .B(sersta69), .C(
        un1_sersta65_1_2), .Y(un1_sersta65_1_4));
    NOR2B \fsmdet_RNI6ARL7[3]  (.A(ens1_pre_3_sqmuxa), .B(fsmsta13), 
        .Y(ens1_pre_1_sqmuxa_1_s6));
    NOR3B \fsmmod_RNO_0[3]  (.A(N_1123_8), .B(
        \fsmmod_ns_i_a3_i_a5_0_5_3[3] ), .C(sersta59_3), .Y(
        \fsmmod_ns_i_a3_i_a5_0_5[3] ));
    NOR2B \serdat_write_proc.serdat4  (.A(seradr0apb4_0), .B(
        un4_PRDATA), .Y(serdat4));
    NOR3B \sercon_0_RNI22BH5[3]  (.A(un1_framesync_4), .B(
        fsmsta_0_sqmuxa_s5_0), .C(\COREI2C_0_INT_0[0] ), .Y(
        fsmsta_0_sqmuxa_s5));
    DFN1C0 \indelay[3]  (.D(\indelay_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[3]_net_1 ));
    DFN1C0 \fsmsync[3]  (.D(\fsmsync_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[3]_net_1 ));
    NOR3 \fsmsta_RNIRIFLD[2]  (.A(un1_framesync24_1), .B(
        un1_framesync24), .C(un1_framesync24_3), .Y(
        un1_framesync24_6_s7_2));
    DFN1P0 \fsmdet[6]  (.D(\fsmdet_RNO[6]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[6] ));
    NOR3B bsd7_RNO_1 (.A(bsd7_tmp_1_sqmuxa), .B(bsd7_tmp_1_sqmuxa_2_0), 
        .C(\serdat[7]_net_1 ), .Y(\serdat_i_m[7] ));
    OR3A \fsmmod_RNI93B01[3]  (.A(\sercon[6]_net_1 ), .B(un1_fsmmod), 
        .C(\fsmmod[3]_net_1 ), .Y(SDAO_int17));
    NOR2A sclscl_RNO (.A(\fsmmod[5]_net_1 ), .B(pedetect_net_1), .Y(
        sclscl_1_sqmuxa));
    NOR2 \fsmsync_RNO_3[6]  (.A(\fsmsync[5]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmsync_ns_i_a4_0_0[6] ));
    OR3 SCLO_int_RNO_6 (.A(sersta79), .B(sersta78), .C(un1_sersta64_2), 
        .Y(un1_sersta69_1));
    DFN1P0 PCLK_count2_ov (.D(PCLK_count2_ov_0_sqmuxa), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(PCLK_count2_ov_i_0));
    OR2 \fsmsync_RNO_3[0]  (.A(\fsmsync[5]_net_1 ), .B(
        \fsmsync[2]_net_1 ), .Y(\fsmsync_ns_0_o2_1_0[0] ));
    DFN1E0P0 \fsmsta_0[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta_0[3]_net_1 ));
    OR2B \fsmsta_RNIMUOE[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_o3_0[4] ));
    OA1 \fsmsync_RNO_0[0]  (.A(\fsmsync_ns_0_o2_1_0[0] ), .B(
        \fsmsync_ns_0_o2_1_1[0] ), .C(N_135), .Y(N_1327));
    OR3 \fsmsync_RNO_4[0]  (.A(\fsmsync[6]_net_1 ), .B(
        \fsmsync[7]_net_1 ), .C(N_1318), .Y(\fsmsync_ns_0_o2_1_1[0] ));
    NOR3B nedetect_RNIFU504 (.A(nedetect_net_1), .B(framesync24), .C(
        un1_framesync_0), .Y(framesync_0_sqmuxa_1));
    NOR2B \framesync_RNO_0[2]  (.A(I_18), .B(un1_framesync_4_sqmuxa), 
        .Y(N_669));
    NOR2A pedetect_RNO (.A(un1_SCLI_ff_reg_1), .B(SCLInt_net_1), .Y(
        pedetect_0_sqmuxa));
    NOR3B \fsmmod_RNIRDTE1[2]  (.A(N_1313_tz_tz), .B(N_1311_tz_tz), .C(
        un1_fsmmod_1_2), .Y(N_135));
    NOR2 bsd7_RNO_6 (.A(bsd7_tmp_net_1), .B(SCLInt_net_1), .Y(
        bsd7_tmp_i_m_0));
    AO1 \fsmsync_RNO_6[0]  (.A(fsmsync_tr3_0_0), .B(N_914_4), .C(N_915)
        , .Y(\fsmsync_ns_0_0[0] ));
    OR2 \framesync_RNI4LDE3[1]  (.A(un1_framesync_1), .B(framesync24), 
        .Y(un1_framesync_3));
    OR2A PCLK_count2_ov_RNO (.A(PCLK_count1_ov_net_1), .B(
        counter_PRESETN), .Y(PCLK_count2_ov_0_sqmuxa));
    OR2 \fsmdet_RNI4665[5]  (.A(\fsmdet[5]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(counter_PRESETN_1));
    NOR2A \sersta_RNO_1[0]  (.A(N_763_1), .B(N_751), .Y(N_763));
    NOR3B \fsmsync_RNO[1]  (.A(\fsmsync[0]_net_1 ), .B(N_929_tz_tz), 
        .C(SCLInt_net_1), .Y(\fsmsync_RNO[1]_net_1 ));
    DFN1P0 \framesync[1]  (.D(\framesync_7[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[1]_net_1 ));
    NOR2B \fsmsta_RNO_5[0]  (.A(\fsmsta_nxt_cnst_0_a4_0_0[0] ), .B(
        fsmsta_nxt93), .Y(N_726));
    AOI1B \fsmmod_RNO_1[3]  (.A(N_101_i), .B(SCLInt_net_1), .C(
        \fsmmod[3]_net_1 ), .Y(\fsmmod_ns_i_a3_i_a5_0[3] ));
    INV busfree_RNO (.A(\fsmdet[3]_net_1 ), .Y(\fsmdet_i[3] ));
    OR3 \fsmsta_0_RNIM1VS5[2]  (.A(sersta63), .B(sersta62), .C(
        un1_sersta60_1), .Y(un1_sersta60));
    NOR3A \sercon_RNI5TKCL_0[6]  (.A(\sercon[6]_net_1 ), .B(
        un1_sersta65_1), .C(un1_sersta58_3), .Y(ack_3_sqmuxa));
    NOR2B \fsmsta_0_RNILHLI1_5[2]  (.A(sersta74_0), .B(sersta77_2), .Y(
        sersta77));
    OR2 \fsmsta_0_RNIA3B53[2]  (.A(sersta76), .B(sersta77), .Y(
        un1_sersta64_2));
    OR2 \fsmsync_RNO_15[3]  (.A(fsmsync_ns_i_a4_145_0), .B(N_97), .Y(
        \fsmsync_RNO_15[3]_net_1 ));
    NOR2 \serdat_RNIV8PG[0]  (.A(\serdat[3]_net_1 ), .B(
        \serdat[0]_net_1 ), .Y(fsmsta19_2));
    NOR3B adrcompen_RNI458R1 (.A(pedetect_net_1), .B(adrcompen_net_1), 
        .C(sersta64), .Y(un1_framesync24_1_1));
    NOR2B \sercon_write_proc.sercon18  (.A(seradr0apb4_0), .B(
        un1_PRDATA), .Y(sercon18));
    DFN1C0 \sersta[0]  (.D(\sersta_4[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[0]_net_1 ));
    OR3A bsd7_RNO_0 (.A(\sercon[6]_net_1 ), .B(bsd7_1_sqmuxa_1), .C(
        bsd7_tmp_0_sqmuxa_2), .Y(un1_SCLI_ff_reg_1_sqmuxa_1));
    MX2 \sersta_RNO_0[1]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .S(N_751), .Y(N_753));
    NOR3 \fsmsta_RNO_1[1]  (.A(N_730), .B(N_731), .C(N_729), .Y(
        \fsmsta_nxt_cnst_m_1[1] ));
    AO1C \sercon_RNIMMNV[3]  (.A(N_723), .B(\fsmsta[2]_net_1 ), .C(
        COREI2C_0_INT_0), .Y(N_752));
    OR3 \fsmsync_RNO[0]  (.A(N_1327), .B(\fsmsync_ns_0_1[0] ), .C(
        N_1328), .Y(\fsmsync_ns[0] ));
    OR2 \fsmsta_0_RNICUJN2[2]  (.A(sersta65), .B(sersta67), .Y(
        un1_sersta65_0));
    MX2 \fsmsta_RNO_6[4]  (.A(\fsmsta[4]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst_m_0[4] ));
    NOR2B \fsmsta_RNIL5PJ5[4]  (.A(un1_sersta78), .B(framesync24), .Y(
        un1_framesync24_3));
    VCC VCC_i (.Y(VCC));
    DFN1P0 SCLO_int_inst_1 (.D(SCLO_int5_0_0), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(SCLO_int));
    OR2 \fsmsta_0_RNIVK0O4_0[2]  (.A(sersta74), .B(un1_sersta64_2), .Y(
        un1_sersta64_1_0));
    NOR3C bsd7_tmp_RNO_1 (.A(bsd7_tmp_1_sqmuxa), .B(
        bsd7_tmp_1_sqmuxa_2_0), .C(nedetect_net_1), .Y(
        bsd7_tmp_0_sqmuxa_3));
    OR2 ack_RNO_1 (.A(bsd7_tmp_0_sqmuxa_1), .B(ack_0_sqmuxa_1), .Y(
        un1_ack_0_sqmuxa_0));
    OR2 \fsmmod_RNI1QD21[1]  (.A(N_1313_tz_tz), .B(N_93), .Y(
        fsmsync_ns_i_a4_145_0));
    OR3 \fsmsta_RNIARHT[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\sersta_4_0_o3_0[4] ), .Y(N_761));
    OAI1 \fsmmod_RNO_5[2]  (.A(\sercon[4]_net_1 ), .B(
        \sercon[5]_net_1 ), .C(\framesync[3]_net_1 ), .Y(
        \fsmmod_ns_0_4_tz[2] ));
    OR2B \fsmsta_RNIP1PE[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(N_751));
    XO1 adrcomp_RNO_5 (.A(\serdat[0]_net_1 ), .B(seradr0apb[1]), .C(
        un1_seradr0_1_0), .Y(un1_seradr0_NE_1));
    NOR2B adrcomp_RNIBON52 (.A(adrcomp_net_1), .B(framesync24), .Y(
        fsmsta_nxt93_1));
    AO1 \fsmsta_nxt_cnst_0_a4_RNIQ34T82[2]  (.A(
        \fsmsta_nxt_cnst_i_m_1[2] ), .B(un1_framesync24_6_s7), .C(
        \fsmsta_10s_iv_2[2] ), .Y(\fsmsta_10s_iv[2] ));
    DFN1E0C0 pedetect (.D(pedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52), .Q(pedetect_net_1));
    DFN1E0C0 sclscl (.D(\fsmmod[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(sclscl_1_sqmuxa), .Q(sclscl_net_1));
    NOR2A \fsmsta_RNO_1[0]  (.A(N_804_1), .B(ens1_pre_1_sqmuxa_1_s6), 
        .Y(N_801));
    DFN1E1C0 \sercon[2]  (.D(IIC_control_0_BIF_1_PWDATA[2]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[2]_net_1 ));
    NOR3B \fsmsta_RNI2F5M[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(sersta75_0));
    OA1C \fsmsync_RNO[6]  (.A(\fsmsync_ns_i_0_tz[6] ), .B(N_1046), .C(
        N_135), .Y(\fsmsync_RNO[6]_net_1 ));
    DFN1E1C0 \sercon[5]  (.D(IIC_control_0_BIF_1_PWDATA[5]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[5]_net_1 ));
    NOR2B \fsmsta_0_RNILHLI1_1[2]  (.A(sersta63_0), .B(sersta61_2), .Y(
        sersta63));
    AO1 \serdat_RNIFAI71[7]  (.A(\serdat[7]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[7] ), .Y(PRDATA_iv_1[7]));
    MX2 \sercon_RNO[4]  (.A(\sercon_8[4] ), .B(
        IIC_control_0_BIF_1_PWDATA[4]), .S(sercon18), .Y(
        \sercon_10[4] ));
    AO1 \sersta_RNI570C1[1]  (.A(\sersta[1]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[4]_net_1 ), .Y(PRDATA_iv_0[4])
        );
    DFN1E0C0 \serdat[0]  (.D(\serdat_20[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[0]_net_1 ));
    OR2 \fsmmod_RNISJJK2[1]  (.A(SDAO_int17), .B(un1_fsmmod_1_0), .Y(
        un1_SDAO_int17_1));
    NOR2A adrcompen_RNI13MDB (.A(un1_framesync24_2), .B(un1_fsmdet_2), 
        .Y(un1_framesync24_2_s4));
    DFN1E1P0 SCLInt (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_serdat52_1), .Q(SCLInt_net_1));
    OR3 \fsmsta_0_RNI9G1S3[2]  (.A(sersta63), .B(sersta62), .C(
        sersta59_3), .Y(un1_sersta58_0));
    NOR3A \fsmsta_0_RNIVIS31_0[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta_0[2]_net_1 ), .Y(sersta61_0));
    NOR2B \sercon_RNIQKLG[6]  (.A(un1_PRDATA), .B(\sercon[6]_net_1 ), 
        .Y(\sercon_m[6] ));
    MX2A \framesync_RNO_0[0]  (.A(framesync10), .B(
        \DWACT_ADD_CI_0_partial_sum[0] ), .S(un1_framesync_4_sqmuxa), 
        .Y(N_667));
    XA1 \PCLK_count1_RNO[1]  (.A(\PCLK_count1[1]_net_1 ), .B(
        \PCLK_count1[0]_net_1 ), .C(PCLK_count1_0_sqmuxa), .Y(
        PCLK_count1_n1));
    NOR2B \fsmsta_RNO_5[1]  (.A(N_724), .B(fsmsta_nxt93), .Y(N_729));
    DFN1C0 \sercon_0[3]  (.D(\sercon_10[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\COREI2C_0_INT_0[0] ));
    AX1C \indelay_RNO[3]  (.A(indelay_c1), .B(indelay_150_0), .C(N_869)
        , .Y(\indelay_RNO[3]_net_1 ));
    NOR2B \fsmsync_RNO_5[6]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(fsmsync_tr19_1));
    DFN1C0 \sercon[3]  (.D(\sercon_10[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(COREI2C_0_INT_0));
    NOR2 \fsmsta_RNIJROE_0[1]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(sersta74_1));
    AO1A \sercon_0_RNIV8M1H[3]  (.A(fsmsta13), .B(
        ens1_pre_2_sqmuxa_1_0), .C(ens1_pre_1_sqmuxa_2), .Y(
        un1_ens1_pre_2_sqmuxa));
    AND2 \fsmsta_nxt_cnst_0_a4_RNI2FQP4[2]  (.A(
        \fsmsta_nxt_cnst_i_m_0[2] ), .B(N_732_i), .Y(
        \fsmsta_nxt_cnst_i_m_1[2] ));
    
endmodule


module Top_0_COREI2C_0_COREI2C_Z2(
       COREI2C_0_INT_0,
       PRDATA_0_iv_0,
       PRDATA_iv_1,
       PRDATA_iv_0,
       SDAO_0_0,
       seradr0_m,
       IIC_control_0_BIF_1_PWDATA,
       IIC_control_0_BIF_1_PADDR,
       SCLO_int,
       SDA_d,
       OUT_EN_0,
       OUT_EN,
       SDA_in,
       IIC_control_0_BIF_1_PSELx,
       IIC_control_0_BIF_1_PENABLE,
       IIC_control_0_BIF_1_PWRITE,
       PRESETN_c,
       PCLK_c
    );
output COREI2C_0_INT_0;
output [2:0] PRDATA_0_iv_0;
output [7:3] PRDATA_iv_1;
output [7:3] PRDATA_iv_0;
input  SDAO_0_0;
output [2:0] seradr0_m;
input  [7:0] IIC_control_0_BIF_1_PWDATA;
input  [3:2] IIC_control_0_BIF_1_PADDR;
output SCLO_int;
output SDA_d;
input  OUT_EN_0;
input  OUT_EN;
input  SDA_in;
input  IIC_control_0_BIF_1_PSELx;
input  IIC_control_0_BIF_1_PENABLE;
input  IIC_control_0_BIF_1_PWRITE;
input  PRESETN_c;
input  PCLK_c;

    wire seradr0apb4, seradr0apb4_0, \seradr0apb[0] , \seradr0apb[1] , 
        \seradr0apb[2] , \seradr0apb[3] , \seradr0apb[4] , 
        \seradr0apb[5] , \seradr0apb[6] , \seradr0apb[7] , GND, VCC;
    
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[3]  (.D(
        IIC_control_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[3] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[1]  (.D(
        IIC_control_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[1] ));
    NOR3C \g_seradr0_reg_bits.genblk1.seradr0_write_proc.seradr0apb4  
        (.A(IIC_control_0_BIF_1_PADDR[2]), .B(
        IIC_control_0_BIF_1_PADDR[3]), .C(seradr0apb4_0), .Y(
        seradr0apb4));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[6]  (.D(
        IIC_control_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[6] ));
    COREI2C_COREI2CREAL_Z3_0 \I2C_NUM_GENERATION[0].ui2c  (.seradr0_m({
        seradr0_m[2], seradr0_m[1], seradr0_m[0]}), 
        .IIC_control_0_BIF_1_PWDATA({IIC_control_0_BIF_1_PWDATA[7], 
        IIC_control_0_BIF_1_PWDATA[6], IIC_control_0_BIF_1_PWDATA[5], 
        IIC_control_0_BIF_1_PWDATA[4], IIC_control_0_BIF_1_PWDATA[3], 
        IIC_control_0_BIF_1_PWDATA[2], IIC_control_0_BIF_1_PWDATA[1], 
        IIC_control_0_BIF_1_PWDATA[0]}), .seradr0apb({\seradr0apb[7] , 
        \seradr0apb[6] , \seradr0apb[5] , \seradr0apb[4] , 
        \seradr0apb[3] , \seradr0apb[2] , \seradr0apb[1] , 
        \seradr0apb[0] }), .IIC_control_0_BIF_1_PADDR({
        IIC_control_0_BIF_1_PADDR[3], IIC_control_0_BIF_1_PADDR[2]}), 
        .SDAO_0_0(SDAO_0_0), .PRDATA_iv_0({PRDATA_iv_0[7], 
        PRDATA_iv_0[6], PRDATA_iv_0[5], PRDATA_iv_0[4], PRDATA_iv_0[3]})
        , .PRDATA_iv_1({PRDATA_iv_1[7], PRDATA_iv_1[6], PRDATA_iv_1[5], 
        PRDATA_iv_1[4], PRDATA_iv_1[3]}), .PRDATA_0_iv_0({
        PRDATA_0_iv_0[2], PRDATA_0_iv_0[1], PRDATA_0_iv_0[0]}), 
        .COREI2C_0_INT_0(COREI2C_0_INT_0), .IIC_control_0_BIF_1_PWRITE(
        IIC_control_0_BIF_1_PWRITE), .IIC_control_0_BIF_1_PENABLE(
        IIC_control_0_BIF_1_PENABLE), .IIC_control_0_BIF_1_PSELx(
        IIC_control_0_BIF_1_PSELx), .seradr0apb4_0(seradr0apb4_0), 
        .SDA_in(SDA_in), .OUT_EN_0(OUT_EN), .OUT_EN(OUT_EN_0), .SDA_d(
        SDA_d), .SCLO_int(SCLO_int), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[7]  (.D(
        IIC_control_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[7] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[5]  (.D(
        IIC_control_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[5] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[2]  (.D(
        IIC_control_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[2] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[0]  (.D(
        IIC_control_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[0] ));
    GND GND_i (.Y(GND));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[4]  (.D(
        IIC_control_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[4] ));
    
endmodule


module COREI2C_COREI2CREAL_Z3_1(
       sersta_i_0_0,
       I2C_slave_0_BIF_1_PWDATA,
       seradr0apb,
       seradr0_m,
       I2C_slave_0_BIF_1_PADDR,
       serdat,
       PRDATA_0_iv_0,
       PRDATA_iv_0_0,
       PRDATA_iv_1_0,
       COREI2C_1_INT_0,
       SDAO_0_0,
       SDA_in,
       SCLO_int_0,
       OUT_EN_0,
       OUT_EN,
       SDA_e,
       N_411,
       N_412,
       N_413,
       I2C_slave_0_BIF_1_PWRITE,
       I2C_slave_0_BIF_1_PENABLE,
       I2C_slave_0_BIF_1_PSELx,
       seradr0apb4_0,
       N_409,
       N_408,
       N_407,
       N_405,
       N_404,
       N_403,
       N_401,
       N_400,
       N_350,
       N_1443_i,
       PRESETN_c,
       PCLK_c
    );
output sersta_i_0_0;
input  [7:0] I2C_slave_0_BIF_1_PWDATA;
input  [7:0] seradr0apb;
output [2:0] seradr0_m;
input  [3:2] I2C_slave_0_BIF_1_PADDR;
output [6:3] serdat;
output [2:0] PRDATA_0_iv_0;
output PRDATA_iv_0_0;
output PRDATA_iv_1_0;
output COREI2C_1_INT_0;
output SDAO_0_0;
input  SDA_in;
input  SCLO_int_0;
input  OUT_EN_0;
input  OUT_EN;
output SDA_e;
output N_411;
output N_412;
output N_413;
input  I2C_slave_0_BIF_1_PWRITE;
input  I2C_slave_0_BIF_1_PENABLE;
input  I2C_slave_0_BIF_1_PSELx;
output seradr0apb4_0;
output N_409;
output N_408;
output N_407;
output N_405;
output N_404;
output N_403;
output N_401;
output N_400;
output N_350;
output N_1443_i;
input  PRESETN_c;
input  PCLK_c;

    wire \COREI2C_1_INT_0[0] , \sercon_10[3] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \framesync[1]_net_1 , \DWACT_ADD_CI_0_g_array_12[0] , 
        \framesync[2]_net_1 , \fsmdet_i[3] , \fsmdet[3]_net_1 , 
        fsmsta32_s3_1_i, \fsmmod[6]_net_1 , un1_framesync24_1_net_1, 
        un1_sersta71_net_1, N_325, un1_sersta69_2, sersta75, 
        SDAO_int_3_sqmuxa_0_net_1, N_327, N_372, 
        un1_framesync24_3_0_a3_0_net_1, N_143, N_19, 
        \framesync_7_i_i_o2_0_0[0] , N_484, \framesync_7_i_i_o2_0[0] , 
        un1_framesync24_1_0, pedetect_net_1, N_471, 
        un1_framesync24_1_1, un1_framesync24_3, fsmsta_0_sqmuxa_s5_i, 
        fsmsta_0_sqmuxa_s5_0, fsmsta12, N_314, 
        \framesync_7_i_i_a2_0_1[0] , N_536, N_532, 
        \fsmsta_RNO_5[2]_net_1 , N_1355_tz, 
        \fsmsta_nxt_cnst_0_a4_0_0_i[2] , 
        \fsmsta_nxt_cnst_0_a4_2_1_i[2] , \framesync[0]_net_1 , N_305, 
        \fsmsta_10k_0_a2_0[3]_net_1 , SDAO_int_3_sqmuxa_2_net_1, 
        un1_framesync_3, SDAO_int_3_sqmuxa_1_net_1, N_351, 
        \fsmsta_10s_iv_2[2] , un1_framesync24_1_s5, SDAO_int_m_0, 
        \fsmsta_10s_iv_1[2] , \fsmsta_nxt_4_i_m[2] , 
        \fsmsta_nxt_34_i_m[1] , fsmsta_nxt20_m, \fsmsta_10s_1_iv_2[0] , 
        \fsmsta_10s_1_iv_0[0] , \fsmsta_nxt_4_m[0] , fsmsta_nxt_m_0, 
        un1_sersta65, SDAInt_m, \fsmsta_10s_0_iv_2[1] , 
        \fsmsta_nxt_34_m[1] , \fsmsta_nxt_4_m[1] , 
        \fsmsta_10s_0_iv_1[1] , un1_framesync24_2_s4, N_808, 
        \fsmsta_10s_1_iv_0[4] , un1_framesync24_3_s6, 
        \fsmsta_10s_0_iv_2[3] , \fsmsta_nxt_4_m[3] , 
        \fsmsta_10s_0_iv_1[3] , \fsmsta_nxt_34_m_1[3] , fsmsta_nxt_m_1, 
        un1_ack_1_sqmuxa_0, serdat4, un1_SCLI_ff_reg_1_sqmuxa, 
        ack_1_sqmuxa_1, \fsmsta_nxt_cnst_m_1[1] , 
        \fsmsta_nxt_cnst_i_a4_0_0[1] , fsmsta_nxt93, 
        \fsmsta_nxt_cnst_m_0[1] , N_724, N_731, 
        \fsmsta_nxt_cnst_i_m_1[2] , N_732, N_734, 
        \fsmsta_nxt_cnst_m_1[4] , \fsmsta_nxt_cnst_i_a4_0[4] , N_727_1, 
        \fsmsta_nxt_cnst_m_0[4] , \fsmsta[4]_net_1 , ack_net_1, 
        un1_framesync24_6_s7_4, N_763_1, N_337, un1_fsmdet_2, 
        un1_framesync24_6_s7_2, un1_framesync24_2, un1_framesync24_4, 
        un1_framesync24_6_s7_1, \fsmmod_ns_i_a3_i_i_0[5] , 
        \fsmmod[0]_net_1 , N_364, \fsmmod[5]_net_1 , 
        un1_ack_0_sqmuxa_0, bsd7_tmp_0_sqmuxa_1, ack_0_sqmuxa_1, 
        serdat_2_sqmuxa_0, \fsmsta_10k_0_a2_0[4] , 
        ens1_pre_0_sqmuxa_s2_1, \fsmsta_10k_i_a2_0[1] , 
        ens1_pre_1_sqmuxa_1_s6, \fsmsta_nxt_cnst_0_1[0] , 
        \fsmsta_nxt_cnst_0_a4_0[0] , \fsmsta_nxt_cnst_0_0[0] , 
        \fsmsta_nxt_cnst_0_a4_0_0[0] , N_772, 
        \fsmmod_ns_i_a3_i_i_1[0] , N_416, N_418, N_417, N_718, 
        un1_SCLI_ff_reg_1_sqmuxa_0, \sercon[6]_net_1 , 
        un1_bsd7_tmp_0_sqmuxa_0, bsd7_tmp_0_sqmuxa, bsd7_12_iv_0, 
        \PWDATA_i_m_0[7] , bsd7_tmp_1_sqmuxa_1, 
        un1_SCLI_ff_reg_1_sqmuxa_1_0, \fsmmod_ns_i_a3_i_i_a2_2[0] , 
        N_335, \fsmmod_ns_i_a3_i_i_a2_0[0] , N_477, sclscl_net_1, 
        N_309, N_751, N_142, \fsmsta[1]_net_1 , \fsmsta[0]_net_1 , 
        un1_adrcomp_2_sqmuxa_0, N_263_1, adrcomp12, 
        \fsmsync_ns_i_0_0_0_0[6] , \fsmsync_i_0[6] , 
        \fsmsync_ns_i_0_0_0_tz[6] , N_439, \fsmsync_ns_0_1[0] , N_915, 
        N_914, N_1329, un1_fsmmod_2_1, fsmsta13, un1_fsmmod_2_0, 
        un1_fsmmod_1, \fsmmod_ns_i_a3_i_i_o2_0_0[0] , N_308, 
        adrcomp_net_1, ens1_pre_3_sqmuxa, ack_3_sqmuxa_0, N_121, 
        un1_sersta58_0_0, \fsmsync_ns_i_a4_2_0[3] , 
        fsmsync_tr12_27_0_i_1, \fsmsync_ns_i_a4_2_tz[3] , N_1343, 
        \fsmsync_ns_i_a4_0[3] , N_340, fsmsync_tr12_22_0_i_0, N_977, 
        \fsmsync_ns_i_0_0_a2_0_0[6] , SDAInt_net_1, \fsmsync[5]_net_1 , 
        un1_framesync24_2_0, un1_framesync24_1_2, sersta64, 
        adrcompen_net_1, un1_sersta65_1_0, un1_sersta65_1_4_0, 
        un1_sersta69_3, \fsmmod_ns_i_a3_i_i_a2_0_0[5] , 
        un1_sersta69_2_0, un1_sersta69_4, un1_sersta69_0, N_150, N_149, 
        counter_PRESETN_3, un14_counter_PRESETN, counter_PRESETN_1, 
        un18_counter_PRESETN, \fsmsync[4]_net_1 , \fsmsync[1]_net_1 , 
        un1_sersta64_2, un1_sersta69_6, sersta83, un1_sersta64_1_0, 
        \fsmsta[3]_net_1 , N_114, N_464, N_463, 
        \fsmmod_ns_0_i_0_a2_0_2[2] , \fsmmod_ns_0_i_0_a2_0_0[2] , 
        N_500, N_306, \sercon[5]_net_1 , un1_sercon_1_4, 
        un1_seradr0_NE, fsmsta_nxt86, un1_sercon_1_3, fsmsta19, 
        un1_sercon_1_2, un1_sercon_1_1, un1_framesync_1, 
        \sercon[2]_net_1 , nedetect_net_1, \framesync_7_i_i_a2_4_0[0] , 
        N_302, \fsmmod_ns_i_a3_i_i_a2_2_0[3] , \fsmmod[2]_net_1 , 
        un1_sersta58_0_m3_i_0, N_97_i_0, \fsmsync_ns_i_0_0_a2_1_0[2] , 
        N_915_2, SDAO_int_0_sqmuxa_i_0_3, SDAO_int_0_sqmuxa_i_0_0, 
        SDAO_int_0_sqmuxa_i_0_2, N_377, \framesync[3]_net_1 , 
        \sersta_4_0_1[3] , \sersta_4_0_a4_0[3] , N_756, 
        \sersta_4_0_0[3] , N_768, \fsmmod_ns_i_a3_i_i_a2_1_1[0] , 
        N_313, \sercon_8_1[4] , \sercon[4]_net_1 , \fsmdet[5]_net_1 , 
        sersta70, sersta69, framesync_1_sqmuxa_2_i_0_0, N_464_1, N_516, 
        bsd7_tmp_1_sqmuxa_i_1, \fsmsync_ns_0_a4_1_0[0] , 
        \fsmsync[0]_net_1 , SCLInt_net_1, un1_sersta69_0_0, 
        sersta73_0_a3_0_a2_0, \fsmmod_ns_i_a3_i_i_a2_0_0[0] , 
        \fsmsync_ns_i_a4_3_tz_1[3] , N_1288_tz, N_1291_tz, 
        fsmsync_tr12_29_0, sersta64_0_a3_0, \fsmsta[2]_net_1 , 
        fsmmod_tr7_3_1, sersta75_0_a3_0, sersta69_1, 
        \sersta_4_0_a4_2_0[3] , \serdat[7]_net_1 , 
        \seradr0_m[7]_net_1 , \sersta[4]_net_1 , \sercon_m[7] , 
        \serdat[1]_net_1 , \sercon_m[1] , \serdat[2]_net_1 , 
        \sercon_m[2] , \serdat[0]_net_1 , \sercon_m[0] , sersta72_1, 
        \framesync_7_i_i_a2_7_0[0] , fsmsta19_3, fsmsta19_2, 
        fsmsta19_1, sersta83_3_0, sersta71_1, fsmsync_tr3_1_2, 
        \fsmmod[1]_net_1 , fsmsync_tr3_1_1, \fsmsync[3]_net_1 , 
        \fsmmod[4]_net_1 , fsmsync_tr3_0_1, \indelay[1]_net_1 , 
        \indelay[3]_net_1 , un1_seradr0_NE_3, N_366_i, N_367_i, 
        un1_seradr0_1_0, un1_seradr0_NE_2, un1_seradr0_0, 
        un1_seradr0_NE_1, N_369_i, fsmsync_ns_i_a4_120_tz_0, 
        \fsmsync[2]_net_1 , fsmsync_tr8_tz_tz_2, fsmsync_tr8_tz_tz_1, 
        \fsmmod[3]_net_1 , fsmsync_tr8_tz_tz_0, 
        \fsmsync_ns_0_o2_1_i_a3_0_a2_0[0] , \fsmsync_i_0[7] , 
        un1_framesync_1_1, un1_framesync_1_0, \fsmsync_ns_i_o2_1_0[3] , 
        fsmsync_tr13_i_o2_0, \fsmsync_ns_0_o2_1_i_a3_0_a2_4_0[0] , 
        N_929_tz_tz, \fsmsync_RNO_0[1]_net_1 , N_1288_tz_tz_tz, 
        fsmmod_tr7_3, N_311, N_322, N_429, \SCLI_ff_reg[1]_net_1 , 
        \SCLI_ff_reg[2]_net_1 , \SCLI_ff_reg[0]_net_1 , 
        un1_SCLI_ff_reg_i_0, N_304, N_346, N_99_4, N_263, N_457, N_265, 
        N_458, N_1376, N_360, N_443, N_1377, \indelay_i_0[0] , 
        \fsmsync_ns[0] , N_1327, N_1328, N_316, \fsmsync_RNO[5]_net_1 , 
        N_531, \fsmsync_RNO_0[3]_net_1 , \fsmsync_ns_i_a4_3[3] , N_438, 
        N_318, N_303, \fsmsync_RNO_0[6]_net_1 , N_517, N_451_1, 
        ack_bit_1_sqmuxa, un1_sersta65_0, un1_ack_1_sqmuxa, 
        un1_ack_3_sqmuxa, ack_3_sqmuxa, un1_bsd7_tmp_0_sqmuxa, 
        bsd7_tmp_1_sqmuxa_2, un1_SCLI_ff_reg_1_sqmuxa_1, bsd7_12_iv, 
        bsd7_tmp_i_m, \serdat_i_m[7] , un1_framesync_5, 
        un1_framesync_4, un1_fsmmod_2, un1_sersta69, N_765, N_771, 
        \sersta_4[0] , N_762, N_763, N_752, \sersta_4[2] , N_764, 
        \sersta_4[4] , N_770, N_653, \fsmsta_nxt_cnst[3] , 
        un1_framesync24_6_s7, N_804, fsmsta_1_sqmuxa_1_s9, 
        \fsmsta_10s_iv[2] , N_650, \fsmsta_nxt_cnst[0] , N_802, 
        fsmsta_0_sqmuxa_1, N_654, N_651, ens1_pre_2_sqmuxa_1, N_769, 
        \sersta_4[3] , N_767, pedetect_0_sqmuxa, SDAO_int_3_sqmuxa, 
        bsd7_tmp_net_1, N_288, N_470, N_469, un1_framesync24, 
        un1_sersta64, N_111, N_312, un1_adrcomp_2_sqmuxa, un1_sercon_1, 
        N_343, N_420, N_334, \fsmmod_RNO[2]_net_1 , N_419, N_1428, 
        N_198, N_535, \fsmmod_ns_i_a3_i_i_0[3] , N_482, N_323, 
        PCLK_count17, \PCLK_count1[1]_net_1 , \PCLK_count1[3]_net_1 , 
        \PCLK_count1[2]_net_1 , N_131, N_426, N_201, N_181, N_355, 
        N_328, un1_fsmdet, N_359, N_803, fsmsta33, 
        fsmsta_0_sqmuxa_2_s7, counter_PRESETN, N_162, N_254, 
        \fsmsync_RNO_0[2]_net_1 , N_434, N_435, N_363, SCLO_int_net_1, 
        busfree_net_1, sersta71, un1_sercon, un1_sersta69_1, N_488, 
        N_58, N_336, \sercon_8[4] , \fsmsync_ns_i_a4_1_tz_tz_0_tz[3] , 
        fsmsync_tr13_i_0, \fsmsync_ns_i_a4_1_tz_tz[3] , N_519, 
        \fsmsync_ns_i_a4_1_tz[3] , N_1291_tz_tz, 
        \fsmmod_ns_i_a3_i_i_a2_0_0[3] , N_307, \fsmmod_ns[1] , 
        \fsmmod_ns_0_a3_0[1] , PCLK_count1_n2, PCLK_count1_0_sqmuxa, 
        PCLK_count1_n2_tz, PCLK_count1_c1, PCLK_count1_n3, 
        PCLK_count1_n3_tz, PCLK_count2_ov_0_sqmuxa, 
        PCLK_count1_ov_net_1, un1_PCLKint5, PCLK_count2_ov_i_0, 
        \serdat_20[1] , un1_ack_0_sqmuxa_2, SCLO_int5, \sercon_10[4] , 
        N_345, \sercon[1]_net_1 , PCLKint_ff_4, PCLKint_net_1, 
        PCLKint_5, \sersta_i_0[1] , \sersta_i_0[2] , N_119, N_347, 
        I_15_0, N_118, I_18_0, N_487, PCLKint_ff_net_1, N_114_1, N_384, 
        starto_en_net_1, N_43, N_473, N_474, N_324, N_339, 
        \fsmmod_RNO_0[4]_net_1 , N_480, N_479, N_362, 
        \sercon[0]_net_1 , \fsmsta_nxt_4[2] , N_130, N_361, N_282, 
        N_497, PCLK_count1_1_sqmuxa, \PCLK_count1[0]_net_1 , 
        PCLK_count1_n0, PCLK_count1_n1, \fsmdet_RNO_0[4]_net_1 , 
        N_1217, \fsmdet_i_0[4] , adrcomp_2_sqmuxa_1, ens1_pre_4_sqmuxa, 
        un1_fsmsta33, N_432, N_64, N_1378, N_385, ack_bit_0_sqmuxa_1, 
        N_755, \serdat_20[0] , N_1208_1, \fsmdet_RNO_0[2] , 
        \fsmdet_i_0[0] , \fsmdet_i_0[2] , N_1206_1, \fsmdet_RNO_0[1] , 
        \fsmdet_i_0[1] , \fsmdet_RNO_0[3] , \fsmdet_i_0[6] , 
        \fsmdet_RNO_0[5] , N_342, N_368_i, un1_SDAO_int_1_sqmuxa_1, 
        N_87, N_674, ack_bit_net_1, bsd7_m, bsd7_net_1, SDAO_int_7, 
        SDAO_int_1_sqmuxa_1, ack_12, un1_ack_0_sqmuxa_3, serdat33, 
        un1_SDAInt5, \SDAI_ff_reg[1]_net_1 , \SDAI_ff_reg[2]_net_1 , 
        \SDAI_ff_reg[0]_net_1 , un1_serdat52, un1_serdat52_1, 
        un1_serdat52_0, N_107, fsmsta_nxt19, nedetect_0_sqmuxa, N_1218, 
        \fsmdet_RNO_0[6]_net_1 , un1_ens1_pre_2_sqmuxa, \fsmsta_10[4] , 
        N_805, \fsmsta_10[1] , \fsmsta_10[2] , \fsmsta_10[0] , N_801, 
        N_723, \fsmsta_10[3] , \fsmsta_nxt_4[1] , \sersta_4[1] , N_753, 
        sclscl_1_sqmuxa, \sercon_5[3] , N_386, bsd7_tmp_9, N_388, 
        N_387, N_320, \SDAI_ff_reg_RNO[2]_net_1 , 
        \SDAI_ff_reg_RNO[1]_net_1 , \sersta[3]_net_1 , 
        \sercon[7]_net_1 , \serdat_20[2] , N_441, 
        \fsmsync_RNO_0[7]_net_1 , \indelay_RNO_0[1]_net_1 , N_354, 
        \indelay_RNO_0[0] , \indelay_i_0[2] , N_330, 
        \DWACT_ADD_CI_0_partial_sum[0] , I_16_0, \fsmsync_RNO_1[4] , 
        N_1375, \fsmsta_nxt_4[0] , \SCLI_ff_reg_4[0] , 
        \SDAI_ff_reg_4[0] , N_106, GND, VCC;
    
    MX2 \fsmsta_RNO[3]  (.A(N_653), .B(N_804), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[3] ));
    NOR2A \sercon_0_RNIMKPQ3[3]  (.A(bsd7_tmp_1_sqmuxa_1), .B(serdat4), 
        .Y(bsd7_tmp_1_sqmuxa_2));
    OR2A \sersta_RNO_3[3]  (.A(COREI2C_1_INT_0), .B(N_768), .Y(
        \sersta_4_0_0[3] ));
    NOR3A \framesync_RNO_0[3]  (.A(I_16_0), .B(N_487), .C(N_488), .Y(
        N_458));
    NOR3C \seradr0_m[2]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[2]), .Y(
        seradr0_m[2]));
    OR3A \fsmsync_RNI73GJ[2]  (.A(\fsmsync[2]_net_1 ), .B(N_304), .C(
        COREI2C_1_INT_0), .Y(N_340));
    OAI1 \fsmsync_RNO_16[3]  (.A(N_316), .B(fsmsync_tr13_i_o2_0), .C(
        \fsmsync[3]_net_1 ), .Y(fsmsync_tr13_i_0));
    AO1C \fsmdet_RNO[6]  (.A(\fsmdet[5]_net_1 ), .B(N_1218), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO_0[6]_net_1 ));
    OR2A \fsmdet_RNO_0[6]  (.A(SDAInt_net_1), .B(\fsmdet_i_0[6] ), .Y(
        N_1218));
    AX1C \PCLK_count1_RNO_0[3]  (.A(PCLK_count1_c1), .B(
        \PCLK_count1[2]_net_1 ), .C(\PCLK_count1[3]_net_1 ), .Y(
        PCLK_count1_n3_tz));
    OR2 SCLO_int_RNO_2 (.A(N_150), .B(N_149), .Y(un1_sersta69_0));
    MX2B \fsmsta_RNO_2[3]  (.A(\fsmsta[3]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst[3] ));
    DFN1C0 \fsmsync[1]  (.D(\fsmsync_RNO_0[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[1]_net_1 ));
    NOR3B \fsmsta_RNI1QMI[0]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta64_0_a3_0));
    AO1 \fsmsta_RNO_0[2]  (.A(\fsmsta_nxt_cnst_i_m_1[2] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_iv_2[2] ), .Y(
        \fsmsta_10s_iv[2] ));
    NOR3C \seradr0_m[0]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[0]), .Y(
        seradr0_m[0]));
    NOR3B SCLO_int_RNIMMIK (.A(\fsmmod[4]_net_1 ), .B(SCLO_int_net_1), 
        .C(SCLInt_net_1), .Y(un14_counter_PRESETN));
    NOR3 \fsmmod_RNO[5]  (.A(\fsmmod_ns_i_a3_i_i_0[5] ), .B(N_426), .C(
        N_1428), .Y(N_201));
    NOR3 \sercon_RNI1E0R[6]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(\sercon[6]_net_1 ), .Y(N_412));
    AO1A \fsmsta_RNO_4[0]  (.A(fsmsta_nxt93), .B(
        \fsmsta_nxt_cnst_0_a4_0[0] ), .C(\fsmsta_nxt_cnst_0_0[0] ), .Y(
        \fsmsta_nxt_cnst_0_1[0] ));
    DFN1P0 \indelay[2]  (.D(N_1376), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        \indelay_i_0[2] ));
    NOR2A \fsmsta_RNO_5[4]  (.A(N_19), .B(N_718), .Y(
        \fsmsta_nxt_cnst_i_a4_0[4] ));
    OR2A \SCLI_ff_reg_RNO[0]  (.A(\sercon[6]_net_1 ), .B(SCLO_int_0), 
        .Y(\SCLI_ff_reg_4[0] ));
    OA1 \fsmsta_RNO_10[0]  (.A(un1_framesync24_3), .B(
        un1_framesync24_4), .C(SDAInt_net_1), .Y(SDAInt_m));
    DFN1P0 \framesync[0]  (.D(N_263), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\framesync[0]_net_1 ));
    OR2 SCLInt_RNO (.A(N_429), .B(un1_serdat52), .Y(un1_serdat52_1));
    NOR3A \fsmmod_RNO_8[0]  (.A(N_313), .B(pedetect_net_1), .C(N_309), 
        .Y(\fsmmod_ns_i_a3_i_i_a2_1_1[0] ));
    DFN1C0 \fsmsync[5]  (.D(\fsmsync_RNO[5]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[5]_net_1 ));
    OA1A \fsmmod_RNO_0[2]  (.A(\fsmmod[2]_net_1 ), .B(N_497), .C(N_306)
        , .Y(N_419));
    XOR2 un1_framesync_1_I_16 (.A(\framesync[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16_0));
    AND2 SDAO_int_3_sqmuxa_2 (.A(un1_framesync_3), .B(
        SDAO_int_3_sqmuxa_1_net_1), .Y(SDAO_int_3_sqmuxa_2_net_1));
    NOR2 SDAO_int_3_sqmuxa_0 (.A(N_327), .B(N_372), .Y(
        SDAO_int_3_sqmuxa_0_net_1));
    OR2 \fsmsync_RNO_3[1]  (.A(\fsmmod[4]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(fsmsync_tr8_tz_tz_2));
    NOR2B \fsmsta_RNO_4[2]  (.A(fsmsta_0_sqmuxa_1), .B(fsmsta19), .Y(
        fsmsta_0_sqmuxa_2_s7));
    NOR2 \fsmmod_RNIAOAD[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[4]_net_1 ), .Y(N_464_1));
    NOR3A \sersta_RNO_1[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(N_751), .Y(N_765));
    OR2A \fsmsta_RNIIJUO[4]  (.A(N_763_1), .B(N_312), .Y(N_334));
    NOR3B \fsmsync_RNO_5[3]  (.A(N_1288_tz), .B(N_1291_tz), .C(
        fsmsync_tr12_29_0), .Y(\fsmsync_ns_i_a4_3_tz_1[3] ));
    NOR2B \framesync_RNIMQRO1[1]  (.A(un1_framesync_1_1), .B(
        un1_framesync_1_0), .Y(un1_framesync_1));
    DFN1E0C0 \serdat[5]  (.D(N_385), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_ack_1_sqmuxa), .Q(serdat[5]));
    NOR2A ack_RNIK95B5_0 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .Y(
        fsmsta_0_sqmuxa_1));
    NOR2A \sercon_write_proc.un1_framesync24_1  (.A(
        un1_framesync24_1_0), .B(N_325), .Y(un1_framesync24_1_1));
    NOR3A \fsmmod_RNO_2[3]  (.A(\fsmmod_ns_i_a3_i_i_a2_2_0[3] ), .B(
        N_323), .C(N_318), .Y(N_482));
    XOR2 adrcomp_RNO_8 (.A(seradr0apb[1]), .B(\serdat[0]_net_1 ), .Y(
        un1_seradr0_0));
    NOR2B \serdat_write_proc.serdat4_0_a2  (.A(seradr0apb4_0), .B(
        N_1443_i), .Y(serdat4));
    AOI1 \fsmsta_RNO_6[1]  (.A(N_724), .B(fsmsta_nxt93), .C(N_731), .Y(
        \fsmsta_nxt_cnst_m_0[1] ));
    NOR3B \sercon_RNI6PAT2[5]  (.A(N_307), .B(N_532), .C(N_305), .Y(
        N_487));
    DFN1C0 \fsmmod[5]  (.D(N_201), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \fsmmod[5]_net_1 ));
    DFN1C0 \fsmmod[4]  (.D(\fsmmod_RNO_0[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmmod[4]_net_1 ));
    AO1 \fsmsta_RNIOBCU1[0]  (.A(sersta72_1), .B(N_97_i_0), .C(
        sersta71), .Y(un1_sersta69_2));
    OR2A \indelay_RNI9HP2[1]  (.A(\indelay[1]_net_1 ), .B(N_316), .Y(
        N_360));
    NOR2B \fsmmod_RNO_4[3]  (.A(\fsmmod[2]_net_1 ), .B(N_500), .Y(
        \fsmmod_ns_i_a3_i_i_a2_2_0[3] ));
    NOR2B bsd7_tmp_RNO_2 (.A(\fsmdet[3]_net_1 ), .B(\sercon[6]_net_1 ), 
        .Y(bsd7_tmp_0_sqmuxa));
    NOR2 \sercon_RNIVSC4[2]  (.A(\sercon[2]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmsta_nxt_34_m_1[3] ));
    XA1C \sersta_RNO[1]  (.A(\fsmsta[0]_net_1 ), .B(N_753), .C(N_752), 
        .Y(\sersta_4[1] ));
    NOR3 \sercon_0_RNISVLQ1_0[3]  (.A(N_87), .B(bsd7_tmp_1_sqmuxa_i_1), 
        .C(\COREI2C_1_INT_0[0] ), .Y(bsd7_tmp_1_sqmuxa_1));
    OR3A \fsmsync_RNO_2[6]  (.A(\sercon[4]_net_1 ), .B(
        \COREI2C_1_INT_0[0] ), .C(N_531), .Y(
        \fsmsync_ns_i_0_0_0_tz[6] ));
    MX2 \serdat_RNO[3]  (.A(I2C_slave_0_BIF_1_PWDATA[3]), .B(
        \serdat[2]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(N_388));
    NOR2B \fsmsta_RNO_11[2]  (.A(\fsmsta_nxt_34_m_1[3] ), .B(
        un1_framesync24_3), .Y(\fsmsta_nxt_34_i_m[1] ));
    AO1A \framesync_RNO[1]  (.A(N_347), .B(I_15_0), .C(
        \fsmdet[3]_net_1 ), .Y(N_119));
    NOR2B ack_RNIK95B5 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .Y(
        fsmsta_1_sqmuxa_1_s9));
    XOR2 un1_framesync_1_I_13 (.A(\framesync[0]_net_1 ), .B(N_58), .Y(
        \DWACT_ADD_CI_0_partial_sum[0] ));
    NOR2 pedetect_RNISLRF2_0 (.A(pedetect_net_1), .B(serdat4), .Y(
        serdat_2_sqmuxa_0));
    OR3C \PCLK_count1_RNI3P8G[3]  (.A(\PCLK_count1[1]_net_1 ), .B(
        \PCLK_count1[3]_net_1 ), .C(\PCLK_count1[2]_net_1 ), .Y(
        PCLK_count17));
    NOR3A \sercon_RNIT0KQ1[6]  (.A(\sercon[6]_net_1 ), .B(N_121), .C(
        un1_sersta58_0_0), .Y(ack_3_sqmuxa_0));
    NOR3C \seradr0_m[1]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[1]), .Y(
        seradr0_m[1]));
    NOR3 \fsmmod_RNO[2]  (.A(N_419), .B(N_420), .C(N_1428), .Y(
        \fsmmod_RNO[2]_net_1 ));
    NOR2A adrcompen_RNO (.A(\fsmdet[3]_net_1 ), .B(adrcomp12), .Y(N_64)
        );
    DFN1P0 \fsmmod[0]  (.D(N_181), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        \fsmmod[0]_net_1 ));
    NOR2B \PCLK_count1_RNO[2]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n2_tz), .Y(PCLK_count1_n2));
    OR2A \fsmsta_RNIO8FC[0]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(N_320));
    OR2A adrcomp_RNI3B3O (.A(N_342), .B(N_470), .Y(N_327));
    OR2B \fsmsta_10k_0_a2_0_RNO_0[3]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(fsmsta32_s3_1_i));
    OA1C \fsmsync_RNO_4[6]  (.A(SDAInt_net_1), .B(\fsmsync_i_0[6] ), 
        .C(\fsmsync[5]_net_1 ), .Y(\fsmsync_ns_i_0_0_a2_0_0[6] ));
    MX2C ack_RNO_0 (.A(un1_ack_0_sqmuxa_0), .B(serdat33), .S(
        un1_ack_3_sqmuxa), .Y(un1_ack_0_sqmuxa_3));
    NOR2A \framesync_RNIR3AM9[0]  (.A(un1_framesync24_2), .B(
        un1_fsmdet_2), .Y(un1_framesync24_2_s4));
    OR2 \sercon_RNIJP12[4]  (.A(\sercon[4]_net_1 ), .B(COREI2C_1_INT_0)
        , .Y(N_311));
    OR2A \fsmsync_RNO_17[3]  (.A(\fsmsync[2]_net_1 ), .B(
        \sercon[4]_net_1 ), .Y(fsmsync_ns_i_a4_120_tz_0));
    OR2 \framesync_7_i_i_o2[0]  (.A(N_532), .B(
        \framesync_7_i_i_o2_0_0[0] ), .Y(N_536));
    XOR2 un1_framesync_1_I_18 (.A(\framesync[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18_0));
    AO1 \fsmsync_RNO_3[3]  (.A(N_464_1), .B(N_516), .C(
        \framesync[3]_net_1 ), .Y(fsmsync_tr12_22_0_i_0));
    OR2A \sercon_RNIRFVP[3]  (.A(COREI2C_1_INT_0), .B(N_772), .Y(N_752)
        );
    NOR3A \fsmsta_RNO_10[2]  (.A(N_763_1), .B(N_337), .C(
        \fsmsta_nxt_4[2] ), .Y(\fsmsta_nxt_4_i_m[2] ));
    NOR2A bsd7_RNO_5 (.A(serdat4), .B(I2C_slave_0_BIF_1_PWDATA[7]), .Y(
        \PWDATA_i_m_0[7] ));
    OR2A \fsmdet_RNIG8F2[5]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[5]_net_1 ), .Y(N_309));
    NOR3A \fsmsta_RNO_4[3]  (.A(N_763_1), .B(N_337), .C(
        \fsmsta_nxt_4[1] ), .Y(\fsmsta_nxt_4_m[3] ));
    DFN1C0 \fsmmod[2]  (.D(\fsmmod_RNO[2]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[2]_net_1 ));
    NOR2A \sersta_RNO_0[0]  (.A(N_723), .B(\fsmsta[0]_net_1 ), .Y(
        N_762));
    AOI1B SDAO_int_RNO_0 (.A(un1_framesync_1), .B(nedetect_net_1), .C(
        SDAO_int_3_sqmuxa), .Y(SDAO_int_1_sqmuxa_1));
    NOR2B \fsmsta_RNIO8FC[1]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta83_3_0));
    OR3C \fsmsync_RNO[3]  (.A(\fsmsync_ns_i_a4_0[3] ), .B(
        \fsmsync_ns_i_a4_3[3] ), .C(\fsmsync_ns_i_a4_2_0[3] ), .Y(
        \fsmsync_RNO_0[3]_net_1 ));
    OAI1 \framesync_RNICLNH3[3]  (.A(\framesync[3]_net_1 ), .B(N_362), 
        .C(N_318), .Y(un1_framesync_4));
    NOR2B \fsmsta_RNIN7FC_0[1]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_97_i_0));
    NOR3A \fsmsta_RNI6VMI_0[1]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(sersta71_1));
    DFN1E0C0 \serdat[1]  (.D(\serdat_20[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[1]_net_1 ));
    NOR2B adrcomp_RNO_7 (.A(un1_sercon_1_1), .B(un1_framesync_1), .Y(
        un1_sercon_1_2));
    NOR2B \fsmsta_RNIS56V_1[0]  (.A(sersta73_0_a3_0_a2_0), .B(N_763_1), 
        .Y(N_131));
    NOR3B \fsmmod_RNO_1[2]  (.A(N_334), .B(\fsmmod_ns_0_i_0_a2_0_2[2] )
        , .C(N_318), .Y(N_420));
    OA1 \fsmsta_RNO_8[0]  (.A(N_718), .B(N_142), .C(\fsmsta[0]_net_1 ), 
        .Y(\fsmsta_nxt_cnst_0_a4_0[0] ));
    OA1B \fsmsync_RNO_12[3]  (.A(\fsmsync_ns_i_a4_1_tz_tz_0_tz[3] ), 
        .B(COREI2C_1_INT_0), .C(N_519), .Y(
        \fsmsync_ns_i_a4_1_tz_tz[3] ));
    AO1 \fsmsta_RNO_0[3]  (.A(\fsmsta_nxt_cnst[3] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_0_iv_2[3] ), .Y(N_653));
    AO1 \fsmsync_RNO_1[3]  (.A(\fsmsync_ns_i_a4_3_tz_1[3] ), .B(
        \fsmsync_ns_i_a4_1_tz[3] ), .C(N_304), .Y(
        \fsmsync_ns_i_a4_3[3] ));
    NOR2A \fsmsta_RNIO8FC_1[1]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\framesync_7_i_i_a2_7_0[0] ));
    AO1 \fsmsta_RNO_9[0]  (.A(\fsmsta_nxt_cnst_0_a4_0_0[0] ), .B(
        fsmsta_nxt93), .C(N_772), .Y(\fsmsta_nxt_cnst_0_0[0] ));
    OR3 \fsmsta_RNO_3[2]  (.A(un1_framesync24_1_s5), .B(SDAO_int_m_0), 
        .C(\fsmsta_10s_iv_1[2] ), .Y(\fsmsta_10s_iv_2[2] ));
    OR3A \sercon_write_proc.sercon18_0_o2  (.A(seradr0apb4_0), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .C(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(N_345));
    AO1 \fsmsync_RNO_2[3]  (.A(fsmsync_tr12_27_0_i_1), .B(
        \fsmsync_ns_i_a4_2_tz[3] ), .C(N_1343), .Y(
        \fsmsync_ns_i_a4_2_0[3] ));
    AO1D \fsmdet_RNI0FK01[3]  (.A(un1_sersta58_0_m3_i_0), .B(N_97_i_0), 
        .C(\fsmdet[3]_net_1 ), .Y(un1_sersta58_0_0));
    NOR2B \fsmsync_RNO_2[0]  (.A(N_330), .B(\fsmsync[4]_net_1 ), .Y(
        N_1328));
    NOR3 bsd7_RNO (.A(bsd7_tmp_i_m), .B(bsd7_12_iv_0), .C(
        \serdat_i_m[7] ), .Y(bsd7_12_iv));
    NOR3C adrcomp_RNIC6PM3 (.A(N_263_1), .B(adrcomp_net_1), .C(
        un1_framesync_4), .Y(un1_framesync_5));
    NOR3 \fsmsync_RNO_8[0]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .C(\fsmmod[5]_net_1 ), .Y(fsmsync_tr3_1_2));
    NOR2A \fsmsta_RNIP9FC[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_a4_2_0[3] ));
    DFN1E0C0 \fsmsta[1]  (.D(\fsmsta_10[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[1]_net_1 ));
    AO1 pedetect_RNI0VORQ (.A(serdat33), .B(un1_ack_3_sqmuxa), .C(
        ack_0_sqmuxa_1), .Y(un1_ack_0_sqmuxa_2));
    OR3 adrcomp_RNO_2 (.A(un1_seradr0_NE_2), .B(un1_seradr0_NE_1), .C(
        un1_seradr0_NE_3), .Y(un1_seradr0_NE));
    AO1 \fsmdet_RNO[1]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[1] ), .C(
        N_1206_1), .Y(\fsmdet_RNO_0[1] ));
    NOR3A \fsmmod_RNO_2[2]  (.A(\sercon[4]_net_1 ), .B(N_318), .C(
        \COREI2C_1_INT_0[0] ), .Y(N_497));
    OA1B \fsmsta_RNO_12[1]  (.A(un1_framesync24_1_net_1), .B(
        un1_sersta65), .C(un1_fsmdet_2), .Y(N_808));
    DFN1C0 \sercon[4]  (.D(\sercon_10[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sercon[4]_net_1 ));
    OR3A \fsmsync_RNO_10[3]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[0]_net_1 ), .C(N_1291_tz_tz), .Y(N_1291_tz));
    DFN1C0 \indelay[1]  (.D(\indelay_RNO_0[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[1]_net_1 ));
    NOR2A \fsmmod_RNO_4[2]  (.A(\sercon[5]_net_1 ), .B(COREI2C_1_INT_0)
        , .Y(\fsmmod_ns_0_i_0_a2_0_0[2] ));
    MX2 SDAO_int_RNO (.A(N_288), .B(N_674), .S(un1_SDAO_int_1_sqmuxa_1)
        , .Y(SDAO_int_7));
    AO1A \sercon_0_RNICJB1K[3]  (.A(\COREI2C_1_INT_0[0] ), .B(
        ack_bit_1_sqmuxa), .C(ack_3_sqmuxa), .Y(un1_ack_3_sqmuxa));
    OR2A SCLInt_RNIULLR (.A(SCLInt_net_1), .B(N_304), .Y(N_339));
    OR3A \fsmdet_RNIA65T1[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .C(bsd7_tmp_0_sqmuxa_1), .Y(
        un1_SCLI_ff_reg_1_sqmuxa_0));
    DFN1C0 \PCLK_count1[2]  (.D(PCLK_count1_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[2]_net_1 ));
    NOR2A \fsmdet_RNIMKO81[5]  (.A(N_263_1), .B(un1_fsmsta33), .Y(
        ens1_pre_3_sqmuxa));
    OR2B adrcompen_RNI719F (.A(adrcompen_net_1), .B(adrcomp_net_1), .Y(
        N_342));
    OR3A \fsmsync_RNO_6[3]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[0]_net_1 ), .C(\fsmsync_ns_i_a4_1_tz_tz[3] ), .Y(
        \fsmsync_ns_i_a4_1_tz[3] ));
    AO1 \fsmsta_RNIOBCU1[3]  (.A(N_149), .B(\fsmsta[3]_net_1 ), .C(
        N_114), .Y(un1_sersta64_1_0));
    XOR2 adrcomp_RNO_10 (.A(seradr0apb[5]), .B(serdat[4]), .Y(N_366_i));
    NOR2B \fsmsync_RNO_10[0]  (.A(\fsmsync[0]_net_1 ), .B(SCLInt_net_1)
        , .Y(\fsmsync_ns_0_a4_1_0[0] ));
    OA1B \fsmsync_RNO_0[3]  (.A(N_340), .B(fsmsync_tr12_22_0_i_0), .C(
        N_977), .Y(\fsmsync_ns_i_a4_0[3] ));
    DFN1C0 \fsmsync[4]  (.D(\fsmsync_RNO_1[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmsync[4]_net_1 ));
    NOR2A \fsmmod_RNI1C081[5]  (.A(\fsmsync_ns_i_0_0_a2_1_0[2] ), .B(
        N_351), .Y(N_1343));
    OR3 \sercon_write_proc.un1_framesync24_1_RNIMM138  (.A(
        un1_framesync24_1_1), .B(un1_fsmmod_2_1), .C(un1_framesync_5), 
        .Y(un1_fsmmod_2));
    OR2A \fsmdet_RNIE4ND[5]  (.A(N_302), .B(\fsmdet[5]_net_1 ), .Y(
        N_336));
    NOR2A \sersta_RNO_2[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(\sersta_4_0_a4_0[3] ));
    OR3 \fsmsync_RNO_0[1]  (.A(fsmsync_tr8_tz_tz_1), .B(
        fsmsync_tr8_tz_tz_0), .C(fsmsync_tr8_tz_tz_2), .Y(N_929_tz_tz));
    AO1 \fsmsta_RNI9RD51[0]  (.A(N_320), .B(N_97_i_0), .C(N_142), .Y(
        N_87));
    DFN1E0P0 SDAO_int (.D(SDAO_int_7), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(SDAO_int_1_sqmuxa_1), .Q(SDAO_0_0));
    NOR2B \fsmsta_RNIOHGI[4]  (.A(\fsmsta[4]_net_1 ), .B(N_302), .Y(
        \framesync_7_i_i_a2_4_0[0] ));
    NOR3B \fsmsta_RNO_6[0]  (.A(N_763_1), .B(\fsmsta_nxt_4[0] ), .C(
        N_337), .Y(\fsmsta_nxt_4_m[0] ));
    NOR3A \sercon_RNIT90R[2]  (.A(\sercon[2]_net_1 ), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .C(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(\sercon_m[2] ));
    AOI1 \sercon_RNIGB1S[5]  (.A(N_334), .B(\sercon[5]_net_1 ), .C(
        N_311), .Y(N_532));
    NOR3B \fsmsta_RNIS56V_0[4]  (.A(\fsmsta[4]_net_1 ), .B(N_114_1), 
        .C(\fsmsta[3]_net_1 ), .Y(N_114));
    NOR3A \fsmmod_RNO[3]  (.A(N_535), .B(\fsmmod_ns_i_a3_i_i_0[3] ), 
        .C(N_1428), .Y(N_198));
    NOR2B \sercon_RNIJKBE[4]  (.A(N_343), .B(\sercon[4]_net_1 ), .Y(
        adrcomp12));
    OR3A \fsmsta_RNO_13[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_2_1_i[2] ));
    OA1B \fsmmod_RNO[1]  (.A(fsmmod_tr7_3), .B(\fsmmod_ns_0_a3_0[1] ), 
        .C(N_1428), .Y(\fsmmod_ns[1] ));
    NOR3A busfree_RNI8KGV_0 (.A(busfree_net_1), .B(\fsmmod[5]_net_1 ), 
        .C(SCLInt_net_1), .Y(un18_counter_PRESETN));
    DFN1P0 \sersta[4]  (.D(\sersta_4[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[4]_net_1 ));
    NOR3C \fsmmod_RNO_2[1]  (.A(\fsmmod[0]_net_1 ), .B(
        \sercon[5]_net_1 ), .C(SDAInt_net_1), .Y(fsmmod_tr7_3_1));
    MX2 \serdat_RNO[0]  (.A(I2C_slave_0_BIF_1_PWDATA[0]), .B(ack_net_1)
        , .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[0] ));
    AOI1 \fsmdet_RNO[5]  (.A(\fsmdet_i_0[2] ), .B(\fsmdet_i_0[4] ), .C(
        N_1206_1), .Y(\fsmdet_RNO_0[5] ));
    MX2 \fsmsta_RNO_9[1]  (.A(un1_framesync24_2_s4), .B(N_808), .S(
        SDAO_0_0), .Y(\fsmsta_10s_0_iv_1[1] ));
    NOR3B \fsmmod_RNO_4[0]  (.A(\fsmmod_ns_i_a3_i_i_a2_0_0[0] ), .B(
        N_335), .C(N_309), .Y(N_416));
    OR2A nedetect_RNI2QR9 (.A(nedetect_net_1), .B(\fsmdet[3]_net_1 ), 
        .Y(framesync_1_sqmuxa_2_i_0_0));
    NOR3B \fsmsta_RNITL1N3[4]  (.A(N_314), .B(
        \framesync_7_i_i_a2_4_0[0] ), .C(N_318), .Y(N_488));
    OR2A SDAInt_RNIO0KE_0 (.A(SCLInt_net_1), .B(SDAInt_net_1), .Y(
        N_1208_1));
    OR3 \framesync_RNIHNRV4[0]  (.A(N_263_1), .B(un1_fsmsta33), .C(
        un1_framesync24), .Y(un1_fsmdet_2));
    NOR3 \fsmsync_RNO[2]  (.A(N_434), .B(N_435), .C(N_1343), .Y(
        \fsmsync_RNO_0[2]_net_1 ));
    NOR2A \fsmsta_RNIQAFC[2]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_142));
    OR2 \fsmdet_RNILRPF[3]  (.A(adrcomp12), .B(\fsmdet[3]_net_1 ), .Y(
        N_359));
    AOI1 \fsmdet_RNO[3]  (.A(\fsmdet_i_0[6] ), .B(\fsmdet_i_0[1] ), .C(
        N_1208_1), .Y(\fsmdet_RNO_0[3] ));
    NOR3 \fsmsync_RNO_20[3]  (.A(\fsmmod[4]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .C(\fsmmod[5]_net_1 ), .Y(
        \fsmsync_ns_i_a4_1_tz_tz_0_tz[3] ));
    NOR2B adrcomp_RNIGLTA1 (.A(adrcomp_net_1), .B(ens1_pre_3_sqmuxa), 
        .Y(fsmsta_0_sqmuxa_s5_0));
    OR3A \framesync_RNIITKA1[1]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(\framesync[2]_net_1 ), .Y(N_305));
    NOR2A \fsmsync_RNO_14[3]  (.A(\sercon[4]_net_1 ), .B(N_303), .Y(
        N_463));
    GND GND_i (.Y(GND));
    NOR3A \framesync_RNIR23N3[0]  (.A(un1_framesync24_2_0), .B(
        \framesync[0]_net_1 ), .C(N_305), .Y(un1_framesync24));
    NOR2B \fsmmod_RNI5H38[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ens1_pre_0_sqmuxa_s2_1));
    NOR3C \fsmmod_RNO_3[2]  (.A(\fsmmod_ns_0_i_0_a2_0_0[2] ), .B(N_500)
        , .C(N_306), .Y(\fsmmod_ns_0_i_0_a2_0_2[2] ));
    NOR2B \fsmmod_RNO_3[3]  (.A(SCLInt_net_1), .B(N_500), .Y(
        \fsmmod_ns_i_a3_i_i_a2_0_0[3] ));
    OA1B \fsmmod_RNO[4]  (.A(N_480), .B(N_479), .C(N_1428), .Y(
        \fsmmod_RNO_0[4]_net_1 ));
    NOR2B nedetect_RNO (.A(un1_SCLI_ff_reg_i_0), .B(SCLInt_net_1), .Y(
        nedetect_0_sqmuxa));
    OR2A \fsmmod_RNIHBM7[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(N_372));
    DFN1E0C0 adrcomp (.D(un1_adrcomp_2_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(adrcomp_2_sqmuxa_1), .Q(adrcomp_net_1));
    OR2B ack_RNIQJLE (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[1] ));
    NOR2B \SDAI_ff_reg_RNO[1]  (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_RNO[1]_net_1 ));
    NOR2 \serdat_RNI0IFE[0]  (.A(\serdat[2]_net_1 ), .B(
        \serdat[0]_net_1 ), .Y(fsmsta19_2));
    NOR2A adrcomp_RNIS9Q8 (.A(\fsmmod[0]_net_1 ), .B(adrcomp_net_1), 
        .Y(N_470));
    OA1A \framesync_7_i_i_o2_0_1_RNO[0]  (.A(N_307), .B(N_305), .C(
        N_302), .Y(\framesync_7_i_i_o2_0[0] ));
    AO1 \fsmsta_RNO_0[0]  (.A(\fsmsta_nxt_cnst[0] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_1_iv_2[0] ), .Y(N_650));
    OR2 \fsmdet_RNI6GS2[5]  (.A(\fsmdet[5]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(N_263_1));
    MX2 \serdat_RNO[6]  (.A(I2C_slave_0_BIF_1_PWDATA[6]), .B(serdat[5])
        , .S(un1_ack_0_sqmuxa_2), .Y(N_386));
    NOR2A un1_framesync24_3_0_a3 (.A(un1_framesync24_3_0_a3_0_net_1), 
        .B(N_325), .Y(un1_framesync24_3));
    OR3 \fsmsta_RNO_3[1]  (.A(\fsmsta_nxt_34_m[1] ), .B(
        \fsmsta_nxt_4_m[1] ), .C(\fsmsta_10s_0_iv_1[1] ), .Y(
        \fsmsta_10s_0_iv_2[1] ));
    OR2B \fsmsta_RNIRBFC[4]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(N_751));
    XOR2 \PCLK_count1_RNO_0[2]  (.A(\PCLK_count1[2]_net_1 ), .B(
        PCLK_count1_c1), .Y(PCLK_count1_n2_tz));
    NOR3 \sercon_0_RNIDNG61[3]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(\COREI2C_1_INT_0[0] ), .Y(
        N_400));
    NOR2B \fsmmod_RNO_3[0]  (.A(N_328), .B(\fsmmod[0]_net_1 ), .Y(
        N_477));
    XOR2 adrcomp_RNO_12 (.A(seradr0apb[2]), .B(\serdat[1]_net_1 ), .Y(
        un1_seradr0_1_0));
    OA1 adrcomp_RNO_0 (.A(N_343), .B(sersta64), .C(un1_sercon_1_4), .Y(
        un1_sercon_1));
    DFN1C0 \fsmdet[5]  (.D(\fsmdet_RNO_0[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[5]_net_1 ));
    NOR2A pedetect_RNIOLHA4_0 (.A(bsd7_tmp_1_sqmuxa_2), .B(
        pedetect_net_1), .Y(ack_1_sqmuxa_1));
    XOR2 \fsmsta_RNIN7FC[1]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_368_i));
    NOR3A \framesync_RNIRRFT3[0]  (.A(un1_sersta65_0), .B(
        \framesync[0]_net_1 ), .C(N_305), .Y(un1_sersta65));
    MX2 \serdat_RNO[1]  (.A(I2C_slave_0_BIF_1_PWDATA[1]), .B(
        \serdat[0]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[1] ));
    MX2C \fsmsta_RNO[2]  (.A(\fsmsta_10s_iv[2] ), .B(N_803), .S(
        un1_fsmdet_2), .Y(\fsmsta_10[2] ));
    NOR3A adrcompen_RNO_1 (.A(nedetect_net_1), .B(\framesync[0]_net_1 )
        , .C(N_305), .Y(N_432));
    XAI1 PCLKint_ff_RNIULLR (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .C(SCLInt_net_1), .Y(N_361));
    OR3 \fsmsta_RNO_3[3]  (.A(fsmsta_nxt20_m), .B(\fsmsta_nxt_4_m[3] ), 
        .C(\fsmsta_10s_0_iv_1[3] ), .Y(\fsmsta_10s_0_iv_2[3] ));
    NOR3A \sercon_0_RNISVLQ1[3]  (.A(\COREI2C_1_INT_0[0] ), .B(N_87), 
        .C(bsd7_tmp_1_sqmuxa_i_1), .Y(bsd7_tmp_0_sqmuxa_1));
    NOR3A \framesync_RNIACEM4[0]  (.A(un1_sersta69), .B(
        \framesync[0]_net_1 ), .C(N_305), .Y(un1_framesync24_2));
    MX2 \serdat_RNO[2]  (.A(I2C_slave_0_BIF_1_PWDATA[2]), .B(
        \serdat[1]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[2] ));
    OR2 SDA_e_inst_1 (.A(OUT_EN), .B(OUT_EN_0), .Y(SDA_e));
    NOR2A \fsmsta_RNO_7[1]  (.A(un1_framesync24_3_s6), .B(
        \fsmsta_nxt_34_m_1[3] ), .Y(\fsmsta_nxt_34_m[1] ));
    NOR2A SCLO_int_RNO_4 (.A(N_143), .B(\fsmsta[1]_net_1 ), .Y(
        un1_sersta69_4));
    NOR2 \sercon_RNIP48H[4]  (.A(N_263_1), .B(adrcomp12), .Y(
        un1_adrcomp_2_sqmuxa_0));
    DFN1P0 \fsmdet[2]  (.D(\fsmdet_RNO_0[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[2] ));
    NOR2A SDAO_int_3_sqmuxa_1 (.A(SDAO_int_3_sqmuxa_0_net_1), .B(N_351)
        , .Y(SDAO_int_3_sqmuxa_1_net_1));
    NOR2B \serdat_RNI42E12[0]  (.A(seradr0apb[0]), .B(fsmsta19), .Y(
        fsmsta_nxt86));
    OR3 \sersta_RNO[3]  (.A(N_769), .B(\sersta_4_0_1[3] ), .C(N_767), 
        .Y(\sersta_4[3] ));
    NOR3 \framesync_RNITR482[0]  (.A(\framesync[0]_net_1 ), .B(N_305), 
        .C(N_342), .Y(fsmsta_nxt93));
    NOR2B \framesync_RNIBTDS_0[1]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(un1_framesync_1_0));
    AO1 \framesync_RNI71SC2[3]  (.A(N_377), .B(\framesync[3]_net_1 ), 
        .C(N_351), .Y(SDAO_int_0_sqmuxa_i_0_2));
    OA1B \fsmmod_RNO[6]  (.A(N_473), .B(N_474), .C(N_1428), .Y(N_43));
    DFN1P0 \sersta[3]  (.D(\sersta_4[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[3]_net_1 ));
    AO1A \fsmdet_RNI4I0F2[5]  (.A(N_305), .B(N_307), .C(N_336), .Y(
        N_347));
    OR2 \sercon_RNIUCD01[5]  (.A(N_323), .B(N_322), .Y(N_328));
    AO1D pedetect_RNINHGJC (.A(pedetect_net_1), .B(un1_fsmdet_2), .C(
        ens1_pre_2_sqmuxa_1), .Y(un1_ens1_pre_2_sqmuxa));
    OR2A \fsmmod_RNIH34H1[6]  (.A(N_335), .B(un1_fsmmod_1), .Y(
        un1_fsmmod_2_0));
    NOR2A \framesync_RNIBTDS[3]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(un1_framesync_1_1));
    XOR2 adrcomp_RNO_11 (.A(seradr0apb[6]), .B(serdat[5]), .Y(N_367_i));
    NOR3C \framesync_7_i_i_a2_0_RNO[0]  (.A(\fsmsta[4]_net_1 ), .B(
        \framesync[0]_net_1 ), .C(N_302), .Y(
        \framesync_7_i_i_a2_0_1[0] ));
    NOR2 \fsmsta_RNIN7FC_1[1]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_763_1));
    NOR3 \fsmsta_RNO_1[2]  (.A(fsmsta_1_sqmuxa_1_s9), .B(fsmsta33), .C(
        fsmsta_0_sqmuxa_2_s7), .Y(N_803));
    AND2 un1_framesync_1_I_1 (.A(\framesync[0]_net_1 ), .B(N_58), .Y(
        \DWACT_ADD_CI_0_TMP[0] ));
    NOR2 \fsmsta_RNO_7[2]  (.A(N_718), .B(\fsmsta[4]_net_1 ), .Y(N_734)
        );
    DFN1E1P0 busfree (.D(\fsmdet_i[3] ), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_fsmdet), .Q(busfree_net_1));
    DFN1E0C0 \sercon[7]  (.D(I2C_slave_0_BIF_1_PWDATA[7]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(N_345), .Q(\sercon[7]_net_1 ));
    DFN1E1P0 ack_bit (.D(I2C_slave_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(ack_bit_0_sqmuxa_1), .Q(ack_bit_net_1));
    DFN1P0 \SCLI_ff_reg[2]  (.D(N_106), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\SCLI_ff_reg[2]_net_1 ));
    MX2 \serdat_RNO[5]  (.A(I2C_slave_0_BIF_1_PWDATA[5]), .B(serdat[4])
        , .S(un1_ack_0_sqmuxa_2), .Y(N_385));
    AO1 bsd7_tmp_RNO_0 (.A(bsd7_tmp_1_sqmuxa_2), .B(nedetect_net_1), 
        .C(un1_bsd7_tmp_0_sqmuxa_0), .Y(un1_bsd7_tmp_0_sqmuxa));
    AO1A \sersta_RNI9OP12[4]  (.A(N_350), .B(\sersta[4]_net_1 ), .C(
        \sercon_m[7] ), .Y(PRDATA_iv_0_0));
    OR3B \indelay_RNO[2]  (.A(\fsmsync[3]_net_1 ), .B(N_360), .C(N_443)
        , .Y(N_1376));
    OR2A \sercon_RNIAR8C[3]  (.A(COREI2C_1_INT_0), .B(SCLInt_net_1), 
        .Y(N_302));
    OR2 \fsmmod_RNI43B21[4]  (.A(N_313), .B(N_304), .Y(N_335));
    NOR3 \SCLI_ff_reg_RNIGTC2_0[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(
        un1_SCLI_ff_reg_i_0));
    NOR3B ack_bit_RNO (.A(\COREI2C_1_INT_0[0] ), .B(ack_bit_1_sqmuxa), 
        .C(N_345), .Y(ack_bit_0_sqmuxa_1));
    OA1 \fsmmod_RNID0PE[6]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .C(\fsmdet[3]_net_1 ), .Y(un1_fsmmod_1));
    NOR2A \fsmsta_RNO_14[2]  (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[2] ));
    DFN1P0 \fsmsync[0]  (.D(\fsmsync_ns[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmsync[0]_net_1 ));
    NOR2A un1_framesync24_1 (.A(un1_sersta71_net_1), .B(N_325), .Y(
        un1_framesync24_1_net_1));
    NOR2B \SDAI_ff_reg_RNO[0]  (.A(SDA_in), .B(\sercon[6]_net_1 ), .Y(
        \SDAI_ff_reg_4[0] ));
    DFN1E0P0 \fsmsta[0]  (.D(\fsmsta_10[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[0]_net_1 ));
    NOR3B \fsmsync_RNO_11[3]  (.A(\fsmmod[1]_net_1 ), .B(N_451_1), .C(
        \COREI2C_1_INT_0[0] ), .Y(fsmsync_tr12_29_0));
    AO1D SDAO_int_3_sqmuxa_2_RNO (.A(N_305), .B(\framesync[0]_net_1 ), 
        .C(un1_framesync_1), .Y(un1_framesync_3));
    OR2 SCLInt_RNI2B8J1 (.A(N_1343), .B(SCLInt_net_1), .Y(N_330));
    AOI1B adrcomp_RNO_3 (.A(fsmsta19), .B(ack_net_1), .C(
        un1_sercon_1_2), .Y(un1_sercon_1_3));
    OR2 \fsmsta_RNI51K42[0]  (.A(N_130), .B(N_131), .Y(un1_sersta65_0));
    AOI1 \fsmsta_RNO_4[1]  (.A(fsmsta_0_sqmuxa_s5_0), .B(fsmsta12), .C(
        ens1_pre_1_sqmuxa_1_s6), .Y(\fsmsta_10k_i_a2_0[1] ));
    OR3 \fsmsta_RNO_8[2]  (.A(\fsmsta_nxt_4_i_m[2] ), .B(
        \fsmsta_nxt_34_i_m[1] ), .C(fsmsta_nxt20_m), .Y(
        \fsmsta_10s_iv_1[2] ));
    MX2C \indelay_RNO[1]  (.A(\fsmsync[3]_net_1 ), .B(N_1377), .S(
        N_354), .Y(\indelay_RNO_0[1]_net_1 ));
    OR2 \framesync_RNIFQKA1_0[0]  (.A(N_303), .B(\framesync[0]_net_1 ), 
        .Y(N_362));
    NOR2B \fsmsta_RNO_6[2]  (.A(N_723), .B(\fsmsta[2]_net_1 ), .Y(
        N_732));
    NOR3B \fsmsta_RNI70NI[2]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(N_143));
    DFN1E0C0 \serdat[6]  (.D(N_386), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_ack_1_sqmuxa), .Q(serdat[6]));
    AO1 \fsmmod_RNIC10K[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .C(\fsmmod[3]_net_1 ), .Y(N_324));
    AOI1 \fsmmod_RNO_2[0]  (.A(sclscl_net_1), .B(\fsmmod[5]_net_1 ), 
        .C(N_309), .Y(\fsmmod_ns_i_a3_i_i_a2_0[0] ));
    NOR3A \sercon_RNO_0[4]  (.A(\sercon_8_1[4] ), .B(fsmsta33), .C(
        adrcomp12), .Y(\sercon_8[4] ));
    AO1A pedetect_RNI4A9A3 (.A(N_355), .B(pedetect_net_1), .C(N_309), 
        .Y(N_1428));
    NOR2A \sercon_RNILHOI3[3]  (.A(un1_framesync_4), .B(
        COREI2C_1_INT_0), .Y(fsmsta12));
    OR2B starto_en_RNO (.A(N_254), .B(N_304), .Y(N_162));
    DFN1E0P0 PCLKint (.D(PCLKint_5), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_PCLKint5), .Q(PCLKint_net_1));
    OA1A \fsmmod_RNO_1[5]  (.A(\fsmmod[0]_net_1 ), .B(N_364), .C(
        \fsmmod_ns_i_a3_i_i_a2_0_0[5] ), .Y(N_426));
    NOR3A SDAO_int_RNO_5 (.A(bsd7_net_1), .B(N_87), .C(
        SDAO_int_0_sqmuxa_i_0_3), .Y(bsd7_m));
    NOR3A \fsmsync_RNO[5]  (.A(\COREI2C_1_INT_0[0] ), .B(N_531), .C(
        N_1343), .Y(\fsmsync_RNO[5]_net_1 ));
    NOR3B SCLO_int_RNO_0 (.A(\COREI2C_1_INT_0[0] ), .B(un1_sersta69_1), 
        .C(SCLInt_net_1), .Y(un1_sercon));
    DFN1E0C0 \serdat[7]  (.D(N_387), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_ack_1_sqmuxa), .Q(\serdat[7]_net_1 ));
    OR3 \fsmsync_RNI5V7Q1[1]  (.A(un14_counter_PRESETN), .B(
        counter_PRESETN_1), .C(un18_counter_PRESETN), .Y(
        counter_PRESETN_3));
    OA1 SDAO_int_3_sqmuxa_2_RNIJNMF8 (.A(un1_sersta65_0), .B(
        un1_sersta65_1_0), .C(SDAO_int_3_sqmuxa_2_net_1), .Y(
        SDAO_int_3_sqmuxa));
    NOR2B \fsmsta_RNO_12[0]  (.A(ack_net_1), .B(N_751), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[0] ));
    NOR2A \fsmsta_RNIIJUO_0[2]  (.A(N_150), .B(\fsmsta[2]_net_1 ), .Y(
        un1_sersta69_6));
    OR3A \framesync_RNO[3]  (.A(N_536), .B(N_263_1), .C(N_458), .Y(
        N_265));
    NOR2A \fsmmod_RNIG50K[5]  (.A(N_915_2), .B(\fsmmod[5]_net_1 ), .Y(
        \fsmsync_ns_i_0_0_a2_1_0[2] ));
    AO1 \sercon_0_RNIQUJG8[3]  (.A(un1_fsmmod_2), .B(\sercon[6]_net_1 )
        , .C(\COREI2C_1_INT_0[0] ), .Y(\sercon_5[3] ));
    OR3 SCLO_int_RNO_1 (.A(un1_sersta69_3), .B(un1_sersta69_0), .C(
        un1_sersta69_2_0), .Y(un1_sersta69_1));
    NOR2B \PCLK_count1_RNIV2RA[0]  (.A(\PCLK_count1[0]_net_1 ), .B(
        \PCLK_count1[1]_net_1 ), .Y(PCLK_count1_c1));
    AND2 un1_framesync24_3_0_a3_0 (.A(N_143), .B(N_19), .Y(
        un1_framesync24_3_0_a3_0_net_1));
    DFN1C0 \fsmmod[6]  (.D(N_43), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \fsmmod[6]_net_1 ));
    OR2 adrcompen_RNO_0 (.A(N_432), .B(N_359), .Y(N_1378));
    NOR2A pedetect_RNISLRF2 (.A(pedetect_net_1), .B(serdat4), .Y(
        serdat33));
    OR2 SDAInt_RNILEP31 (.A(N_328), .B(SDAInt_net_1), .Y(N_364));
    DFN1C0 \PCLK_count1[3]  (.D(PCLK_count1_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[3]_net_1 ));
    AO1C \fsmdet_RNO[4]  (.A(\fsmdet[3]_net_1 ), .B(N_1217), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO_0[4]_net_1 ));
    NOR2A \fsmsta_RNI9RD51[4]  (.A(N_769), .B(N_312), .Y(N_130));
    NOR2A \PCLK_count1_RNO[0]  (.A(PCLK_count1_0_sqmuxa), .B(
        \PCLK_count1[0]_net_1 ), .Y(PCLK_count1_n0));
    NOR3B \fsmsync_RNO_13[3]  (.A(N_464_1), .B(N_516), .C(N_303), .Y(
        N_464));
    NOR2A \fsmsta_RNIO8FC_0[1]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(N_768));
    DFN1E1C0 adrcompen (.D(N_64), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        N_1378), .Q(adrcompen_net_1));
    NOR2A \fsmsta_RNIS56V[0]  (.A(sersta64_0_a3_0), .B(N_312), .Y(
        sersta64));
    NOR3B busfree_RNI8KGV (.A(SCLInt_net_1), .B(busfree_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(N_254));
    NOR2B SDAO_int_RNI0TUR9 (.A(un1_framesync24_2_s4), .B(SDAO_0_0), 
        .Y(SDAO_int_m_0));
    NOR2A \fsmsta_RNIEFUO[2]  (.A(\sersta_4_0_a4_2_0[3] ), .B(N_19), 
        .Y(N_769));
    OA1A \fsmsta_RNO_2[1]  (.A(\fsmsta_nxt_cnst_i_a4_0_0[1] ), .B(
        fsmsta_nxt93), .C(\fsmsta_nxt_cnst_m_0[1] ), .Y(
        \fsmsta_nxt_cnst_m_1[1] ));
    MX2 \sercon_RNO[5]  (.A(I2C_slave_0_BIF_1_PWDATA[5]), .B(
        \sercon[5]_net_1 ), .S(N_345), .Y(N_282));
    AO1C \indelay_RNO[0]  (.A(\indelay_i_0[0] ), .B(N_354), .C(
        \fsmsync[3]_net_1 ), .Y(\indelay_RNO_0[0] ));
    OR3 \fsmsync_RNO_9[3]  (.A(fsmsync_ns_i_a4_120_tz_0), .B(
        N_1288_tz_tz_tz), .C(\COREI2C_1_INT_0[0] ), .Y(N_1288_tz));
    NOR3B \fsmmod_RNO_0[0]  (.A(N_335), .B(
        \fsmmod_ns_i_a3_i_i_a2_0[0] ), .C(N_477), .Y(
        \fsmmod_ns_i_a3_i_i_a2_2[0] ));
    NOR3B \fsmmod_RNO_0[4]  (.A(\sercon[4]_net_1 ), .B(N_519), .C(
        N_318), .Y(N_480));
    DFN1P0 PCLKint_ff (.D(PCLKint_ff_4), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(PCLKint_ff_net_1));
    NOR2A adrcomp_RNO (.A(un1_adrcomp_2_sqmuxa), .B(un1_sercon_1), .Y(
        adrcomp_2_sqmuxa_1));
    OR2 \SDAO_int_write_proc.framesync24_0_a4_0_o2  (.A(
        \framesync[0]_net_1 ), .B(N_305), .Y(N_325));
    DFN1C0 \PCLK_count1[1]  (.D(PCLK_count1_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[1]_net_1 ));
    NOR3B \sersta_RNO_1[4]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .C(N_19), .Y(N_771));
    OR3 \fsmsta_RNI8DTI3[3]  (.A(SDAO_int_0_sqmuxa_i_0_0), .B(N_372), 
        .C(SDAO_int_0_sqmuxa_i_0_2), .Y(SDAO_int_0_sqmuxa_i_0_3));
    NOR2A un1_framesync24_1_RNIM6935 (.A(un1_framesync24_1_net_1), .B(
        un1_fsmdet_2), .Y(un1_framesync24_1_s5));
    AO1B bsd7_RNO_3 (.A(serdat4), .B(bsd7_tmp_0_sqmuxa_1), .C(
        \sercon[6]_net_1 ), .Y(un1_SCLI_ff_reg_1_sqmuxa_1_0));
    OR3 \sercon_RNIU3GB2[4]  (.A(counter_PRESETN_3), .B(N_263_1), .C(
        adrcomp12), .Y(counter_PRESETN));
    OA1C \fsmsync_RNI2QGK[5]  (.A(\fsmsync[2]_net_1 ), .B(N_304), .C(
        \fsmsync[5]_net_1 ), .Y(N_531));
    DFN1P0 \SDAI_ff_reg[1]  (.D(\SDAI_ff_reg_RNO[1]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\SDAI_ff_reg[1]_net_1 ));
    OR2 \indelay_RNI6MR1[2]  (.A(\indelay_i_0[2] ), .B(
        \indelay_i_0[0] ), .Y(N_316));
    NOR2A \fsmsync_RNI5334[1]  (.A(\fsmsync_i_0[6] ), .B(
        \fsmsync[1]_net_1 ), .Y(\fsmsync_ns_0_o2_1_i_a3_0_a2_4_0[0] ));
    NOR2 un1_framesync24_3_0_a3_RNI45I84 (.A(un1_sersta65), .B(
        un1_framesync24_3), .Y(un1_framesync24_6_s7_1));
    MX2B \fsmsta_RNO[1]  (.A(N_651), .B(N_802), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[1] ));
    NOR2A PCLKint_ff_RNITMDG_0 (.A(PCLKint_ff_net_1), .B(PCLKint_net_1)
        , .Y(N_500));
    NOR2A adrcompen_RNI587U1 (.A(un1_framesync24_1_2), .B(sersta64), 
        .Y(un1_framesync24_2_0));
    OA1 \fsmsync_RNO_0[7]  (.A(SDAInt_net_1), .B(\fsmsync_i_0[6] ), .C(
        \fsmsync_i_0[7] ), .Y(N_441));
    AO1C SCLO_int_RNO (.A(un1_sercon), .B(N_99_4), .C(
        \sercon[6]_net_1 ), .Y(SCLO_int5));
    OR2 \fsmmod_RNIG4S51[6]  (.A(un1_fsmmod_1), .B(fsmsta33), .Y(
        un1_fsmsta33));
    OR2 \framesync_7_i_i_o2_0_1[0]  (.A(N_484), .B(
        \framesync_7_i_i_o2_0[0] ), .Y(\framesync_7_i_i_o2_0_0[0] ));
    XOR2 un1_framesync_1_I_15 (.A(\framesync[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_15_0));
    XA1A \sersta_RNO_0[2]  (.A(\fsmsta[2]_net_1 ), .B(N_19), .C(N_751), 
        .Y(N_764));
    DFN1E0C0 \serdat[2]  (.D(\serdat_20[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[2]_net_1 ));
    DFN1P0 \fsmdet[4]  (.D(\fsmdet_RNO_0[4]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmdet_i_0[4] ));
    NOR2A un1_framesync24_3_0_a3_RNIQ0UA5 (.A(un1_framesync24_3), .B(
        un1_fsmdet_2), .Y(un1_framesync24_3_s6));
    OR2A \fsmsta_RNO_10[1]  (.A(fsmsta_nxt86), .B(ack_net_1), .Y(N_724)
        );
    DFN1C0 \fsmmod[1]  (.D(\fsmmod_ns[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[1]_net_1 ));
    AOI1B \sercon_RNI0I676[3]  (.A(un1_sersta64), .B(COREI2C_1_INT_0), 
        .C(un1_adrcomp_2_sqmuxa_0), .Y(un1_adrcomp_2_sqmuxa));
    OR2B \fsmsta_RNIL5FC[0]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(N_19));
    DFN1E0C0 \sercon[6]  (.D(I2C_slave_0_BIF_1_PWDATA[6]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(N_345), .Q(\sercon[6]_net_1 ));
    OA1A \indelay_RNO_0[2]  (.A(\indelay[1]_net_1 ), .B(
        \indelay_i_0[0] ), .C(\indelay_i_0[2] ), .Y(N_443));
    NOR3B \fsmsta_RNI6VMI[1]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(N_150));
    NOR2B \framesync_RNIF74H3[3]  (.A(fsmsta13), .B(ens1_pre_3_sqmuxa), 
        .Y(ens1_pre_1_sqmuxa_1_s6));
    DFN1P0 \SCLI_ff_reg[0]  (.D(\SCLI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[0]_net_1 ));
    NOR3 \sersta_RNO[0]  (.A(N_762), .B(N_763), .C(N_752), .Y(
        \sersta_4[0] ));
    NOR2A \fsmmod_RNO_0[6]  (.A(\fsmmod[3]_net_1 ), .B(N_361), .Y(
        N_473));
    AO1 \framesync_RNIG6CS3[3]  (.A(fsmsta13), .B(N_263_1), .C(
        un1_fsmmod_2_0), .Y(un1_fsmmod_2_1));
    OR3 \fsmmod_RNIH60K[4]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .C(\fsmmod[4]_net_1 ), .Y(N_351));
    MX2A bsd7_tmp_RNO (.A(\fsmdet[3]_net_1 ), .B(
        I2C_slave_0_BIF_1_PWDATA[7]), .S(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_9));
    AO1 bsd7_RNO_2 (.A(\PWDATA_i_m_0[7] ), .B(bsd7_tmp_1_sqmuxa_1), .C(
        \fsmdet[3]_net_1 ), .Y(bsd7_12_iv_0));
    DFN1P0 \fsmsync[7]  (.D(\fsmsync_RNO_0[7]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmsync_i_0[7] ));
    DFN1C0 \PCLK_count1[0]  (.D(PCLK_count1_n0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[0]_net_1 ));
    AND2 \framesync_7_i_i_a2_0[0]  (.A(N_314), .B(
        \framesync_7_i_i_a2_0_1[0] ), .Y(N_484));
    NOR2B \fsmmod_RNI343N[4]  (.A(N_500), .B(\fsmmod[4]_net_1 ), .Y(
        fsmsta33));
    NOR3C \sercon_write_proc.un1_PSEL  (.A(I2C_slave_0_BIF_1_PSELx), 
        .B(I2C_slave_0_BIF_1_PENABLE), .C(I2C_slave_0_BIF_1_PWRITE), 
        .Y(seradr0apb4_0));
    OR3 \fsmsta_RNO_3[0]  (.A(\fsmsta_10s_1_iv_0[0] ), .B(
        \fsmsta_nxt_4_m[0] ), .C(fsmsta_nxt_m_0), .Y(
        \fsmsta_10s_1_iv_2[0] ));
    NOR2A N_1443_i_0_a2 (.A(I2C_slave_0_BIF_1_PADDR[3]), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .Y(N_1443_i));
    NOR3C adrcompen_RNI921V (.A(adrcomp_net_1), .B(adrcompen_net_1), 
        .C(pedetect_net_1), .Y(un1_framesync24_1_2));
    NOR2A \sercon_write_proc.un1_framesync24_1_0  (.A(pedetect_net_1), 
        .B(N_471), .Y(un1_framesync24_1_0));
    AO1A SDAO_int_RNO_2 (.A(ack_bit_net_1), .B(SDAO_int_3_sqmuxa), .C(
        bsd7_m), .Y(N_674));
    NOR3A SDAO_int_RNI8EC69 (.A(un1_sersta65), .B(un1_fsmdet_2), .C(
        fsmsta_nxt19), .Y(fsmsta_nxt20_m));
    OA1 \fsmsync_RNO_8[3]  (.A(COREI2C_1_INT_0), .B(
        \fsmsync_ns_i_o2_1_0[3] ), .C(fsmsync_tr13_i_0), .Y(
        \fsmsync_ns_i_a4_2_tz[3] ));
    XAI1A \indelay_RNO_0[1]  (.A(\indelay[1]_net_1 ), .B(
        \indelay_i_0[0] ), .C(\fsmsync[3]_net_1 ), .Y(N_1377));
    OR3 \fsmsta_RNIAVAN2[2]  (.A(un1_sersta69_6), .B(sersta83), .C(
        sersta64), .Y(un1_sersta64_2));
    NOR3A \fsmsync_RNO_1[2]  (.A(N_363), .B(\fsmsync[0]_net_1 ), .C(
        \fsmsync[1]_net_1 ), .Y(N_435));
    OR2A \SCLI_ff_reg_RNIRIQ1[0]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[0]_net_1 ), .Y(N_107));
    OR3 \fsmsync_RNI7K46[1]  (.A(\fsmsync[4]_net_1 ), .B(
        \fsmsync[1]_net_1 ), .C(\fsmsync[5]_net_1 ), .Y(
        counter_PRESETN_1));
    DFN1E0P0 \fsmsta[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[3]_net_1 ));
    DFN1P0 \sersta[1]  (.D(\sersta_4[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta_i_0[1] ));
    XA1B \framesync_RNIPIB82[3]  (.A(\framesync[3]_net_1 ), .B(N_362), 
        .C(N_471), .Y(fsmsta13));
    OR3 \fsmmod_RNO_1[0]  (.A(N_416), .B(N_418), .C(N_417), .Y(
        \fsmmod_ns_i_a3_i_i_1[0] ));
    OR2A PCLKint_RNO (.A(PCLKint_net_1), .B(counter_PRESETN), .Y(
        PCLKint_5));
    NOR3C adrcomp_RNO_13 (.A(adrcompen_net_1), .B(\sercon[2]_net_1 ), 
        .C(nedetect_net_1), .Y(un1_sercon_1_1));
    OR2 \fsmsync_RNO_1[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(fsmsync_tr8_tz_tz_1));
    NOR3C \seradr0_m[7]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[7]), .Y(
        \seradr0_m[7]_net_1 ));
    NOR2A \fsmsta_RNI1QMI_0[0]  (.A(N_763_1), .B(\fsmsta[0]_net_1 ), 
        .Y(N_114_1));
    NOR2 \fsmmod_RNIFTAD[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(N_516));
    AOI1B \fsmsta_RNO_2[4]  (.A(\fsmsta_nxt_cnst_i_a4_0[4] ), .B(
        N_727_1), .C(\fsmsta_nxt_cnst_m_0[4] ), .Y(
        \fsmsta_nxt_cnst_m_1[4] ));
    AO1A \fsmsta_RNO_12[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0_i[2] ));
    NOR2 PCLK_count1_ov_RNO (.A(PCLK_count17), .B(counter_PRESETN), .Y(
        PCLK_count1_1_sqmuxa));
    NOR3B \PRDATA_iv_0_i_a2_1[6]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[6]), .Y(N_413));
    AO1D SDAO_int_RNO_3 (.A(SDAO_int_0_sqmuxa_i_0_3), .B(N_87), .C(
        SDAO_int_3_sqmuxa), .Y(un1_SDAO_int_1_sqmuxa_1));
    NOR2A \fsmmod_RNO_1[6]  (.A(\fsmmod[6]_net_1 ), .B(nedetect_net_1), 
        .Y(N_474));
    OR2B \fsmsta_10k_0_a2_0_RNO[3]  (.A(fsmsta_0_sqmuxa_s5_0), .B(
        fsmsta12), .Y(fsmsta_0_sqmuxa_s5_i));
    DFN1P0 \fsmsync[6]  (.D(\fsmsync_RNO_0[6]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmsync_i_0[6] ));
    OR2 \fsmsync_RNO[7]  (.A(N_441), .B(N_1343), .Y(
        \fsmsync_RNO_0[7]_net_1 ));
    NOR3A \fsmsync_RNO_9[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[1]_net_1 ), .C(\indelay[3]_net_1 ), .Y(
        fsmsync_tr3_0_1));
    NOR2A bsd7_RNO_4 (.A(bsd7_tmp_1_sqmuxa_2), .B(\serdat[7]_net_1 ), 
        .Y(\serdat_i_m[7] ));
    OR2 PCLKint_ff_RNO (.A(PCLKint_net_1), .B(counter_PRESETN), .Y(
        PCLKint_ff_4));
    DFN1E1P0 SDAInt (.D(\SDAI_ff_reg[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_SDAInt5), .Q(SDAInt_net_1));
    AO1 \fsmsta_RNIF9LB1[1]  (.A(\framesync_7_i_i_a2_7_0[0] ), .B(
        N_308), .C(N_114_1), .Y(N_314));
    NOR3A nedetect_RNI2S722 (.A(N_305), .B(framesync_1_sqmuxa_2_i_0_0), 
        .C(N_336), .Y(N_58));
    OR2A \fsmsta_RNI9G8F[3]  (.A(fsmsta_nxt19), .B(\fsmsta[3]_net_1 ), 
        .Y(N_718));
    AO1 \serdat_RNIHG7S1[1]  (.A(\serdat[1]_net_1 ), .B(N_1443_i), .C(
        \sercon_m[1] ), .Y(PRDATA_0_iv_0[1]));
    NOR3A \fsmsta_RNIS56V_1[4]  (.A(N_768), .B(\fsmsta[4]_net_1 ), .C(
        N_308), .Y(sersta70));
    DFN1E0C0 \fsmsta[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[2]_net_1 ));
    AOI1 \fsmmod_RNO[0]  (.A(\fsmmod_ns_i_a3_i_i_a2_2[0] ), .B(N_355), 
        .C(\fsmmod_ns_i_a3_i_i_1[0] ), .Y(N_181));
    NOR2 \fsmsync_RNO_18[3]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(N_1288_tz_tz_tz));
    OR3 \fsmsta_RNO_3[4]  (.A(un1_framesync24_1_s5), .B(SDAO_int_m_0), 
        .C(un1_framesync24_3_s6), .Y(\fsmsta_10s_1_iv_0[4] ));
    NOR3B \fsmsta_RNI5UMI_0[0]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(sersta75_0_a3_0));
    OR2 \indelay_RNI8OR1[3]  (.A(\indelay[3]_net_1 ), .B(
        \indelay[1]_net_1 ), .Y(fsmsync_tr13_i_o2_0));
    NOR3B \fsmsta_RNO_8[1]  (.A(N_763_1), .B(\fsmsta_nxt_4[1] ), .C(
        N_337), .Y(\fsmsta_nxt_4_m[1] ));
    OR2 nedetect_RNI4GKM (.A(\framesync[0]_net_1 ), .B(nedetect_net_1), 
        .Y(N_307));
    OR2B \fsmsta_RNIM6FC[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_756));
    DFN1C0 \fsmdet[0]  (.D(SCLInt_net_1), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(\fsmdet_i_0[0] ));
    DFN1P0 \SDAI_ff_reg[0]  (.D(\SDAI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[0]_net_1 ));
    NOR3B \fsmsta_RNI5UMI[0]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(
        sersta73_0_a3_0_a2_0));
    NOR2A \fsmmod_RNO_6[0]  (.A(\fsmmod_ns_i_a3_i_i_a2_1_1[0] ), .B(
        N_328), .Y(N_417));
    OR2 ack_RNO (.A(bsd7_tmp_0_sqmuxa_1), .B(SDAInt_net_1), .Y(ack_12));
    OR2 un1_sersta71 (.A(un1_sersta69_2), .B(sersta75), .Y(
        un1_sersta71_net_1));
    OAI1 \fsmmod_RNIBCOL[6]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .C(nedetect_net_1), .Y(N_306));
    NOR2A \fsmmod_RNO_1[1]  (.A(\fsmmod[1]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_a3_0[1] ));
    MX2 \serdat_RNO[7]  (.A(I2C_slave_0_BIF_1_PWDATA[7]), .B(serdat[6])
        , .S(un1_ack_0_sqmuxa_2), .Y(N_387));
    DFN1C0 \fsmdet[3]  (.D(\fsmdet_RNO_0[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[3]_net_1 ));
    NOR3A \fsmmod_RNO_5[0]  (.A(N_915_2), .B(N_343), .C(N_351), .Y(
        N_418));
    OA1A \fsmmod_RNO_2[5]  (.A(\fsmmod[5]_net_1 ), .B(sclscl_net_1), 
        .C(pedetect_net_1), .Y(\fsmmod_ns_i_a3_i_i_a2_0_0[5] ));
    NOR2B \fsmmod_RNO_1[4]  (.A(N_339), .B(\fsmmod[4]_net_1 ), .Y(
        N_479));
    NOR2A PCLKint_RNO_0 (.A(PCLK_count2_ov_i_0), .B(counter_PRESETN), 
        .Y(un1_PCLKint5));
    AND2 \fsmsta_RNO_9[2]  (.A(\fsmsta_nxt_cnst_0_a4_0_0_i[2] ), .B(
        \fsmsta_nxt_cnst_0_a4_2_1_i[2] ), .Y(N_1355_tz));
    OR3A \framesync_RNO[0]  (.A(N_536), .B(N_263_1), .C(N_457), .Y(
        N_263));
    OA1C \fsmmod_RNO_0[5]  (.A(\fsmmod[0]_net_1 ), .B(N_364), .C(
        \fsmmod[5]_net_1 ), .Y(\fsmmod_ns_i_a3_i_i_0[5] ));
    MX2 \serdat_RNO[4]  (.A(I2C_slave_0_BIF_1_PWDATA[4]), .B(serdat[3])
        , .S(un1_ack_0_sqmuxa_2), .Y(N_384));
    NOR2B un1_framesync_1_I_20 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \framesync[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    AO1 \sersta_RNO_0[3]  (.A(\sersta_4_0_a4_0[3] ), .B(N_756), .C(
        \sersta_4_0_0[3] ), .Y(\sersta_4_0_1[3] ));
    MX2 \fsmsta_RNO[4]  (.A(N_654), .B(N_805), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[4] ));
    AO1 \fsmsta_RNIOBCU1_0[0]  (.A(sersta73_0_a3_0_a2_0), .B(N_97_i_0), 
        .C(sersta75), .Y(un1_sersta69_3));
    OR2 \fsmsta_RNIKHIT2[4]  (.A(un1_sersta69_0_0), .B(sersta69), .Y(
        un1_sersta69));
    DFN1E0C0 \sercon[0]  (.D(I2C_slave_0_BIF_1_PWDATA[0]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(N_345), .Q(\sercon[0]_net_1 ));
    OR3 adrcomp_RNO_6 (.A(N_366_i), .B(N_367_i), .C(un1_seradr0_1_0), 
        .Y(un1_seradr0_NE_3));
    OA1C \framesync_RNIP5MH7[0]  (.A(N_763_1), .B(N_337), .C(
        un1_fsmdet_2), .Y(un1_framesync24_6_s7_4));
    NOR2A adrcomp_RNI3OFF (.A(N_343), .B(adrcomp_net_1), .Y(N_471));
    NOR3A \fsmsta_RNO_1[3]  (.A(\fsmsta_10k_0_a2_0[3]_net_1 ), .B(
        fsmsta_1_sqmuxa_1_s9), .C(ens1_pre_0_sqmuxa_s2_1), .Y(N_804));
    NOR2A \fsmsta_RNIFGUO[0]  (.A(N_763_1), .B(N_320), .Y(N_149));
    NOR2A \fsmsta_RNIS56V[2]  (.A(sersta69_1), .B(N_19), .Y(sersta69));
    XOR2 adrcomp_RNO_9 (.A(seradr0apb[3]), .B(\serdat[2]_net_1 ), .Y(
        N_369_i));
    NOR2A \fsmmod_RNID7M7[2]  (.A(\fsmmod[2]_net_1 ), .B(
        COREI2C_1_INT_0), .Y(N_519));
    OR2A un9_PRDATA_0_a3_i_o2 (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .Y(N_350));
    OR2A \framesync_RNIFQKA1[0]  (.A(\framesync[0]_net_1 ), .B(N_303), 
        .Y(N_377));
    NOR3A \framesync_RNIHNRV4_0[0]  (.A(un1_framesync24), .B(N_263_1), 
        .C(un1_fsmsta33), .Y(ens1_pre_4_sqmuxa));
    OR2A \framesync_RNIMQRO1[0]  (.A(\framesync[0]_net_1 ), .B(N_305), 
        .Y(N_318));
    DFN1C0 \fsmmod[3]  (.D(N_198), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \fsmmod[3]_net_1 ));
    OR3 SCLO_int_RNO_3 (.A(un1_sersta69_2), .B(un1_sersta65_1_4_0), .C(
        un1_sersta69_4), .Y(un1_sersta69_2_0));
    OR3 \fsmsta_RNIUGTK5[3]  (.A(un1_sersta64_1_0), .B(N_111), .C(
        un1_sersta64_2), .Y(un1_sersta64));
    OA1C \fsmsync_RNO_19[3]  (.A(\fsmmod[1]_net_1 ), .B(
        \COREI2C_1_INT_0[0] ), .C(N_517), .Y(N_1291_tz_tz));
    NOR2A \fsmsta_RNIS56V_0[2]  (.A(N_143), .B(N_19), .Y(N_111));
    NOR3B \fsmsync_RNO_5[0]  (.A(SCLInt_net_1), .B(fsmsync_tr3_0_1), 
        .C(N_316), .Y(N_914));
    DFN1E0C0 \serdat[4]  (.D(N_384), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_ack_1_sqmuxa), .Q(serdat[4]));
    NOR3B \PRDATA_iv_0_i_a2_1[5]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[5]), .Y(N_409));
    DFN1P0 \fsmdet[1]  (.D(\fsmdet_RNO_0[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[1] ));
    NOR2B \fsmsta_RNIS56V_0[0]  (.A(sersta75_0_a3_0), .B(N_763_1), .Y(
        sersta75));
    DFN1P0 \framesync[2]  (.D(N_118), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\framesync[2]_net_1 ));
    NOR3B \sercon_RNO_1[4]  (.A(\sercon[4]_net_1 ), .B(
        \sercon[6]_net_1 ), .C(\fsmdet[5]_net_1 ), .Y(\sercon_8_1[4] ));
    NOR3 \sercon_RNIVB0R[4]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(\sercon[4]_net_1 ), .Y(N_404));
    AOI1 \fsmsta_RNO_4[4]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .C(ens1_pre_0_sqmuxa_s2_1), .Y(
        \fsmsta_10k_0_a2_0[4] ));
    NOR2 \fsmmod_RNI9NAD[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(N_915_2));
    OA1C \fsmsync_RNO[4]  (.A(N_354), .B(\fsmsync[4]_net_1 ), .C(N_330)
        , .Y(\fsmsync_RNO_1[4] ));
    NOR3 \serdat_RNI8JNL[1]  (.A(serdat[4]), .B(serdat[6]), .C(
        \serdat[1]_net_1 ), .Y(fsmsta19_3));
    OA1 \fsmsync_RNO_0[2]  (.A(N_346), .B(N_339), .C(
        \fsmsync[0]_net_1 ), .Y(N_434));
    NOR3B \fsmsta_RNIS56V[4]  (.A(sersta83_3_0), .B(\fsmsta[4]_net_1 ), 
        .C(N_755), .Y(sersta83));
    DFN1E0C0 \serdat[3]  (.D(N_388), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_ack_1_sqmuxa), .Q(serdat[3]));
    AO1 \sercon_0_RNICK34C[3]  (.A(ack_bit_1_sqmuxa), .B(
        \COREI2C_1_INT_0[0] ), .C(un1_SCLI_ff_reg_1_sqmuxa_0), .Y(
        un1_SCLI_ff_reg_1_sqmuxa));
    OR2B \fsmmod_RNI7CTH[4]  (.A(\fsmmod[4]_net_1 ), .B(SCLInt_net_1), 
        .Y(N_313));
    NOR3 \sersta_RNO[2]  (.A(N_764), .B(N_765), .C(N_752), .Y(
        \sersta_4[2] ));
    OR3 \fsmsync_RNO_1[0]  (.A(N_915), .B(N_914), .C(N_1329), .Y(
        \fsmsync_ns_0_1[0] ));
    DFN1E0P0 bsd7 (.D(bsd7_12_iv), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_SCLI_ff_reg_1_sqmuxa_1), .Q(bsd7_net_1));
    DFN1P0 \SDAI_ff_reg[2]  (.D(\SDAI_ff_reg_RNO[2]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\SDAI_ff_reg[2]_net_1 ));
    OA1A adrcomp_RNO_1 (.A(un1_seradr0_NE), .B(fsmsta_nxt86), .C(
        un1_sercon_1_3), .Y(un1_sercon_1_4));
    NOR2A \fsmsta_RNO_11[1]  (.A(\fsmsta[2]_net_1 ), .B(N_751), .Y(
        N_731));
    NOR2B pedetect_RNIOLHA4 (.A(bsd7_tmp_1_sqmuxa_2), .B(
        pedetect_net_1), .Y(ack_0_sqmuxa_1));
    OR2A \SCLI_ff_reg_RNO[2]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[1]_net_1 ), .Y(N_106));
    NOR2A \fsmsta_RNIS56V[1]  (.A(sersta71_1), .B(N_756), .Y(sersta71));
    XOR2 \fsmsta_RNO_11[0]  (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[0] ));
    NOR2A \sersta_RNI57P61[2]  (.A(\sersta_i_0[2] ), .B(N_350), .Y(
        N_407));
    NOR3A \sercon_RNI2F0R[7]  (.A(\sercon[7]_net_1 ), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .C(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(\sercon_m[7] ));
    OR3 \fsmsync_RNO_7[3]  (.A(N_464), .B(N_463), .C(N_340), .Y(
        fsmsync_tr12_27_0_i_1));
    DFN1P0 \indelay[0]  (.D(\indelay_RNO_0[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\indelay_i_0[0] ));
    NOR2A \fsmsync_RNO_7[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \fsmmod[4]_net_1 ), .Y(fsmsync_tr3_1_1));
    NOR3B \PRDATA_iv_0_i_a2_1[4]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[4]), .Y(N_405));
    OR3A busfree_RNO_0 (.A(N_335), .B(N_309), .C(N_359), .Y(un1_fsmdet)
        );
    NOR3A \fsmsync_RNIA668[5]  (.A(
        \fsmsync_ns_0_o2_1_i_a3_0_a2_4_0[0] ), .B(\fsmsync[5]_net_1 ), 
        .C(\fsmsync[2]_net_1 ), .Y(N_99_4));
    NOR3B \PRDATA_iv_0_i_a2_1[3]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(seradr0apb[3]), .Y(N_401));
    OR2 \fsmsta_RNIRBFC_0[4]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(N_312));
    DFN1P0 \sersta[2]  (.D(\sersta_4[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta_i_0[2] ));
    NOR3A \sercon_RNI4PS37[3]  (.A(ens1_pre_3_sqmuxa), .B(fsmsta13), 
        .C(fsmsta12), .Y(ens1_pre_2_sqmuxa_1));
    AO1 \fsmsync_RNO_0[6]  (.A(\fsmsync_i_0[6] ), .B(
        \fsmsync_ns_i_0_0_0_tz[6] ), .C(N_439), .Y(
        \fsmsync_ns_i_0_0_0_0[6] ));
    OR2B SDAInt_RNIO0KE (.A(SDAInt_net_1), .B(SCLInt_net_1), .Y(
        N_1206_1));
    DFN1P0 \framesync[3]  (.D(N_265), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\framesync[3]_net_1 ));
    OR2B \fsmsync_RNO_2[2]  (.A(\fsmsync[2]_net_1 ), .B(N_304), .Y(
        N_363));
    OA1 \sercon_RNIA5DQ9[6]  (.A(un1_sersta65_0), .B(un1_sersta65_1_0), 
        .C(ack_3_sqmuxa_0), .Y(ack_bit_1_sqmuxa));
    DFN1E0P0 ack (.D(ack_12), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_ack_0_sqmuxa_3), .Q(ack_net_1));
    NOR3C \SCLI_ff_reg_RNIGTC2[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(N_429));
    NOR2B un1_framesync_1_I_22 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \framesync[2]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_12[0] ));
    NOR3A \fsmmod_RNO_0[1]  (.A(fsmmod_tr7_3_1), .B(N_311), .C(N_322), 
        .Y(fsmmod_tr7_3));
    NOR2A \PCLK_count1_RNI1TOR2[3]  (.A(PCLK_count17), .B(
        counter_PRESETN), .Y(PCLK_count1_0_sqmuxa));
    DFN1E0P0 \fsmsta[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa), .Q(\fsmsta[4]_net_1 ));
    OR2A nedetect_RNO_0 (.A(\sercon[6]_net_1 ), .B(N_429), .Y(
        un1_serdat52_0));
    OR3 SDAO_int_RNO_1 (.A(N_372), .B(N_470), .C(N_469), .Y(N_288));
    DFN1E1P0 bsd7_tmp (.D(bsd7_tmp_9), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_bsd7_tmp_0_sqmuxa), .Q(bsd7_tmp_net_1));
    NOR3 un1_framesync24_1_RNIN9MB7 (.A(un1_framesync24_1_net_1), .B(
        un1_framesync24_2), .C(un1_framesync24_4), .Y(
        un1_framesync24_6_s7_2));
    AO1 \fsmdet_RNO[2]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[2] ), .C(
        N_1208_1), .Y(\fsmdet_RNO_0[2] ));
    DFN1C0 \fsmsync[2]  (.D(\fsmsync_RNO_0[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[2]_net_1 ));
    ZOR3 SDAInt_RNO (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \SDAI_ff_reg[2]_net_1 ), .C(\SDAI_ff_reg[0]_net_1 ), .Y(
        un1_SDAInt5));
    NOR2A \fsmsta_RNI9GCE2[2]  (.A(\fsmsta[2]_net_1 ), .B(fsmsta_nxt93)
        , .Y(N_727_1));
    AO1A \sercon_0_RNIUUOEI[3]  (.A(serdat4), .B(
        un1_SCLI_ff_reg_1_sqmuxa), .C(ack_1_sqmuxa_1), .Y(
        un1_ack_1_sqmuxa_0));
    AO1 \fsmsta_RNO_0[4]  (.A(\fsmsta_nxt_cnst_m_1[4] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_1_iv_0[4] ), .Y(N_654));
    OR3A \fsmsync_RNIGVO5[3]  (.A(\fsmsync[3]_net_1 ), .B(N_316), .C(
        fsmsync_tr13_i_o2_0), .Y(N_354));
    DFN1E0C0 \sercon[1]  (.D(I2C_slave_0_BIF_1_PWDATA[1]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(N_345), .Q(\sercon[1]_net_1 ));
    NOR3A \fsmsta_RNO_2[2]  (.A(\fsmsta_RNO_5[2]_net_1 ), .B(N_732), 
        .C(N_734), .Y(\fsmsta_nxt_cnst_i_m_1[2] ));
    OR2 \fsmsta_RNO_5[2]  (.A(N_1355_tz), .B(N_325), .Y(
        \fsmsta_RNO_5[2]_net_1 ));
    MX2 \fsmsta_RNO[0]  (.A(N_650), .B(N_801), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[0] ));
    AO1 pedetect_RNI680091 (.A(serdat_2_sqmuxa_0), .B(un1_ack_3_sqmuxa)
        , .C(un1_ack_1_sqmuxa_0), .Y(un1_ack_1_sqmuxa));
    NOR2A \fsmsta_RNO_1[4]  (.A(\fsmsta_10k_0_a2_0[4] ), .B(
        fsmsta_0_sqmuxa_1), .Y(N_805));
    OR3 \framesync_RNIH6B52[0]  (.A(\framesync[0]_net_1 ), .B(N_305), 
        .C(N_312), .Y(N_337));
    OR3A \fsmdet_RNIRRM8[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(
        bsd7_tmp_1_sqmuxa_i_1));
    DFN1E0C0 nedetect (.D(nedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52_0), .Q(nedetect_net_1));
    NOR2A \sersta_RNO_1[3]  (.A(N_755), .B(N_751), .Y(N_767));
    NOR2B \PCLK_count1_RNO[3]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n3_tz), .Y(PCLK_count1_n3));
    NOR2A \fsmsync_RNI8G8G[2]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(N_451_1));
    AO1 \fsmsta_RNO_5[3]  (.A(\fsmsta_nxt_34_m_1[3] ), .B(
        un1_framesync24_3_s6), .C(fsmsta_nxt_m_1), .Y(
        \fsmsta_10s_0_iv_1[3] ));
    OR2 \fsmdet_RNO_0[4]  (.A(\fsmdet_i_0[4] ), .B(SDAInt_net_1), .Y(
        N_1217));
    DFN1P0 \SCLI_ff_reg[1]  (.D(N_107), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\SCLI_ff_reg[1]_net_1 ));
    MX2 \sercon_0_RNILGFVA[3]  (.A(I2C_slave_0_BIF_1_PWDATA[3]), .B(
        \sercon_5[3] ), .S(N_345), .Y(\sercon_10[3] ));
    NOR2B \SDAI_ff_reg_RNO[2]  (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_RNO[2]_net_1 ));
    OR2A PCLKint_ff_RNITMDG (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .Y(N_304));
    OA1A \fsmsync_RNO_1[6]  (.A(\sercon[4]_net_1 ), .B(N_318), .C(
        \fsmsync_ns_i_0_0_a2_0_0[6] ), .Y(N_438));
    DFN1C0 PCLK_count1_ov (.D(PCLK_count1_1_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(PCLK_count1_ov_net_1));
    OR3 \fsmsta_RNI835R5[0]  (.A(un1_sersta69_2), .B(
        un1_sersta65_1_4_0), .C(un1_sersta69_3), .Y(un1_sersta65_1_0));
    XO1 adrcomp_RNO_4 (.A(serdat[3]), .B(seradr0apb[4]), .C(
        un1_seradr0_0), .Y(un1_seradr0_NE_2));
    OA1B \fsmsta_RNO_7[0]  (.A(un1_framesync24_2_s4), .B(
        un1_framesync24_1_net_1), .C(SDAO_0_0), .Y(fsmsta_nxt_m_0));
    NOR3A \fsmsta_RNI5UMI_1[0]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta72_1));
    OR2 \fsmsta_RNIG0BU[3]  (.A(\fsmsta[3]_net_1 ), .B(N_327), .Y(
        SDAO_int_0_sqmuxa_i_0_0));
    NOR2A \sersta_RNI46P61[1]  (.A(\sersta_i_0[1] ), .B(N_350), .Y(
        N_403));
    DFN1E1C0 starto_en (.D(N_254), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        N_162), .Q(starto_en_net_1));
    OR3A \sersta_RNO[4]  (.A(COREI2C_1_INT_0), .B(N_770), .C(N_771), 
        .Y(\sersta_4[4] ));
    OR2 \framesync_RNIBTDS[1]  (.A(\framesync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(N_303));
    OR2A \fsmsta_RNIM6FC_0[0]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(N_308));
    AO1A \framesync_RNO[2]  (.A(N_347), .B(I_18_0), .C(
        \fsmdet[3]_net_1 ), .Y(N_118));
    NOR3A \sercon_RNIS80R[1]  (.A(\sercon[1]_net_1 ), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .C(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(\sercon_m[1] ));
    NOR2 \fsmmod_RNO_7[0]  (.A(\fsmmod[0]_net_1 ), .B(pedetect_net_1), 
        .Y(\fsmmod_ns_i_a3_i_i_a2_0_0[0] ));
    AO1A \fsmsta_RNO_2[0]  (.A(N_19), .B(N_727_1), .C(
        \fsmsta_nxt_cnst_0_1[0] ), .Y(\fsmsta_nxt_cnst[0] ));
    NOR3 \sercon_RNI0D0R[5]  (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .C(\sercon[5]_net_1 ), .Y(N_408));
    OR2 \fsmsta_RNIOBCU1_0[4]  (.A(sersta70), .B(sersta69), .Y(
        un1_sersta65_1_4_0));
    OA1A \sersta_RNO_0[4]  (.A(sersta83_3_0), .B(N_755), .C(
        \fsmsta[4]_net_1 ), .Y(N_770));
    NOR3B \fsmsync_RNO_4[3]  (.A(N_517), .B(N_451_1), .C(N_304), .Y(
        N_977));
    NOR2A \fsmsta_RNIIJUO[2]  (.A(\fsmsta[2]_net_1 ), .B(N_723), .Y(
        N_772));
    AO1 \fsmsta_RNO_0[1]  (.A(\fsmsta_nxt_cnst_m_1[1] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_0_iv_2[1] ), .Y(N_651));
    AO1 \fsmmod_RNI1C081[4]  (.A(N_324), .B(N_516), .C(
        \fsmmod[4]_net_1 ), .Y(N_346));
    AND2 \fsmsta_10k_0_a2_0[3]  (.A(fsmsta_0_sqmuxa_s5_i), .B(
        fsmsta32_s3_1_i), .Y(\fsmsta_10k_0_a2_0[3]_net_1 ));
    OR2A \fsmsta_RNI6VMI_1[1]  (.A(\fsmsta[1]_net_1 ), .B(N_751), .Y(
        N_723));
    AO1 \fsmmod_RNO_0[3]  (.A(N_361), .B(\fsmmod[3]_net_1 ), .C(N_482), 
        .Y(N_535));
    DFN1C0 \indelay[3]  (.D(N_1375), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \indelay[3]_net_1 ));
    DFN1C0 \fsmsync[3]  (.D(\fsmsync_RNO_0[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[3]_net_1 ));
    OR2 \fsmsta_RNII02O2[1]  (.A(\fsmmod_ns_i_a3_i_i_o2_0_0[0] ), .B(
        N_337), .Y(N_355));
    DFN1P0 \fsmdet[6]  (.D(\fsmdet_RNO_0[6]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmdet_i_0[6] ));
    NOR3A bsd7_RNO_1 (.A(bsd7_tmp_0_sqmuxa_1), .B(SCLInt_net_1), .C(
        bsd7_tmp_net_1), .Y(bsd7_tmp_i_m));
    NOR2A sclscl_RNO (.A(\fsmmod[5]_net_1 ), .B(pedetect_net_1), .Y(
        sclscl_1_sqmuxa));
    NOR3A \fsmsync_RNO_3[6]  (.A(N_340), .B(SDAInt_net_1), .C(
        \fsmsync[5]_net_1 ), .Y(N_439));
    NOR3C \serdat_RNIETMI1[0]  (.A(fsmsta19_2), .B(fsmsta19_1), .C(
        fsmsta19_3), .Y(fsmsta19));
    DFN1P0 PCLK_count2_ov (.D(PCLK_count2_ov_0_sqmuxa), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(PCLK_count2_ov_i_0));
    NOR2A \fsmsync_RNO_3[0]  (.A(\fsmsync_i_0[7] ), .B(
        \fsmsync[0]_net_1 ), .Y(\fsmsync_ns_0_o2_1_i_a3_0_a2_0[0] ));
    NOR2A \fsmmod_RNIE8M7[3]  (.A(\fsmmod[3]_net_1 ), .B(
        COREI2C_1_INT_0), .Y(N_517));
    OR2 \fsmsta_RNIM6FC_1[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_755));
    OR2A \sercon_RNISSD3[6]  (.A(\sercon[6]_net_1 ), .B(
        un1_SCLI_ff_reg_i_0), .Y(un1_serdat52));
    OR2 \fsmsync_RNO_2[1]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[6]_net_1 ), .Y(fsmsync_tr8_tz_tz_0));
    NOR2A SDAO_int_RNISQ09 (.A(SDAO_0_0), .B(SDAInt_net_1), .Y(
        fsmsta_nxt19));
    NOR3A \sercon_RNIA5DQ9_0[6]  (.A(ack_3_sqmuxa_0), .B(
        un1_sersta65_0), .C(un1_sersta65_1_0), .Y(ack_3_sqmuxa));
    NOR2A \fsmsta_RNI8EQH2[1]  (.A(N_368_i), .B(N_337), .Y(
        un1_framesync24_4));
    OR2A starto_en_RNI0LAT (.A(starto_en_net_1), .B(N_304), .Y(N_322));
    AOI1B \fsmsync_RNO_0[0]  (.A(\fsmsync_ns_0_o2_1_i_a3_0_a2_0[0] ), 
        .B(N_99_4), .C(N_1343), .Y(N_1327));
    NOR3C un1_framesync24_1_RNIKKU5J (.A(un1_framesync24_6_s7_2), .B(
        un1_framesync24_6_s7_1), .C(un1_framesync24_6_s7_4), .Y(
        un1_framesync24_6_s7));
    NOR3C \fsmsync_RNO_4[0]  (.A(N_915_2), .B(fsmsync_tr3_1_1), .C(
        fsmsync_tr3_1_2), .Y(N_915));
    OR2A \fsmsta_RNI1QMI[1]  (.A(\fsmsta[1]_net_1 ), .B(N_308), .Y(
        \fsmmod_ns_i_a3_i_i_o2_0_0[0] ));
    NOR2A pedetect_RNO (.A(N_429), .B(SCLInt_net_1), .Y(
        pedetect_0_sqmuxa));
    OA1 \fsmsync_RNO_6[0]  (.A(N_304), .B(N_346), .C(
        \fsmsync_ns_0_a4_1_0[0] ), .Y(N_1329));
    OR2A PCLK_count2_ov_RNO (.A(PCLK_count1_ov_net_1), .B(
        counter_PRESETN), .Y(PCLK_count2_ov_0_sqmuxa));
    OR2 \fsmmod_RNI9NAD[0]  (.A(\fsmmod[0]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(N_343));
    NOR2A \sersta_RNO_1[0]  (.A(N_763_1), .B(N_751), .Y(N_763));
    NOR3B \fsmsync_RNO[1]  (.A(\fsmsync[0]_net_1 ), .B(N_929_tz_tz), 
        .C(SCLInt_net_1), .Y(\fsmsync_RNO_0[1]_net_1 ));
    NOR2A \fsmsta_RNIHIUO[0]  (.A(N_143), .B(\fsmsta[0]_net_1 ), .Y(
        N_121));
    DFN1P0 \framesync[1]  (.D(N_119), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\framesync[1]_net_1 ));
    AO1A \fsmsta_RNO_5[0]  (.A(SDAO_0_0), .B(un1_sersta65), .C(
        SDAInt_m), .Y(\fsmsta_10s_1_iv_0[0] ));
    AO1 \serdat_RNIFE7S1[0]  (.A(\serdat[0]_net_1 ), .B(N_1443_i), .C(
        \sercon_m[0] ), .Y(PRDATA_0_iv_0[0]));
    OA1C \fsmmod_RNO_1[3]  (.A(\fsmmod[3]_net_1 ), .B(
        \fsmmod_ns_i_a3_i_i_a2_0_0[3] ), .C(N_334), .Y(
        \fsmmod_ns_i_a3_i_i_0[3] ));
    INV busfree_RNO (.A(\fsmdet[3]_net_1 ), .Y(\fsmdet_i[3] ));
    OR2A \fsmsync_RNO_15[3]  (.A(\fsmsync[5]_net_1 ), .B(
        \sercon[4]_net_1 ), .Y(\fsmsync_ns_i_o2_1_0[3] ));
    DFN1P0 \sersta[0]  (.D(\sersta_4[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(sersta_i_0_0));
    AO1A bsd7_RNO_0 (.A(nedetect_net_1), .B(bsd7_tmp_1_sqmuxa_2), .C(
        un1_SCLI_ff_reg_1_sqmuxa_1_0), .Y(un1_SCLI_ff_reg_1_sqmuxa_1));
    MX2 \sersta_RNO_0[1]  (.A(\fsmsta[2]_net_1 ), .B(\fsmsta[1]_net_1 )
        , .S(N_751), .Y(N_753));
    OA1A \fsmsta_RNO_1[1]  (.A(fsmsta_0_sqmuxa_1), .B(fsmsta19), .C(
        \fsmsta_10k_i_a2_0[1] ), .Y(N_802));
    OR3 \fsmsync_RNO[0]  (.A(N_1327), .B(\fsmsync_ns_0_1[0] ), .C(
        N_1328), .Y(\fsmsync_ns[0] ));
    MX2 \fsmsta_RNO_6[4]  (.A(\fsmsta[4]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst_m_0[4] ));
    VCC VCC_i (.Y(VCC));
    DFN1P0 SCLO_int (.D(SCLO_int5), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        SCLO_int_net_1));
    AO1 bsd7_tmp_RNO_1 (.A(serdat4), .B(bsd7_tmp_0_sqmuxa_1), .C(
        bsd7_tmp_0_sqmuxa), .Y(un1_bsd7_tmp_0_sqmuxa_0));
    OR2A \sercon_RNIUN23[5]  (.A(\sercon[5]_net_1 ), .B(N_311), .Y(
        N_323));
    OR2 \fsmsta_RNI70NI[3]  (.A(\fsmsta[3]_net_1 ), .B(N_142), .Y(
        un1_sersta58_0_m3_i_0));
    OR2 ack_RNO_1 (.A(bsd7_tmp_0_sqmuxa_1), .B(ack_0_sqmuxa_1), .Y(
        un1_ack_0_sqmuxa_0));
    AO1 \fsmsta_RNIOBCU1[4]  (.A(sersta73_0_a3_0_a2_0), .B(N_97_i_0), 
        .C(sersta70), .Y(un1_sersta69_0_0));
    NOR2A \fsmsta_RNO_6[3]  (.A(un1_framesync24_2_s4), .B(SDAO_0_0), 
        .Y(fsmsta_nxt_m_1));
    XO1 adrcomp_RNO_5 (.A(serdat[6]), .B(seradr0apb[7]), .C(N_369_i), 
        .Y(un1_seradr0_NE_1));
    DFN1E0C0 pedetect (.D(pedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52), .Q(pedetect_net_1));
    DFN1E0C0 sclscl (.D(\fsmmod[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(sclscl_1_sqmuxa), .Q(sclscl_net_1));
    NOR3 \fsmsta_RNO_1[0]  (.A(fsmsta_1_sqmuxa_1_s9), .B(
        ens1_pre_0_sqmuxa_s2_1), .C(ens1_pre_1_sqmuxa_1_s6), .Y(N_801));
    NOR3A \fsmsta_RNI70NI_0[2]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[2]_net_1 ), .Y(sersta69_1));
    AO1 \serdat_RNID8U92[7]  (.A(\serdat[7]_net_1 ), .B(N_1443_i), .C(
        \seradr0_m[7]_net_1 ), .Y(PRDATA_iv_1_0));
    DFN1E0C0 \sercon[2]  (.D(I2C_slave_0_BIF_1_PWDATA[2]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(N_345), .Q(\sercon[2]_net_1 ));
    NOR2 \sersta_RNI68P61[3]  (.A(\sersta[3]_net_1 ), .B(N_350), .Y(
        N_411));
    OR3 \fsmsync_RNO[6]  (.A(\fsmsync_ns_i_0_0_0_0[6] ), .B(N_1343), 
        .C(N_438), .Y(\fsmsync_RNO_0[6]_net_1 ));
    DFN1C0 \sercon[5]  (.D(N_282), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \sercon[5]_net_1 ));
    AO1 \serdat_RNIJI7S1[2]  (.A(\serdat[2]_net_1 ), .B(N_1443_i), .C(
        \sercon_m[2] ), .Y(PRDATA_0_iv_0[2]));
    MX2 \sercon_RNO[4]  (.A(I2C_slave_0_BIF_1_PWDATA[4]), .B(
        \sercon_8[4] ), .S(N_345), .Y(\sercon_10[4] ));
    DFN1E0C0 \serdat[0]  (.D(\serdat_20[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[0]_net_1 ));
    DFN1E1P0 SCLInt (.D(N_107), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_serdat52_1), .Q(SCLInt_net_1));
    NOR2 \serdat_RNI6OFE[3]  (.A(serdat[5]), .B(serdat[3]), .Y(
        fsmsta19_1));
    NOR3A \framesync_RNO_0[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(N_487), .C(N_488), .Y(N_457));
    XA1 \PCLK_count1_RNO[1]  (.A(\PCLK_count1[1]_net_1 ), .B(
        \PCLK_count1[0]_net_1 ), .C(PCLK_count1_0_sqmuxa), .Y(
        PCLK_count1_n1));
    OA1B \fsmsta_RNO_5[1]  (.A(N_718), .B(N_142), .C(\fsmsta[1]_net_1 )
        , .Y(\fsmsta_nxt_cnst_i_a4_0_0[1] ));
    DFN1C0 \sercon_0[3]  (.D(\sercon_10[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\COREI2C_1_INT_0[0] ));
    XA1A \indelay_RNO[3]  (.A(\indelay[3]_net_1 ), .B(N_360), .C(
        \fsmsync[3]_net_1 ), .Y(N_1375));
    NOR2A SDAO_int_RNO_4 (.A(N_342), .B(N_351), .Y(N_469));
    DFN1C0 \sercon[3]  (.D(\sercon_10[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(COREI2C_1_INT_0));
    NOR3A \sercon_RNIR70R[0]  (.A(\sercon[0]_net_1 ), .B(
        I2C_slave_0_BIF_1_PADDR[2]), .C(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(\sercon_m[0] ));
    
endmodule


module Top_0_COREI2C_1_COREI2C_Z4(
       SDAO_0_0,
       COREI2C_1_INT_0,
       PRDATA_iv_1_0,
       PRDATA_iv_0_0,
       PRDATA_0_iv_0,
       serdat,
       seradr0_m,
       sersta_i_0_0,
       I2C_slave_0_BIF_1_PWDATA,
       I2C_slave_0_BIF_1_PADDR,
       N_1443_i,
       N_350,
       N_400,
       N_401,
       N_403,
       N_404,
       N_405,
       N_407,
       N_408,
       N_409,
       I2C_slave_0_BIF_1_PSELx,
       I2C_slave_0_BIF_1_PENABLE,
       I2C_slave_0_BIF_1_PWRITE,
       N_413,
       N_412,
       N_411,
       SDA_e,
       OUT_EN_0,
       OUT_EN,
       SCLO_int,
       SDA_in,
       PRESETN_c,
       PCLK_c
    );
output SDAO_0_0;
output COREI2C_1_INT_0;
output PRDATA_iv_1_0;
output PRDATA_iv_0_0;
output [2:0] PRDATA_0_iv_0;
output [6:3] serdat;
output [2:0] seradr0_m;
output sersta_i_0_0;
input  [7:0] I2C_slave_0_BIF_1_PWDATA;
input  [3:2] I2C_slave_0_BIF_1_PADDR;
output N_1443_i;
output N_350;
output N_400;
output N_401;
output N_403;
output N_404;
output N_405;
output N_407;
output N_408;
output N_409;
input  I2C_slave_0_BIF_1_PSELx;
input  I2C_slave_0_BIF_1_PENABLE;
input  I2C_slave_0_BIF_1_PWRITE;
output N_413;
output N_412;
output N_411;
output SDA_e;
input  OUT_EN_0;
input  OUT_EN;
input  SCLO_int;
input  SDA_in;
input  PRESETN_c;
input  PCLK_c;

    wire seradr0apb4, seradr0apb4_0, \seradr0apb[0] , \seradr0apb[1] , 
        \seradr0apb[2] , \seradr0apb[3] , \seradr0apb[4] , 
        \seradr0apb[5] , \seradr0apb[6] , \seradr0apb[7] , GND, VCC;
    
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[3]  (.D(
        I2C_slave_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[3] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[1]  (.D(
        I2C_slave_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[1] ));
    NOR3C \g_seradr0_reg_bits.genblk1.seradr0_write_proc.seradr0apb4  
        (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(I2C_slave_0_BIF_1_PADDR[3])
        , .C(seradr0apb4_0), .Y(seradr0apb4));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[6]  (.D(
        I2C_slave_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[6] ));
    COREI2C_COREI2CREAL_Z3_1 \I2C_NUM_GENERATION[0].ui2c  (
        .sersta_i_0_0(sersta_i_0_0), .I2C_slave_0_BIF_1_PWDATA({
        I2C_slave_0_BIF_1_PWDATA[7], I2C_slave_0_BIF_1_PWDATA[6], 
        I2C_slave_0_BIF_1_PWDATA[5], I2C_slave_0_BIF_1_PWDATA[4], 
        I2C_slave_0_BIF_1_PWDATA[3], I2C_slave_0_BIF_1_PWDATA[2], 
        I2C_slave_0_BIF_1_PWDATA[1], I2C_slave_0_BIF_1_PWDATA[0]}), 
        .seradr0apb({\seradr0apb[7] , \seradr0apb[6] , \seradr0apb[5] , 
        \seradr0apb[4] , \seradr0apb[3] , \seradr0apb[2] , 
        \seradr0apb[1] , \seradr0apb[0] }), .seradr0_m({seradr0_m[2], 
        seradr0_m[1], seradr0_m[0]}), .I2C_slave_0_BIF_1_PADDR({
        I2C_slave_0_BIF_1_PADDR[3], I2C_slave_0_BIF_1_PADDR[2]}), 
        .serdat({serdat[6], serdat[5], serdat[4], serdat[3]}), 
        .PRDATA_0_iv_0({PRDATA_0_iv_0[2], PRDATA_0_iv_0[1], 
        PRDATA_0_iv_0[0]}), .PRDATA_iv_0_0(PRDATA_iv_0_0), 
        .PRDATA_iv_1_0(PRDATA_iv_1_0), .COREI2C_1_INT_0(
        COREI2C_1_INT_0), .SDAO_0_0(SDAO_0_0), .SDA_in(SDA_in), 
        .SCLO_int_0(SCLO_int), .OUT_EN_0(OUT_EN), .OUT_EN(OUT_EN_0), 
        .SDA_e(SDA_e), .N_411(N_411), .N_412(N_412), .N_413(N_413), 
        .I2C_slave_0_BIF_1_PWRITE(I2C_slave_0_BIF_1_PWRITE), 
        .I2C_slave_0_BIF_1_PENABLE(I2C_slave_0_BIF_1_PENABLE), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), 
        .seradr0apb4_0(seradr0apb4_0), .N_409(N_409), .N_408(N_408), 
        .N_407(N_407), .N_405(N_405), .N_404(N_404), .N_403(N_403), 
        .N_401(N_401), .N_400(N_400), .N_350(N_350), .N_1443_i(
        N_1443_i), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[7]  (.D(
        I2C_slave_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[7] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[5]  (.D(
        I2C_slave_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[5] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[2]  (.D(
        I2C_slave_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[2] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[0]  (.D(
        I2C_slave_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[0] ));
    GND GND_i (.Y(GND));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[4]  (.D(
        I2C_slave_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[4] ));
    
endmodule


module Top_0_COREUART_0_Rx_async_0s_1s_0s_1s_2s_3s(
       rx_byte,
       RX_c,
       PRESETN_c,
       PCLK_c,
       fifo_write,
       baud_clock
    );
output [7:0] rx_byte;
input  RX_c;
input  PRESETN_c;
input  PCLK_c;
output fifo_write;
input  baud_clock;

    wire N_218, N_57, N_58, N_56, N_26, \receive_count[0]_net_1 , 
        \last_bit_0_i_a2_1[0] , \last_bit_0_i_a2_0[0] , N_163_1, 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , receive_count_e2_i_0, 
        \receive_count[2]_net_1 , N_41, receive_count_e1_i_0, 
        \receive_count[1]_net_1 , rx_byte_1_sqmuxa_0_a4_0_a2_0, 
        rx_byte_1_sqmuxa_1, \receive_count[3]_net_1 , 
        clear_parity_en_9_0_a2_0, \rx_bit_cnt[3]_net_1 , 
        \rx_bit_cnt[2]_net_1 , receive_count8_i_i_0_a2_0_0, 
        rx_state19_NE_0, \rx_bit_cnt[1]_net_1 , 
        receive_count8_i_i_0_a2_0_4_1, receive_count8_i_i_0_a2_0_4_0, 
        m13_0, N_31_mux, N_22, N_24, rx_state19_i, N_46_i, 
        clear_parity_en_9, N_67, rx_byte_1_sqmuxa, N_14, N_40, N_16, 
        \rx_bit_cnt[0]_net_1 , N_289, N_42, N_36, \samples[2]_net_1 , 
        \samples[0]_net_1 , \samples[1]_net_1 , rx_bit_cnte, N_59, 
        N_216, N_12, N_51, N_287, i5_mux, i6_mux, N_19, N_25, 
        \rx_shift_11[6] , \rx_shift[7]_net_1 , \rx_shift_11[5] , 
        \rx_shift[6]_net_1 , \rx_shift_11[4] , \rx_shift[5]_net_1 , 
        \rx_shift_11[3] , \rx_shift[4]_net_1 , \rx_shift_11[2] , 
        \rx_shift[3]_net_1 , \rx_shift_11[1] , \rx_shift[2]_net_1 , 
        \rx_shift_11[0] , \rx_shift[1]_net_1 , N_48_i, 
        \last_bit[0]_net_1 , \last_bit_RNO[0]_net_1 , N_20, i3_mux, 
        N_277, N_23, \rx_shift[0]_net_1 , GND, VCC;
    
    MX2A \rx_state_RNO_1[0]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_23));
    NOR2A \rx_shift_RNO[5]  (.A(\rx_shift[6]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[5] ));
    DFN1E1P0 \samples[0]  (.D(\samples[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(baud_clock), .Q(\samples[0]_net_1 ));
    NOR3C \rx_state_RNO_2[0]  (.A(\rx_state[1]_net_1 ), .B(
        \receive_count[3]_net_1 ), .C(m13_0), .Y(N_31_mux));
    DFN1E1C0 \rx_shift[2]  (.D(\rx_shift_11[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[2]_net_1 ));
    NOR2A \rx_shift_RNO[3]  (.A(\rx_shift[4]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[3] ));
    DFN1E1C0 \rx_byte[0]  (.D(\rx_shift[0]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[0]));
    DFN1C0 \receive_count[1]  (.D(N_24), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[1]_net_1 ));
    NOR2B \rx_state_RNO_0[1]  (.A(\rx_state[0]_net_1 ), .B(baud_clock), 
        .Y(N_289));
    XOR2 \samples_RNIBA9T[2]  (.A(\samples[1]_net_1 ), .B(
        \samples[2]_net_1 ), .Y(N_287));
    DFN1E1C0 \rx_shift[7]  (.D(N_216), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_shift[7]_net_1 ));
    OR2B \rx_bit_cnt_RNIN9O3[1]  (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_40));
    NOR2A \receive_count_RNIL3QN[1]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_1));
    NOR3C \receive_count_RNI15S22[1]  (.A(\last_bit_0_i_a2_1[0] ), .B(
        \last_bit_0_i_a2_0[0] ), .C(N_163_1), .Y(N_56));
    NOR2A \receive_count_RNIP7QN[3]  (.A(\receive_count[2]_net_1 ), .B(
        \receive_count[3]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_0));
    OR3C fifo_write_RNO (.A(clear_parity_en_9_0_a2_0), .B(N_67), .C(
        rx_byte_1_sqmuxa_1), .Y(clear_parity_en_9));
    OR3 \rx_state_RNIK1U46[0]  (.A(N_57), .B(N_58), .C(N_56), .Y(N_218)
        );
    DFN1E1C0 \rx_shift[0]  (.D(\rx_shift_11[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[0]_net_1 ));
    MIN3 \samples_RNIVTTB1[0]  (.A(\samples[2]_net_1 ), .B(
        \samples[0]_net_1 ), .C(\samples[1]_net_1 ), .Y(N_36));
    NOR3B fifo_write_RNO_0 (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_state[0]_net_1 ), .C(\rx_bit_cnt[2]_net_1 ), .Y(
        clear_parity_en_9_0_a2_0));
    OR2 \rx_bit_cnt_RNI3NIM[3]  (.A(rx_state19_NE_0), .B(N_46_i), .Y(
        rx_state19_i));
    OR3C \receive_count_RNIAIQ61[1]  (.A(baud_clock), .B(
        \receive_count[0]_net_1 ), .C(\receive_count[1]_net_1 ), .Y(
        N_41));
    VCC VCC_i (.Y(VCC));
    NOR2A \rx_shift_RNO[1]  (.A(\rx_shift[2]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[1] ));
    AO1 \receive_count_RNIB2T03[3]  (.A(baud_clock), .B(N_163_1), .C(
        N_59), .Y(rx_bit_cnte));
    DFN1C0 \receive_count[3]  (.D(N_20), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[3]_net_1 ));
    NOR2B \rx_state_RNI88821[0]  (.A(\rx_state[0]_net_1 ), .B(
        rx_byte_1_sqmuxa_1), .Y(rx_byte_1_sqmuxa_0_a4_0_a2_0));
    DFN1P0 fifo_write_inst_1 (.D(clear_parity_en_9), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(fifo_write));
    DFN1E1C0 \rx_byte[4]  (.D(\rx_shift[4]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[4]));
    NOR2 \receive_count_RNIL3QN_0[1]  (.A(\receive_count[1]_net_1 ), 
        .B(\receive_count[0]_net_1 ), .Y(\last_bit_0_i_a2_1[0] ));
    NOR2A \rx_shift_RNO[2]  (.A(\rx_shift[3]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[2] ));
    DFN1E1C0 \rx_bit_cnt[2]  (.D(N_14), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[2]_net_1 ));
    XOR2 \receive_count_RNO_0[2]  (.A(\receive_count[2]_net_1 ), .B(
        N_41), .Y(receive_count_e2_i_0));
    DFN1E1C0 \rx_bit_cnt[1]  (.D(N_16), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[1]_net_1 ));
    NOR2A \rx_state_RNIBVQO1[0]  (.A(rx_byte_1_sqmuxa_0_a4_0_a2_0), .B(
        rx_state19_i), .Y(rx_byte_1_sqmuxa));
    AX1A \receive_count_RNO_0[3]  (.A(N_41), .B(
        \receive_count[2]_net_1 ), .C(\receive_count[3]_net_1 ), .Y(
        N_48_i));
    NOR2 \rx_bit_cnt_RNO[0]  (.A(\rx_bit_cnt[0]_net_1 ), .B(N_163_1), 
        .Y(N_51));
    AOI1 \receive_count_RNO[2]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e2_i_0), .Y(N_22));
    DFN1E1P0 \samples[1]  (.D(\samples[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(baud_clock), .Q(\samples[1]_net_1 ));
    NOR2A \rx_shift_RNO[6]  (.A(\rx_shift[7]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[6] ));
    MX2C \rx_state_RNO[1]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_25));
    NOR2A \rx_state_RNIVBKO[1]  (.A(baud_clock), .B(
        \rx_state[1]_net_1 ), .Y(rx_byte_1_sqmuxa_1));
    NOR2A \rx_shift_RNO[0]  (.A(\rx_shift[1]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[0] ));
    XA1C \rx_bit_cnt_RNO[2]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), .C(
        N_163_1), .Y(N_14));
    NOR3B \receive_count_RNI3QKU1[3]  (.A(\receive_count[2]_net_1 ), 
        .B(\receive_count[3]_net_1 ), .C(N_41), .Y(N_59));
    DFN1E1C0 \rx_byte[1]  (.D(\rx_shift[1]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[1]));
    DFN1C0 \receive_count[2]  (.D(N_22), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[2]_net_1 ));
    NOR3C \rx_state_RNI15S22[0]  (.A(receive_count8_i_i_0_a2_0_4_0), 
        .B(receive_count8_i_i_0_a2_0_4_1), .C(
        receive_count8_i_i_0_a2_0_0), .Y(N_58));
    DFN1E1C0 \rx_state[1]  (.D(N_25), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_289), .Q(\rx_state[1]_net_1 ));
    NOR2 \rx_shift_RNO[7]  (.A(N_36), .B(N_163_1), .Y(N_216));
    DFN1E1C0 \rx_byte[6]  (.D(\rx_shift[6]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[6]));
    AOI1 \receive_count_RNO[1]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e1_i_0), .Y(N_24));
    DFN1E1C0 \rx_shift[4]  (.D(\rx_shift_11[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[4]_net_1 ));
    OR3A \rx_bit_cnt_RNI7JK5[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_bit_cnt[2]_net_1 ), .C(\rx_bit_cnt[1]_net_1 ), .Y(
        rx_state19_NE_0));
    NOR2A \receive_count_RNIP7QN_0[3]  (.A(\receive_count[3]_net_1 ), 
        .B(\receive_count[2]_net_1 ), .Y(\last_bit_0_i_a2_0[0] ));
    NOR2A \last_bit_RNO[0]  (.A(\last_bit[0]_net_1 ), .B(N_56), .Y(
        \last_bit_RNO[0]_net_1 ));
    NOR2 fifo_write_RNO_1 (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_67));
    DFN1E1C0 \rx_byte[7]  (.D(\rx_shift[7]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[7]));
    AOI1 \samples_RNI309U1[1]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[1]_net_1 ), .Y(
        i6_mux));
    DFN1E1C0 \rx_byte[3]  (.D(\rx_shift[3]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[3]));
    GND GND_i (.Y(GND));
    AOI1 \receive_count_RNO[3]  (.A(N_218), .B(baud_clock), .C(N_48_i), 
        .Y(N_20));
    DFN1E1C0 \rx_byte[2]  (.D(\rx_shift[2]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[2]));
    MX2C \samples_RNIG9RP4[0]  (.A(i6_mux), .B(N_19), .S(N_287), .Y(
        i5_mux));
    AX1E \receive_count_RNO_0[1]  (.A(baud_clock), .B(
        \receive_count[0]_net_1 ), .C(\receive_count[1]_net_1 ), .Y(
        receive_count_e1_i_0));
    AXOI4 \receive_count_RNO[0]  (.A(N_218), .B(baud_clock), .C(
        \receive_count[0]_net_1 ), .Y(N_26));
    DFN1E1C0 \rx_shift[6]  (.D(\rx_shift_11[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[6]_net_1 ));
    MX2C \rx_state_RNO[0]  (.A(i3_mux), .B(N_23), .S(
        \rx_state[0]_net_1 ), .Y(N_277));
    NOR2A \rx_shift_RNO[4]  (.A(\rx_shift[5]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[4] ));
    DFN1E1C0 \rx_shift[1]  (.D(\rx_shift_11[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[1]_net_1 ));
    DFN1E1C0 \rx_shift[3]  (.D(\rx_shift_11[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[3]_net_1 ));
    DFN1E1C0 \rx_state[0]  (.D(N_277), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(baud_clock), .Q(\rx_state[0]_net_1 ));
    AOI1 \samples_RNI2V8U1[0]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[0]_net_1 ), .Y(
        N_19));
    DFN1E1P0 \samples[2]  (.D(RX_c), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        baud_clock), .Q(\samples[2]_net_1 ));
    DFN1C0 \receive_count[0]  (.D(N_26), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\receive_count[0]_net_1 ));
    NOR2B \rx_state_RNIJP7J[0]  (.A(\rx_state[1]_net_1 ), .B(
        \rx_state[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_0));
    DFN1E1C0 \rx_byte[5]  (.D(\rx_shift[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[5]));
    DFN1E1C0 \rx_shift[5]  (.D(\rx_shift_11[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[5]_net_1 ));
    NOR2 \rx_state_RNIJP7J_0[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_163_1));
    DFN1E1C0 \rx_bit_cnt[0]  (.D(N_51), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[0]_net_1 ));
    XOR2 \last_bit_RNIS3UG[0]  (.A(\last_bit[0]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_46_i));
    OR2A \rx_bit_cnt_RNO_0[3]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), 
        .Y(N_42));
    NOR2A \samples_RNIIN5V1[0]  (.A(N_163_1), .B(N_36), .Y(N_57));
    DFN1P0 \last_bit[0]  (.D(\last_bit_RNO[0]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\last_bit[0]_net_1 ));
    NOR2B \rx_state_RNO_3[0]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(m13_0));
    XA1C \rx_bit_cnt_RNO[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(N_42), .C(
        N_163_1), .Y(N_12));
    DFN1E1C0 \rx_bit_cnt[3]  (.D(N_12), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[3]_net_1 ));
    MX2C \rx_state_RNO_0[0]  (.A(N_56), .B(N_31_mux), .S(
        \receive_count[2]_net_1 ), .Y(i3_mux));
    XA1B \rx_bit_cnt_RNO[1]  (.A(\rx_bit_cnt[0]_net_1 ), .B(
        \rx_bit_cnt[1]_net_1 ), .C(N_163_1), .Y(N_16));
    
endmodule


module Top_0_COREUART_0_fifo_256x8_pa3(
       tx_hold_reg,
       DO_0,
       fifo_write_tx,
       PRESETN_c,
       WEAP,
       PCLK_c,
       fifo_empty_tx,
       fifo_full_tx
    );
input  [7:0] tx_hold_reg;
output [7:0] DO_0;
input  fifo_write_tx;
input  PRESETN_c;
input  WEAP;
input  PCLK_c;
output fifo_empty_tx;
output fifo_full_tx;

    wire AEMPTY, FIFOBLOCK0_FULL, FIFOBLOCK0_RD8, FIFOBLOCK0_RD9, 
        FIFOBLOCK0_RD10, FIFOBLOCK0_RD11, FIFOBLOCK0_RD12, 
        FIFOBLOCK0_RD13, FIFOBLOCK0_RD14, FIFOBLOCK0_RD15, 
        FIFOBLOCK0_RD16, FIFOBLOCK0_RD17, 
        Top_0_COREUART_0_fifo_256x8_pa3_GND, 
        Top_0_COREUART_0_fifo_256x8_pa3_VCC;
    
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(Top_0_COREUART_0_fifo_256x8_pa3_GND), 
        .AEVAL10(Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL9(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL8(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL7(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL6(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL5(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL4(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL3(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AEVAL2(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL1(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL0(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL11(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL10(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL9(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL8(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL7(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL6(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL5(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL4(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL3(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL2(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL1(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL0(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD17(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD16(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD15(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD14(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD13(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD12(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD11(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD10(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD9(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD8(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WD7(tx_hold_reg[7]), 
        .WD6(tx_hold_reg[6]), .WD5(tx_hold_reg[5]), .WD4(
        tx_hold_reg[4]), .WD3(tx_hold_reg[3]), .WD2(tx_hold_reg[2]), 
        .WD1(tx_hold_reg[1]), .WD0(tx_hold_reg[0]), .WW0(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .WW1(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .WW2(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .RW0(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .RW1(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .RW2(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .RPIPE(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WEN(fifo_write_tx), 
        .REN(WEAP), .WBLK(Top_0_COREUART_0_fifo_256x8_pa3_GND), .RBLK(
        Top_0_COREUART_0_fifo_256x8_pa3_GND), .WCLK(PCLK_c), .RCLK(
        PCLK_c), .RESET(PRESETN_c), .ESTOP(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .FSTOP(
        Top_0_COREUART_0_fifo_256x8_pa3_VCC), .RD17(FIFOBLOCK0_RD17), 
        .RD16(FIFOBLOCK0_RD16), .RD15(FIFOBLOCK0_RD15), .RD14(
        FIFOBLOCK0_RD14), .RD13(FIFOBLOCK0_RD13), .RD12(
        FIFOBLOCK0_RD12), .RD11(FIFOBLOCK0_RD11), .RD10(
        FIFOBLOCK0_RD10), .RD9(FIFOBLOCK0_RD9), .RD8(FIFOBLOCK0_RD8), 
        .RD7(DO_0[7]), .RD6(DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), 
        .RD3(DO_0[3]), .RD2(DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), 
        .FULL(FIFOBLOCK0_FULL), .AFULL(fifo_full_tx), .EMPTY(
        fifo_empty_tx), .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(Top_0_COREUART_0_fifo_256x8_pa3_VCC));
    GND GND_i (.Y(Top_0_COREUART_0_fifo_256x8_pa3_GND));
    
endmodule


module Top_0_COREUART_0_fifo_256x8_0s_4294967295s(
       tx_hold_reg,
       tx_dout_reg,
       fifo_full_tx,
       fifo_empty_tx,
       WEAP,
       PRESETN_c,
       fifo_write_tx,
       PCLK_c
    );
input  [7:0] tx_hold_reg;
output [7:0] tx_dout_reg;
output fifo_full_tx;
output fifo_empty_tx;
input  WEAP;
input  PRESETN_c;
input  fifo_write_tx;
input  PCLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(PCLK_c), .Q(tx_dout_reg[2]));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(PCLK_c), .Q(tx_dout_reg[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(PCLK_c), .Q(tx_dout_reg[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(PCLK_c), .Q(tx_dout_reg[1]));
    VCC VCC_i (.Y(VCC));
    Top_0_COREUART_0_fifo_256x8_pa3 Top_0_COREUART_0_fifo_256x8_pa3 (
        .tx_hold_reg({tx_hold_reg[7], tx_hold_reg[6], tx_hold_reg[5], 
        tx_hold_reg[4], tx_hold_reg[3], tx_hold_reg[2], tx_hold_reg[1], 
        tx_hold_reg[0]}), .DO_0({\DO_0[7] , \DO_0[6] , \DO_0[5] , 
        \DO_0[4] , \DO_0[3] , \DO_0[2] , \DO_0[1] , \DO_0[0] }), 
        .fifo_write_tx(fifo_write_tx), .PRESETN_c(PRESETN_c), .WEAP(
        WEAP), .PCLK_c(PCLK_c), .fifo_empty_tx(fifo_empty_tx), 
        .fifo_full_tx(fifo_full_tx));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(PCLK_c), .Q(tx_dout_reg[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(PCLK_c), .Q(tx_dout_reg[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(PCLK_c), .Q(tx_dout_reg[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(PCLK_c), .Q(tx_dout_reg[6]));
    
endmodule


module Top_0_COREUART_0_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s(
       tx_dout_reg,
       TX_c,
       fifo_full_tx,
       COREUART_0_TXRDY_i_0,
       fifo_empty_tx,
       xmit_pulse,
       PRESETN_c,
       PCLK_c,
       WEAP
    );
input  [7:0] tx_dout_reg;
output TX_c;
input  fifo_full_tx;
output COREUART_0_TXRDY_i_0;
input  fifo_empty_tx;
input  xmit_pulse;
input  PRESETN_c;
input  PCLK_c;
output WEAP;

    wire \xmit_state_ns_i[6] , N_149, \xmit_state_ns[6] , 
        \xmit_state_i[6] , \xmit_state[6]_net_1 , N_55, 
        \xmit_state[0]_net_1 , N_8_0, \xmit_bit_sel[1]_net_1 , 
        \xmit_bit_sel[0]_net_1 , N_9_0, \xmit_bit_sel[2]_net_1 , 
        N_11_0, \xmit_bit_sel[3]_net_1 , \xmit_state[3]_net_1 , N_15_0, 
        N_19, N_24, N_25, N_28, \xmit_state[2]_net_1 , N_30, 
        \xmit_state_RNO[3]_net_1 , N_40, \tx_byte[0]_net_1 , 
        \tx_byte[1]_net_1 , N_43, \tx_byte[2]_net_1 , 
        \tx_byte[3]_net_1 , N_44, N_47, \tx_byte[4]_net_1 , 
        \tx_byte[5]_net_1 , N_50, \tx_byte[6]_net_1 , 
        \tx_byte[7]_net_1 , N_51, N_52, N_53, tx_4, xmit_bit_sel_e0, 
        \xmit_state_i_0[1] , N_57_mux, N_59, \xmit_state[5]_net_1 , 
        N_59_mux, GND, VCC;
    
    NOR2A \xmit_state_RNIOSQQ[1]  (.A(\xmit_state_i_0[1] ), .B(
        xmit_pulse), .Y(N_55));
    DFN1C0 txrdy_int (.D(fifo_full_tx), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(COREUART_0_TXRDY_i_0));
    DFN1C0 \xmit_state[3]  (.D(\xmit_state_RNO[3]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\xmit_state[3]_net_1 ));
    NOR2A \xmit_state_RNI9RVG[0]  (.A(\xmit_state[0]_net_1 ), .B(
        fifo_empty_tx), .Y(\xmit_state_ns[6] ));
    DFN1E1C0 \tx_byte[0]  (.D(tx_dout_reg[0]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[0]_net_1 ));
    DFN1P0 \xmit_state[0]  (.D(N_59_mux), .CLK(PCLK_c), .PRE(PRESETN_c)
        , .Q(\xmit_state[0]_net_1 ));
    DFN1E1C0 \tx_byte[4]  (.D(tx_dout_reg[4]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[4]_net_1 ));
    INV \xmit_state_RNO[1]  (.A(\xmit_state[6]_net_1 ), .Y(
        \xmit_state_i[6] ));
    XA1 \xmit_bit_sel_RNO[1]  (.A(\xmit_bit_sel[0]_net_1 ), .B(
        \xmit_bit_sel[1]_net_1 ), .C(\xmit_state[3]_net_1 ), .Y(N_19));
    VCC VCC_i (.Y(VCC));
    NOR2B \xmit_bit_sel_RNI91PN[1]  (.A(\xmit_bit_sel[1]_net_1 ), .B(
        \xmit_bit_sel[0]_net_1 ), .Y(N_8_0));
    DFN1E1C0 \tx_byte[5]  (.D(tx_dout_reg[5]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[5]_net_1 ));
    NOR2 tx_RNO_0 (.A(N_52), .B(\xmit_bit_sel[3]_net_1 ), .Y(N_53));
    MX2C tx_RNO_7 (.A(\tx_byte[6]_net_1 ), .B(\tx_byte[7]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_50));
    DFN1E1C0 \xmit_state[5]  (.D(N_25), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(xmit_pulse), .Q(\xmit_state[5]_net_1 ));
    MX2A tx_RNO (.A(\xmit_state[2]_net_1 ), .B(N_53), .S(
        \xmit_state[3]_net_1 ), .Y(tx_4));
    NOR2B \xmit_bit_sel_RNIFJL31[2]  (.A(N_8_0), .B(
        \xmit_bit_sel[2]_net_1 ), .Y(N_9_0));
    DFN1C0 \xmit_state[2]  (.D(N_57_mux), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(\xmit_state[2]_net_1 ));
    NOR2A \xmit_bit_sel_RNIM6IF1[3]  (.A(N_9_0), .B(
        \xmit_bit_sel[3]_net_1 ), .Y(N_24));
    DFN1E1C0 \xmit_bit_sel[3]  (.D(N_11_0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(xmit_pulse), .Q(\xmit_bit_sel[3]_net_1 ));
    MX2C tx_RNO_5 (.A(\tx_byte[2]_net_1 ), .B(\tx_byte[3]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_43));
    NOR2B \xmit_state_RNO_0[0]  (.A(\xmit_state[5]_net_1 ), .B(
        xmit_pulse), .Y(N_59));
    MX2 tx_RNO_2 (.A(N_40), .B(N_43), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_44));
    MX2C tx_RNO_6 (.A(\tx_byte[4]_net_1 ), .B(\tx_byte[5]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_47));
    DFN1E1C0 \xmit_bit_sel[2]  (.D(N_15_0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(xmit_pulse), .Q(\xmit_bit_sel[2]_net_1 ));
    DFN1E0P0 tx (.D(tx_4), .CLK(PCLK_c), .PRE(PRESETN_c), .E(N_149), 
        .Q(TX_c));
    INV fifo_read_en0_RNO (.A(\xmit_state_ns[6] ), .Y(
        \xmit_state_ns_i[6] ));
    DFN1E1C0 \tx_byte[3]  (.D(tx_dout_reg[3]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[3]_net_1 ));
    DFN1E1C0 \tx_byte[7]  (.D(tx_dout_reg[7]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[7]_net_1 ));
    MX2B \xmit_state_RNO[3]  (.A(\xmit_state[3]_net_1 ), .B(N_30), .S(
        xmit_pulse), .Y(\xmit_state_RNO[3]_net_1 ));
    GND GND_i (.Y(GND));
    XA1 \xmit_bit_sel_RNO[2]  (.A(\xmit_bit_sel[2]_net_1 ), .B(N_8_0), 
        .C(\xmit_state[3]_net_1 ), .Y(N_15_0));
    AO1 \xmit_state_RNO[0]  (.A(fifo_empty_tx), .B(
        \xmit_state[0]_net_1 ), .C(N_59), .Y(N_59_mux));
    AXOI5 \xmit_bit_sel_RNO[0]  (.A(\xmit_state[3]_net_1 ), .B(
        xmit_pulse), .C(\xmit_bit_sel[0]_net_1 ), .Y(xmit_bit_sel_e0));
    NOR2B \xmit_state_RNO[5]  (.A(N_24), .B(\xmit_state[3]_net_1 ), .Y(
        N_25));
    DFN1E1C0 \tx_byte[6]  (.D(tx_dout_reg[6]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[6]_net_1 ));
    DFN1E1C0 \xmit_bit_sel[1]  (.D(N_19), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(xmit_pulse), .Q(\xmit_bit_sel[1]_net_1 ));
    MX2 tx_RNO_3 (.A(N_47), .B(N_50), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_51));
    DFN1P0 \xmit_state[1]  (.D(\xmit_state_i[6] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\xmit_state_i_0[1] ));
    DFN1C0 \xmit_bit_sel[0]  (.D(xmit_bit_sel_e0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\xmit_bit_sel[0]_net_1 ));
    AO1C \xmit_state_RNO[2]  (.A(xmit_pulse), .B(\xmit_state[2]_net_1 )
        , .C(\xmit_state_i_0[1] ), .Y(N_57_mux));
    MX2C tx_RNO_4 (.A(\tx_byte[0]_net_1 ), .B(\tx_byte[1]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_40));
    DFN1E1C0 \tx_byte[2]  (.D(tx_dout_reg[2]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[2]_net_1 ));
    NOR3A \xmit_state_RNI43RS[6]  (.A(N_55), .B(\xmit_state[0]_net_1 ), 
        .C(\xmit_state[6]_net_1 ), .Y(N_149));
    NOR2B \xmit_state_RNIPTQQ[2]  (.A(\xmit_state[2]_net_1 ), .B(
        xmit_pulse), .Y(N_28));
    DFI1E0P0 fifo_read_en0 (.D(\xmit_state_ns_i[6] ), .CLK(PCLK_c), .E(
        N_149), .PRE(PRESETN_c), .QN(WEAP));
    OA1C \xmit_state_RNO_0[3]  (.A(\xmit_state[3]_net_1 ), .B(N_24), 
        .C(\xmit_state[2]_net_1 ), .Y(N_30));
    MX2 tx_RNO_1 (.A(N_44), .B(N_51), .S(\xmit_bit_sel[2]_net_1 ), .Y(
        N_52));
    DFN1E1C0 \tx_byte[1]  (.D(tx_dout_reg[1]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_28), .Q(\tx_byte[1]_net_1 ));
    XA1 \xmit_bit_sel_RNO[3]  (.A(\xmit_bit_sel[3]_net_1 ), .B(N_9_0), 
        .C(\xmit_state[3]_net_1 ), .Y(N_11_0));
    DFN1C0 \xmit_state[6]  (.D(\xmit_state_ns[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\xmit_state[6]_net_1 ));
    
endmodule


module Top_0_COREUART_0_Clock_gen_0s_0s(
       PRESETN_c,
       PCLK_c,
       baud_clock,
       xmit_pulse
    );
input  PRESETN_c;
input  PCLK_c;
output baud_clock;
output xmit_pulse;

    wire baud_cntr_25_0, \baud_cntr[11] , baud_cntr_c10, 
        baud_cntr8_10_2, baud_cntr8_10_1, \baud_cntr[4] , 
        \baud_cntr[7] , \baud_cntr[5] , \baud_cntr[6] , baud_cntr8_10, 
        baud_cntr_c3, baud_cntr8, baud_cntr8_3, \baud_cntr_RNO[12] , 
        \baud_cntr[12] , \baud_cntr_RNO[11] , \baud_cntr_RNO[10] , 
        baud_cntr_c9, \baud_cntr[10] , \baud_cntr_RNO[9] , 
        baud_cntr_c8, \baud_cntr[9] , \baud_cntr_RNO[7] , 
        baud_cntr_15_0, \baud_cntr_RNO[5] , baud_cntr_c4, 
        \baud_cntr_RNO[4] , \baud_cntr_RNO[3] , baud_cntr_c2, 
        \baud_cntr[3] , \baud_cntr_RNO[1] , \baud_cntr[0] , 
        \baud_cntr[1] , \baud_cntr[8] , baud_cntr_c1, \baud_cntr[2] , 
        \baud_cntr_i[0] , baud_cntr_c5, baud_cntr8_2, xmit_clock5, 
        \xmit_cntr[2]_net_1 , \xmit_cntr[3]_net_1 , xmit_cntr_c1, 
        \baud_cntr_RNO[8] , \baud_cntr_RNO[6] , \baud_cntr_RNO[2] , 
        xmit_clock_net_1, \xmit_cntr[1]_net_1 , \xmit_cntr[0]_net_1 , 
        xmit_cntr_n3, xmit_cntr_n2, xmit_cntr_n1, xmit_cntr_e0, GND, 
        VCC;
    
    DFN1C0 \genblk1.baud_cntr[4]  (.D(\baud_cntr_RNO[4] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[4] ));
    AX1C \xmit_cntr_RNO[3]  (.A(\xmit_cntr[2]_net_1 ), .B(xmit_cntr_c1)
        , .C(\xmit_cntr[3]_net_1 ), .Y(xmit_cntr_n3));
    DFN1C0 \genblk1.baud_cntr[1]  (.D(\baud_cntr_RNO[1] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[1] ));
    OR2 \genblk1.baud_cntr_RNI339T2[5]  (.A(baud_cntr_c4), .B(
        \baud_cntr[5] ), .Y(baud_cntr_c5));
    DFN1C0 \genblk1.baud_cntr[3]  (.D(\baud_cntr_RNO[3] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[3] ));
    OR2 \genblk1.baud_cntr_RNI8SES4[10]  (.A(baud_cntr_c9), .B(
        \baud_cntr[10] ), .Y(baud_cntr_c10));
    DFN1E1C0 \xmit_cntr[3]  (.D(xmit_cntr_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[3]_net_1 ));
    XOR2 \xmit_cntr_RNO[2]  (.A(xmit_cntr_c1), .B(\xmit_cntr[2]_net_1 )
        , .Y(xmit_cntr_n2));
    AX1B \genblk1.baud_cntr_RNO[3]  (.A(baud_cntr_c2), .B(baud_cntr8), 
        .C(\baud_cntr[3] ), .Y(\baud_cntr_RNO[3] ));
    DFN1C0 \genblk1.baud_cntr[9]  (.D(\baud_cntr_RNO[9] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[9] ));
    DFN1C0 \genblk1.baud_clock_int  (.D(baud_cntr8), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(baud_clock));
    NOR3 \genblk1.baud_cntr_RNI7UFH[12]  (.A(\baud_cntr[8] ), .B(
        \baud_cntr[12] ), .C(\baud_cntr[11] ), .Y(baud_cntr8_2));
    XO1A \genblk1.baud_cntr_RNO[2]  (.A(\baud_cntr[2] ), .B(
        baud_cntr_c1), .C(baud_cntr8), .Y(\baud_cntr_RNO[2] ));
    OR2 \genblk1.baud_cntr_RNITS2V[1]  (.A(\baud_cntr[0] ), .B(
        \baud_cntr[1] ), .Y(baud_cntr_c1));
    NOR2 \genblk1.baud_cntr_RNI773V[5]  (.A(\baud_cntr[5] ), .B(
        \baud_cntr[6] ), .Y(baud_cntr8_10_1));
    VCC VCC_i (.Y(VCC));
    OR2 \genblk1.baud_cntr_RNI0GND2[4]  (.A(baud_cntr_c3), .B(
        \baud_cntr[4] ), .Y(baud_cntr_c4));
    NOR3A \genblk1.baud_cntr_RNIEE6U1[7]  (.A(baud_cntr8_10_1), .B(
        \baud_cntr[4] ), .C(\baud_cntr[7] ), .Y(baud_cntr8_10_2));
    NOR3C xmit_clock_RNO (.A(\xmit_cntr[2]_net_1 ), .B(
        \xmit_cntr[3]_net_1 ), .C(xmit_cntr_c1), .Y(xmit_clock5));
    AX1B \genblk1.baud_cntr_RNO[9]  (.A(baud_cntr_c8), .B(baud_cntr8), 
        .C(\baud_cntr[9] ), .Y(\baud_cntr_RNO[9] ));
    OR2A \genblk1.baud_cntr_RNII2UB4[8]  (.A(baud_cntr8_10), .B(
        \baud_cntr[8] ), .Y(baud_cntr_c8));
    INV \genblk1.baud_cntr_RNO[0]  (.A(\baud_cntr[0] ), .Y(
        \baud_cntr_i[0] ));
    XOR2 \xmit_cntr_RNO[1]  (.A(\xmit_cntr[0]_net_1 ), .B(
        \xmit_cntr[1]_net_1 ), .Y(xmit_cntr_n1));
    AX1B \genblk1.baud_cntr_RNO[5]  (.A(baud_cntr_c4), .B(baud_cntr8), 
        .C(\baud_cntr[5] ), .Y(\baud_cntr_RNO[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[7]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .Y(baud_cntr_15_0));
    DFN1C0 \genblk1.baud_cntr[7]  (.D(\baud_cntr_RNO[7] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[7] ));
    DFN1C0 \genblk1.baud_cntr[5]  (.D(\baud_cntr_RNO[5] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[12]  (.A(\baud_cntr[11] ), .B(
        baud_cntr_c10), .Y(baud_cntr_25_0));
    NOR2A \genblk1.baud_cntr_RNICCCS3[7]  (.A(baud_cntr8_10_2), .B(
        baud_cntr_c3), .Y(baud_cntr8_10));
    DFN1C0 \genblk1.baud_cntr[8]  (.D(\baud_cntr_RNO[8] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[8] ));
    GND GND_i (.Y(GND));
    DFN1C0 \genblk1.baud_cntr[0]  (.D(\baud_cntr_i[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\baud_cntr[0] ));
    NOR3A \genblk1.baud_cntr_RNITN021[10]  (.A(baud_cntr8_2), .B(
        \baud_cntr[10] ), .C(\baud_cntr[9] ), .Y(baud_cntr8_3));
    OR2 \genblk1.baud_cntr_RNIPPFR4[9]  (.A(baud_cntr_c8), .B(
        \baud_cntr[9] ), .Y(baud_cntr_c9));
    AXO1 \genblk1.baud_cntr_RNO[8]  (.A(baud_cntr8_3), .B(
        \baud_cntr[8] ), .C(baud_cntr8_10), .Y(\baud_cntr_RNO[8] ));
    XOR2 \xmit_cntr_RNO[0]  (.A(\xmit_cntr[0]_net_1 ), .B(baud_clock), 
        .Y(xmit_cntr_e0));
    AX1B \genblk1.baud_cntr_RNO[7]  (.A(baud_cntr8), .B(baud_cntr_15_0)
        , .C(\baud_cntr[7] ), .Y(\baud_cntr_RNO[7] ));
    XO1A \genblk1.baud_cntr_RNO[6]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .C(baud_cntr8), .Y(\baud_cntr_RNO[6] ));
    DFN1E1C0 \xmit_cntr[2]  (.D(xmit_cntr_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[2]_net_1 ));
    DFN1C0 \genblk1.baud_cntr[10]  (.D(\baud_cntr_RNO[10] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[10] ));
    NOR2B \genblk1.baud_cntr_RNI94DU4[10]  (.A(baud_cntr8_3), .B(
        baud_cntr8_10), .Y(baud_cntr8));
    DFN1C0 \genblk1.baud_cntr[6]  (.D(\baud_cntr_RNO[6] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[6] ));
    DFN1E1C0 xmit_clock (.D(xmit_clock5), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(baud_clock), .Q(xmit_clock_net_1));
    NOR2B xmit_clock_RNIKRQP (.A(baud_clock), .B(xmit_clock_net_1), .Y(
        xmit_pulse));
    AX1B \genblk1.baud_cntr_RNO[12]  (.A(baud_cntr8), .B(
        baud_cntr_25_0), .C(\baud_cntr[12] ), .Y(\baud_cntr_RNO[12] ));
    OR2 \genblk1.baud_cntr_RNITCKE1[2]  (.A(baud_cntr_c1), .B(
        \baud_cntr[2] ), .Y(baud_cntr_c2));
    DFN1C0 \genblk1.baud_cntr[12]  (.D(\baud_cntr_RNO[12] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[12] ));
    DFN1E1C0 \xmit_cntr[1]  (.D(xmit_cntr_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(baud_clock), .Q(\xmit_cntr[1]_net_1 ));
    AX1B \genblk1.baud_cntr_RNO[4]  (.A(baud_cntr_c3), .B(baud_cntr8), 
        .C(\baud_cntr[4] ), .Y(\baud_cntr_RNO[4] ));
    OR2 \genblk1.baud_cntr_RNIUT5U1[3]  (.A(baud_cntr_c2), .B(
        \baud_cntr[3] ), .Y(baud_cntr_c3));
    DFN1C0 \genblk1.baud_cntr[2]  (.D(\baud_cntr_RNO[2] ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\baud_cntr[2] ));
    AX1B \genblk1.baud_cntr_RNO[10]  (.A(baud_cntr_c9), .B(baud_cntr8), 
        .C(\baud_cntr[10] ), .Y(\baud_cntr_RNO[10] ));
    DFN1C0 \xmit_cntr[0]  (.D(xmit_cntr_e0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\xmit_cntr[0]_net_1 ));
    NOR2B \xmit_cntr_RNI5MAC[1]  (.A(\xmit_cntr[1]_net_1 ), .B(
        \xmit_cntr[0]_net_1 ), .Y(xmit_cntr_c1));
    DFN1C0 \genblk1.baud_cntr[11]  (.D(\baud_cntr_RNO[11] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\baud_cntr[11] ));
    AX1B \genblk1.baud_cntr_RNO[11]  (.A(baud_cntr_c10), .B(baud_cntr8)
        , .C(\baud_cntr[11] ), .Y(\baud_cntr_RNO[11] ));
    AX1B \genblk1.baud_cntr_RNO[1]  (.A(\baud_cntr[0] ), .B(baud_cntr8)
        , .C(\baud_cntr[1] ), .Y(\baud_cntr_RNO[1] ));
    
endmodule


module Top_0_COREUART_0_fifo_256x8_pa3_0(
       rx_byte,
       DO_0,
       rx_state,
       PRESETN_c,
       PCLK_c,
       fifo_write,
       rx_dout_reg_empty,
       next_rx_state4
    );
input  [7:0] rx_byte;
output [7:0] DO_0;
input  [1:0] rx_state;
input  PRESETN_c;
input  PCLK_c;
input  fifo_write;
input  rx_dout_reg_empty;
output next_rx_state4;

    wire WEAP, fifo_empty_rx, fifo_write_rx_1, fifo_full_rx, AEMPTY, 
        FIFOBLOCK0_FULL_0, FIFOBLOCK0_RD8_0, FIFOBLOCK0_RD9_0, 
        FIFOBLOCK0_RD10_0, FIFOBLOCK0_RD11_0, FIFOBLOCK0_RD12_0, 
        FIFOBLOCK0_RD13_0, FIFOBLOCK0_RD14_0, FIFOBLOCK0_RD15_0, 
        FIFOBLOCK0_RD16_0, FIFOBLOCK0_RD17_0, 
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND, 
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC;
    
    OR2 FIFOBLOCK0_RNO_0 (.A(fifo_full_rx), .B(fifo_write), .Y(
        fifo_write_rx_1));
    NOR2A FIFOBLOCK0_RNINSQE (.A(rx_dout_reg_empty), .B(fifo_empty_rx), 
        .Y(next_rx_state4));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL10(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL9(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL8(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL7(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL6(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL5(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL4(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL3(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AEVAL2(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL1(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL0(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL11(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL10(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL9(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL8(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL7(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL6(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL5(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL4(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL3(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL2(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL1(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL0(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD17(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD16(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD15(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD14(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD13(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD12(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD11(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD10(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD9(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD8(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD7(rx_byte[7]), .WD6(
        rx_byte[6]), .WD5(rx_byte[5]), .WD4(rx_byte[4]), .WD3(
        rx_byte[3]), .WD2(rx_byte[2]), .WD1(rx_byte[1]), .WD0(
        rx_byte[0]), .WW0(Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .WW1(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .WW2(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .RW0(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RW1(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RW2(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .RPIPE(
        Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WEN(fifo_write_rx_1), 
        .REN(WEAP), .WBLK(Top_0_COREUART_0_fifo_256x8_pa3_0_GND), 
        .RBLK(Top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WCLK(PCLK_c), 
        .RCLK(PCLK_c), .RESET(PRESETN_c), .ESTOP(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .FSTOP(
        Top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RD17(
        FIFOBLOCK0_RD17_0), .RD16(FIFOBLOCK0_RD16_0), .RD15(
        FIFOBLOCK0_RD15_0), .RD14(FIFOBLOCK0_RD14_0), .RD13(
        FIFOBLOCK0_RD13_0), .RD12(FIFOBLOCK0_RD12_0), .RD11(
        FIFOBLOCK0_RD11_0), .RD10(FIFOBLOCK0_RD10_0), .RD9(
        FIFOBLOCK0_RD9_0), .RD8(FIFOBLOCK0_RD8_0), .RD7(DO_0[7]), .RD6(
        DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), .RD3(DO_0[3]), .RD2(
        DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), .FULL(
        FIFOBLOCK0_FULL_0), .AFULL(fifo_full_rx), .EMPTY(fifo_empty_rx)
        , .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(Top_0_COREUART_0_fifo_256x8_pa3_0_VCC));
    NOR3A FIFOBLOCK0_RNO (.A(next_rx_state4), .B(rx_state[1]), .C(
        rx_state[0]), .Y(WEAP));
    GND GND_i (.Y(Top_0_COREUART_0_fifo_256x8_pa3_0_GND));
    
endmodule


module Top_0_COREUART_0_fifo_256x8_0s_4294967295s_0(
       rx_state,
       rx_byte,
       rx_dout,
       next_rx_state4,
       rx_dout_reg_empty,
       fifo_write,
       PRESETN_c,
       PCLK_c
    );
input  [1:0] rx_state;
input  [7:0] rx_byte;
output [7:0] rx_dout;
output next_rx_state4;
input  rx_dout_reg_empty;
input  fifo_write;
input  PRESETN_c;
input  PCLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(PCLK_c), .Q(rx_dout[2]));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(PCLK_c), .Q(rx_dout[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(PCLK_c), .Q(rx_dout[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(PCLK_c), .Q(rx_dout[1]));
    VCC VCC_i (.Y(VCC));
    Top_0_COREUART_0_fifo_256x8_pa3_0 Top_0_COREUART_0_fifo_256x8_pa3 
        (.rx_byte({rx_byte[7], rx_byte[6], rx_byte[5], rx_byte[4], 
        rx_byte[3], rx_byte[2], rx_byte[1], rx_byte[0]}), .DO_0({
        \DO_0[7] , \DO_0[6] , \DO_0[5] , \DO_0[4] , \DO_0[3] , 
        \DO_0[2] , \DO_0[1] , \DO_0[0] }), .rx_state({rx_state[1], 
        rx_state[0]}), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), 
        .fifo_write(fifo_write), .rx_dout_reg_empty(rx_dout_reg_empty), 
        .next_rx_state4(next_rx_state4));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(PCLK_c), .Q(rx_dout[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(PCLK_c), .Q(rx_dout[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(PCLK_c), .Q(rx_dout[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(PCLK_c), .Q(rx_dout[6]));
    
endmodule


module Top_0_COREUART_0_COREUART_1s_1s_0s_15s_0s_0s(
       rx_dout_reg,
       Q_c,
       RX_c,
       COREUART_0_TXRDY_i_0,
       TX_c,
       WEN_c,
       PRESETN_c,
       PCLK_c,
       COREUART_0_RXRDY
    );
output [7:0] rx_dout_reg;
input  [7:0] Q_c;
input  RX_c;
output COREUART_0_TXRDY_i_0;
output TX_c;
input  WEN_c;
input  PRESETN_c;
input  PCLK_c;
output COREUART_0_RXRDY;

    wire rx_dout_reg_empty_i, rx_dout_reg_empty_net_1, 
        rx_dout_reg_empty_1_sqmuxa, rx_dout_reg4, \rx_state[0]_net_1 , 
        \rx_state[1]_net_1 , \rx_state_ns[0] , next_rx_state4, N_131_i, 
        fifo_write_tx_net_1, \tx_hold_reg[0]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[7]_net_1 , \rx_dout[0] , \rx_dout[1] , 
        \rx_dout[2] , \rx_dout[3] , \rx_dout[4] , \rx_dout[5] , 
        \rx_dout[6] , \rx_dout[7] , baud_clock, xmit_pulse, 
        \tx_dout_reg[0] , \tx_dout_reg[1] , \tx_dout_reg[2] , 
        \tx_dout_reg[3] , \tx_dout_reg[4] , \tx_dout_reg[5] , 
        \tx_dout_reg[6] , \tx_dout_reg[7] , fifo_full_tx, 
        fifo_empty_tx, WEAP, \rx_byte[0] , \rx_byte[1] , \rx_byte[2] , 
        \rx_byte[3] , \rx_byte[4] , \rx_byte[5] , \rx_byte[6] , 
        \rx_byte[7] , fifo_write, GND, VCC;
    
    DFN1E0C0 \tx_hold_reg[5]  (.D(Q_c[5]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[5]_net_1 ));
    DFN1E0C0 \rx_dout_reg[0]  (.D(\rx_dout[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[0]));
    Top_0_COREUART_0_Rx_async_0s_1s_0s_1s_2s_3s make_RX (.rx_byte({
        \rx_byte[7] , \rx_byte[6] , \rx_byte[5] , \rx_byte[4] , 
        \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , \rx_byte[0] }), 
        .RX_c(RX_c), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), 
        .fifo_write(fifo_write), .baud_clock(baud_clock));
    DFN1E0C0 \tx_hold_reg[0]  (.D(Q_c[0]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[0]_net_1 ));
    DFN1E0C0 \rx_dout_reg[3]  (.D(\rx_dout[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[3]));
    Top_0_COREUART_0_fifo_256x8_0s_4294967295s \genblk2.tx_fifo  (
        .tx_hold_reg({\tx_hold_reg[7]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[0]_net_1 }), .tx_dout_reg({
        \tx_dout_reg[7] , \tx_dout_reg[6] , \tx_dout_reg[5] , 
        \tx_dout_reg[4] , \tx_dout_reg[3] , \tx_dout_reg[2] , 
        \tx_dout_reg[1] , \tx_dout_reg[0] }), .fifo_full_tx(
        fifo_full_tx), .fifo_empty_tx(fifo_empty_tx), .WEAP(WEAP), 
        .PRESETN_c(PRESETN_c), .fifo_write_tx(fifo_write_tx_net_1), 
        .PCLK_c(PCLK_c));
    DFN1E0C0 \tx_hold_reg[2]  (.D(Q_c[2]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[2]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1E0P0 rx_dout_reg_empty (.D(rx_dout_reg4), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(rx_dout_reg_empty_1_sqmuxa), .Q(
        rx_dout_reg_empty_net_1));
    NOR2A rx_dout_reg_empty_RNO (.A(rx_dout_reg4), .B(COREUART_0_RXRDY)
        , .Y(rx_dout_reg_empty_1_sqmuxa));
    OR2B \rx_state_RNI9K81[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(rx_dout_reg4));
    Top_0_COREUART_0_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s make_TX (
        .tx_dout_reg({\tx_dout_reg[7] , \tx_dout_reg[6] , 
        \tx_dout_reg[5] , \tx_dout_reg[4] , \tx_dout_reg[3] , 
        \tx_dout_reg[2] , \tx_dout_reg[1] , \tx_dout_reg[0] }), .TX_c(
        TX_c), .fifo_full_tx(fifo_full_tx), .COREUART_0_TXRDY_i_0(
        COREUART_0_TXRDY_i_0), .fifo_empty_tx(fifo_empty_tx), 
        .xmit_pulse(xmit_pulse), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c)
        , .WEAP(WEAP));
    DFN1E0C0 \tx_hold_reg[6]  (.D(Q_c[6]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[6]_net_1 ));
    XOR2 \rx_state_RNO[1]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_131_i));
    DFN1E0C0 \rx_dout_reg[4]  (.D(\rx_dout[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[4]));
    Top_0_COREUART_0_Clock_gen_0s_0s make_CLOCK_GEN (.PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .baud_clock(baud_clock), 
        .xmit_pulse(xmit_pulse));
    DFN1C0 \rx_state[1]  (.D(N_131_i), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\rx_state[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[7]  (.D(\rx_dout[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[7]));
    DFN1E0C0 \rx_dout_reg[1]  (.D(\rx_dout[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[1]));
    DFN1E0C0 \rx_dout_reg[5]  (.D(\rx_dout[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[5]));
    GND GND_i (.Y(GND));
    INV \genblk1.RXRDY_RNO  (.A(rx_dout_reg_empty_net_1), .Y(
        rx_dout_reg_empty_i));
    DFN1E0C0 \rx_dout_reg[6]  (.D(\rx_dout[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[6]));
    OA1B \rx_state_RNO[0]  (.A(\rx_state[1]_net_1 ), .B(next_rx_state4)
        , .C(\rx_state[0]_net_1 ), .Y(\rx_state_ns[0] ));
    DFN1C0 \rx_state[0]  (.D(\rx_state_ns[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\rx_state[0]_net_1 ));
    DFN1E0C0 \tx_hold_reg[7]  (.D(Q_c[7]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[7]_net_1 ));
    DFN1C0 \genblk1.RXRDY  (.D(rx_dout_reg_empty_i), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(COREUART_0_RXRDY));
    Top_0_COREUART_0_fifo_256x8_0s_4294967295s_0 \genblk3.rx_fifo  (
        .rx_state({\rx_state[1]_net_1 , \rx_state[0]_net_1 }), 
        .rx_byte({\rx_byte[7] , \rx_byte[6] , \rx_byte[5] , 
        \rx_byte[4] , \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , 
        \rx_byte[0] }), .rx_dout({\rx_dout[7] , \rx_dout[6] , 
        \rx_dout[5] , \rx_dout[4] , \rx_dout[3] , \rx_dout[2] , 
        \rx_dout[1] , \rx_dout[0] }), .next_rx_state4(next_rx_state4), 
        .rx_dout_reg_empty(rx_dout_reg_empty_net_1), .fifo_write(
        fifo_write), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    DFN1E0C0 \tx_hold_reg[3]  (.D(Q_c[3]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[3]_net_1 ));
    DFN1P0 fifo_write_tx (.D(WEN_c), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        fifo_write_tx_net_1));
    DFN1E0C0 \tx_hold_reg[1]  (.D(Q_c[1]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[2]  (.D(\rx_dout[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[2]));
    DFN1E0C0 \tx_hold_reg[4]  (.D(Q_c[4]), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(WEN_c), .Q(\tx_hold_reg[4]_net_1 ));
    
endmodule


module Top_0(
       DATA_IN_1,
       PCLK,
       PRESETN,
       RX,
       GD,
       OUT_DATA,
       Q,
       RX_data,
       TX,
       WEN,
       SCL,
       SDA
    );
input  [15:0] DATA_IN_1;
input  PCLK;
input  PRESETN;
input  RX;
output GD;
output [23:0] OUT_DATA;
output [7:0] Q;
output [7:0] RX_data;
output TX;
output WEN;
output SCL;
inout  SDA;

    wire \IIC_control_0_BIF_1_PADDR[2] , 
        \IIC_control_0_BIF_1_PADDR[3] , IIC_control_0_BIF_1_PWRITE, 
        IIC_control_0_BIF_1_PENABLE, IIC_control_0_BIF_1_PSELx, 
        \IIC_control_0_BIF_1_PWDATA[0] , 
        \IIC_control_0_BIF_1_PWDATA[1] , 
        \IIC_control_0_BIF_1_PWDATA[2] , 
        \IIC_control_0_BIF_1_PWDATA[3] , 
        \IIC_control_0_BIF_1_PWDATA[4] , 
        \IIC_control_0_BIF_1_PWDATA[5] , 
        \IIC_control_0_BIF_1_PWDATA[6] , 
        \IIC_control_0_BIF_1_PWDATA[7] , VCC, 
        \I2C_slave_0_BIF_1_PADDR[2] , \I2C_slave_0_BIF_1_PADDR[3] , 
        I2C_slave_0_BIF_1_PWRITE, I2C_slave_0_BIF_1_PENABLE, 
        I2C_slave_0_BIF_1_PSELx, \I2C_slave_0_BIF_1_PWDATA[0] , 
        \I2C_slave_0_BIF_1_PWDATA[1] , \I2C_slave_0_BIF_1_PWDATA[2] , 
        \I2C_slave_0_BIF_1_PWDATA[3] , \I2C_slave_0_BIF_1_PWDATA[4] , 
        \I2C_slave_0_BIF_1_PWDATA[5] , \I2C_slave_0_BIF_1_PWDATA[6] , 
        \I2C_slave_0_BIF_1_PWDATA[7] , \COREI2C_0_INT[0] , 
        \COREI2C_1_INT[0] , \SDAO_0[0] , COREUART_0_RXRDY, 
        COREUART_1_RXRDY, \Q_net_0[0] , \Q_net_0[1] , \Q_net_0[2] , 
        \Q_net_0[3] , \Q_net_0[4] , \Q_net_0[5] , \Q_net_0[6] , 
        \Q_net_0[7] , AFULL, WE_OUT, \INA220_DATA_2[0] , 
        \INA220_DATA_2[1] , \INA220_DATA_2[2] , \INA220_DATA_2[3] , 
        \INA220_DATA_2[4] , \INA220_DATA_2[5] , \INA220_DATA_2[6] , 
        \INA220_DATA_2[7] , UART_control_0_WE, IIC_FIFO_1_EMPTY, 
        \IIC_FIFO_0.WEAP , UART_control_0_RE, \IIC_control_0.OUT_EN , 
        \I2C_slave_0.OUT_EN , \COREUART_1.rx_dout_reg[0] , 
        \COREUART_1.rx_dout_reg[1] , \COREUART_1.rx_dout_reg[2] , 
        \COREUART_1.rx_dout_reg[3] , \COREUART_1.rx_dout_reg[4] , 
        \COREUART_1.rx_dout_reg[5] , \COREUART_1.rx_dout_reg[6] , 
        \COREUART_1.rx_dout_reg[7] , \COREUART_0.rx_dout_reg[0] , 
        \COREUART_0.rx_dout_reg[1] , \COREUART_0.rx_dout_reg[2] , 
        \COREUART_0.rx_dout_reg[3] , \COREUART_0.rx_dout_reg[4] , 
        \COREUART_0.rx_dout_reg[5] , \COREUART_0.rx_dout_reg[6] , 
        \COREUART_0.rx_dout_reg[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[3] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[4] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[5] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[6] , SDA_d, SDA_e, 
        SDA_in, \DATA_IN_1_c[0] , \DATA_IN_1_c[1] , \DATA_IN_1_c[2] , 
        \DATA_IN_1_c[3] , \DATA_IN_1_c[4] , \DATA_IN_1_c[5] , 
        \DATA_IN_1_c[6] , \DATA_IN_1_c[7] , \DATA_IN_1_c[8] , 
        \DATA_IN_1_c[9] , \DATA_IN_1_c[10] , \DATA_IN_1_c[11] , 
        \DATA_IN_1_c[12] , \DATA_IN_1_c[13] , \DATA_IN_1_c[14] , 
        \DATA_IN_1_c[15] , PCLK_c, PRESETN_c, RX_c, GND, 
        \OUT_DATA_c[0] , \OUT_DATA_c[1] , \OUT_DATA_c[2] , 
        \OUT_DATA_c[3] , \OUT_DATA_c[4] , \OUT_DATA_c[5] , 
        \OUT_DATA_c[6] , \OUT_DATA_c[7] , \OUT_DATA_c[8] , 
        \OUT_DATA_c[9] , \OUT_DATA_c[10] , \OUT_DATA_c[11] , 
        \OUT_DATA_c[12] , \OUT_DATA_c[13] , \OUT_DATA_c[14] , 
        \OUT_DATA_c[15] , \OUT_DATA_c[16] , \OUT_DATA_c[17] , 
        \OUT_DATA_c[18] , \OUT_DATA_c[19] , \OUT_DATA_c[20] , 
        \OUT_DATA_c[21] , \OUT_DATA_c[22] , \OUT_DATA_c[23] , \Q_c[0] , 
        \Q_c[1] , \Q_c[2] , \Q_c[3] , \Q_c[4] , \Q_c[5] , \Q_c[6] , 
        \Q_c[7] , \RX_data_c[0] , \RX_data_c[1] , \RX_data_c[2] , 
        \RX_data_c[3] , \RX_data_c[4] , \RX_data_c[5] , \RX_data_c[6] , 
        \RX_data_c[7] , TX_c, WEN_c, SCLO_int, 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] , 
        \I2C_slave_0_BIF_1_PRDATA[6] , \I2C_slave_0_BIF_1_PRDATA[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_350 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443_i , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_411 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_412 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_413 , 
        \I2C_slave_0_BIF_1_PRDATA[0] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \I2C_slave_0_BIF_1_PRDATA[5] , \I2C_slave_0_BIF_1_PRDATA[4] , 
        \I2C_slave_0_BIF_1_PRDATA[3] , \I2C_slave_0_BIF_1_PRDATA[2] , 
        \I2C_slave_0_BIF_1_PRDATA[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_401 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_400 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_405 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_403 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_404 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_409 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_407 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_408 , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[3] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] , 
        COREUART_0_TXRDY_i_0, 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] ;
    
    OUTBUF \OUT_DATA_pad[10]  (.D(\OUT_DATA_c[10] ), .PAD(OUT_DATA[10])
        );
    OUTBUF \OUT_DATA_pad[6]  (.D(\OUT_DATA_c[6] ), .PAD(OUT_DATA[6]));
    INBUF \DATA_IN_1_pad[5]  (.PAD(DATA_IN_1[5]), .Y(\DATA_IN_1_c[5] ));
    OUTBUF \OUT_DATA_pad[22]  (.D(\OUT_DATA_c[22] ), .PAD(OUT_DATA[22])
        );
    OUTBUF \OUT_DATA_pad[9]  (.D(\OUT_DATA_c[9] ), .PAD(OUT_DATA[9]));
    OUTBUF \OUT_DATA_pad[17]  (.D(\OUT_DATA_c[17] ), .PAD(OUT_DATA[17])
        );
    INBUF \DATA_IN_1_pad[7]  (.PAD(DATA_IN_1[7]), .Y(\DATA_IN_1_c[7] ));
    I2C_slave_Z5 I2C_slave_0 (.I2C_slave_0_BIF_1_PWDATA({
        \I2C_slave_0_BIF_1_PWDATA[7] , \I2C_slave_0_BIF_1_PWDATA[6] , 
        \I2C_slave_0_BIF_1_PWDATA[5] , \I2C_slave_0_BIF_1_PWDATA[4] , 
        \I2C_slave_0_BIF_1_PWDATA[3] , \I2C_slave_0_BIF_1_PWDATA[2] , 
        \I2C_slave_0_BIF_1_PWDATA[1] , \I2C_slave_0_BIF_1_PWDATA[0] }), 
        .I2C_slave_0_BIF_1_PADDR({\I2C_slave_0_BIF_1_PADDR[3] , 
        \I2C_slave_0_BIF_1_PADDR[2] }), .OUT_DATA_c({\OUT_DATA_c[23] , 
        \OUT_DATA_c[22] , \OUT_DATA_c[21] , \OUT_DATA_c[20] , 
        \OUT_DATA_c[19] , \OUT_DATA_c[18] , \OUT_DATA_c[17] , 
        \OUT_DATA_c[16] , \OUT_DATA_c[15] , \OUT_DATA_c[14] , 
        \OUT_DATA_c[13] , \OUT_DATA_c[12] , \OUT_DATA_c[11] , 
        \OUT_DATA_c[10] , \OUT_DATA_c[9] , \OUT_DATA_c[8] , 
        \OUT_DATA_c[7] , \OUT_DATA_c[6] , \OUT_DATA_c[5] , 
        \OUT_DATA_c[4] , \OUT_DATA_c[3] , \OUT_DATA_c[2] , 
        \OUT_DATA_c[1] , \OUT_DATA_c[0] }), .DATA_IN_1_c({
        \DATA_IN_1_c[15] , \DATA_IN_1_c[14] , \DATA_IN_1_c[13] , 
        \DATA_IN_1_c[12] , \DATA_IN_1_c[11] , \DATA_IN_1_c[10] , 
        \DATA_IN_1_c[9] , \DATA_IN_1_c[8] , \DATA_IN_1_c[7] , 
        \DATA_IN_1_c[6] , \DATA_IN_1_c[5] , \DATA_IN_1_c[4] , 
        \DATA_IN_1_c[3] , \DATA_IN_1_c[2] , \DATA_IN_1_c[1] , 
        \DATA_IN_1_c[0] }), .I2C_slave_0_BIF_1_PRDATA({
        \I2C_slave_0_BIF_1_PRDATA[7] , \I2C_slave_0_BIF_1_PRDATA[6] , 
        \I2C_slave_0_BIF_1_PRDATA[5] , \I2C_slave_0_BIF_1_PRDATA[4] , 
        \I2C_slave_0_BIF_1_PRDATA[3] , \I2C_slave_0_BIF_1_PRDATA[2] , 
        \I2C_slave_0_BIF_1_PRDATA[1] , \I2C_slave_0_BIF_1_PRDATA[0] }), 
        .COREI2C_1_INT_0(\COREI2C_1_INT[0] ), .I2C_slave_0_BIF_1_PSELx(
        I2C_slave_0_BIF_1_PSELx), .SCLO_int(SCLO_int), .OUT_EN(
        \I2C_slave_0.OUT_EN ), .I2C_slave_0_BIF_1_PENABLE(
        I2C_slave_0_BIF_1_PENABLE), .I2C_slave_0_BIF_1_PWRITE(
        I2C_slave_0_BIF_1_PWRITE), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    OUTBUF \OUT_DATA_pad[4]  (.D(\OUT_DATA_c[4] ), .PAD(OUT_DATA[4]));
    IIC_FIFO_1 IIC_FIFO_0 (.rx_dout_reg({\COREUART_0.rx_dout_reg[7] , 
        \COREUART_0.rx_dout_reg[6] , \COREUART_0.rx_dout_reg[5] , 
        \COREUART_0.rx_dout_reg[4] , \COREUART_0.rx_dout_reg[3] , 
        \COREUART_0.rx_dout_reg[2] , \COREUART_0.rx_dout_reg[1] , 
        \COREUART_0.rx_dout_reg[0] }), .Q_net_0({\Q_net_0[7] , 
        \Q_net_0[6] , \Q_net_0[5] , \Q_net_0[4] , \Q_net_0[3] , 
        \Q_net_0[2] , \Q_net_0[1] , \Q_net_0[0] }), .UART_control_0_WE(
        UART_control_0_WE), .PRESETN_c(PRESETN_c), .WEAP(
        \IIC_FIFO_0.WEAP ), .PCLK_c(PCLK_c), .AFULL(AFULL));
    INBUF \DATA_IN_1_pad[10]  (.PAD(DATA_IN_1[10]), .Y(
        \DATA_IN_1_c[10] ));
    OUTBUF \RX_data_pad[6]  (.D(\RX_data_c[6] ), .PAD(RX_data[6]));
    OUTBUF \OUT_DATA_pad[3]  (.D(\OUT_DATA_c[3] ), .PAD(OUT_DATA[3]));
    INBUF \DATA_IN_1_pad[8]  (.PAD(DATA_IN_1[8]), .Y(\DATA_IN_1_c[8] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Q_pad[4]  (.D(\Q_c[4] ), .PAD(Q[4]));
    INBUF \DATA_IN_1_pad[3]  (.PAD(DATA_IN_1[3]), .Y(\DATA_IN_1_c[3] ));
    OUTBUF \OUT_DATA_pad[23]  (.D(\OUT_DATA_c[23] ), .PAD(OUT_DATA[23])
        );
    OUTBUF \OUT_DATA_pad[1]  (.D(\OUT_DATA_c[1] ), .PAD(OUT_DATA[1]));
    INBUF \DATA_IN_1_pad[1]  (.PAD(DATA_IN_1[1]), .Y(\DATA_IN_1_c[1] ));
    OUTBUF \OUT_DATA_pad[12]  (.D(\OUT_DATA_c[12] ), .PAD(OUT_DATA[12])
        );
    OUTBUF \OUT_DATA_pad[19]  (.D(\OUT_DATA_c[19] ), .PAD(OUT_DATA[19])
        );
    INBUF \DATA_IN_1_pad[2]  (.PAD(DATA_IN_1[2]), .Y(\DATA_IN_1_c[2] ));
    OUTBUF TX_pad (.D(TX_c), .PAD(TX));
    IIC_control_Z6 IIC_control_0 (.IIC_control_0_BIF_1_PWDATA({
        \IIC_control_0_BIF_1_PWDATA[7] , 
        \IIC_control_0_BIF_1_PWDATA[6] , 
        \IIC_control_0_BIF_1_PWDATA[5] , 
        \IIC_control_0_BIF_1_PWDATA[4] , 
        \IIC_control_0_BIF_1_PWDATA[3] , 
        \IIC_control_0_BIF_1_PWDATA[2] , 
        \IIC_control_0_BIF_1_PWDATA[1] , 
        \IIC_control_0_BIF_1_PWDATA[0] }), .IIC_control_0_BIF_1_PADDR({
        \IIC_control_0_BIF_1_PADDR[3] , \IIC_control_0_BIF_1_PADDR[2] })
        , .INA220_DATA_2({\INA220_DATA_2[7] , \INA220_DATA_2[6] , 
        \INA220_DATA_2[5] , \INA220_DATA_2[4] , \INA220_DATA_2[3] , 
        \INA220_DATA_2[2] , \INA220_DATA_2[1] , \INA220_DATA_2[0] }), 
        .COREI2C_0_INT_0(\COREI2C_0_INT[0] ), .Q_net_0({\Q_net_0[7] , 
        \Q_net_0[6] , \Q_net_0[5] , \Q_net_0[4] , \Q_net_0[3] , 
        \Q_net_0[2] , \Q_net_0[1] , \Q_net_0[0] }), .PRDATA_0_iv_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .seradr0_m({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .PRDATA_iv_1({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] }), 
        .PRDATA_iv_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[3] }), 
        .SCLO_int(SCLO_int), .OUT_EN(\IIC_control_0.OUT_EN ), 
        .IIC_control_0_BIF_1_PENABLE(IIC_control_0_BIF_1_PENABLE), 
        .IIC_control_0_BIF_1_PWRITE(IIC_control_0_BIF_1_PWRITE), 
        .WE_OUT(WE_OUT), .AFULL(AFULL), .IIC_control_0_BIF_1_PSELx(
        IIC_control_0_BIF_1_PSELx), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c), .WEAP(\IIC_FIFO_0.WEAP ));
    OUTBUF \Q_pad[2]  (.D(\Q_c[2] ), .PAD(Q[2]));
    INBUF \DATA_IN_1_pad[0]  (.PAD(DATA_IN_1[0]), .Y(\DATA_IN_1_c[0] ));
    OUTBUF \OUT_DATA_pad[21]  (.D(\OUT_DATA_c[21] ), .PAD(OUT_DATA[21])
        );
    OUTBUF \RX_data_pad[4]  (.D(\RX_data_c[4] ), .PAD(RX_data[4]));
    Top_0_COREUART_1_COREUART_1s_1s_0s_15s_0s_0s COREUART_1 (
        .rx_dout_reg({\COREUART_1.rx_dout_reg[7] , 
        \COREUART_1.rx_dout_reg[6] , \COREUART_1.rx_dout_reg[5] , 
        \COREUART_1.rx_dout_reg[4] , \COREUART_1.rx_dout_reg[3] , 
        \COREUART_1.rx_dout_reg[2] , \COREUART_1.rx_dout_reg[1] , 
        \COREUART_1.rx_dout_reg[0] }), .TX_c(TX_c), .PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .COREUART_1_RXRDY(
        COREUART_1_RXRDY));
    INBUF RX_pad (.PAD(RX), .Y(RX_c));
    OUTBUF \OUT_DATA_pad[15]  (.D(\OUT_DATA_c[15] ), .PAD(OUT_DATA[15])
        );
    OUTBUF \OUT_DATA_pad[13]  (.D(\OUT_DATA_c[13] ), .PAD(OUT_DATA[13])
        );
    UART_control UART_control_0 (.UART_control_0_WE(UART_control_0_WE), 
        .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), .WEN_c(WEN_c), 
        .IIC_FIFO_1_EMPTY(IIC_FIFO_1_EMPTY), .COREUART_0_TXRDY_i_0(
        COREUART_0_TXRDY_i_0), .UART_control_0_RE(UART_control_0_RE), 
        .COREUART_0_RXRDY(COREUART_0_RXRDY));
    OUTBUF \Q_pad[5]  (.D(\Q_c[5] ), .PAD(Q[5]));
    OUTBUF \Q_pad[6]  (.D(\Q_c[6] ), .PAD(Q[6]));
    INBUF \DATA_IN_1_pad[9]  (.PAD(DATA_IN_1[9]), .Y(\DATA_IN_1_c[9] ));
    INBUF \DATA_IN_1_pad[12]  (.PAD(DATA_IN_1[12]), .Y(
        \DATA_IN_1_c[12] ));
    GND GND_i (.Y(GND));
    uart_test uart_test_0 (.rx_dout_reg({\COREUART_1.rx_dout_reg[7] , 
        \COREUART_1.rx_dout_reg[6] , \COREUART_1.rx_dout_reg[5] , 
        \COREUART_1.rx_dout_reg[4] , \COREUART_1.rx_dout_reg[3] , 
        \COREUART_1.rx_dout_reg[2] , \COREUART_1.rx_dout_reg[1] , 
        \COREUART_1.rx_dout_reg[0] }), .RX_data_c({\RX_data_c[7] , 
        \RX_data_c[6] , \RX_data_c[5] , \RX_data_c[4] , \RX_data_c[3] , 
        \RX_data_c[2] , \RX_data_c[1] , \RX_data_c[0] }), 
        .COREUART_1_RXRDY(COREUART_1_RXRDY), .PRESETN_c(PRESETN_c), 
        .PCLK_c(PCLK_c));
    OUTBUF \RX_data_pad[0]  (.D(\RX_data_c[0] ), .PAD(RX_data[0]));
    OUTBUF \OUT_DATA_pad[11]  (.D(\OUT_DATA_c[11] ), .PAD(OUT_DATA[11])
        );
    OUTBUF \RX_data_pad[7]  (.D(\RX_data_c[7] ), .PAD(RX_data[7]));
    OUTBUF \RX_data_pad[1]  (.D(\RX_data_c[1] ), .PAD(RX_data[1]));
    OUTBUF \OUT_DATA_pad[7]  (.D(\OUT_DATA_c[7] ), .PAD(OUT_DATA[7]));
    OUTBUF \OUT_DATA_pad[18]  (.D(\OUT_DATA_c[18] ), .PAD(OUT_DATA[18])
        );
    OUTBUF WEN_pad (.D(WEN_c), .PAD(WEN));
    INBUF \DATA_IN_1_pad[14]  (.PAD(DATA_IN_1[14]), .Y(
        \DATA_IN_1_c[14] ));
    OUTBUF \Q_pad[3]  (.D(\Q_c[3] ), .PAD(Q[3]));
    OUTBUF \OUT_DATA_pad[5]  (.D(\OUT_DATA_c[5] ), .PAD(OUT_DATA[5]));
    INBUF \DATA_IN_1_pad[4]  (.PAD(DATA_IN_1[4]), .Y(\DATA_IN_1_c[4] ));
    CoreAPB3_Z1_0 CoreAPB3_1 (.sersta_i_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] ), .serdat({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[6] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[5] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[4] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[3] }), .seradr0_m({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .PRDATA_0_iv_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .I2C_slave_0_BIF_1_PRDATA({\I2C_slave_0_BIF_1_PRDATA[7] , 
        \I2C_slave_0_BIF_1_PRDATA[6] , \I2C_slave_0_BIF_1_PRDATA[5] , 
        \I2C_slave_0_BIF_1_PRDATA[4] , \I2C_slave_0_BIF_1_PRDATA[3] , 
        \I2C_slave_0_BIF_1_PRDATA[2] , \I2C_slave_0_BIF_1_PRDATA[1] , 
        \I2C_slave_0_BIF_1_PRDATA[0] }), .PRDATA_iv_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] ), 
        .PRDATA_iv_1_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] ), 
        .N_1443_i(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443_i ), 
        .N_401(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_401 ), .N_350(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_350 ), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), .N_403(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_403 ), .N_404(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_404 ), .N_405(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_405 ), .N_411(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_411 ), .N_412(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_412 ), .N_413(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_413 ), .N_407(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_407 ), .N_408(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_408 ), .N_409(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_409 ), .N_400(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_400 ));
    OUTBUF \OUT_DATA_pad[2]  (.D(\OUT_DATA_c[2] ), .PAD(OUT_DATA[2]));
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    OUTBUF \OUT_DATA_pad[16]  (.D(\OUT_DATA_c[16] ), .PAD(OUT_DATA[16])
        );
    OUTBUF \RX_data_pad[2]  (.D(\RX_data_c[2] ), .PAD(RX_data[2]));
    INBUF \DATA_IN_1_pad[13]  (.PAD(DATA_IN_1[13]), .Y(
        \DATA_IN_1_c[13] ));
    INBUF \DATA_IN_1_pad[11]  (.PAD(DATA_IN_1[11]), .Y(
        \DATA_IN_1_c[11] ));
    OUTBUF \RX_data_pad[5]  (.D(\RX_data_c[5] ), .PAD(RX_data[5]));
    OUTBUF \OUT_DATA_pad[0]  (.D(\OUT_DATA_c[0] ), .PAD(OUT_DATA[0]));
    INBUF \DATA_IN_1_pad[15]  (.PAD(DATA_IN_1[15]), .Y(
        \DATA_IN_1_c[15] ));
    OUTBUF \Q_pad[0]  (.D(\Q_c[0] ), .PAD(Q[0]));
    CLKBUF PRESETN_pad (.PAD(PRESETN), .Y(PRESETN_c));
    IIC_FIFO_0 IIC_FIFO_1 (.INA220_DATA_2({\INA220_DATA_2[7] , 
        \INA220_DATA_2[6] , \INA220_DATA_2[5] , \INA220_DATA_2[4] , 
        \INA220_DATA_2[3] , \INA220_DATA_2[2] , \INA220_DATA_2[1] , 
        \INA220_DATA_2[0] }), .Q_c({\Q_c[7] , \Q_c[6] , \Q_c[5] , 
        \Q_c[4] , \Q_c[3] , \Q_c[2] , \Q_c[1] , \Q_c[0] }), 
        .UART_control_0_RE(UART_control_0_RE), .WE_OUT(WE_OUT), 
        .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), .IIC_FIFO_1_EMPTY(
        IIC_FIFO_1_EMPTY));
    Top_0_COREI2C_0_COREI2C_Z2 COREI2C_0 (.COREI2C_0_INT_0(
        \COREI2C_0_INT[0] ), .PRDATA_0_iv_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .PRDATA_iv_1({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] }), 
        .PRDATA_iv_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[3] }), 
        .SDAO_0_0(\SDAO_0[0] ), .seradr0_m({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .IIC_control_0_BIF_1_PWDATA({\IIC_control_0_BIF_1_PWDATA[7] , 
        \IIC_control_0_BIF_1_PWDATA[6] , 
        \IIC_control_0_BIF_1_PWDATA[5] , 
        \IIC_control_0_BIF_1_PWDATA[4] , 
        \IIC_control_0_BIF_1_PWDATA[3] , 
        \IIC_control_0_BIF_1_PWDATA[2] , 
        \IIC_control_0_BIF_1_PWDATA[1] , 
        \IIC_control_0_BIF_1_PWDATA[0] }), .IIC_control_0_BIF_1_PADDR({
        \IIC_control_0_BIF_1_PADDR[3] , \IIC_control_0_BIF_1_PADDR[2] })
        , .SCLO_int(SCLO_int), .SDA_d(SDA_d), .OUT_EN_0(
        \IIC_control_0.OUT_EN ), .OUT_EN(\I2C_slave_0.OUT_EN ), 
        .SDA_in(SDA_in), .IIC_control_0_BIF_1_PSELx(
        IIC_control_0_BIF_1_PSELx), .IIC_control_0_BIF_1_PENABLE(
        IIC_control_0_BIF_1_PENABLE), .IIC_control_0_BIF_1_PWRITE(
        IIC_control_0_BIF_1_PWRITE), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    OUTBUF \OUT_DATA_pad[20]  (.D(\OUT_DATA_c[20] ), .PAD(OUT_DATA[20])
        );
    OUTBUF \OUT_DATA_pad[8]  (.D(\OUT_DATA_c[8] ), .PAD(OUT_DATA[8]));
    OUTBUF GD_pad (.D(GND), .PAD(GD));
    BIBUF SDA_pad (.PAD(SDA), .D(SDA_d), .E(SDA_e), .Y(SDA_in));
    Top_0_COREI2C_1_COREI2C_Z4 COREI2C_1 (.SDAO_0_0(\SDAO_0[0] ), 
        .COREI2C_1_INT_0(\COREI2C_1_INT[0] ), .PRDATA_iv_1_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] ), 
        .PRDATA_iv_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] ), 
        .PRDATA_0_iv_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .serdat({\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[6] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[5] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[4] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.serdat[3] }), .seradr0_m({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .sersta_i_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] ), 
        .I2C_slave_0_BIF_1_PWDATA({\I2C_slave_0_BIF_1_PWDATA[7] , 
        \I2C_slave_0_BIF_1_PWDATA[6] , \I2C_slave_0_BIF_1_PWDATA[5] , 
        \I2C_slave_0_BIF_1_PWDATA[4] , \I2C_slave_0_BIF_1_PWDATA[3] , 
        \I2C_slave_0_BIF_1_PWDATA[2] , \I2C_slave_0_BIF_1_PWDATA[1] , 
        \I2C_slave_0_BIF_1_PWDATA[0] }), .I2C_slave_0_BIF_1_PADDR({
        \I2C_slave_0_BIF_1_PADDR[3] , \I2C_slave_0_BIF_1_PADDR[2] }), 
        .N_1443_i(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443_i ), 
        .N_350(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_350 ), .N_400(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_400 ), .N_401(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_401 ), .N_403(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_403 ), .N_404(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_404 ), .N_405(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_405 ), .N_407(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_407 ), .N_408(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_408 ), .N_409(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_409 ), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), 
        .I2C_slave_0_BIF_1_PENABLE(I2C_slave_0_BIF_1_PENABLE), 
        .I2C_slave_0_BIF_1_PWRITE(I2C_slave_0_BIF_1_PWRITE), .N_413(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_413 ), .N_412(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_412 ), .N_411(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_411 ), .SDA_e(SDA_e), 
        .OUT_EN_0(\IIC_control_0.OUT_EN ), .OUT_EN(
        \I2C_slave_0.OUT_EN ), .SCLO_int(SCLO_int), .SDA_in(SDA_in), 
        .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    OUTBUF \RX_data_pad[3]  (.D(\RX_data_c[3] ), .PAD(RX_data[3]));
    OUTBUF \Q_pad[7]  (.D(\Q_c[7] ), .PAD(Q[7]));
    OUTBUF \OUT_DATA_pad[14]  (.D(\OUT_DATA_c[14] ), .PAD(OUT_DATA[14])
        );
    CLKBUF PCLK_pad (.PAD(PCLK), .Y(PCLK_c));
    Top_0_COREUART_0_COREUART_1s_1s_0s_15s_0s_0s COREUART_0 (
        .rx_dout_reg({\COREUART_0.rx_dout_reg[7] , 
        \COREUART_0.rx_dout_reg[6] , \COREUART_0.rx_dout_reg[5] , 
        \COREUART_0.rx_dout_reg[4] , \COREUART_0.rx_dout_reg[3] , 
        \COREUART_0.rx_dout_reg[2] , \COREUART_0.rx_dout_reg[1] , 
        \COREUART_0.rx_dout_reg[0] }), .Q_c({\Q_c[7] , \Q_c[6] , 
        \Q_c[5] , \Q_c[4] , \Q_c[3] , \Q_c[2] , \Q_c[1] , \Q_c[0] }), 
        .RX_c(RX_c), .COREUART_0_TXRDY_i_0(COREUART_0_TXRDY_i_0), 
        .TX_c(TX_c), .WEN_c(WEN_c), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c), .COREUART_0_RXRDY(COREUART_0_RXRDY));
    OUTBUF SCL_pad (.D(SCLO_int), .PAD(SCL));
    INBUF \DATA_IN_1_pad[6]  (.PAD(DATA_IN_1[6]), .Y(\DATA_IN_1_c[6] ));
    
endmodule
