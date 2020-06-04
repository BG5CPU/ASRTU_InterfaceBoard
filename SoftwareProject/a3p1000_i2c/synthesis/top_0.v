`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module I2C_slave_Z5(
       I2C_slave_0_BIF_1_PWDATA,
       I2C_slave_0_BIF_1_PADDR,
       INT_net_0_0,
       I2C_slave_0_BIF_1_PRDATA,
       data_1_c,
       data_in_1_c,
       I2C_slave_0_BIF_1_PSELx,
       SCLO_int,
       out_en,
       I2C_slave_0_BIF_1_PENABLE,
       PRESETN_c,
       PCLK_c,
       I2C_slave_0_BIF_1_PWRITE
    );
output [7:0] I2C_slave_0_BIF_1_PWDATA;
output [3:2] I2C_slave_0_BIF_1_PADDR;
input  INT_net_0_0;
input  [7:0] I2C_slave_0_BIF_1_PRDATA;
output [7:0] data_1_c;
input  [7:0] data_in_1_c;
output I2C_slave_0_BIF_1_PSELx;
input  SCLO_int;
output out_en;
output I2C_slave_0_BIF_1_PENABLE;
input  PRESETN_c;
input  PCLK_c;
output I2C_slave_0_BIF_1_PWRITE;

    wire N_3, \data_count[1]_net_1 , \data_count[0]_net_1 , PSEL_2_1, 
        un1_next_state_13, un1_next_state_14, un1_next_state_17, 
        PENABLE5_1, un1_next_state_15_0, un1_next_state_12_2, 
        PENABLE5_0, un1_next_state_6_1, un1_next_state_18, PSEL6_1, 
        N_186_1, un1_next_state_6, un1_PADDR21_0, N_185, m21_0, 
        \SR[5]_net_1 , \SR[6]_net_1 , data_count8_1, data_count8_0, 
        \data_count[2]_net_1 , \data_count[3]_net_1 , 
        un1_next_state_17_0, \next_state[1]_net_1 , 
        \next_state[3]_net_1 , \next_state[2]_net_1 , 
        \next_state[0]_net_1 , un1_current_state_13, 
        \current_state[1]_net_1 , \current_state[3]_net_1 , N_76, 
        N_83_mux, N_77_mux, \SR[4]_net_1 , \SR[0]_net_1 , 
        \SR[1]_net_1 , \SR[2]_net_1 , data_count8, un1_next_state_11_2, 
        \PADDR_1_RNO[2]_net_1 , N_184, N_186, un1_next_state_18_1, 
        PSEL6, un1_next_state_5, PENABLE5, un1_next_state_19, PSEL_2, 
        un1_PADDR21, \PADDR_1_RNO[3]_net_1 , N_189, N_187, 
        \PWDATA_3[4] , PADDR24, \PWDATA_3[5] , \PWDATA_3[7] , PADDR20, 
        un1_next_state_1, N_182, \PWDATA_3[0] , \PWDATA_3[1] , 
        \PWDATA_3[2] , \PWDATA_3[3] , \PWDATA_3[6] , \data_count_3[1] , 
        I_5, \data_count_3[2] , I_7, out_en_2, \count[1]_net_1 , N_78, 
        RW_en_net_1, N_82_mux, \count[0]_net_1 , N_81_mux, 
        \count[3]_net_1 , \count[2]_net_1 , N_58, count_n1, count_n2, 
        N_48, count_n3, N_46, N_43, N_45, \next_state_3[0] , 
        \current_state[0]_net_1 , N_69, N_89, \next_state_3[1] , 
        N_13_0, N_88_mux, \current_state[2]_net_1 , N_60, N_87_mux, 
        N_37, N_86_mux, N_28, N_85_mux, \SR[7]_net_1 , N_34, N_84_mux, 
        N_25, N_67, N_33, N_66, \SR[3]_net_1 , N_24, N_59, N_41, N_6_0, 
        \next_state_3[2] , N_16, N_31, N_23, un1_current_state_21, 
        N_11_0, N_14_0, un1_current_state_10, I_4, I_9, N_2, GND, VCC;
    
    NOR2 \next_state_RNITU2K_2[2]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_12_2));
    NOR3A \next_state_RNIMP581[0]  (.A(un1_next_state_17_0), .B(
        \next_state[2]_net_1 ), .C(\next_state[0]_net_1 ), .Y(
        un1_next_state_17));
    DFN1E1C0 \data[5]  (.D(I2C_slave_0_BIF_1_PRDATA[5]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[5]));
    NOR2B \PWDATA_RNO[5]  (.A(data_in_1_c[5]), .B(PADDR24), .Y(
        \PWDATA_3[5] ));
    MX2 \next_state_RNO_1[3]  (.A(N_33), .B(N_85_mux), .S(
        \SR[3]_net_1 ), .Y(N_37));
    NOR2A \count_RNO[3]  (.A(N_46), .B(data_count8), .Y(count_n3));
    NOR2B \PWDATA_RNO[4]  (.A(data_in_1_c[4]), .B(PADDR24), .Y(
        \PWDATA_3[4] ));
    MX2 \SR_RNITEUD1[7]  (.A(N_83_mux), .B(N_25), .S(\SR[7]_net_1 ), 
        .Y(N_33));
    DFN1C0 \current_state[2]  (.D(\next_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[2]_net_1 ));
    OA1C \next_state_RNO_0[0]  (.A(N_67), .B(\current_state[0]_net_1 ), 
        .C(\current_state[1]_net_1 ), .Y(N_69));
    XOR2 un3_data_count_I_7 (.A(N_3), .B(\data_count[2]_net_1 ), .Y(
        I_7));
    NOR2A \count_RNO[1]  (.A(N_81_mux), .B(data_count8), .Y(count_n1));
    MX2 \next_state_RNO_3[1]  (.A(N_85_mux), .B(N_84_mux), .S(
        data_count8), .Y(N_59));
    OA1 \PADDR_1_RNO_0[2]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[3]_net_1 ), .Y(N_184));
    AOI1B \next_state_RNIMP581_1[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[1]_net_1 ), .C(un1_next_state_6_1), .Y(PADDR24));
    XNOR2 \next_state_RNO_0[1]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(N_13_0));
    NOR3A \next_state_RNIMP581_0[0]  (.A(un1_next_state_18_1), .B(
        \next_state[1]_net_1 ), .C(\next_state[0]_net_1 ), .Y(
        un1_next_state_18));
    NOR2 \count_RNO[2]  (.A(N_48), .B(data_count8), .Y(count_n2));
    MX2A RW_en_RNO (.A(N_11_0), .B(N_14_0), .S(
        \current_state[3]_net_1 ), .Y(un1_current_state_21));
    NOR3C \current_state_RNI30O41[2]  (.A(\current_state[1]_net_1 ), 
        .B(\current_state[0]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        N_6_0));
    OR3 \next_state_RNI0DKC4[3]  (.A(un1_next_state_18), .B(
        un1_next_state_5), .C(PSEL6_1), .Y(PSEL6));
    OR3 PENABLE_RNO (.A(PENABLE5_0), .B(un1_next_state_19), .C(
        PENABLE5_1), .Y(PENABLE5));
    MX2 \next_state_RNO[2]  (.A(N_16), .B(N_31), .S(
        \current_state[3]_net_1 ), .Y(\next_state_3[2] ));
    DFN1C0 \next_state[1]  (.D(\next_state_3[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[1]_net_1 ));
    NOR3 RW_en_RNO_0 (.A(\current_state[1]_net_1 ), .B(
        \current_state[0]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        N_11_0));
    NOR2A \data_count_RNI35MV[3]  (.A(\data_count[2]_net_1 ), .B(
        \data_count[3]_net_1 ), .Y(data_count8_0));
    NOR3 \next_state_RNO_1[2]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[0]_net_1 ), .C(N_28), .Y(N_86_mux));
    DFN1E1C0 \SR[5]  (.D(I2C_slave_0_BIF_1_PRDATA[5]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[5]_net_1 ));
    DFN1E1C0 \data[4]  (.D(I2C_slave_0_BIF_1_PRDATA[4]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[4]));
    NOR3A \SR_RNINJ4J[4]  (.A(N_77_mux), .B(\SR[4]_net_1 ), .C(
        \SR[6]_net_1 ), .Y(N_23));
    DFN1C0 \data_count[3]  (.D(I_9), .CLK(INT_net_0_0), .CLR(PRESETN_c)
        , .Q(\data_count[3]_net_1 ));
    MX2C \next_state_RNO[0]  (.A(\current_state[0]_net_1 ), .B(N_69), 
        .S(N_89), .Y(\next_state_3[0] ));
    DFN1C0 \PADDR_1[3]  (.D(\PADDR_1_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(I2C_slave_0_BIF_1_PADDR[3]));
    DFN1C0 \next_state[0]  (.D(\next_state_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[0]_net_1 ));
    DFN1C0 \PWDATA[4]  (.D(\PWDATA_3[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[4]));
    NOR3C \current_state_RNI620H1[3]  (.A(\current_state[1]_net_1 ), 
        .B(\current_state[3]_net_1 ), .C(N_76), .Y(
        un1_current_state_13));
    NOR2B \PWDATA_RNO[7]  (.A(data_in_1_c[7]), .B(PADDR24), .Y(
        \PWDATA_3[7] ));
    NOR3B \SR_RNIU6VM[4]  (.A(N_77_mux), .B(m21_0), .C(\SR[4]_net_1 ), 
        .Y(N_83_mux));
    DFN1C0 \PWDATA[7]  (.D(\PWDATA_3[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[7]));
    GND GND_i (.Y(GND));
    DFN1C0 \PWDATA[0]  (.D(\PWDATA_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[0]));
    MX2 \PWDATA_RNO[2]  (.A(un1_PADDR21), .B(data_in_1_c[2]), .S(
        PADDR24), .Y(\PWDATA_3[2] ));
    DFN0C0 \count[0]  (.D(N_58), .CLK(SCLO_int), .CLR(PRESETN_c), .Q(
        \count[0]_net_1 ));
    NOR2B \next_state_RNIPQ2K[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(N_186_1));
    MX2 \next_state_RNO_2[0]  (.A(N_84_mux), .B(N_85_mux), .S(
        data_count8), .Y(N_66));
    MX2 \PWDATA_RNO[6]  (.A(un1_PADDR21), .B(data_in_1_c[6]), .S(
        PADDR24), .Y(\PWDATA_3[6] ));
    MX2 \next_state_RNO[3]  (.A(N_6_0), .B(N_87_mux), .S(
        \current_state[3]_net_1 ), .Y(N_41));
    DFN1E1C0 \data[1]  (.D(I2C_slave_0_BIF_1_PRDATA[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[1]));
    DFN1C0 PSEL (.D(PSEL_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PSELx));
    DFN1E1C0 \data[6]  (.D(I2C_slave_0_BIF_1_PRDATA[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[6]));
    MX2 \PWDATA_RNO[3]  (.A(PADDR20), .B(data_in_1_c[3]), .S(PADDR24), 
        .Y(\PWDATA_3[3] ));
    NOR2A \next_state_RNIQC4U[1]  (.A(un1_next_state_6_1), .B(
        \next_state[1]_net_1 ), .Y(un1_next_state_6));
    AX1E \count_RNO_2[3]  (.A(\count[1]_net_1 ), .B(\count[0]_net_1 ), 
        .C(\count[3]_net_1 ), .Y(N_45));
    INV un3_data_count_I_4 (.A(\data_count[0]_net_1 ), .Y(I_4));
    VCC VCC_i (.Y(VCC));
    NOR2B \PADDR_1_RNO_1[3]  (.A(N_182), .B(N_186_1), .Y(N_187));
    DFN1E1C0 \SR[2]  (.D(I2C_slave_0_BIF_1_PRDATA[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[2]_net_1 ));
    DFN1C0 \data_count[2]  (.D(\data_count_3[2] ), .CLK(INT_net_0_0), 
        .CLR(PRESETN_c), .Q(\data_count[2]_net_1 ));
    NOR3 \PADDR_1_RNO[2]  (.A(N_184), .B(N_185), .C(N_186), .Y(
        \PADDR_1_RNO[2]_net_1 ));
    OR2A \next_state_RNITU2K[2]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(N_182));
    NOR3B \SR_RNI7SPQ[6]  (.A(\SR[7]_net_1 ), .B(N_25), .C(
        \SR[6]_net_1 ), .Y(N_84_mux));
    MX2 \PWDATA_RNO[0]  (.A(PADDR20), .B(data_in_1_c[0]), .S(PADDR24), 
        .Y(\PWDATA_3[0] ));
    DFN1E1C0 \data[7]  (.D(I2C_slave_0_BIF_1_PRDATA[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[7]));
    NOR2B \next_state_RNIMP581[2]  (.A(un1_next_state_18_1), .B(
        N_186_1), .Y(un1_next_state_19));
    DFN1C0 PENABLE (.D(PENABLE5), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PENABLE));
    NOR2A \next_state_RNIRS2K[1]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(N_185));
    NOR2A \count_RNO[0]  (.A(N_82_mux), .B(data_count8), .Y(N_58));
    DFN1E1C0 \data[0]  (.D(I2C_slave_0_BIF_1_PRDATA[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[0]));
    DFN1C0 \PWDATA[1]  (.D(\PWDATA_3[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[1]));
    NOR2A \current_state_RNI53GO[3]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(N_89));
    DFN0C0 \count[1]  (.D(count_n1), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\count[1]_net_1 ));
    MX2C \next_state_RNO[1]  (.A(N_13_0), .B(N_88_mux), .S(N_89), .Y(
        \next_state_3[1] ));
    DFN0C0 \count[3]  (.D(count_n3), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\count[3]_net_1 ));
    AO1 PENABLE_RNO_0 (.A(un1_next_state_6_1), .B(un1_next_state_15_0), 
        .C(un1_next_state_18), .Y(PENABLE5_0));
    NOR2A \data_count_RNO[2]  (.A(I_7), .B(data_count8), .Y(
        \data_count_3[2] ));
    NOR3A \SR_RNI7SPQ_0[6]  (.A(\SR[7]_net_1 ), .B(\SR[6]_net_1 ), .C(
        N_34), .Y(N_85_mux));
    NOR2A \next_state_RNITU2K_1[2]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_18_1));
    MX2B \count_RNO_0[3]  (.A(N_43), .B(N_45), .S(\count[2]_net_1 ), 
        .Y(N_46));
    OA1C \count_RNO_0[0]  (.A(N_78), .B(\count[1]_net_1 ), .C(
        \count[0]_net_1 ), .Y(N_82_mux));
    NOR2B \next_state_RNIST2K[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_17_0));
    NOR2A \next_state_RNIQC4U[3]  (.A(un1_next_state_11_2), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_5));
    NOR3 \next_state_RNIPB4U[0]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[3]_net_1 ), .Y(
        un1_next_state_1));
    NOR2A \PADDR_1_RNO_1[2]  (.A(N_186_1), .B(\next_state[2]_net_1 ), 
        .Y(N_186));
    NOR2B un3_data_count_I_6 (.A(\data_count[1]_net_1 ), .B(
        \data_count[0]_net_1 ), .Y(N_3));
    XOR2 un3_data_count_I_5 (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .Y(I_5));
    NOR2A \current_state_RNI620H1_0[3]  (.A(N_6_0), .B(
        \current_state[3]_net_1 ), .Y(un1_current_state_10));
    MX2 \PWDATA_RNO[1]  (.A(PADDR20), .B(data_in_1_c[1]), .S(PADDR24), 
        .Y(\PWDATA_3[1] ));
    MX2 \next_state_RNO_1[0]  (.A(N_33), .B(N_66), .S(\SR[3]_net_1 ), 
        .Y(N_67));
    NOR2A \next_state_RNIPQ2K_0[0]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(un1_next_state_15_0));
    OR3 PSEL_RNO (.A(PSEL_2_1), .B(un1_next_state_19), .C(PSEL6), .Y(
        PSEL_2));
    NOR2B \data_count_RNI26CV1[1]  (.A(data_count8_1), .B(
        data_count8_0), .Y(data_count8));
    AO1C \SR_RNIMI4J_0[5]  (.A(\SR[5]_net_1 ), .B(\SR[4]_net_1 ), .C(
        N_77_mux), .Y(N_34));
    AO1 \next_state_RNIF5A62[0]  (.A(un1_next_state_15_0), .B(
        un1_next_state_12_2), .C(un1_next_state_1), .Y(PADDR20));
    OR2 \next_state_RNIOR581[1]  (.A(N_185), .B(un1_next_state_6_1), 
        .Y(un1_PADDR21_0));
    DFN1E1C0 \SR[4]  (.D(I2C_slave_0_BIF_1_PRDATA[4]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[4]_net_1 ));
    DFN1C0 PWRITE (.D(PSEL6), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_slave_0_BIF_1_PWRITE));
    DFN1C0 \data_count[1]  (.D(\data_count_3[1] ), .CLK(INT_net_0_0), 
        .CLR(PRESETN_c), .Q(\data_count[1]_net_1 ));
    DFN1E1C0 \data[2]  (.D(I2C_slave_0_BIF_1_PRDATA[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[2]));
    DFN1E0C0 RW_en (.D(N_16), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_current_state_21), .Q(RW_en_net_1));
    AO1 \next_state_RNIG6A62[1]  (.A(un1_next_state_12_2), .B(N_186_1), 
        .C(un1_next_state_6), .Y(PSEL6_1));
    OR3 PSEL_RNO_0 (.A(un1_next_state_13), .B(un1_next_state_14), .C(
        un1_next_state_17), .Y(PSEL_2_1));
    DFN1P0 \PWDATA[6]  (.D(\PWDATA_3[6] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[6]));
    DFN1E1C0 \SR[1]  (.D(I2C_slave_0_BIF_1_PRDATA[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[1]_net_1 ));
    AND3 un3_data_count_I_8 (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .C(\data_count[2]_net_1 ), .Y(N_2));
    DFN1E1C0 \SR[3]  (.D(I2C_slave_0_BIF_1_PRDATA[3]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[3]_net_1 ));
    AXO6 \next_state_RNO_0[3]  (.A(N_37), .B(\current_state[1]_net_1 ), 
        .C(N_76), .Y(N_87_mux));
    NOR2 \next_state_RNIRS2K_0[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(un1_next_state_11_2));
    DFN1E1C0 \SR[0]  (.D(I2C_slave_0_BIF_1_PRDATA[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[0]_net_1 ));
    AO12 RW_en_RNO_1 (.A(\current_state[2]_net_1 ), .B(
        \current_state[1]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        N_14_0));
    MX2 \next_state_RNO_2[1]  (.A(N_24), .B(N_59), .S(\SR[3]_net_1 ), 
        .Y(N_60));
    NOR2B \SR_RNIF7L7[5]  (.A(\SR[5]_net_1 ), .B(\SR[6]_net_1 ), .Y(
        m21_0));
    AX1C \current_state_RNI30O41_0[2]  (.A(\current_state[1]_net_1 ), 
        .B(\current_state[0]_net_1 ), .C(\current_state[2]_net_1 ), .Y(
        N_16));
    NOR3 \SR_RNI9DFB[0]  (.A(\SR[0]_net_1 ), .B(\SR[1]_net_1 ), .C(
        \SR[2]_net_1 ), .Y(N_77_mux));
    DFN1E1C0 \SR[7]  (.D(I2C_slave_0_BIF_1_PRDATA[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[7]_net_1 ));
    AO1 PENABLE_RNO_1 (.A(un1_next_state_15_0), .B(un1_next_state_12_2)
        , .C(un1_next_state_17), .Y(PENABLE5_1));
    DFN1C0 \next_state[3]  (.D(N_41), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\next_state[3]_net_1 ));
    NOR2A \data_count_RNO[1]  (.A(I_5), .B(data_count8), .Y(
        \data_count_3[1] ));
    NOR2 \current_state_RNI20GO[2]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[2]_net_1 ), .Y(N_76));
    DFN1C0 \current_state[0]  (.D(\next_state[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[0]_net_1 ));
    NOR3 \PADDR_1_RNO_0[3]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(N_182), .Y(N_189));
    MX2B \next_state_RNO_0[2]  (.A(N_86_mux), .B(
        \current_state[1]_net_1 ), .S(\current_state[2]_net_1 ), .Y(
        N_31));
    DFN1C0 \PWDATA[5]  (.D(\PWDATA_3[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[5]));
    AX1E \count_RNO_0[2]  (.A(\count[1]_net_1 ), .B(\count[0]_net_1 ), 
        .C(\count[2]_net_1 ), .Y(N_48));
    XOR2 un3_data_count_I_9 (.A(N_2), .B(\data_count[3]_net_1 ), .Y(
        I_9));
    NOR2B \next_state_RNITU2K_0[2]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(un1_next_state_6_1));
    NOR3A \SR_RNIMI4J[5]  (.A(N_77_mux), .B(\SR[4]_net_1 ), .C(
        \SR[5]_net_1 ), .Y(N_25));
    DFN1C0 \data_count[0]  (.D(I_4), .CLK(INT_net_0_0), .CLR(PRESETN_c)
        , .Q(\data_count[0]_net_1 ));
    MX2 \SR_RNIUFUD1[7]  (.A(N_83_mux), .B(N_23), .S(\SR[7]_net_1 ), 
        .Y(N_24));
    AX1 out_en_RNO (.A(\count[1]_net_1 ), .B(N_78), .C(RW_en_net_1), 
        .Y(out_en_2));
    NOR3 \PADDR_1_RNO[3]  (.A(N_189), .B(un1_next_state_18_1), .C(
        N_187), .Y(\PADDR_1_RNO[3]_net_1 ));
    DFN0C0 \count[2]  (.D(count_n2), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\count[2]_net_1 ));
    DFN1C0 \current_state[1]  (.D(\next_state[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[1]_net_1 ));
    NOR3C PSEL_RNO_1 (.A(\next_state[3]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(un1_next_state_11_2), .Y(
        un1_next_state_13));
    NOR2B \count_RNO_1[3]  (.A(\count[3]_net_1 ), .B(\count[1]_net_1 ), 
        .Y(N_43));
    AXOI4 \count_RNO_0[1]  (.A(N_78), .B(\count[0]_net_1 ), .C(
        \count[1]_net_1 ), .Y(N_81_mux));
    NOR3A \next_state_RNO_1[1]  (.A(N_60), .B(\current_state[1]_net_1 )
        , .C(\current_state[0]_net_1 ), .Y(N_88_mux));
    DFN0C0 out_en_inst_1 (.D(out_en_2), .CLK(SCLO_int), .CLR(PRESETN_c)
        , .Q(out_en));
    DFN1C0 \current_state[3]  (.D(\next_state[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[3]_net_1 ));
    DFN1P0 \PWDATA[2]  (.D(\PWDATA_3[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[2]));
    AO1 \next_state_RNIELBG2[2]  (.A(un1_next_state_12_2), .B(N_186_1), 
        .C(un1_PADDR21_0), .Y(un1_PADDR21));
    NOR2A \count_RNIHB8G[2]  (.A(\count[3]_net_1 ), .B(
        \count[2]_net_1 ), .Y(N_78));
    DFN1C0 \PWDATA[3]  (.D(\PWDATA_3[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_slave_0_BIF_1_PWDATA[3]));
    NOR3A PSEL_RNO_2 (.A(\next_state[2]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[3]_net_1 ), .Y(
        un1_next_state_14));
    DFN1C0 \PADDR_1[2]  (.D(\PADDR_1_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(I2C_slave_0_BIF_1_PADDR[2]));
    MX2 \next_state_RNO_2[2]  (.A(N_24), .B(N_84_mux), .S(
        \SR[3]_net_1 ), .Y(N_28));
    DFN1E1C0 \SR[6]  (.D(I2C_slave_0_BIF_1_PRDATA[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_10), .Q(\SR[6]_net_1 ));
    NOR2A \data_count_RNIV0MV[1]  (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .Y(data_count8_1));
    DFN1C0 \next_state[2]  (.D(\next_state_3[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\next_state[2]_net_1 ));
    DFN1E1C0 \data[3]  (.D(I2C_slave_0_BIF_1_PRDATA[3]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_13), .Q(data_1_c[3]));
    
endmodule


module CAPB3II(
       PRDATA_iv_1_2,
       PRDATA_iv_1_4,
       PRDATA_iv_1_0,
       sercon_m_0,
       I2C_test_0_BIF_1_PRDATA,
       PRDATA_iv_0_1_2,
       PRDATA_iv_0_1_0,
       PRDATA_iv_0_0_2,
       PRDATA_iv_0_0_0,
       PRDATA_iv_0_0_d0,
       PRDATA_iv_0_2,
       PRDATA_0_iv_0_0_d0,
       seradr0_m_0,
       PRDATA_0_iv_0_0,
       N_190,
       I2C_test_0_BIF_1_PSELx,
       N_193
    );
input  PRDATA_iv_1_2;
input  PRDATA_iv_1_4;
input  PRDATA_iv_1_0;
input  sercon_m_0;
output [7:0] I2C_test_0_BIF_1_PRDATA;
input  PRDATA_iv_0_1_2;
input  PRDATA_iv_0_1_0;
input  PRDATA_iv_0_0_2;
input  PRDATA_iv_0_0_0;
input  PRDATA_iv_0_0_d0;
input  PRDATA_iv_0_2;
input  PRDATA_0_iv_0_0_d0;
input  seradr0_m_0;
input  [1:0] PRDATA_0_iv_0_0;
input  N_190;
input  I2C_test_0_BIF_1_PSELx;
input  N_193;

    wire GND, VCC;
    
    OA1 PRDATA_7 (.A(PRDATA_iv_0_2), .B(PRDATA_iv_1_4), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[7]));
    OA1 PRDATA_5 (.A(PRDATA_iv_0_0_d0), .B(PRDATA_iv_1_2), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[5]));
    OA1 PRDATA_4 (.A(PRDATA_iv_0_0_0), .B(PRDATA_iv_0_1_0), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[4]));
    VCC VCC_i (.Y(VCC));
    OA1 PRDATA_6 (.A(PRDATA_iv_0_0_2), .B(PRDATA_iv_0_1_2), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[6]));
    OA1 PRDATA_0 (.A(N_193), .B(PRDATA_0_iv_0_0[0]), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[0]));
    OA1 PRDATA_3 (.A(sercon_m_0), .B(PRDATA_iv_1_0), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[3]));
    OA1 PRDATA_2 (.A(seradr0_m_0), .B(PRDATA_0_iv_0_0_d0), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[2]));
    OA1 PRDATA_1 (.A(N_190), .B(PRDATA_0_iv_0_0[1]), .C(
        I2C_test_0_BIF_1_PSELx), .Y(I2C_test_0_BIF_1_PRDATA[1]));
    GND GND_i (.Y(GND));
    
endmodule


module CoreAPB3_Z1(
       PRDATA_0_iv_0_0,
       seradr0_m_0,
       PRDATA_0_iv_0_0_d0,
       PRDATA_iv_0_0_d0,
       PRDATA_iv_0_2,
       PRDATA_iv_0_0_2,
       PRDATA_iv_0_0_0,
       PRDATA_iv_0_1_2,
       PRDATA_iv_0_1_0,
       I2C_test_0_BIF_1_PRDATA,
       sercon_m_0,
       PRDATA_iv_1_2,
       PRDATA_iv_1_4,
       PRDATA_iv_1_0,
       N_193,
       I2C_test_0_BIF_1_PSELx,
       N_190
    );
input  [1:0] PRDATA_0_iv_0_0;
input  seradr0_m_0;
input  PRDATA_0_iv_0_0_d0;
input  PRDATA_iv_0_0_d0;
input  PRDATA_iv_0_2;
input  PRDATA_iv_0_0_2;
input  PRDATA_iv_0_0_0;
input  PRDATA_iv_0_1_2;
input  PRDATA_iv_0_1_0;
output [7:0] I2C_test_0_BIF_1_PRDATA;
input  sercon_m_0;
input  PRDATA_iv_1_2;
input  PRDATA_iv_1_4;
input  PRDATA_iv_1_0;
input  N_193;
input  I2C_test_0_BIF_1_PSELx;
input  N_190;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAPB3II CAPB3IIII (.PRDATA_iv_1_2(PRDATA_iv_1_2), .PRDATA_iv_1_4(
        PRDATA_iv_1_4), .PRDATA_iv_1_0(PRDATA_iv_1_0), .sercon_m_0(
        sercon_m_0), .I2C_test_0_BIF_1_PRDATA({
        I2C_test_0_BIF_1_PRDATA[7], I2C_test_0_BIF_1_PRDATA[6], 
        I2C_test_0_BIF_1_PRDATA[5], I2C_test_0_BIF_1_PRDATA[4], 
        I2C_test_0_BIF_1_PRDATA[3], I2C_test_0_BIF_1_PRDATA[2], 
        I2C_test_0_BIF_1_PRDATA[1], I2C_test_0_BIF_1_PRDATA[0]}), 
        .PRDATA_iv_0_1_2(PRDATA_iv_0_1_2), .PRDATA_iv_0_1_0(
        PRDATA_iv_0_1_0), .PRDATA_iv_0_0_2(PRDATA_iv_0_0_2), 
        .PRDATA_iv_0_0_0(PRDATA_iv_0_0_0), .PRDATA_iv_0_0_d0(
        PRDATA_iv_0_0_d0), .PRDATA_iv_0_2(PRDATA_iv_0_2), 
        .PRDATA_0_iv_0_0_d0(PRDATA_0_iv_0_0_d0), .seradr0_m_0(
        seradr0_m_0), .PRDATA_0_iv_0_0({PRDATA_0_iv_0_0[1], 
        PRDATA_0_iv_0_0[0]}), .N_190(N_190), .I2C_test_0_BIF_1_PSELx(
        I2C_test_0_BIF_1_PSELx), .N_193(N_193));
    
endmodule


module I2C_test_Z6(
       I2C_test_0_BIF_1_PWDATA,
       I2C_test_0_BIF_1_PADDR,
       sercon_0,
       I2C_test_0_BIF_1_PRDATA,
       data_0_c,
       data_in_0_c,
       ADDR_c,
       S_DATA_c,
       I2C_test_0_BIF_1_PSELx,
       SCLO_int,
       out_en,
       I2C_test_0_BIF_1_PWRITE,
       PRESETN_c,
       PCLK_c,
       I2C_test_0_BIF_1_PENABLE
    );
output [7:0] I2C_test_0_BIF_1_PWDATA;
output [3:2] I2C_test_0_BIF_1_PADDR;
input  sercon_0;
input  [7:0] I2C_test_0_BIF_1_PRDATA;
output [7:0] data_0_c;
input  [7:0] data_in_0_c;
input  [7:0] ADDR_c;
output [7:0] S_DATA_c;
output I2C_test_0_BIF_1_PSELx;
input  SCLO_int;
output out_en;
output I2C_test_0_BIF_1_PWRITE;
input  PRESETN_c;
input  PCLK_c;
output I2C_test_0_BIF_1_PENABLE;

    wire N_3, \data_count[1]_net_1 , \data_count[0]_net_1 , 
        \PWDATA_5_i_1[6] , N_190, N_195, N_177, \PWDATA_5_1_0[2] , 
        \PWDATA_5_1_a6_0[2] , N_245, N_182, \PWDATA_5_1_0[4] , 
        \PWDATA_5_1_a6_0[4] , N_128, N_186, \next_state_3_i_i_0_0[4] , 
        \next_state_3_i_i_0_a6_0_1[4] , N_84, N_167, 
        \next_state_3_0_i_0_1[3] , N_162, \current_state[4]_net_1 , 
        N_161, \next_state_3_i_0_0_1[1] , N_159, N_157, N_130, 
        \next_state_3_i_0_0_3[0] , \next_state_3_i_0_0_0[0] , N_155, 
        N_152, N_244, N_153, \next_state_3_i_0_3[2] , 
        \next_state_3_i_0_1[2] , N_172, N_252, 
        \next_state_3_i_0_a6_0[2] , N_127, \next_state_3_i_0_0[2] , 
        \current_state[3]_net_1 , N_114, \next_state_3_i_i_0_a6_2[4] , 
        \next_state_3_i_i_0_a6_1[4] , N_100, N_112, PSEL_2_i_1, N_200, 
        N_209, N_210, \next_state_3_i_0_0_a6_0_0[1] , N_103, 
        \next_state_3_0_i_0_a6_0[3] , \current_state[1]_net_1 , 
        PENABLE5_0_1, N_231, N_229, PENABLE5_0_0, N_214, PSEL6_i_2, 
        N_199, N_197, N_233, \next_state_3_i_0_0_a6_3_0[0] , 
        \next_state_3_i_0_0_o6_0[0] , N_230, 
        un1_current_state_5_0_a5_0_a6_0, \current_state[0]_net_1 , 
        un1_current_state_31_0_1, \current_state[2]_net_1 , 
        un1_current_state_31_0_0_0, \next_state_3_i_0_5_tz_0[2] , 
        N_248, \next_state_3_i_0_0_a6_1_1[1] , N_86, 
        \next_state_3_i_0_0_a6_2_0[0] , ACK_count_n1_i_0, 
        \ACK_count[0]_net_1 , \ACK_count[1]_net_1 , 
        \next_state[3]_net_1 , \next_state[0]_net_1 , 
        \next_state[2]_net_1 , \next_state[1]_net_1 , 
        \next_state[4]_net_1 , PSEL6_i_a6_0_0, 
        \next_state_3_i_0_0_a6_1_5_0[1] , \next_state_3_i_0_a4_1_0[2] , 
        N_12, N_105, \ACK_count[2]_net_1 , N_14, N_113, N_134_i, N_65, 
        \data_count[3]_net_1 , \data_count[2]_net_1 , PENABLE5, N_213, 
        N_212, N_30, N_191, N_192, \PWDATA_5[5] , N_188, N_187, N_189, 
        \PWDATA_5[4] , N_184, N_185, \PWDATA_5[2] , N_180, N_181, N_10, 
        N_115, \ACK_count_RNO[0]_net_1 , N_85, N_107, N_196, N_101, 
        N_66, N_58, N_251, N_61, un1_current_state_31, N_176, N_33, 
        N_122, N_102, \next_state_RNO[1]_net_1 , 
        \next_state_RNO[0]_net_1 , N_156, N_159_5, N_110, N_136, N_147, 
        N_117, un1_current_state_5, \next_state_RNO[2]_net_1 , N_175, 
        \next_state_3_i_0_5[2] , N_31, N_133, N_250, 
        un1_current_state_11, N_238, N_68, N_20, PADDR27, N_120, 
        N_187_1, N_151, N_150, N_149, N_148, N_135_i, RW_en_net_1, 
        \ACK_count[3]_net_1 , N_63, N_218, N_55, N_50, N_43, N_34, 
        N_25, \data_count_3[2] , I_7_0, \data_count_3[1] , I_5_0, 
        \data_count_3[0] , I_9_0, N_2, GND, VCC;
    
    AO1 PENABLE_RNO_2 (.A(N_231), .B(N_229), .C(PENABLE5_0_0), .Y(
        PENABLE5_0_1));
    NOR2 \current_state_RNIJH7C[3]  (.A(N_84), .B(
        \current_state[3]_net_1 ), .Y(N_250));
    NOR2A \next_state_RNO_7[0]  (.A(S_DATA_c[7]), .B(N_86), .Y(
        \next_state_3_i_0_0_a6_2_0[0] ));
    NOR3A \next_state_RNO_5[4]  (.A(\current_state[4]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        \next_state_3_i_i_0_a6_0_1[4] ));
    DFN1E1C0 \data[5]  (.D(I2C_test_0_BIF_1_PRDATA[5]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[5]));
    OR3 \PWDATA_RNO[5]  (.A(N_188), .B(N_187), .C(N_189), .Y(
        \PWDATA_5[5] ));
    OR3 \next_state_RNO_1[3]  (.A(N_162), .B(\current_state[4]_net_1 ), 
        .C(N_161), .Y(\next_state_3_0_i_0_1[3] ));
    OR2B \ACK_count_RNIJ2EN[0]  (.A(\ACK_count[1]_net_1 ), .B(
        \ACK_count[0]_net_1 ), .Y(N_105));
    DFN0C0 \ACK_count[1]  (.D(N_10), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\ACK_count[1]_net_1 ));
    AO1 \next_state_RNO_2[4]  (.A(\next_state_3_i_i_0_a6_0_1[4] ), .B(
        N_84), .C(N_167), .Y(\next_state_3_i_i_0_0[4] ));
    NOR3 \next_state_RNO_3[4]  (.A(\current_state[4]_net_1 ), .B(N_100)
        , .C(N_112), .Y(\next_state_3_i_i_0_a6_1[4] ));
    OR3 \PWDATA_RNO[4]  (.A(N_184), .B(\PWDATA_5_1_0[4] ), .C(N_185), 
        .Y(\PWDATA_5[4] ));
    NOR3B \PWDATA_RNO_2[2]  (.A(N_63), .B(ADDR_c[2]), .C(N_65), .Y(
        N_181));
    NOR3B \S_DATA_RNIAGFL[4]  (.A(S_DATA_c[5]), .B(
        \next_state_3_i_0_0_a6_1_5_0[1] ), .C(S_DATA_c[4]), .Y(N_159_5)
        );
    OR2A \ACK_count_RNIH8531[3]  (.A(\ACK_count[3]_net_1 ), .B(N_113), 
        .Y(N_115));
    MX2 \PWDATA_RNO_0[1]  (.A(ADDR_c[1]), .B(data_in_0_c[1]), .S(N_65), 
        .Y(N_149));
    NOR2B \next_state_RNI60J2_1[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(N_229));
    DFN1C0 \current_state[2]  (.D(\next_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[2]_net_1 ));
    NOR2 \next_state_RNO_7[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(\next_state_3_i_0_a6_0[2] ));
    NOR3B \next_state_RNO_0[0]  (.A(S_DATA_c[6]), .B(
        \next_state_3_i_0_0_a6_3_0[0] ), .C(N_110), .Y(N_156));
    NOR2A \next_state_RNIE265_0[4]  (.A(N_85), .B(N_101), .Y(N_251));
    DFN0C0 \ACK_count[3]  (.D(N_14), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\ACK_count[3]_net_1 ));
    XOR2 un3_data_count_I_7 (.A(N_3), .B(\data_count[2]_net_1 ), .Y(
        I_7_0));
    AO1 \next_state_RNO[4]  (.A(\next_state_3_i_i_0_a6_2[4] ), .B(
        N_133), .C(\next_state_3_i_i_0_0[4] ), .Y(N_31));
    NOR3B PWRITE_RNO_3 (.A(\next_state[0]_net_1 ), .B(PSEL6_i_a6_0_0), 
        .C(\next_state[2]_net_1 ), .Y(N_197));
    NOR3B \ACK_count_RNO[3]  (.A(N_113), .B(N_100), .C(N_134_i), .Y(
        N_14));
    NOR3A \next_state_RNO_3[1]  (.A(N_114), .B(
        \current_state[1]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        N_157));
    NOR3C \PWDATA_RNO_0[4]  (.A(N_63), .B(N_65), .C(data_in_0_c[4]), 
        .Y(N_184));
    NOR2A \next_state_RNO_0[4]  (.A(\next_state_3_i_i_0_a6_1[4] ), .B(
        N_84), .Y(\next_state_3_i_i_0_a6_2[4] ));
    OR2A \current_state_RNIF358[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(N_112));
    NOR2 \next_state_RNO_0[1]  (.A(\current_state[3]_net_1 ), .B(N_103)
        , .Y(\next_state_3_i_0_0_a6_0_0[1] ));
    NOR3B \current_state_RNIJH7C[0]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        N_230));
    NOR2 RW_en_RNO (.A(\current_state[0]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(N_20));
    OR3 PENABLE_RNO (.A(N_213), .B(N_212), .C(PENABLE5_0_1), .Y(
        PENABLE5));
    NOR3 \next_state_RNO[2]  (.A(\next_state_3_i_0_3[2] ), .B(N_175), 
        .C(\next_state_3_i_0_5[2] ), .Y(\next_state_RNO[2]_net_1 ));
    DFN1C0 \next_state[1]  (.D(\next_state_RNO[1]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\next_state[1]_net_1 ));
    OR3 RW_en_RNO_0 (.A(un1_current_state_31_0_1), .B(
        un1_current_state_31_0_0_0), .C(N_176), .Y(
        un1_current_state_31));
    OR3 \PWDATA_RNO_1[6]  (.A(N_190), .B(N_195), .C(N_177), .Y(
        \PWDATA_5_i_1[6] ));
    NOR3B \next_state_RNO_1[2]  (.A(\next_state_3_i_0_a4_1_0[2] ), .B(
        N_250), .C(S_DATA_c[5]), .Y(N_175));
    OAI1 \ACK_count_RNO_0[1]  (.A(\ACK_count[0]_net_1 ), .B(
        \ACK_count[1]_net_1 ), .C(N_100), .Y(ACK_count_n1_i_0));
    NOR3B \next_state_RNO_6[4]  (.A(\current_state[3]_net_1 ), .B(
        N_252), .C(\current_state[4]_net_1 ), .Y(N_167));
    AO1 PENABLE_RNO_3 (.A(N_245), .B(N_231), .C(N_214), .Y(
        PENABLE5_0_0));
    DFN1E1C0 \data[4]  (.D(I2C_test_0_BIF_1_PRDATA[4]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[4]));
    NOR2A \PWDATA_RNO_4[6]  (.A(N_229), .B(N_101), .Y(N_195));
    OR2B \current_state_RNIG458[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[4]_net_1 ), .Y(N_114));
    DFN1C0 \data_count[3]  (.D(I_9_0), .CLK(sercon_0), .CLR(PRESETN_c), 
        .Q(\data_count[3]_net_1 ));
    AO1C RW_en_RNO_2 (.A(\current_state[3]_net_1 ), .B(
        \current_state[0]_net_1 ), .C(N_114), .Y(
        un1_current_state_31_0_0_0));
    NOR3 \next_state_RNO[0]  (.A(N_156), .B(N_130), .C(
        \next_state_3_i_0_0_3[0] ), .Y(\next_state_RNO[0]_net_1 ));
    AO1 \current_state_RNIVQM41[2]  (.A(N_102), .B(
        \current_state[2]_net_1 ), .C(\next_state_3_i_0_0_o6_0[0] ), 
        .Y(N_130));
    NOR2 \current_state_RNIE258[0]  (.A(\current_state[4]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(un1_current_state_5_0_a5_0_a6_0));
    NOR2B \PWDATA_RNO_3[6]  (.A(N_251), .B(\next_state[0]_net_1 ), .Y(
        N_190));
    NOR3C \next_state_RNO_2[3]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(\current_state[3]_net_1 ), .Y(
        N_162));
    AO1D \next_state_RNO_1[4]  (.A(N_68), .B(N_117), .C(N_238), .Y(
        N_133));
    DFN1C0 \PADDR_1[3]  (.D(N_25), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PADDR[3]));
    AO1 \PWDATA_RNO_1[2]  (.A(\PWDATA_5_1_a6_0[2] ), .B(N_245), .C(
        N_182), .Y(\PWDATA_5_1_0[2] ));
    NOR2A \current_state_RNIIG7C[1]  (.A(\current_state[1]_net_1 ), .B(
        N_103), .Y(N_252));
    NOR3B PWRITE_RNO_0 (.A(\next_state[4]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(N_85), .Y(N_196));
    NOR2A \next_state_RNIE265[4]  (.A(N_233), .B(\next_state[4]_net_1 )
        , .Y(N_177));
    DFN1C0 \next_state[0]  (.D(\next_state_RNO[0]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\next_state[0]_net_1 ));
    NOR3 PWRITE_RNO (.A(N_251), .B(N_196), .C(PSEL6_i_2), .Y(N_58));
    DFN1C0 \PWDATA[4]  (.D(\PWDATA_5[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_test_0_BIF_1_PWDATA[4]));
    DFN1E1C0 \S_DATA[6]  (.D(I2C_test_0_BIF_1_PRDATA[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[6]));
    OR2 \ACK_count_RNIL4EN[1]  (.A(\ACK_count[1]_net_1 ), .B(
        \ACK_count[2]_net_1 ), .Y(N_113));
    NOR2B \PWDATA_RNO[7]  (.A(N_151), .B(N_63), .Y(N_55));
    DFN1C0 \PWDATA[7]  (.D(N_55), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWDATA[7]));
    GND GND_i (.Y(GND));
    NOR3B \current_state_RNI3MCK[1]  (.A(\current_state[1]_net_1 ), .B(
        N_244), .C(N_127), .Y(un1_current_state_11));
    DFN1E1C0 \S_DATA[2]  (.D(I2C_test_0_BIF_1_PRDATA[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[2]));
    DFN1C0 \PWDATA[0]  (.D(N_34), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWDATA[0]));
    MX2 \PWDATA_RNO_0[0]  (.A(ADDR_c[0]), .B(data_in_0_c[0]), .S(N_65), 
        .Y(N_148));
    OR3 \PWDATA_RNO[2]  (.A(N_180), .B(\PWDATA_5_1_0[2] ), .C(N_181), 
        .Y(\PWDATA_5[2] ));
    OR3 \data_count_RNII99L_0[3]  (.A(\data_count[1]_net_1 ), .B(
        \data_count[3]_net_1 ), .C(\data_count[2]_net_1 ), .Y(N_65));
    NOR2B \next_state_RNO_9[2]  (.A(S_DATA_c[3]), .B(S_DATA_c[4]), .Y(
        N_248));
    NOR2 \next_state_RNO_2[0]  (.A(N_100), .B(N_103), .Y(
        \next_state_3_i_0_0_a6_3_0[0] ));
    OR2A \current_state_RNID158[0]  (.A(\current_state[3]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(N_127));
    NOR3 \PWDATA_RNO[6]  (.A(N_191), .B(\PWDATA_5_i_1[6] ), .C(N_192), 
        .Y(N_30));
    AOI1 \next_state_RNO[3]  (.A(\next_state_3_0_i_0_a6_0[3] ), .B(
        N_122), .C(\next_state_3_0_i_0_1[3] ), .Y(N_33));
    DFN1E1C0 \data[1]  (.D(I2C_test_0_BIF_1_PRDATA[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[1]));
    DFN1C0 PSEL (.D(N_61), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PSELx));
    OR3B \data_count_RNII99L[3]  (.A(\data_count[2]_net_1 ), .B(
        \data_count[1]_net_1 ), .C(\data_count[3]_net_1 ), .Y(N_100));
    NOR2A \next_state_RNI60J2_2[1]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(PSEL6_i_a6_0_0));
    DFN1E1C0 \data[6]  (.D(I2C_test_0_BIF_1_PRDATA[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[6]));
    NOR3C \PWDATA_RNO_0[5]  (.A(N_63), .B(N_65), .C(data_in_0_c[5]), 
        .Y(N_188));
    NOR2B \PWDATA_RNO[3]  (.A(N_150), .B(N_63), .Y(N_50));
    DFN1E1C0 \S_DATA[7]  (.D(I2C_test_0_BIF_1_PRDATA[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[7]));
    NOR3B \ACK_count_RNO[1]  (.A(N_105), .B(N_115), .C(
        ACK_count_n1_i_0), .Y(N_10));
    DFN1E1C0 \S_DATA[5]  (.D(I2C_test_0_BIF_1_PRDATA[5]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[5]));
    NOR3B \next_state_RNO_6[0]  (.A(\current_state[3]_net_1 ), .B(
        N_136), .C(\current_state[1]_net_1 ), .Y(N_153));
    VCC VCC_i (.Y(VCC));
    MX2 \PWDATA_RNO_0[7]  (.A(ADDR_c[7]), .B(data_in_0_c[7]), .S(N_65), 
        .Y(N_151));
    XA1A \ACK_count_RNO[2]  (.A(N_105), .B(\ACK_count[2]_net_1 ), .C(
        N_100), .Y(N_12));
    NOR2A \next_state_RNI9GS3[1]  (.A(\next_state[1]_net_1 ), .B(N_128)
        , .Y(N_218));
    OR2A \next_state_RNO_9[0]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(N_136));
    DFN1C0 \data_count[2]  (.D(\data_count_3[2] ), .CLK(sercon_0), 
        .CLR(PRESETN_c), .Q(\data_count[2]_net_1 ));
    NOR2 \next_state_RNI4UI2_0[2]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(N_231));
    DFN0C0 \ACK_count[2]  (.D(N_12), .CLK(SCLO_int), .CLR(PRESETN_c), 
        .Q(\ACK_count[2]_net_1 ));
    AO1A \PADDR_1_RNO[2]  (.A(N_120), .B(N_187_1), .C(N_177), .Y(
        PADDR27));
    NOR3C \PWDATA_RNO_4[2]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[2]_net_1 ), .C(N_229), .Y(N_182));
    MAJ3 \current_state_RNIKI7C[0]  (.A(\current_state[4]_net_1 ), .B(
        \current_state[1]_net_1 ), .C(\current_state[0]_net_1 ), .Y(
        N_102));
    NOR2B \PWDATA_RNO[0]  (.A(N_148), .B(N_63), .Y(N_34));
    XNOR2 \next_state_RNI60J2[1]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(N_66));
    DFN1E1C0 \data[7]  (.D(I2C_test_0_BIF_1_PRDATA[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[7]));
    DFN1C0 PENABLE (.D(PENABLE5), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PENABLE));
    DFN1E1C0 \data[0]  (.D(I2C_test_0_BIF_1_PRDATA[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[0]));
    NOR2B \PWDATA_RNO_3[4]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[4]_net_1 ), .Y(\PWDATA_5_1_a6_0[4] ));
    DFN1C0 \PWDATA[1]  (.D(N_43), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWDATA[1]));
    OA1B \next_state_RNO_4[4]  (.A(S_DATA_c[4]), .B(S_DATA_c[6]), .C(
        N_110), .Y(N_238));
    XNOR2 \next_state_RNI4UI2[2]  (.A(\next_state[0]_net_1 ), .B(
        \next_state[2]_net_1 ), .Y(N_107));
    OA1C \next_state_RNO[1]  (.A(\next_state_3_i_0_0_a6_0_0[1] ), .B(
        N_122), .C(\next_state_3_i_0_0_1[1] ), .Y(
        \next_state_RNO[1]_net_1 ));
    NOR3B PENABLE_RNO_0 (.A(\next_state[0]_net_1 ), .B(
        \next_state[2]_net_1 ), .C(N_66), .Y(N_213));
    NOR2A \next_state_RNI71J2[1]  (.A(\next_state[4]_net_1 ), .B(
        \next_state[1]_net_1 ), .Y(N_245));
    NOR2B \data_count_RNO[2]  (.A(I_7_0), .B(N_100), .Y(
        \data_count_3[2] ));
    NOR2 \next_state_RNICJS3[3]  (.A(N_101), .B(\next_state[3]_net_1 ), 
        .Y(N_187_1));
    NOR3B \PWDATA_RNO_2[4]  (.A(N_63), .B(ADDR_c[4]), .C(N_65), .Y(
        N_185));
    OR3B \S_DATA_RNIRBGL1[6]  (.A(S_DATA_c[6]), .B(N_100), .C(N_110), 
        .Y(N_122));
    NOR2B \PWDATA_RNO_1[5]  (.A(N_187_1), .B(N_120), .Y(N_187));
    AO1 \next_state_RNO_3[2]  (.A(\next_state_3_i_0_a6_0[2] ), .B(
        N_127), .C(\next_state_3_i_0_0[2] ), .Y(
        \next_state_3_i_0_1[2] ));
    NOR2B un3_data_count_I_6 (.A(\data_count[1]_net_1 ), .B(
        \data_count[0]_net_1 ), .Y(N_3));
    XOR2 un3_data_count_I_5 (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .Y(I_5_0));
    AO1 \current_state_RNI4NCK[4]  (.A(\current_state[4]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(N_230), .Y(
        \next_state_3_i_0_0_o6_0[0] ));
    NOR3B \next_state_RNO_4[0]  (.A(\next_state_3_i_0_0_a6_2_0[0] ), 
        .B(N_159_5), .C(N_103), .Y(N_155));
    NOR3B \PWDATA_RNO_0[6]  (.A(N_63), .B(N_65), .C(data_in_0_c[6]), 
        .Y(N_191));
    DFN1C0 \next_state[4]  (.D(N_31), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\next_state[4]_net_1 ));
    NOR2B \PWDATA_RNO[1]  (.A(N_149), .B(N_63), .Y(N_43));
    NOR2A \S_DATA_RNI5ONA[3]  (.A(S_DATA_c[6]), .B(S_DATA_c[3]), .Y(
        \next_state_3_i_0_0_a6_1_5_0[1] ));
    OR3 \next_state_RNO_1[0]  (.A(\next_state_3_i_0_0_0[0] ), .B(N_155)
        , .C(N_152), .Y(\next_state_3_i_0_0_3[0] ));
    NOR3B \next_state_RNO_4[2]  (.A(\current_state[1]_net_1 ), .B(
        N_112), .C(\current_state[0]_net_1 ), .Y(N_172));
    AOI1 PSEL_RNO (.A(N_233), .B(\next_state[4]_net_1 ), .C(PSEL_2_i_1)
        , .Y(N_61));
    AO1 \next_state_RNIJE29[1]  (.A(PSEL6_i_a6_0_0), .B(N_231), .C(
        N_218), .Y(N_63));
    OR2A \current_state_RNIBV48[0]  (.A(\current_state[0]_net_1 ), .B(
        \current_state[1]_net_1 ), .Y(N_84));
    DFN1C0 PWRITE (.D(N_58), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWRITE));
    DFN1C0 \data_count[1]  (.D(\data_count_3[1] ), .CLK(sercon_0), 
        .CLR(PRESETN_c), .Q(\data_count[1]_net_1 ));
    DFN1E1C0 \data[2]  (.D(I2C_test_0_BIF_1_PRDATA[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[2]));
    DFN1E0P0 RW_en (.D(N_20), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_current_state_31), .Q(RW_en_net_1));
    AX1A \ACK_count_RNO_0[3]  (.A(N_105), .B(\ACK_count[2]_net_1 ), .C(
        \ACK_count[3]_net_1 ), .Y(N_134_i));
    AO1B \next_state_RNO_8[2]  (.A(\current_state[4]_net_1 ), .B(
        \current_state[3]_net_1 ), .C(N_114), .Y(
        \next_state_3_i_0_0[2] ));
    OR3 PSEL_RNO_0 (.A(N_200), .B(N_209), .C(N_210), .Y(PSEL_2_i_1));
    DFN1C0 \PWDATA[6]  (.D(N_30), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWDATA[6]));
    NOR2A \data_count_RNO[0]  (.A(N_100), .B(\data_count[0]_net_1 ), 
        .Y(\data_count_3[0] ));
    AO1 \PWDATA_RNO_1[4]  (.A(\PWDATA_5_1_a6_0[4] ), .B(N_128), .C(
        N_186), .Y(\PWDATA_5_1_0[4] ));
    AND3 un3_data_count_I_8 (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .C(\data_count[2]_net_1 ), .Y(N_2));
    NOR3B \PWDATA_RNO_2[5]  (.A(N_63), .B(ADDR_c[5]), .C(N_65), .Y(
        N_189));
    NOR2 \next_state_RNO_0[3]  (.A(\current_state[1]_net_1 ), .B(
        \current_state[3]_net_1 ), .Y(\next_state_3_0_i_0_a6_0[3] ));
    NOR2A \next_state_RNO_3[3]  (.A(N_103), .B(
        \current_state[3]_net_1 ), .Y(N_161));
    AX1D RW_en_RNO_1 (.A(\current_state[4]_net_1 ), .B(
        \current_state[2]_net_1 ), .C(\current_state[1]_net_1 ), .Y(
        un1_current_state_31_0_1));
    NOR3B \next_state_RNO_2[1]  (.A(\next_state_3_i_0_0_a6_1_1[1] ), 
        .B(N_159_5), .C(N_103), .Y(N_159));
    NOR3B \ACK_count_RNO[0]  (.A(N_100), .B(N_115), .C(
        \ACK_count[0]_net_1 ), .Y(\ACK_count_RNO[0]_net_1 ));
    NOR3A \next_state_RNO_5[0]  (.A(N_147), .B(N_103), .C(N_117), .Y(
        N_152));
    OR2 \next_state_RNI60J2_0[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(N_85));
    DFN1C0 \current_state[4]  (.D(\next_state[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[4]_net_1 ));
    OR2 \next_state_RNI82J2[4]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[4]_net_1 ), .Y(N_101));
    MX2 \PWDATA_RNO_0[3]  (.A(ADDR_c[3]), .B(data_in_0_c[3]), .S(N_65), 
        .Y(N_150));
    NOR3 PENABLE_RNO_1 (.A(N_85), .B(\next_state[4]_net_1 ), .C(N_107), 
        .Y(N_212));
    DFN1C0 \next_state[3]  (.D(N_33), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\next_state[3]_net_1 ));
    NOR2B \data_count_RNO[1]  (.A(I_5_0), .B(N_100), .Y(
        \data_count_3[1] ));
    NOR3A \current_state_RNI3MCK_0[1]  (.A(
        un1_current_state_5_0_a5_0_a6_0), .B(\current_state[1]_net_1 ), 
        .C(N_112), .Y(un1_current_state_5));
    DFN1C0 \current_state[0]  (.D(\next_state[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[0]_net_1 ));
    AO1B \next_state_RNO_6[2]  (.A(S_DATA_c[5]), .B(N_248), .C(N_100), 
        .Y(\next_state_3_i_0_5_tz_0[2] ));
    DFN1E1C0 \S_DATA[1]  (.D(I2C_test_0_BIF_1_PRDATA[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[1]));
    DFN1E1C0 \S_DATA[0]  (.D(I2C_test_0_BIF_1_PRDATA[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[0]));
    NOR3A PWRITE_RNO_2 (.A(N_229), .B(\next_state[4]_net_1 ), .C(
        \next_state[0]_net_1 ), .Y(N_199));
    NOR3C \PWDATA_RNO_0[2]  (.A(N_63), .B(N_65), .C(data_in_0_c[2]), 
        .Y(N_180));
    OR3 \next_state_RNO_0[2]  (.A(\next_state_3_i_0_1[2] ), .B(N_172), 
        .C(N_252), .Y(\next_state_3_i_0_3[2] ));
    DFN1E1C0 \S_DATA[3]  (.D(I2C_test_0_BIF_1_PRDATA[3]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[3]));
    DFN1C0 \PWDATA[5]  (.D(\PWDATA_5[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_test_0_BIF_1_PWDATA[5]));
    AXOI3 \S_DATA_RNIMI3G[3]  (.A(S_DATA_c[5]), .B(S_DATA_c[4]), .C(
        S_DATA_c[3]), .Y(N_68));
    XOR2 un3_data_count_I_9 (.A(N_2), .B(\data_count[3]_net_1 ), .Y(
        I_9_0));
    NOR2 \next_state_RNO_5[2]  (.A(S_DATA_c[3]), .B(S_DATA_c[4]), .Y(
        \next_state_3_i_0_a4_1_0[2] ));
    NOR2B RW_en_RNO_3 (.A(N_84), .B(\current_state[3]_net_1 ), .Y(
        N_176));
    DFN1C0 \data_count[0]  (.D(\data_count_3[0] ), .CLK(sercon_0), 
        .CLR(PRESETN_c), .Q(\data_count[0]_net_1 ));
    XNOR2 out_en_RNO (.A(RW_en_net_1), .B(N_115), .Y(N_135_i));
    XA1 \PADDR_1_RNO[3]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .C(N_85), .Y(N_25));
    OR2A \next_state_RNI71J2[3]  (.A(\next_state[2]_net_1 ), .B(
        \next_state[3]_net_1 ), .Y(N_128));
    DFN0C0 \ACK_count[0]  (.D(\ACK_count_RNO[0]_net_1 ), .CLK(SCLO_int)
        , .CLR(PRESETN_c), .Q(\ACK_count[0]_net_1 ));
    OA1C \PWDATA_RNO_3[2]  (.A(\next_state[3]_net_1 ), .B(
        \next_state[0]_net_1 ), .C(\next_state[2]_net_1 ), .Y(
        \PWDATA_5_1_a6_0[2] ));
    DFN1C0 \current_state[1]  (.D(\next_state[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[1]_net_1 ));
    NOR3A PSEL_RNO_1 (.A(N_229), .B(\next_state[4]_net_1 ), .C(N_107), 
        .Y(N_200));
    AO1A \next_state_RNO_3[0]  (.A(N_84), .B(N_244), .C(N_153), .Y(
        \next_state_3_i_0_0_0[0] ));
    OR3 \next_state_RNO_1[1]  (.A(N_159), .B(N_157), .C(N_130), .Y(
        \next_state_3_i_0_0_1[1] ));
    NOR2 \current_state_RNIG458_0[2]  (.A(\current_state[2]_net_1 ), 
        .B(\current_state[4]_net_1 ), .Y(N_244));
    DFN1E1C0 \S_DATA[4]  (.D(I2C_test_0_BIF_1_PRDATA[4]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_5), .Q(S_DATA_c[4]));
    DFN0P0 out_en_inst_1 (.D(N_135_i), .CLK(SCLO_int), .PRE(PRESETN_c), 
        .Q(out_en));
    OR3 PWRITE_RNO_1 (.A(N_199), .B(N_197), .C(N_233), .Y(PSEL6_i_2));
    DFN1C0 \current_state[3]  (.D(\next_state[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[3]_net_1 ));
    NOR2B \PWDATA_RNO_4[4]  (.A(N_245), .B(\next_state[2]_net_1 ), .Y(
        N_186));
    DFN1C0 \PWDATA[2]  (.D(\PWDATA_5[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(I2C_test_0_BIF_1_PWDATA[2]));
    OR2B \current_state_RNIC058[2]  (.A(\current_state[2]_net_1 ), .B(
        \current_state[0]_net_1 ), .Y(N_103));
    OR3 \S_DATA_RNID93G[0]  (.A(S_DATA_c[2]), .B(S_DATA_c[0]), .C(
        S_DATA_c[1]), .Y(N_86));
    NOR2A PENABLE_RNO_4 (.A(\next_state[4]_net_1 ), .B(N_120), .Y(
        N_214));
    NOR2A \next_state_RNI9GS3[2]  (.A(\next_state[2]_net_1 ), .B(N_85), 
        .Y(N_233));
    OR3 \S_DATA_RNIL4RQ[7]  (.A(S_DATA_c[7]), .B(N_86), .C(S_DATA_c[5])
        , .Y(N_110));
    OR3 \S_DATA_RNIM5RQ[7]  (.A(S_DATA_c[7]), .B(N_86), .C(S_DATA_c[6])
        , .Y(N_117));
    DFN1C0 \PWDATA[3]  (.D(N_50), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        I2C_test_0_BIF_1_PWDATA[3]));
    NOR3B PSEL_RNO_2 (.A(N_101), .B(\next_state[0]_net_1 ), .C(N_85), 
        .Y(N_209));
    DFN1C0 \PADDR_1[2]  (.D(PADDR27), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(I2C_test_0_BIF_1_PADDR[2]));
    AO1C \next_state_RNO_8[0]  (.A(S_DATA_c[5]), .B(S_DATA_c[4]), .C(
        N_68), .Y(N_147));
    OA1 \next_state_RNO_2[2]  (.A(N_117), .B(
        \next_state_3_i_0_5_tz_0[2] ), .C(N_250), .Y(
        \next_state_3_i_0_5[2] ));
    NOR3A \PWDATA_RNO_2[6]  (.A(N_63), .B(N_65), .C(ADDR_c[6]), .Y(
        N_192));
    OR2B \next_state_RNI3TI2[1]  (.A(\next_state[1]_net_1 ), .B(
        \next_state[0]_net_1 ), .Y(N_120));
    NOR3A \next_state_RNO_4[1]  (.A(S_DATA_c[7]), .B(
        \current_state[3]_net_1 ), .C(N_86), .Y(
        \next_state_3_i_0_0_a6_1_1[1] ));
    NOR3 PSEL_RNO_3 (.A(N_101), .B(\next_state[0]_net_1 ), .C(N_66), 
        .Y(N_210));
    DFN1C0 \next_state[2]  (.D(\next_state_RNO[2]_net_1 ), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\next_state[2]_net_1 ));
    DFN1E1C0 \data[3]  (.D(I2C_test_0_BIF_1_PRDATA[3]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_current_state_11), .Q(data_0_c[3]));
    
endmodule


module CAPB3II_0(
       PRDATA_0_iv_0,
       seradr0_m,
       I2C_slave_0_BIF_1_PRDATA,
       PRDATA_iv_1_0,
       PRDATA_iv_0_0,
       INT_net_0_0,
       sersta_i_0,
       sercon_0,
       sersta_0,
       seradr0apb_0,
       seradr0apb_3,
       N_1434,
       N_1443,
       N_1437,
       N_1439,
       un1_PRDATA,
       N_91,
       N_77,
       N_79,
       I2C_slave_0_BIF_1_PSELx,
       un9_PRDATA,
       N_1435,
       N_1421
    );
input  [2:0] PRDATA_0_iv_0;
input  [2:0] seradr0_m;
output [7:0] I2C_slave_0_BIF_1_PRDATA;
input  PRDATA_iv_1_0;
input  PRDATA_iv_0_0;
input  INT_net_0_0;
input  [2:0] sersta_i_0;
input  sercon_0;
input  sersta_0;
input  seradr0apb_0;
input  seradr0apb_3;
input  N_1434;
input  N_1443;
input  N_1437;
input  N_1439;
input  un1_PRDATA;
input  N_91;
input  N_77;
input  N_79;
input  I2C_slave_0_BIF_1_PSELx;
input  un9_PRDATA;
input  N_1435;
input  N_1421;

    wire PRDATA_4_1_net_1, PRDATA_4_0_net_1, PRDATA_3_2_net_1, 
        PRDATA_3_0_net_1, PRDATA_7_1_net_1, PRDATA_7_0_net_1, 
        PRDATA_5_1_net_1, PRDATA_5_0_net_1, GND, VCC;
    
    AOI1B PRDATA_4_0 (.A(sersta_i_0[1]), .B(un9_PRDATA), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(PRDATA_4_0_net_1));
    OA1 PRDATA_6 (.A(PRDATA_iv_0_0), .B(PRDATA_iv_1_0), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[6]));
    NOR3B PRDATA_4 (.A(PRDATA_4_0_net_1), .B(PRDATA_4_1_net_1), .C(
        N_1434), .Y(I2C_slave_0_BIF_1_PRDATA[4]));
    OA1 PRDATA_0 (.A(seradr0_m[0]), .B(PRDATA_0_iv_0[0]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[0]));
    NOR3B PRDATA_5 (.A(PRDATA_5_0_net_1), .B(PRDATA_5_1_net_1), .C(
        N_1437), .Y(I2C_slave_0_BIF_1_PRDATA[5]));
    AOI1B PRDATA_3_0 (.A(sersta_i_0[0]), .B(un9_PRDATA), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(PRDATA_3_0_net_1));
    OA1B PRDATA_7_1 (.A(N_1421), .B(seradr0apb_3), .C(N_91), .Y(
        PRDATA_7_1_net_1));
    VCC VCC_i (.Y(VCC));
    OA1A PRDATA_3 (.A(un1_PRDATA), .B(INT_net_0_0), .C(
        PRDATA_3_2_net_1), .Y(I2C_slave_0_BIF_1_PRDATA[3]));
    GND GND_i (.Y(GND));
    OA1 PRDATA_2 (.A(seradr0_m[2]), .B(PRDATA_0_iv_0[2]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[2]));
    OA1 PRDATA_1 (.A(seradr0_m[1]), .B(PRDATA_0_iv_0[1]), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(I2C_slave_0_BIF_1_PRDATA[1]));
    NOR3A PRDATA_3_2 (.A(PRDATA_3_0_net_1), .B(N_79), .C(N_77), .Y(
        PRDATA_3_2_net_1));
    AOI1B PRDATA_5_0 (.A(sersta_i_0[2]), .B(un9_PRDATA), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(PRDATA_5_0_net_1));
    OA1B PRDATA_4_1 (.A(N_1421), .B(seradr0apb_0), .C(N_1435), .Y(
        PRDATA_4_1_net_1));
    NOR3B PRDATA_7 (.A(PRDATA_7_0_net_1), .B(PRDATA_7_1_net_1), .C(
        N_1443), .Y(I2C_slave_0_BIF_1_PRDATA[7]));
    OA1C PRDATA_5_1 (.A(un1_PRDATA), .B(sercon_0), .C(N_1439), .Y(
        PRDATA_5_1_net_1));
    OA1A PRDATA_7_0 (.A(un9_PRDATA), .B(sersta_0), .C(
        I2C_slave_0_BIF_1_PSELx), .Y(PRDATA_7_0_net_1));
    
endmodule


module CoreAPB3_Z1_0(
       seradr0apb_0,
       seradr0apb_3,
       sersta_0,
       sercon_0,
       sersta_i_0,
       INT_net_0_0,
       PRDATA_iv_0_0,
       PRDATA_iv_1_0,
       I2C_slave_0_BIF_1_PRDATA,
       seradr0_m,
       PRDATA_0_iv_0,
       N_1421,
       N_1435,
       un9_PRDATA,
       I2C_slave_0_BIF_1_PSELx,
       N_79,
       N_77,
       N_91,
       un1_PRDATA,
       N_1439,
       N_1437,
       N_1443,
       N_1434
    );
input  seradr0apb_0;
input  seradr0apb_3;
input  sersta_0;
input  sercon_0;
input  [2:0] sersta_i_0;
input  INT_net_0_0;
input  PRDATA_iv_0_0;
input  PRDATA_iv_1_0;
output [7:0] I2C_slave_0_BIF_1_PRDATA;
input  [2:0] seradr0_m;
input  [2:0] PRDATA_0_iv_0;
input  N_1421;
input  N_1435;
input  un9_PRDATA;
input  I2C_slave_0_BIF_1_PSELx;
input  N_79;
input  N_77;
input  N_91;
input  un1_PRDATA;
input  N_1439;
input  N_1437;
input  N_1443;
input  N_1434;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAPB3II_0 CAPB3IIII (.PRDATA_0_iv_0({PRDATA_0_iv_0[2], 
        PRDATA_0_iv_0[1], PRDATA_0_iv_0[0]}), .seradr0_m({seradr0_m[2], 
        seradr0_m[1], seradr0_m[0]}), .I2C_slave_0_BIF_1_PRDATA({
        I2C_slave_0_BIF_1_PRDATA[7], I2C_slave_0_BIF_1_PRDATA[6], 
        I2C_slave_0_BIF_1_PRDATA[5], I2C_slave_0_BIF_1_PRDATA[4], 
        I2C_slave_0_BIF_1_PRDATA[3], I2C_slave_0_BIF_1_PRDATA[2], 
        I2C_slave_0_BIF_1_PRDATA[1], I2C_slave_0_BIF_1_PRDATA[0]}), 
        .PRDATA_iv_1_0(PRDATA_iv_1_0), .PRDATA_iv_0_0(PRDATA_iv_0_0), 
        .INT_net_0_0(INT_net_0_0), .sersta_i_0({sersta_i_0[2], 
        sersta_i_0[1], sersta_i_0[0]}), .sercon_0(sercon_0), .sersta_0(
        sersta_0), .seradr0apb_0(seradr0apb_0), .seradr0apb_3(
        seradr0apb_3), .N_1434(N_1434), .N_1443(N_1443), .N_1437(
        N_1437), .N_1439(N_1439), .un1_PRDATA(un1_PRDATA), .N_91(N_91), 
        .N_77(N_77), .N_79(N_79), .I2C_slave_0_BIF_1_PSELx(
        I2C_slave_0_BIF_1_PSELx), .un9_PRDATA(un9_PRDATA), .N_1435(
        N_1435), .N_1421(N_1421));
    
endmodule


module COREI2C_COREI2CREAL_Z3_0(
       COREI2C_1_SDAO_0,
       sercon_m_0,
       seradr0apb,
       seradr0_m_0,
       PRDATA_0_iv_0_0,
       PRDATA_iv_0_0_0,
       PRDATA_iv_0_0_2,
       PRDATA_iv_0_1_0,
       PRDATA_iv_0_1_2,
       PRDATA_iv_0_0_d0,
       PRDATA_iv_0_2,
       PRDATA_iv_1_0,
       PRDATA_iv_1_2,
       PRDATA_iv_1_4,
       PRDATA_0_iv_0_0_d0,
       I2C_test_0_BIF_1_PWDATA,
       I2C_test_0_BIF_1_PADDR,
       sercon_0,
       out_en_0,
       SDA_d,
       out_en,
       SCLO_int,
       SDA_in,
       N_193,
       N_190,
       I2C_test_0_BIF_1_PWRITE,
       I2C_test_0_BIF_1_PENABLE,
       I2C_test_0_BIF_1_PSELx,
       seradr0apb4_0,
       PRESETN_c,
       PCLK_c
    );
input  COREI2C_1_SDAO_0;
output sercon_m_0;
input  [7:0] seradr0apb;
output seradr0_m_0;
output [1:0] PRDATA_0_iv_0_0;
output PRDATA_iv_0_0_0;
output PRDATA_iv_0_0_2;
output PRDATA_iv_0_1_0;
output PRDATA_iv_0_1_2;
output PRDATA_iv_0_0_d0;
output PRDATA_iv_0_2;
output PRDATA_iv_1_0;
output PRDATA_iv_1_2;
output PRDATA_iv_1_4;
output PRDATA_0_iv_0_0_d0;
input  [7:0] I2C_test_0_BIF_1_PWDATA;
input  [3:2] I2C_test_0_BIF_1_PADDR;
output sercon_0;
input  out_en_0;
output SDA_d;
input  out_en;
output SCLO_int;
input  SDA_in;
output N_193;
output N_190;
input  I2C_test_0_BIF_1_PWRITE;
input  I2C_test_0_BIF_1_PENABLE;
input  I2C_test_0_BIF_1_PSELx;
output seradr0apb4_0;
input  PRESETN_c;
input  PCLK_c;

    wire \fsmsta_0[2]_net_1 , \fsmsta_10[2] , N_84, 
        \fsmsta_0[4]_net_1 , \fsmsta_10[4] , \fsmsta_0[3]_net_1 , 
        \fsmsta_10[3] , N_1403, N_55_i, N_68, N_45, 
        SDAO_int_7_0_o2_4_0, bsd7_12_iv_1_out, \PWDATA_i_m_2[7] , 
        \fsmdet[3]_net_1 , SDAO_int_7_0_2, SDAO_int_7_0_a2_2_0, N_1409, 
        SDAO_int_7_0_1, N_90, N_1395, N_88, un1_ack_1_sqmuxa_0_a0_2, 
        un1_ack_1_sqmuxa_0_a0_1, bsd7_tmp_1_sqmuxa_2_i_0, N_48, 
        un1_ack_0_sqmuxa_2_0_a2_0, N_69, \PWDATA_i_m_1[7] , 
        \PWDATA_i_m_0[7] , serdat4, fsmsta_m3_e_0, \fsmsta[1]_net_1 , 
        \fsmsta[2]_net_1 , sersta78_1, \fsmsta[4]_net_1 , 
        \fsmsta[3]_net_1 , sersta79_0, fsmsta_m3_e_1, N_89, 
        SDAO_int_7_0_a2_0_0, SDAO_int_7, N_1401, N_56, 
        SDAO_int_7_0_a2_1_0, N_1131_8, SDAO_int_7_0_a2_0, 
        un1_bsd7_tmp_0_sqmuxa, bsd7_tmp_0_sqmuxa_3, bsd7_tmp_0_sqmuxa, 
        bsd7_tmp_0_sqmuxa_2, bsd7_tmp_i_m, bsd7_tmp_i_m_0, 
        bsd7_tmp_0_sqmuxa_1, fsmsta_N_7_mux, sersta64_1, sersta78, 
        sersta74_1, un1_SCLI_ff_reg_1_sqmuxa_1, \sercon[6]_net_1 , 
        bsd7_1_sqmuxa_1, bsd7_12_iv, \serdat_i_m[7] , sersta80, 
        ack_bit_1_sqmuxa_i_o2_0, un1_sersta78, N_63, N_195_1, 
        un1_sersta65, N_1_8, un1_ack_1_sqmuxa, 
        \sercon_inferred_clock_RNIERTG[3]_net_1 , un1_ack_0_sqmuxa_2, 
        un4_PRDATA, \serdat_20[3] , \serdat[2]_net_1 , \serdat_20[5] , 
        \serdat[4]_net_1 , \serdat_20[6] , \serdat[5]_net_1 , 
        \serdat_20[7] , \serdat[6]_net_1 , \serdat_20[4] , 
        \serdat[3]_net_1 , \serdat_20[1] , \serdat[0]_net_1 , 
        \serdat_20[0] , ack_net_1, \serdat_20[2] , \serdat[1]_net_1 , 
        \fsmsta[0]_net_1 , un1_sersta69_0_0_4, sersta71_2, 
        nedetect_net_1, \serdat[7]_net_1 , pedetect_net_1, N_47, N_37, 
        N_46, ack_12, bsd7_tmp_0_sqmuxa_1_1, SDAInt_net_1, bsd7_tmp_9, 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \framesync[1]_net_1 , \DWACT_ADD_CI_0_g_array_12[0] , 
        \framesync[2]_net_1 , \fsmdet_i[3] , N_1388, N_54, N_75, 
        un1_fsmdet_0_a2_0, N_1389, un1_fsmdet, un1_fsmdet_0_1, 
        \fsmmod_ns_i_a3_4_tz[0]_net_1 , N_95_i, 
        \fsmmod_ns_i_a3_4_tz_1[0]_net_1 , \fsmmod_ns_i_a3_2[0]_net_1 , 
        \fsmmod_ns_i_a3_1[0]_net_1 , \fsmmod_ns_i_a3_0_0[0] , 
        \fsmmod_ns_i_a3_3[0] , adrcomp12, un1_fsmdet_0_0, 
        \fsmmod_ns_i_a3_4_tz_0[0] , N_76_1, \fsmmod[1]_net_1 , 
        \fsmmod[6]_net_1 , \fsmmod_ns_0_1[2] , N_1127_1, 
        \fsmmod_ns_0_6_tz[2] , N_1126, \fsmmod_ns_0_0[2] , 
        \fsmmod_ns_0_a3_0[2] , fsmmod5_i, N_1125, 
        \fsmsta_10s_1_iv_2[0] , \fsmsta_nxt_cnst[0] , 
        un1_framesync24_6_s7, \fsmsta_10s_1_iv_0[0] , 
        \fsmsta_RNO_10[0]_net_1 , SDAInt_m_0_3, \fsmsta_nxt_4_m[0] , 
        bsd7_tmp_net_1, SCLInt_net_1, \fsmsta_10s_iv_1[2] , 
        \fsmsta_nxt_cnst_i_m_2[2] , fsmsta_nxt20_m, 
        \fsmsta_10s_iv_0[2] , \fsmsta_nxt_34[1] , un1_framesync24_3_s6, 
        \fsmsta_nxt_4_i_m[2] , \fsmsta_10s_0_iv_1[1] , 
        un1_framesync24_2_s4, N_816, \COREI2C_0_SDAO_0[0] , 
        \fsmsta_10s_0_iv_0[1] , \fsmsta_nxt_4_m[1] , fsmmod_tr14_2, 
        fsmmod_tr14_1, N_1131_3, \sercon[4]_net_1 , N_1131_4, N_1392, 
        framesync24, \fsmsta_10s_0_iv_1[3] , \fsmsta_10s_0_iv_0[3] , 
        \fsmsta_nxt_4_m[3] , \fsmmod_ns_i_a3_2[3] , 
        \fsmmod_ns_i_a3_0_0[3] , N_1133, N_1134, fsmmod_tr13_2_1, 
        \fsmmod_ns_i_a3_0_tz[3] , \fsmmod_ns_i_a3_3_0[0] , 
        \fsmmod[0]_net_1 , \fsmmod_ns_i_a3_0_tz[0] , N_1114, 
        \fsmsta_nxt_cnst_m_0[4] , fsmsta_nxt93, \sercon_0_0_1[3] , 
        N_121, \sercon_0_a2_1_1[3] , \sercon_0_0_0[3] , N_100, 
        \fsmsta_nxt_cnst_i_m_1[2] , N_740, N_742, 
        \fsmsta_nxt_cnst_0_a4_0_0[2] , \fsmsta_nxt_cnst_0_a4_2_0[2] , 
        fsmmod_tr16_3, fsmmod_tr16_1, fsmmod_tr16_0, starto_en_net_1, 
        \sercon[5]_net_1 , \fsmmod_ns_0_0_a2_0_3[1] , 
        \fsmmod_ns_0_0_a2_0_1[1] , \fsmsta_nxt_cnst_m_1[1] , N_737, 
        N_739, N_738, \fsmsta_nxt_cnst_0_0[0] , fsmsta_m2_i_a3_1, 
        N_780, \fsmmod_ns_0_0_a2_0[1] , fsmmod_tr17_0, sclscl_net_1, 
        \fsmmod[5]_net_1 , \fsmmod[3]_net_1 , PCLKint_ff_net_1, 
        PCLKint_net_1, SDAO_int_1_sqmuxa_1_i_0, ack_bit_net_1, N_88_1, 
        un1_ens1_pre_2_sqmuxa_i_0, fsmsta33, N_209, N_202, 
        ack_bit_0_sqmuxa_1_2, ack_bit_0_sqmuxa_1_1, 
        ack_bit_0_sqmuxa_1_0, \sercon_0_a2_0[3] , 
        \fsmsta_nxt_cnst_i_a4_0[4] , N_726, un1_m7_i_a5_1_0, 
        fsmmod_tr12_3_0, fsmmod_tr12_0_0, fsmmod_tr12_1_0, 
        fsmmod_tr12_2_0, bsd7_net_1, \fsmsta_10k_i_a2_0[2] , 
        fsmsta_0_sqmuxa_2_s7_0_a2_3_0, PCLK_count1_n1_i_0, 
        \PCLK_count1[0]_net_1 , \PCLK_count1_i_0[1] , 
        PCLK_count1_n2_i_0, \PCLK_count1_i_0[2] , 
        un1_adrcomp_2_sqmuxa_1_0, N_141, un1_adrcomp_2_sqmuxa_0, N_94, 
        \sercon_0_o2_2_0[3] , un1_sersta65_s3_0, fsmmod_m1_e_3, 
        fsmmod_m1_e_1, N_1394, \fsmmod[2]_net_1 , 
        \fsmsta_10k_0_a2_1[4] , N_1368_2, \fsmsta_10k_0_a2_0[4] , 
        fsmsta32_s3_1, ens1_pre_0_sqmuxa_s2_1, N_42, 
        fsmsta_1_sqmuxa_1_s9_1, ens1_pre_1_sqmuxa_1_s6_i_0_0, N_1367_2, 
        SDAInt_m_0_1, \fsmsta_RNO_15[0]_net_1 , 
        \fsmsta_RNO_16[0]_net_1 , framesync24_1, 
        fsmsta_1_sqmuxa_2_s8_i_0_3, fsmsta_1_sqmuxa_2_s8_i_0_1, N_223, 
        fsmsta_0_sqmuxa_s5_i_0_1, fsmsta_0_sqmuxa_s5_i_0_0, 
        adrcomp_net_1, SCLO_int5_i_a2_0_2, SCLO_int5_i_a2_0_0, N_107, 
        sersta74, N_185, \sercon_0_a2_3_0[3] , \fsmsync_ns_0_0_0[0] , 
        N_126, N_170, framesync_0_sqmuxa_1_0, counter_PRESETN_0_4, 
        counter_PRESETN_0_2, counter_PRESETN_0_0, \fsmsync[5]_net_1 , 
        N_157, \fsmsync[1]_net_1 , \fsmsync[4]_net_1 , un1_sersta64_0, 
        un1_sercon_1_4, un1_seradr0_NE, fsmsta_nxt86, un1_sercon_1_3, 
        un1_sercon_1_2, un1_sercon_1_1, \framesync[3]_net_1 , 
        adrcompen_net_1, \sercon[2]_net_1 , un1_framesync24_6_s7_5_0, 
        un1_m7_i_a5_0, un1_m7_i_0, fsmsta_nxt93_0, N_759, 
        SCLO_int5_i_a2_0_1_0, sersta75, sersta73, 
        \fsmsync_ns_i_0_0[2] , \fsmsync_ns_i_0_a2_0_0[2] , N_128, N_76, 
        SDAInt_m_a0_1, SDAInt_m_a0_0, SCLO_int5_i_o2_1_1, sersta76, 
        sersta82, sersta77, \sersta_4_0_1[3] , N_774, N_776, 
        sersta81_3, m16_0, \fsmsync[3]_net_1 , \fsmmod_ns_0_6_tz_2[2] , 
        \fsmmod_ns_0_6_tz_0[2] , \framesync[0]_net_1 , \sercon_8_1[4] , 
        \fsmdet[5]_net_1 , \fsmsync_ns_i_0_0[5] , \fsmsync[2]_net_1 , 
        \fsmsync_ns_0_0_a2_0_0[0] , \fsmsync[0]_net_1 , 
        fsmsta_m2_0_a2_2, un1_sersta65_0_a2_0_0, \fsmmod[4]_net_1 , 
        sersta69_1, fsmsync_tr19_i_7_4, fsmsync_tr19_i_7_1, 
        fsmsync_tr19_i_7_0, fsmsync_tr19_i_7_2, N_161, 
        \sersta[1]_net_1 , un9_PRDATA_net_1, N_163, 
        \seradr0_m[3]_net_1 , \sersta_m[0] , \serdat_m[3] , 
        \sercon_m[5] , \sersta[2]_net_1 , \seradr0_m[5]_net_1 , 
        \sercon_m[2] , \sercon_m[7] , \sersta[4]_net_1 , 
        \seradr0_m[7]_net_1 , N_167, \sersta[3]_net_1 , N_165, N_191, 
        N_188, sersta73_0, sersta76_0, \sersta_4_0_o3_0[4] , 
        adrcomp7_0_a2_0_1, adrcomp7_0_a2_0_0, N_763, sersta72_1, 
        fsmsync_tr19_i_a2_0, sersta74_0, sersta82_1, sersta70_1, 
        \fsmsync_ns_0_0_o2_0[0] , \fsmsync_ns_0_0_a2_3_0[0] , N_104, 
        sersta75_0, sersta71_1, un1_sersta65_0_a2_0, 
        \fsmsync_ns_0_0_o2_0_1[0] , \fsmsync[7]_net_1 , 
        un1_m7_i_a5_2_0, \fsmsync_ns_i_a4_0_o2_1[4] , 
        \indelay[0]_net_1 , \indelay[1]_net_1 , \indelay[3]_net_1 , 
        fsmsta_1_sqmuxa_2_s8_i_a2_3, fsmsta_1_sqmuxa_2_s8_i_a2_2, 
        fsmsta_1_sqmuxa_2_s8_i_a2_1, un1_seradr0_NE_3, un1_seradr0_1_0, 
        un1_seradr0_0, un1_seradr0_6, un1_seradr0_NE_2, un1_seradr0_4, 
        un1_seradr0_NE_1, un1_seradr0_2, SCLO_int5_i_o2_0_0, 
        \fsmsync[6]_net_1 , \fsmmod_ns_i_a3_3_tz_0[0] , 
        un1_framesync24, \fsmsta_nxt_4[3] , N_1363, 
        un1_framesync24_1_s5, un1_sersta71, un1_sersta69, 
        ack_bit_0_sqmuxa_1, framesync_0_sqmuxa_1, un1_fsmdet_1, 
        fsmmod_tr10_7_0, fsmmod_tr10_8_1, N_1128_2, fsmmod_tr13_1_1, 
        \fsmmod_ns_0_0_a2_1[6] , N_120, N_83, N_1117_4, N_40, N_158, 
        busfree_net_1, counter_PRESETN, N_156, N_175, N_29_7, N_127, 
        N_176, \fsmsync_RNO[6]_net_1 , \fsmsync_RNO[5]_net_1 , 
        N_40_mux, \indelay[2]_net_1 , \PCLK_count1_RNO[2]_net_1 , N_51, 
        \PCLK_count1_RNO[1]_net_1 , \fsmmod_RNO[3]_net_1 , N_1131, 
        N_1132, N_1131_10, un1_SCLI_ff_reg_1, \SCLI_ff_reg[0]_net_1 , 
        \SCLI_ff_reg[2]_net_1 , \SCLI_ff_reg[1]_net_1 , 
        un1_SCLI_ff_reg, \fsmsync_RNO[2]_net_1 , N_142, 
        \fsmsync_ns[0] , N_169, N_171, N_103, N_1365, un1_framesync_4, 
        framesync10, un1_sersta58, adrcompen_2_sqmuxa, 
        un1_adrcomp_2_sqmuxa, starto_en_0_sqmuxa, un1_framesync_2, 
        N_77, N_195, N_194, un1_sercon_1, N_133, \fsmmod_ns[2] , 
        N_1122, N_1125_2, N_733, N_728, sersta72, SDAInt6, 
        \SDAI_ff_reg[1]_net_1 , \SDAI_ff_reg[2]_net_1 , 
        \SDAI_ff_reg[0]_net_1 , N_232, N_210, N_200, 
        \sercon_10_0_0[3] , sersta71, N_1368, \fsmsta_nxt_cnst_m[1] , 
        N_659, N_812, N_809_1, N_184, N_118, un1_framesync24_1, 
        un1_sersta65_1_2, un1_sersta69_1, sersta69, sersta70, N_201, 
        N_810, N_1367, N_811, N_813, N_658, fsmsta_nxt_m_0, 
        fsmsta_nxt_m, \fsmsta_10s_iv[2] , N_662_1, N_661, 
        \fsmsta_nxt_cnst_m[3] , N_662, \fsmsta_nxt_cnst_m[4] , N_746, 
        N_779, \sersta_4[4] , N_778, N_735, N_211, N_212, 
        \sersta_4[2] , N_772, N_773, N_760, \sersta_4[0] , N_770, 
        N_771, \sercon_8[4] , \sersta_4[3] , N_775, N_1406, 
        \fsmmod_RNO[0]_net_1 , N_1099, N_1101, N_1145, N_41_i, 
        framesync_1_sqmuxa_2, \framesync_RNIF5D91_0[1]_net_1 , 
        un1_N_11, un1_framesync24_6_s7_4, un1_fsmdet_2_0_0, 
        \fsmmod_ns_i_a3_0_tz[4] , \fsmmod_ns_i_a3_1[4] , N_156_1, 
        PCLK_count1_n3_i_0_tz, \fsmmod_ns[6] , 
        \fsmmod_ns_0_0_a2_0_0[6] , \indelay_RNO[3]_net_1 , 
        indelay_151_0, indelay_c1, \PCLK_count1_RNO[3]_net_1 , 
        \PCLK_count1[3]_net_1 , \fsmmod_RNO[4]_net_1 , 
        \sercon[1]_net_1 , \sercon[0]_net_1 , N_102, 
        \fsmmod_RNO[5]_net_1 , un1_framesync_4_sqmuxa, un1_nedetect, 
        \sercon[7]_net_1 , un1_framesync, sclscl_1_sqmuxa, 
        \fsmdet_RNO[3]_net_1 , \fsmdet_i_0[6] , \fsmdet_i_0[1] , 
        N_1216_1, \fsmdet_RNO[2]_net_1 , \fsmdet_i_0[0] , 
        \fsmdet_i_0[2] , N_145, \fsmdet_i_0[4] , \fsmdet_RNO[4]_net_1 , 
        sersta59_3, \sercon_10[4] , N_731, \fsmsta_nxt_4[2] , 
        \fsmsta_nxt_cnst[3] , \fsmsta_10[0] , N_809, \fsmsta_10[1] , 
        N_214, \fsmsta_nxt_4[0] , N_732, N_34, N_32, un1_SDAInt5, 
        N_761, \sersta_4[1] , \SDAI_ff_reg_4[0] , 
        \fsmdet_RNO[6]_net_1 , N_1226, N_1214_1, \fsmdet_RNO[1]_net_1 , 
        \fsmdet_RNO[5]_net_1 , framesync_1_sqmuxa_1, 
        framesync_2_sqmuxa, N_205, adrcomp_2_sqmuxa_1, 
        \framesync_7[3] , N_678, N_670, \framesync_7[2] , N_677, 
        \framesync_7[1] , N_676, \framesync_7[0] , N_675, I_16, 
        framesync_1_m, \DWACT_ADD_CI_0_partial_sum[0] , I_18, I_15, 
        un1_adrcomp_2_sqmuxa_1, N_101, N_174, \fsmsync_RNO[1]_net_1 , 
        \fsmsync_RNO[7]_net_1 , un1_serdat52, un1_serdat52_1, N_208, 
        \SCLI_ff_reg_4[1] , \SCLI_ff_reg_4[2] , pedetect_0_sqmuxa, 
        N_80, \SCLI_ff_reg_4[0] , N_99, \PCLK_count1_RNO[0]_net_1 , 
        \indelay_RNO[1]_net_1 , indelay_n1, \indelay_RNO[0]_net_1 , 
        N_1358, \fsmsync_RNO[4]_net_1 , N_26, N_42_mux, N_45_mux, 
        \fsmsync_RNO[3]_net_1 , N_1377, N_41_mux, 
        \indelay_RNO[2]_net_1 , \sersta[0]_net_1 , 
        PCLK_count1_1_sqmuxa, SDA_d1, fsmsta_nxt19, N_52, PCLKint_5, 
        \fsmmod_ns[1] , PCLKint_ff_RNO_net_1, starto_en_1_sqmuxa, 
        un1_PCLKint5, PCLK_count2_ov_i_0, PCLK_count2_ov_0_sqmuxa, 
        PCLK_count1_ov_net_1, GND, VCC;
    
    AO1 \fsmsta_RNIRLRKQ[2]  (.A(\fsmsta_nxt_cnst_i_m_2[2] ), .B(
        un1_framesync24_6_s7), .C(fsmsta_nxt20_m), .Y(
        \fsmsta_10s_iv_1[2] ));
    AO1 \sersta_RNILGDK[1]  (.A(\sersta[1]_net_1 ), .B(
        un9_PRDATA_net_1), .C(N_163), .Y(PRDATA_iv_0_0_0));
    AO1 \framesync_RNO_0[3]  (.A(I_16), .B(un1_framesync_4_sqmuxa), .C(
        framesync_1_m), .Y(N_678));
    NOR3C \seradr0_m[2]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[2]), .Y(seradr0_m_0));
    NOR3B busfree_RNI5AFR (.A(busfree_net_1), .B(SCLInt_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(starto_en_0_sqmuxa));
    OR3B \indelay_RNIB1O31[2]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[2]_net_1 ), .C(\fsmsync_ns_i_a4_0_o2_1[4] ), .Y(N_126)
        );
    AO1C \fsmdet_RNO[6]  (.A(\fsmdet[5]_net_1 ), .B(N_1226), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO[6]_net_1 ));
    OR2A \fsmdet_RNO_0[6]  (.A(SDAInt_net_1), .B(\fsmdet_i_0[6] ), .Y(
        N_1226));
    OR3A \PCLK_count1_RNO_0[3]  (.A(\PCLK_count1[0]_net_1 ), .B(
        \PCLK_count1_i_0[1] ), .C(\PCLK_count1_i_0[2] ), .Y(
        PCLK_count1_n3_i_0_tz));
    NOR2B nedetect_RNIH9TN1 (.A(nedetect_net_1), .B(framesync24), .Y(
        framesync_0_sqmuxa_1_0));
    NOR3A SCLO_int_RNO_2 (.A(SCLO_int5_i_a2_0_0), .B(
        un1_sersta69_0_0_4), .C(sersta80), .Y(SCLO_int5_i_a2_0_2));
    DFN1C0 \fsmsync[1]  (.D(\fsmsync_RNO[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[1]_net_1 ));
    NOR3A \framesync_RNI7A7S3[2]  (.A(N_118), .B(\framesync[2]_net_1 ), 
        .C(un1_framesync24_1), .Y(N_184));
    AO1 \serdat_RNIJMND[1]  (.A(\serdat[1]_net_1 ), .B(un4_PRDATA), .C(
        N_188), .Y(PRDATA_0_iv_0_0[1]));
    NOR2B \sercon_RNIOPNB1[6]  (.A(un1_SCLI_ff_reg), .B(
        \sercon[6]_net_1 ), .Y(N_208));
    OR2B pedetect_RNIJN7V1 (.A(pedetect_net_1), .B(framesync24), .Y(
        N_121));
    NOR3B \fsmsta_0_RNI2MS31[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta70_1));
    AO1 \fsmmod_RNO[5]  (.A(fsmmod_tr17_0), .B(fsmmod5_i), .C(N_1145), 
        .Y(\fsmmod_RNO[5]_net_1 ));
    AO1 \fsmsta_RNO_4[0]  (.A(\fsmsta_nxt_cnst[0] ), .B(
        un1_framesync24_6_s7), .C(\fsmsta_10s_1_iv_0[0] ), .Y(
        \fsmsta_10s_1_iv_2[0] ));
    DFN1C0 \indelay[2]  (.D(\indelay_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[2]_net_1 ));
    NOR3 \sercon_inferred_clock_RNI0LD4H[3]  (.A(N_1_8), .B(serdat4), 
        .C(\sercon_inferred_clock_RNIERTG[3]_net_1 ), .Y(
        un1_ack_1_sqmuxa));
    OR2A \SCLI_ff_reg_RNO[0]  (.A(\sercon[6]_net_1 ), .B(SCLO_int), .Y(
        \SCLI_ff_reg_4[0] ));
    NOR2A \busfree_write_proc.un1_fsmdet_0_a2  (.A(un1_fsmdet_0_a2_0), 
        .B(N_1389), .Y(N_75));
    OA1C \fsmsta_RNO_10[0]  (.A(N_41_i), .B(N_42), .C(un1_sersta78), 
        .Y(\fsmsta_RNO_10[0]_net_1 ));
    DFN1P0 \framesync[0]  (.D(\framesync_7[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[0]_net_1 ));
    ZOR3 SDAInt_RNO_0 (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \SDAI_ff_reg[2]_net_1 ), .C(\SDAI_ff_reg[0]_net_1 ), .Y(
        un1_SDAInt5));
    OR2A SCLInt_RNO (.A(N_208), .B(un1_SCLI_ff_reg_1), .Y(
        un1_serdat52_1));
    NOR3A \fsmsta_RNIFAEEA[4]  (.A(framesync_2_sqmuxa), .B(N_133), .C(
        sersta74), .Y(framesync_1_sqmuxa_1));
    OR3 \fsmmod_RNO_7[2]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(\fsmmod_ns_0_6_tz_0[2] ), .Y(
        \fsmmod_ns_0_6_tz_2[2] ));
    DFN1C0 \fsmsync[5]  (.D(\fsmsync_RNO[5]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[5]_net_1 ));
    AO1 \fsmmod_RNO_0[2]  (.A(N_1127_1), .B(\fsmmod_ns_0_6_tz[2] ), .C(
        N_1126), .Y(\fsmmod_ns_0_1[2] ));
    XOR2 un1_framesync_1_I_16 (.A(\framesync[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16));
    OR3 \fsmmod_RNIENEN[1]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .C(\fsmmod[4]_net_1 ), .Y(N_54));
    NOR3B \fsmmod_RNIUCJM2[2]  (.A(fsmmod_m1_e_1), .B(N_1131_8), .C(
        N_1394), .Y(fsmmod_m1_e_3));
    OR2 \fsmsync_RNI6E501[1]  (.A(SCLO_int5_i_o2_0_0), .B(N_103), .Y(
        N_107));
    NOR3A \sersta_RNO_1[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(N_759), .Y(N_773));
    OR3A \fsmsta_0_RNIFQRB5[2]  (.A(framesync24), .B(
        un1_framesync24_6_s7_5_0), .C(un1_N_11), .Y(
        un1_framesync24_6_s7_4));
    NOR3B \fsmmod_RNO_5[3]  (.A(N_1131_10), .B(fsmmod_tr12_3_0), .C(
        sercon_0), .Y(N_1134));
    OA1 \fsmmod_RNIAH7I[1]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .C(\fsmdet[3]_net_1 ), .Y(N_209));
    NOR3C \fsmsta_0_RNI6VPB1[4]  (.A(sersta64_1), .B(
        \fsmsta_0[4]_net_1 ), .C(fsmsta_m3_e_0), .Y(sersta80));
    OR3 pedetect_RNIFA2Q1 (.A(fsmsta33), .B(N_209), .C(N_202), .Y(
        un1_ens1_pre_2_sqmuxa_i_0));
    AO1C \fsmmod_RNO_3[4]  (.A(PCLKint_ff_net_1), .B(PCLKint_net_1), 
        .C(\fsmmod[4]_net_1 ), .Y(\fsmmod_ns_i_a3_0_tz[4] ));
    NOR3B ack_RNI1LR4I (.A(un1_framesync24_6_s7), .B(
        \fsmsta_nxt_cnst_m_0[4] ), .C(N_746), .Y(
        \fsmsta_nxt_cnst_m[4] ));
    OAI1 \fsmsta_0_RNI0D4O3[3]  (.A(\fsmsta_nxt_cnst_0_a4_0_0[2] ), .B(
        \fsmsta_nxt_cnst_0_a4_2_0[2] ), .C(framesync24), .Y(
        \fsmsta_nxt_cnst_i_m_1[2] ));
    OR2A \framesync_RNIBFJR[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(fsmsync_tr19_i_7_1));
    DFN1E0C0 \serdat[5]  (.D(\serdat_20[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[5]_net_1 ));
    OR2 \busfree_write_proc.un1_fsmdet_0_1_RNO  (.A(\fsmdet[3]_net_1 ), 
        .B(N_1394), .Y(un1_fsmdet_0_0));
    AND2 \fsmmod_ns_i_a3_4_tz_1[0]  (.A(\fsmmod_ns_i_a3_4_tz_0[0] ), 
        .B(N_76_1), .Y(\fsmmod_ns_i_a3_4_tz_1[0]_net_1 ));
    NOR3B \fsmmod_RNO_2[3]  (.A(N_1131_10), .B(fsmmod_tr12_1_0), .C(
        sercon_0), .Y(N_1132));
    XOR2 adrcomp_RNO_8 (.A(seradr0apb[5]), .B(\serdat[4]_net_1 ), .Y(
        un1_seradr0_4));
    NOR3A \fsmsta_RNO_6[1]  (.A(un1_framesync24), .B(\fsmsta_nxt_4[3] )
        , .C(N_1363), .Y(\fsmsta_nxt_4_m[1] ));
    NOR3C SDAO_int_RNO_9 (.A(N_56), .B(SDAO_int_7_0_a2_1_0), .C(N_45), 
        .Y(N_90));
    DFN1C0 \fsmmod[5]  (.D(\fsmmod_RNO[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[5]_net_1 ));
    DFN1C0 \fsmmod[4]  (.D(\fsmmod_RNO[4]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[4]_net_1 ));
    MX2 ack_RNILA0G3 (.A(\fsmsta_0[4]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst_m_0[4] ));
    NOR3B \fsmmod_RNO_4[3]  (.A(N_1131_10), .B(fsmmod_tr12_2_0), .C(
        sercon_0), .Y(N_1133));
    XO1 \sersta_RNO[1]  (.A(\fsmsta[0]_net_1 ), .B(N_761), .C(N_760), 
        .Y(\sersta_4[1] ));
    OR3B \fsmsync_RNO_2[6]  (.A(\sercon[4]_net_1 ), .B(
        \fsmsync[5]_net_1 ), .C(sercon_0), .Y(N_127));
    OR2B \fsmmod_RNO_10[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(\fsmmod_ns_0_6_tz_0[2] ));
    MX2 \serdat_RNO[3]  (.A(I2C_test_0_BIF_1_PWDATA[3]), .B(
        \serdat[2]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[3] ));
    NOR3A \fsmsta_0_RNIH8OA1_2[2]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(sersta69_1));
    MX2 \framesync_RNO[1]  (.A(\fsmdet[3]_net_1 ), .B(N_676), .S(N_670)
        , .Y(\framesync_7[1] ));
    XOR2 un1_framesync_1_I_13 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    OR3 \fsmmod_RNO[2]  (.A(\fsmmod_ns_0_1[2] ), .B(\fsmmod_ns_0_0[2] )
        , .C(N_1122), .Y(\fsmmod_ns[2] ));
    NOR2A pedetect_RNI08N11 (.A(pedetect_net_1), .B(N_48), .Y(N_69));
    NOR2A adrcompen_RNO (.A(\fsmdet[3]_net_1 ), .B(adrcomp12), .Y(
        un1_adrcomp_2_sqmuxa_1));
    NOR3A \sercon_RNI9CA4[5]  (.A(\sercon[5]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        \sercon_m[5] ));
    NOR2B \indelay_RNO_0[3]  (.A(\indelay[2]_net_1 ), .B(indelay_c1), 
        .Y(indelay_151_0));
    NOR2A pedetect_RNIFH205 (.A(un1_ack_1_sqmuxa_0_a0_1), .B(N_45), .Y(
        un1_ack_1_sqmuxa_0_a0_2));
    NOR2A SDAO_int_RNO_8 (.A(N_1392), .B(framesync24), .Y(
        SDAO_int_7_0_a2_0_0));
    NOR3B \fsmsta_RNINCU41[4]  (.A(\fsmsta[0]_net_1 ), .B(
        un1_sersta65_0_a2_0), .C(\fsmsta[4]_net_1 ), .Y(N_211));
    DFN1P0 \fsmmod[0]  (.D(\fsmmod_RNO[0]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmmod[0]_net_1 ));
    OR2 \PCLK_count1_RNO[2]  (.A(PCLK_count1_n2_i_0), .B(N_51), .Y(
        \PCLK_count1_RNO[2]_net_1 ));
    AO1 ack_RNO_0 (.A(N_46), .B(N_69), .C(bsd7_tmp_0_sqmuxa_1), .Y(
        N_37));
    AND2 \SDAO_int_write_proc.un1_SDAO_int17_1_0_o2_RNINB227  (.A(
        N_55_i), .B(N_68), .Y(N_1403));
    NOR3B \framesync_RNILM59B[0]  (.A(un1_sersta69), .B(framesync24), 
        .C(N_1363), .Y(un1_framesync24_2_s4));
    XOR2 un1_framesync_1_I_18 (.A(\framesync[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    AO1 \serdat_RNIPSND[4]  (.A(\serdat[4]_net_1 ), .B(un4_PRDATA), .C(
        N_161), .Y(PRDATA_iv_0_1_0));
    NOR2B bsd7_RNO_5 (.A(\PWDATA_i_m_1[7] ), .B(N_45), .Y(
        \PWDATA_i_m_2[7] ));
    NOR3B \fsmsta_0_RNI6VPB1_0[4]  (.A(sersta76_0), .B(
        \fsmsta_0[4]_net_1 ), .C(N_763), .Y(sersta76));
    DFN1C0 \fsmmod[2]  (.D(\fsmmod_ns[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[2]_net_1 ));
    NOR2A \sersta_RNO_0[0]  (.A(N_731), .B(\fsmsta[0]_net_1 ), .Y(
        N_770));
    OR3A SDAO_int_RNO_0 (.A(N_1409), .B(SDAO_int_1_sqmuxa_1_i_0), .C(
        N_158), .Y(N_40));
    AO1 \serdat_RNIDPRE[6]  (.A(\serdat[6]_net_1 ), .B(un4_PRDATA), .C(
        N_167), .Y(PRDATA_iv_0_1_2));
    NOR3A \fsmsta_RNI3G5M[3]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(sersta79_0));
    MX2A \fsmsync_RNO[3]  (.A(N_26), .B(N_40_mux), .S(sercon_0), .Y(
        \fsmsync_RNO[3]_net_1 ));
    XOR2 \fsmsta_RNILTOE[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_41_i));
    NOR2B \framesync_RNIIQ6N1[0]  (.A(N_1131_3), .B(N_1131_4), .Y(
        N_1131_8));
    NOR3B \fsmsta_0_RNI6VPB1[2]  (.A(un1_m7_i_a5_2_0), .B(
        \fsmsta_0[2]_net_1 ), .C(N_42), .Y(un1_N_11));
    DFN1E0C0 \serdat[1]  (.D(\serdat_20[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[1]_net_1 ));
    NOR3A adrcomp_RNO_7 (.A(un1_sercon_1_1), .B(\framesync[3]_net_1 ), 
        .C(N_1392), .Y(un1_sercon_1_2));
    AO1 \fsmmod_RNO_1[2]  (.A(\fsmmod_ns_0_a3_0[2] ), .B(fsmmod5_i), 
        .C(N_1125), .Y(\fsmmod_ns_0_0[2] ));
    AO1 \fsmsta_RNO_8[0]  (.A(fsmsta_m2_i_a3_1), .B(framesync24), .C(
        N_780), .Y(\fsmsta_nxt_cnst_0_0[0] ));
    NOR3B \fsmsta_RNI2F5M_0[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta73_0));
    NOR2 \sercon_RNIAQ96[4]  (.A(\sercon[4]_net_1 ), .B(sercon_0), .Y(
        N_1117_4));
    NOR3C \SCLI_ff_reg_RNIDVH91_0[2]  (.A(\SCLI_ff_reg[0]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[1]_net_1 ), .Y(
        un1_SCLI_ff_reg_1));
    OA1C ack_RNID9A83 (.A(fsmsta_0_sqmuxa_2_s7_0_a2_3_0), .B(ack_net_1)
        , .C(fsmsta33), .Y(\fsmsta_10k_i_a2_0[2] ));
    OA1A \fsmsync_RNO_1[3]  (.A(\fsmsync[5]_net_1 ), .B(N_76), .C(
        N_41_mux), .Y(N_42_mux));
    OR2 \fsmsta_0_RNIKOML3[4]  (.A(sersta80), .B(un1_sersta69_0_0_4), 
        .Y(un1_sersta78));
    NOR3B \fsmsta_RNO_9[0]  (.A(un1_m7_i_a5_1_0), .B(
        \fsmsta_0[2]_net_1 ), .C(fsmsta_nxt93), .Y(N_735));
    OR3 \sercon_inferred_clock_RNI66DHA[3]  (.A(N_200), .B(
        un1_ens1_pre_2_sqmuxa_i_0), .C(N_201), .Y(N_84));
    MX2B \fsmsync_RNO_2[3]  (.A(N_41_mux), .B(N_40_mux), .S(N_1131_8), 
        .Y(N_45_mux));
    OR2A adrcomp_RNI4HB31 (.A(N_94), .B(N_185), .Y(N_1367_2));
    NOR2B \fsmsync_RNO_2[0]  (.A(\fsmsync[4]_net_1 ), .B(N_101), .Y(
        N_171));
    NOR3C \PRDATA_0_iv_0_a2[1]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[1]), .Y(N_188));
    NOR3 bsd7_RNO (.A(bsd7_12_iv_1_out), .B(bsd7_tmp_i_m), .C(
        \serdat_i_m[7] ), .Y(bsd7_12_iv));
    AO1D \framesync_RNI4LDE3[3]  (.A(N_1392), .B(\framesync[3]_net_1 ), 
        .C(framesync24), .Y(N_52));
    OR2 \busfree_write_proc.un1_fsmdet_0  (.A(N_75), .B(un1_fsmdet_0_1)
        , .Y(un1_fsmdet));
    DFN1E1C0 \fsmsta[1]  (.D(\fsmsta_10[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_84), .Q(\fsmsta[1]_net_1 ));
    NOR2A ack_RNIOIHF_0 (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[2] ));
    OR3 adrcomp_RNO_2 (.A(un1_seradr0_NE_2), .B(un1_seradr0_NE_1), .C(
        un1_seradr0_NE_3), .Y(un1_seradr0_NE));
    AO1 \fsmdet_RNO[1]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[1] ), .C(
        N_1214_1), .Y(\fsmdet_RNO[1]_net_1 ));
    NOR2B \fsmmod_RNO_2[2]  (.A(N_1127_1), .B(sercon_0), .Y(N_1122));
    DFN1C0 \sercon[4]  (.D(\sercon_10[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sercon[4]_net_1 ));
    NOR2A \fsmmod_RNI55GH_0[4]  (.A(\fsmmod[4]_net_1 ), .B(
        SCLInt_net_1), .Y(N_156_1));
    DFN1C0 \indelay[1]  (.D(\indelay_RNO[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[1]_net_1 ));
    NOR3B \fsmmod_RNO_4[2]  (.A(\fsmmod[2]_net_1 ), .B(N_1125_2), .C(
        PCLKint_ff_net_1), .Y(N_1126));
    OR3 SDAO_int_RNO (.A(SDAO_int_7_0_2), .B(N_1401), .C(N_89), .Y(
        SDAO_int_7));
    OR3 \fsmsta_0_RNIE7SU4[4]  (.A(sersta76), .B(sersta82), .C(
        sersta77), .Y(SCLO_int5_i_o2_1_1));
    AO1 \sercon_0_RNO[3]  (.A(\sercon_0_a2_0[3] ), .B(N_232), .C(
        \sercon_0_0_1[3] ), .Y(\sercon_10_0_0[3] ));
    DFN1P0 \PCLK_count1[2]  (.D(\PCLK_count1_RNO[2]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\PCLK_count1_i_0[2] ));
    NOR3A \fsmsta_0_RNIH8OA1_1[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(
        un1_sersta65_0_a2_0_0));
    AO1 \serdat_RNIBNRE[5]  (.A(\serdat[5]_net_1 ), .B(un4_PRDATA), .C(
        \sercon_m[5] ), .Y(PRDATA_iv_1_2));
    NOR2B starto_en_RNICI7G (.A(starto_en_net_1), .B(\sercon[5]_net_1 )
        , .Y(fsmmod_tr16_0));
    OR2B \fsmsync_RNO_3[2]  (.A(\fsmsync[2]_net_1 ), .B(N_1389), .Y(
        N_128));
    OA1C \fsmmod_ns_i_a3_1_RNO[0]  (.A(\fsmmod[0]_net_1 ), .B(
        \fsmmod_ns_i_a3_0_tz[0] ), .C(N_1114), .Y(
        \fsmmod_ns_i_a3_0_0[0] ));
    XOR2 adrcomp_RNO_10 (.A(seradr0apb[2]), .B(\serdat[1]_net_1 ), .Y(
        un1_seradr0_1_0));
    NOR2B \sersta_RNIC43G[0]  (.A(\sersta[0]_net_1 ), .B(
        un9_PRDATA_net_1), .Y(\sersta_m[0] ));
    AND2 \fsmmod_ns_i_a3_4_tz[0]  (.A(N_95_i), .B(
        \fsmmod_ns_i_a3_4_tz_1[0]_net_1 ), .Y(
        \fsmmod_ns_i_a3_4_tz[0]_net_1 ));
    NOR3B \fsmsta_0_RNIH8OA1[2]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta_0[4]_net_1 ), .C(\fsmsta_0[2]_net_1 ), .Y(sersta82_1));
    OR2A \framesync_RNI7BJR[0]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(N_118));
    MX2 \fsmsync_RNO_0[3]  (.A(N_42_mux), .B(N_45_mux), .S(
        \sercon[4]_net_1 ), .Y(N_26));
    DFN1C0 \fsmsync[4]  (.D(\fsmsync_RNO[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[4]_net_1 ));
    XOR2 \fsmmod_RNO_2[6]  (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .Y(N_120));
    NOR2B \fsmsta_0_RNI44HP1_3[2]  (.A(sersta74_0), .B(un1_m7_i_a5_1_0)
        , .Y(sersta77));
    OR2 \fsmmod_RNI7DKF[0]  (.A(\fsmmod[5]_net_1 ), .B(
        \fsmmod[0]_net_1 ), .Y(N_102));
    NOR3A \sersta_RNO_2[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta_0[4]_net_1 ), .C(sersta71_2), .Y(N_774));
    OR2A \fsmdet_RNIEUO4[5]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[5]_net_1 ), .Y(N_1394));
    NOR2A \fsmmod_RNIDMEN[5]  (.A(N_76_1), .B(\fsmmod[5]_net_1 ), .Y(
        fsmsync_tr19_i_a2_0));
    NOR3A nedetect_RNIJP3T1 (.A(nedetect_net_1), .B(
        \framesync_RNIF5D91_0[1]_net_1 ), .C(un1_fsmdet_1), .Y(
        framesync_1_sqmuxa_2));
    DFN1E1P0 SDAO_int (.D(SDAO_int_7), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(N_40), .Q(\COREI2C_0_SDAO_0[0] ));
    MX2C ack_RNIOG51I2 (.A(\fsmsta_10s_iv[2] ), .B(N_811), .S(N_1363), 
        .Y(\fsmsta_10[2] ));
    NOR3B \fsmsta_0_RNIPDD41[3]  (.A(\fsmsta[0]_net_1 ), .B(
        fsmsta_m3_e_0), .C(\fsmsta_0[3]_net_1 ), .Y(sersta81_3));
    AO1A \fsmsta_RNO_6[0]  (.A(\fsmsta_RNO_10[0]_net_1 ), .B(
        SDAInt_m_0_3), .C(\fsmsta_nxt_4_m[0] ), .Y(
        \fsmsta_10s_1_iv_0[0] ));
    NOR2A \fsmsync_RNIRNQQ[2]  (.A(\fsmsync[2]_net_1 ), .B(N_1389), .Y(
        N_1377));
    MX2 \sercon_inferred_clock_RNID40882[3]  (.A(N_661), .B(N_812), .S(
        N_1363), .Y(\fsmsta_10[3] ));
    NOR2 \fsmmod_RNI7DKF[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[3]_net_1 ), .Y(N_76_1));
    OR3A \fsmmod_RNO[3]  (.A(\fsmmod_ns_i_a3_2[3] ), .B(N_1131), .C(
        N_1132), .Y(\fsmmod_RNO[3]_net_1 ));
    OR3 \sercon_inferred_clock_RNINCBO2[3]  (.A(N_1389), .B(
        fsmsync_tr19_i_7_4), .C(sercon_0), .Y(N_29_7));
    NOR2B \sercon_0_RNO_0[3]  (.A(\sercon[6]_net_1 ), .B(N_100), .Y(
        \sercon_0_a2_0[3] ));
    NOR2B adrcompen_RNINJ0K2 (.A(fsmsta_nxt93_0), .B(framesync24), .Y(
        fsmsta_nxt93));
    AO1 \fsmmod_RNO[1]  (.A(\fsmmod_ns_0_0_a2_0[1] ), .B(fsmmod5_i), 
        .C(N_83), .Y(\fsmmod_ns[1] ));
    DFN1P0 \sersta[4]  (.D(\sersta_4[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[4]_net_1 ));
    NOR3B \fsmmod_RNO_2[1]  (.A(\fsmmod_ns_0_0_a2_0_1[1] ), .B(
        fsmmod_tr16_0), .C(N_1389), .Y(\fsmmod_ns_0_0_a2_0_3[1] ));
    OR3 SDAO_int_RNIACSGM1 (.A(\fsmsta_10s_0_iv_0[3] ), .B(
        \fsmsta_nxt_cnst_m[3] ), .C(\fsmsta_10s_0_iv_1[3] ), .Y(N_661));
    MX2 \serdat_RNO[0]  (.A(I2C_test_0_BIF_1_PWDATA[0]), .B(ack_net_1), 
        .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[0] ));
    AOI1 \fsmdet_RNO[5]  (.A(\fsmdet_i_0[2] ), .B(\fsmdet_i_0[4] ), .C(
        N_1214_1), .Y(\fsmdet_RNO[5]_net_1 ));
    NOR2 \fsmsta_RNIJMGU[4]  (.A(N_726), .B(\fsmsta[4]_net_1 ), .Y(
        N_742));
    NOR2A \fsmsta_RNO_9[1]  (.A(\fsmsta[2]_net_1 ), .B(N_759), .Y(
        N_739));
    NOR2B \serdat_RNISLQR1[0]  (.A(seradr0apb[0]), .B(N_223), .Y(
        fsmsta_nxt86));
    OR3C \fsmsta_0_RNI1LS31[3]  (.A(\fsmsta_0[4]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(N_731));
    NOR2B \fsmsta_RNIDBML4[4]  (.A(framesync24), .B(un1_sersta65), .Y(
        un1_sersta65_s3_0));
    NOR2B bsd7_RNO_7 (.A(\PWDATA_i_m_0[7] ), .B(serdat4), .Y(
        \PWDATA_i_m_1[7] ));
    OR3 adrcomp_RNI7BI02 (.A(fsmsta33), .B(N_209), .C(
        fsmsta_0_sqmuxa_s5_i_0_0), .Y(fsmsta_0_sqmuxa_s5_i_0_1));
    NOR2A \sercon_inferred_clock_RNIFM5S4[3]  (.A(
        bsd7_tmp_0_sqmuxa_1_1), .B(N_47), .Y(bsd7_tmp_0_sqmuxa_1));
    NOR3A nedetect_RNI1KPH5 (.A(nedetect_net_1), .B(sercon_0), .C(
        bsd7_tmp_1_sqmuxa_2_i_0), .Y(bsd7_tmp_0_sqmuxa_3));
    NOR2A un9_PRDATA (.A(I2C_test_0_BIF_1_PADDR[2]), .B(
        I2C_test_0_BIF_1_PADDR[3]), .Y(un9_PRDATA_net_1));
    AOI1 \fsmsync_RNO[2]  (.A(N_142), .B(\fsmsync[0]_net_1 ), .C(
        \fsmsync_ns_i_0_0[2] ), .Y(\fsmsync_RNO[2]_net_1 ));
    AOI1 \fsmdet_RNO[3]  (.A(\fsmdet_i_0[6] ), .B(\fsmdet_i_0[1] ), .C(
        N_1216_1), .Y(\fsmdet_RNO[3]_net_1 ));
    OR3 \fsmsta_RNIFN599[4]  (.A(N_133), .B(sersta74), .C(
        fsmsta_N_7_mux), .Y(N_141));
    GND GND_i (.Y(GND));
    OR3 \fsmmod_RNO_3[2]  (.A(\fsmmod_ns_0_6_tz_2[2] ), .B(
        fsmmod_tr10_7_0), .C(fsmmod_tr10_8_1), .Y(
        \fsmmod_ns_0_6_tz[2] ));
    AO1C \fsmmod_RNO_3[3]  (.A(fsmmod_tr13_2_1), .B(
        \fsmmod_ns_i_a3_0_tz[3] ), .C(fsmmod5_i), .Y(
        \fsmmod_ns_i_a3_0_0[3] ));
    AO1C \fsmmod_RNO[4]  (.A(sercon_0), .B(fsmmod_tr14_2), .C(
        \fsmmod_ns_i_a3_1[4] ), .Y(\fsmmod_RNO[4]_net_1 ));
    NOR2 \SDAO_int_write_proc.un1_SDAO_int17_1_0_o2_1_0  (.A(
        \fsmmod[1]_net_1 ), .B(\fsmmod[6]_net_1 ), .Y(N_95_i));
    NOR2A nedetect_RNO (.A(SCLInt_net_1), .B(un1_SCLI_ff_reg), .Y(N_80)
        );
    NOR2B \sercon_RNIG5QH[4]  (.A(N_102), .B(\sercon[4]_net_1 ), .Y(
        adrcomp12));
    DFN1E0C0 adrcomp (.D(un1_adrcomp_2_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(adrcomp_2_sqmuxa_1), .Q(adrcomp_net_1));
    NOR2B \SDAI_ff_reg_RNO[1]  (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(N_34));
    NOR2A \fsmmod_RNO_3[5]  (.A(\fsmmod[0]_net_1 ), .B(SDAInt_net_1), 
        .Y(fsmmod_tr16_1));
    OR2 \fsmsync_RNI1L2G[1]  (.A(\fsmsync[1]_net_1 ), .B(
        \fsmsync[4]_net_1 ), .Y(counter_PRESETN_0_0));
    OR3 \fsmsta_RNO_0[0]  (.A(fsmsta_nxt_m_0), .B(fsmsta_nxt_m), .C(
        \fsmsta_10s_1_iv_2[0] ), .Y(N_658));
    MX2 \serdat_RNO[6]  (.A(I2C_test_0_BIF_1_PWDATA[6]), .B(
        \serdat[5]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[6] ));
    AOI1 \fsmsta_RNIEVHT[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .C(N_42), .Y(ack_bit_1_sqmuxa_i_o2_0));
    NOR3C \seradr0_m[5]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[5]), .Y(
        \seradr0_m[5]_net_1 ));
    AO1 \fsmsta_RNO_3[1]  (.A(\fsmsta_nxt_34[1] ), .B(
        un1_framesync24_3_s6), .C(\fsmsta_nxt_4_m[1] ), .Y(
        \fsmsta_10s_0_iv_0[1] ));
    NOR2A \fsmsta_RNIEVHT_0[2]  (.A(N_1128_2), .B(N_42), .Y(sersta59_3)
        );
    NOR2 bsd7_RNO_8 (.A(I2C_test_0_BIF_1_PWDATA[7]), .B(
        \fsmdet[3]_net_1 ), .Y(\PWDATA_i_m_0[7] ));
    NOR2A \SDAO_int_write_proc.un1_SDAO_int17_1_0_o2  (.A(N_1388), .B(
        N_54), .Y(N_55_i));
    OR2 \fsmsta_RNIP1PE_0[3]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(N_42));
    AX1 \PCLK_count1_RNO_0[2]  (.A(\PCLK_count1_i_0[1] ), .B(
        \PCLK_count1[0]_net_1 ), .C(\PCLK_count1_i_0[2] ), .Y(
        PCLK_count1_n2_i_0));
    NOR3B \sercon_0_RNO_5[3]  (.A(\sercon[6]_net_1 ), .B(N_100), .C(
        N_185), .Y(\sercon_0_a2_1_1[3] ));
    XOR2 adrcomp_RNO_12 (.A(seradr0apb[7]), .B(\serdat[6]_net_1 ), .Y(
        un1_seradr0_6));
    OA1A adrcomp_RNO_0 (.A(un1_seradr0_NE), .B(fsmsta_nxt86), .C(
        un1_sercon_1_3), .Y(un1_sercon_1_4));
    DFN1C0 \fsmdet[5]  (.D(\fsmdet_RNO[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[5]_net_1 ));
    NOR2B \fsmsta_0_RNILHLI1[2]  (.A(sersta70_1), .B(sersta74_1), .Y(
        sersta70));
    MX2 \serdat_RNO[1]  (.A(I2C_test_0_BIF_1_PWDATA[1]), .B(
        \serdat[0]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[1] ));
    NOR2A \fsmsta_0_RNI2KLCA[2]  (.A(un1_framesync24_6_s7_4), .B(
        N_1363), .Y(un1_framesync24_6_s7));
    MX2 \serdat_RNO[2]  (.A(I2C_test_0_BIF_1_PWDATA[2]), .B(
        \serdat[1]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[2] ));
    AO1A \fsmsta_RNO_7[1]  (.A(N_1363), .B(un1_sersta65_s3_0), .C(
        un1_framesync24_1_s5), .Y(N_816));
    NOR2A adrcomp_RNI0B5U (.A(N_102), .B(adrcomp_net_1), .Y(N_185));
    NOR3C \seradr0_m[3]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[3]), .Y(
        \seradr0_m[3]_net_1 ));
    OR3 adrcompen_RNIGPOS2 (.A(N_223), .B(N_1388), .C(N_94), .Y(
        fsmsta_1_sqmuxa_2_s8_i_0_1));
    DFN1P0 \fsmdet[2]  (.D(\fsmdet_RNO[2]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[2] ));
    NOR2B \fsmsta_RNINCU41_2[3]  (.A(sersta75_0), .B(N_1128_2), .Y(
        sersta75));
    OR3A \sersta_RNO[3]  (.A(sercon_0), .B(\sersta_4_0_1[3] ), .C(
        N_775), .Y(\sersta_4[3] ));
    NOR2A \framesync_RNI9DJR[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(un1_framesync));
    OR3 ack_RNI9F2A5 (.A(fsmsta_1_sqmuxa_2_s8_i_0_1), .B(N_1368_2), .C(
        fsmsta_N_7_mux), .Y(fsmsta_1_sqmuxa_2_s8_i_0_3));
    AND2 \fsmmod_ns_i_a3_1[0]  (.A(\fsmmod_ns_i_a3_0_0[0] ), .B(
        \fsmmod_ns_i_a3_3[0] ), .Y(\fsmmod_ns_i_a3_1[0]_net_1 ));
    NOR2B \framesync_RNIIQ6N1_0[0]  (.A(framesync24_1), .B(N_1131_4), 
        .Y(framesync24));
    OA1 \fsmmod_RNO[6]  (.A(\fsmmod_ns_0_0_a2_1[6] ), .B(
        \fsmmod_ns_0_0_a2_0_0[6] ), .C(fsmmod5_i), .Y(\fsmmod_ns[6] ));
    OR3 SDAO_int_RNIV4M932 (.A(\fsmsta_10s_iv_0[2] ), .B(N_662_1), .C(
        \fsmsta_10s_iv_1[2] ), .Y(\fsmsta_10s_iv[2] ));
    DFN1P0 \sersta[3]  (.D(\sersta_4[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[3]_net_1 ));
    NOR3A \fsmmod_RNO_9[2]  (.A(N_1128_2), .B(\sercon[4]_net_1 ), .C(
        N_42), .Y(fsmmod_tr10_8_1));
    NOR2B \fsmmod_RNIR8PG3[2]  (.A(\fsmmod[2]_net_1 ), .B(fsmmod5_i), 
        .Y(N_1127_1));
    NOR3B pedetect_RNIIPFJG (.A(N_195_1), .B(un1_ack_0_sqmuxa_2_0_a2_0)
        , .C(un1_sersta65), .Y(N_63));
    NOR2A \fsmsta_RNIC49B1_0[2]  (.A(\fsmsta[2]_net_1 ), .B(N_731), .Y(
        N_780));
    XOR2 adrcomp_RNO_11 (.A(seradr0apb[1]), .B(\serdat[0]_net_1 ), .Y(
        un1_seradr0_0));
    OR2 \fsmsync_RNI3N2G[1]  (.A(\fsmsync[6]_net_1 ), .B(
        \fsmsync[1]_net_1 ), .Y(SCLO_int5_i_o2_0_0));
    OR3 \serdat_RNI3VQT[3]  (.A(\seradr0_m[3]_net_1 ), .B(
        \sersta_m[0] ), .C(\serdat_m[3] ), .Y(PRDATA_iv_1_0));
    AND2 un1_framesync_1_I_1 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    NOR3A \sercon_RNI8BA4[4]  (.A(\sercon[4]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        N_163));
    DFN1E1P0 busfree (.D(\fsmdet_i[3] ), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_fsmdet), .Q(busfree_net_1));
    DFN1E0C0 \sercon[7]  (.D(I2C_test_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[7]_net_1 ));
    DFN1E1P0 ack_bit (.D(I2C_test_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(ack_bit_0_sqmuxa_1), .Q(ack_bit_net_1));
    NOR2B \fsmsta_RNI0QOK2[2]  (.A(sersta59_3), .B(framesync24), .Y(
        un1_framesync24));
    NOR3A \sercon_RNI2J161[4]  (.A(un1_sersta58), .B(\sercon[4]_net_1 )
        , .C(sercon_0), .Y(framesync10));
    DFN1P0 \SCLI_ff_reg[2]  (.D(\SCLI_ff_reg_4[2] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[2]_net_1 ));
    OR2B adrcomp_RNIT3NJ (.A(adrcomp_net_1), .B(N_94), .Y(
        fsmsta_0_sqmuxa_s5_i_0_0));
    NOR3B \sercon_inferred_clock_RNIGU9MC[3]  (.A(N_809_1), .B(N_1365), 
        .C(fsmsta32_s3_1), .Y(N_812));
    MX2 \serdat_RNO[5]  (.A(I2C_test_0_BIF_1_PWDATA[5]), .B(
        \serdat[4]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[5] ));
    OR3 bsd7_tmp_RNO_0 (.A(bsd7_tmp_0_sqmuxa_3), .B(bsd7_tmp_0_sqmuxa), 
        .C(bsd7_tmp_0_sqmuxa_2), .Y(un1_bsd7_tmp_0_sqmuxa));
    XA1 \indelay_RNO[2]  (.A(indelay_c1), .B(\indelay[2]_net_1 ), .C(
        \fsmsync[3]_net_1 ), .Y(\indelay_RNO[2]_net_1 ));
    AO1D \fsmsync_RNI2IHL3[2]  (.A(N_1377), .B(m16_0), .C(N_76), .Y(
        N_41_mux));
    AO1A adrcompen_RNIJPP05 (.A(fsmsta_N_7_mux), .B(fsmsta_m2_0_a2_2), 
        .C(un1_fsmdet_2_0_0), .Y(N_1363));
    NOR3C \serdat_RNI7QOQ1[0]  (.A(fsmsta_1_sqmuxa_2_s8_i_a2_2), .B(
        fsmsta_1_sqmuxa_2_s8_i_a2_1), .C(fsmsta_1_sqmuxa_2_s8_i_a2_3), 
        .Y(N_223));
    NOR3A \fsmsta_0_RNIEU0T[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_2_0[2] ));
    NOR2B ack_bit_RNO (.A(ack_bit_0_sqmuxa_1_2), .B(sercon_0), .Y(
        ack_bit_0_sqmuxa_1));
    NOR2 \fsmsta_RNIJROE_1[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(sersta74_1));
    OR3 \fsmsync_RNIRSD12[2]  (.A(fsmsync_tr19_i_7_1), .B(
        fsmsync_tr19_i_7_0), .C(fsmsync_tr19_i_7_2), .Y(
        fsmsync_tr19_i_7_4));
    NOR2B \fsmmod_RNO_3[1]  (.A(\fsmmod[0]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmmod_ns_0_0_a2_0_1[1] ));
    NOR3C \fsmmod_ns_i_a3_1_RNO_3[0]  (.A(pedetect_net_1), .B(
        sclscl_net_1), .C(\fsmmod[5]_net_1 ), .Y(N_1114));
    DFN1P0 \fsmsync[0]  (.D(\fsmsync_ns[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmsync[0]_net_1 ));
    NOR2B \SDAI_ff_reg_RNO[0]  (.A(SDA_in), .B(\sercon[6]_net_1 ), .Y(
        \SDAI_ff_reg_4[0] ));
    DFN1E1P0 \fsmsta[0]  (.D(\fsmsta_10[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(N_84), .Q(\fsmsta[0]_net_1 ));
    OR2B SDAInt_RNIMSFB (.A(SDAInt_net_1), .B(SCLInt_net_1), .Y(
        N_1214_1));
    NOR2B \fsmsta_RNINCU41_0[3]  (.A(sersta72_1), .B(fsmsta_m3_e_0), 
        .Y(sersta72));
    NOR3A \fsmsta_RNIL8008[3]  (.A(SCLO_int5_i_a2_0_1_0), .B(
        un1_sersta65_1_2), .C(un1_sersta69_1), .Y(N_195_1));
    NOR2B \fsmmod_RNI55GH[4]  (.A(\fsmmod[4]_net_1 ), .B(SCLInt_net_1), 
        .Y(un1_fsmdet_0_a2_0));
    AOI1B adrcomp_RNO_3 (.A(N_223), .B(ack_net_1), .C(un1_sercon_1_2), 
        .Y(un1_sercon_1_3));
    NOR3C \fsmsta_RNO_14[0]  (.A(framesync24_1), .B(SDAInt_net_1), .C(
        N_1131_4), .Y(SDAInt_m_0_1));
    NOR2B \fsmsta_RNILTOE_0[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(fsmsta_m3_e_0));
    AO1 \fsmsta_RNIEPS92[3]  (.A(sersta79_0), .B(sersta71_2), .C(
        sersta78), .Y(un1_sersta69_0_0_4));
    AO1 \fsmmod_RNI9IEN[2]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .C(\fsmmod[3]_net_1 ), .Y(N_104));
    NOR3A SDAO_int_RNIQP76A (.A(un1_sersta65_s3_0), .B(N_1363), .C(
        fsmsta_nxt19), .Y(fsmsta_nxt20_m));
    OA1B \sercon_RNIP6KMF[4]  (.A(framesync_1_sqmuxa_1), .B(
        framesync_0_sqmuxa_1), .C(framesync10), .Y(framesync_1_m));
    MX2 \fsmsta_RNO_4[1]  (.A(un1_framesync24_2_s4), .B(N_816), .S(
        \COREI2C_0_SDAO_0[0] ), .Y(\fsmsta_10s_0_iv_1[1] ));
    MX2 \indelay_RNO[1]  (.A(\indelay[3]_net_1 ), .B(indelay_n1), .S(
        N_126), .Y(\indelay_RNO[1]_net_1 ));
    DFN1E0C0 \serdat[6]  (.D(\serdat_20[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[6]_net_1 ));
    NOR2B \fsmmod_RNO_2[0]  (.A(\fsmmod[0]_net_1 ), .B(sercon_0), .Y(
        N_1101));
    NOR3A \sercon_RNO_0[4]  (.A(\sercon_8_1[4] ), .B(fsmsta33), .C(
        adrcomp12), .Y(\sercon_8[4] ));
    NOR2A SDAO_int_RNIQKNF (.A(\COREI2C_0_SDAO_0[0] ), .B(SDAInt_net_1)
        , .Y(fsmsta_nxt19));
    NOR2B starto_en_RNO (.A(starto_en_0_sqmuxa), .B(N_1389), .Y(
        starto_en_1_sqmuxa));
    DFN1E0P0 PCLKint (.D(PCLKint_5), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_PCLKint5), .Q(PCLKint_net_1));
    NOR3C \fsmmod_RNO_1[5]  (.A(fsmmod5_i), .B(fsmmod_tr16_3), .C(
        N_1117_4), .Y(N_1145));
    NOR3A SDAO_int_RNO_5 (.A(nedetect_net_1), .B(\framesync[3]_net_1 ), 
        .C(N_1392), .Y(N_158));
    NOR3A \fsmsync_RNO[5]  (.A(sercon_0), .B(\fsmsync_ns_i_0_0[5] ), 
        .C(N_76), .Y(\fsmsync_RNO[5]_net_1 ));
    NOR2B \sercon_0_RNO_7[3]  (.A(adrcomp_net_1), .B(N_94), .Y(
        \sercon_0_a2_3_0[3] ));
    NOR2A SCLInt_RNI1VPD (.A(sercon_0), .B(SCLInt_net_1), .Y(
        un1_sercon_1));
    OR2 SCLInt_RNIRAJO1 (.A(N_76), .B(SCLInt_net_1), .Y(N_101));
    NOR3B SCLO_int_RNO_0 (.A(SCLO_int5_i_a2_0_2), .B(N_195_1), .C(
        N_133), .Y(N_195));
    DFN1E0C0 \serdat[7]  (.D(\serdat_20[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[7]_net_1 ));
    NOR2 \framesync_RNI7BJR_1[0]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(framesync24_1));
    NOR2B \fsmsta_RNIJROE[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(un1_m7_i_a5_1_0));
    OR2A \sercon_inferred_clock_RNID6DF1[3]  (.A(sercon_0), .B(N_780), 
        .Y(N_760));
    NOR3B \fsmsta_RNO_12[0]  (.A(un1_framesync24), .B(
        \fsmsta_nxt_4[0] ), .C(N_1363), .Y(\fsmsta_nxt_4_m[0] ));
    MX2A \framesync_RNO[3]  (.A(framesync_2_sqmuxa), .B(N_678), .S(
        N_670), .Y(\framesync_7[3] ));
    NOR2 SCLO_int_RNO_1 (.A(un1_sercon_1), .B(N_107), .Y(N_194));
    OR2 SCLInt_RNI550J (.A(N_94), .B(un1_sercon_1), .Y(un1_fsmdet_1));
    NOR2 \fsmmod_RNO_8[2]  (.A(\sercon[5]_net_1 ), .B(
        \sercon[4]_net_1 ), .Y(fsmmod_tr10_7_0));
    DFN1C0 \fsmmod[6]  (.D(\fsmmod_ns[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[6]_net_1 ));
    NOR3 adrcompen_RNO_0 (.A(adrcomp12), .B(\fsmdet[3]_net_1 ), .C(
        framesync_0_sqmuxa_1_0), .Y(adrcompen_2_sqmuxa));
    NOR2B \fsmsta_0_RNI44HP1[2]  (.A(sersta69_1), .B(un1_m7_i_a5_1_0), 
        .Y(sersta69));
    NOR3A \framesync_RNIIQ6N1[2]  (.A(framesync24_1), .B(
        \framesync[2]_net_1 ), .C(\framesync[3]_net_1 ), .Y(
        un1_framesync_2));
    DFN1C0 \PCLK_count1[3]  (.D(\PCLK_count1_RNO[3]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\PCLK_count1[3]_net_1 ));
    AO1C \fsmdet_RNO[4]  (.A(\fsmdet[3]_net_1 ), .B(N_145), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO[4]_net_1 ));
    OR2B adrcompen_RNI5PPS (.A(adrcompen_net_1), .B(adrcomp_net_1), .Y(
        N_1388));
    NOR2 \PCLK_count1_RNO[0]  (.A(N_51), .B(\PCLK_count1[0]_net_1 ), 
        .Y(\PCLK_count1_RNO[0]_net_1 ));
    OR2 \PCLK_count1_RNI9TEA3[3]  (.A(N_99), .B(counter_PRESETN), .Y(
        N_51));
    NOR2 \fsmsta_RNILTOE[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta64_1));
    OR2 \fsmdet_RNIVAMP[3]  (.A(N_47), .B(serdat4), .Y(N_48));
    NOR2A \fsmsta_RNIJROE_0[0]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(un1_m7_i_a5_2_0));
    DFN1E0C0 adrcompen (.D(un1_adrcomp_2_sqmuxa_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(adrcompen_2_sqmuxa), .Q(adrcompen_net_1));
    OA1A \framesync_RNIKETCE[3]  (.A(N_195_1), .B(un1_sersta65), .C(
        N_52), .Y(N_1409));
    NOR2B \fsmsta_RNO_2[1]  (.A(\fsmsta_nxt_cnst_m_1[1] ), .B(
        un1_framesync24_6_s7), .Y(\fsmsta_nxt_cnst_m[1] ));
    OA1C \fsmsync_RNO_0[5]  (.A(\fsmsync[2]_net_1 ), .B(N_1389), .C(
        \fsmsync[5]_net_1 ), .Y(\fsmsync_ns_i_0_0[5] ));
    MX2C \indelay_RNO[0]  (.A(\indelay[3]_net_1 ), .B(N_1358), .S(
        N_126), .Y(\indelay_RNO[0]_net_1 ));
    OR2 ack_RNI29B81 (.A(fsmsta33), .B(ack_net_1), .Y(N_1368_2));
    NOR3B \fsmsta_0_RNIPCNDA[4]  (.A(un1_sersta78), .B(framesync24), 
        .C(N_1363), .Y(un1_framesync24_3_s6));
    OA1 \fsmmod_RNO_0[0]  (.A(\fsmmod_ns_i_a3_4_tz[0]_net_1 ), .B(
        fsmmod5_i), .C(\fsmmod_ns_i_a3_2[0]_net_1 ), .Y(
        \fsmmod_ns_i_a3_3_0[0] ));
    XOR2 \fsmsta_RNO_17[0]  (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[0] ));
    NOR2B \fsmmod_RNO_0[4]  (.A(fsmmod_tr14_1), .B(N_1127_1), .Y(
        fsmmod_tr14_2));
    NOR2A \framesync_RNIBFJR_0[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(N_1131_4));
    DFN1P0 PCLKint_ff (.D(PCLKint_ff_RNO_net_1), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(PCLKint_ff_net_1));
    OR2 \fsmsta_RNI56RE3[3]  (.A(sersta75), .B(un1_sersta65_1_2), .Y(
        un1_sersta71));
    OA1A adrcomp_RNO (.A(un1_sercon_1_4), .B(N_205), .C(
        un1_adrcomp_2_sqmuxa), .Y(adrcomp_2_sqmuxa_1));
    AOI1B \sercon_inferred_clock_RNI45A4A[3]  (.A(N_141), .B(sercon_0), 
        .C(un1_adrcomp_2_sqmuxa_0), .Y(un1_adrcomp_2_sqmuxa_1_0));
    NOR2B \fsmsta_RNINCU41[2]  (.A(fsmsta_m3_e_1), .B(sersta64_1), .Y(
        fsmsta_N_7_mux));
    DFN1P0 \PCLK_count1[1]  (.D(\PCLK_count1_RNO[1]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\PCLK_count1_i_0[1] ));
    NOR3C \sersta_RNO_1[4]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(un1_m7_i_a5_1_0), .Y(N_779));
    NOR3 bsd7_RNO_3 (.A(sercon_0), .B(bsd7_tmp_1_sqmuxa_2_i_0), .C(
        nedetect_net_1), .Y(bsd7_1_sqmuxa_1));
    NOR2A \serdat_write_proc.un4_PRDATA_0_a2  (.A(
        I2C_test_0_BIF_1_PADDR[3]), .B(I2C_test_0_BIF_1_PADDR[2]), .Y(
        un4_PRDATA));
    OR3 \fsmsync_RNITNJA2[5]  (.A(N_94), .B(counter_PRESETN_0_2), .C(
        adrcomp12), .Y(counter_PRESETN_0_4));
    OR3 SDAO_int_RNIT7IGI1 (.A(N_662_1), .B(un1_framesync24_3_s6), .C(
        \fsmsta_nxt_cnst_m[4] ), .Y(N_662));
    DFN1P0 \SDAI_ff_reg[1]  (.D(N_34), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\SDAI_ff_reg[1]_net_1 ));
    NOR2A \framesync_RNIOI052_0[3]  (.A(\framesync[3]_net_1 ), .B(
        framesync24), .Y(N_88_1));
    NOR3A \sercon_RNI69A4[2]  (.A(\sercon[2]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        \sercon_m[2] ));
    NOR2 ack_bit_RNO_2 (.A(N_47), .B(N_100), .Y(ack_bit_0_sqmuxa_1_0));
    AO1A \sercon_inferred_clock_RNIJ3BPH[3]  (.A(sercon_0), .B(N_69), 
        .C(N_63), .Y(un1_ack_0_sqmuxa_2));
    MX2B \fsmsta_RNO[1]  (.A(N_659), .B(N_810), .S(N_1363), .Y(
        \fsmsta_10[1] ));
    OR3 SDAO_int_RNO_7 (.A(N_90), .B(N_1395), .C(N_88), .Y(
        SDAO_int_7_0_1));
    AO1 \sersta_RNI9S9J[3]  (.A(\sersta[3]_net_1 ), .B(
        un9_PRDATA_net_1), .C(N_165), .Y(PRDATA_iv_0_0_2));
    OA1C \fsmsync_RNO_0[7]  (.A(\fsmsync[6]_net_1 ), .B(SDAInt_net_1), 
        .C(\fsmsync[7]_net_1 ), .Y(N_174));
    NOR2A \fsmsync_RNI7QMQ2[3]  (.A(m16_0), .B(N_76), .Y(N_40_mux));
    OR3A SCLO_int_RNO (.A(\sercon[6]_net_1 ), .B(N_195), .C(N_194), .Y(
        N_77));
    AO1 SDAO_int_RNICEKC1 (.A(out_en_0), .B(COREI2C_1_SDAO_0), .C(
        SDA_d1), .Y(SDA_d));
    NOR2A \framesync_RNI7BJR_0[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(N_1131_3));
    XOR2 un1_framesync_1_I_15 (.A(\framesync[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    XA1 \sersta_RNO_0[2]  (.A(\fsmsta_0[2]_net_1 ), .B(un1_m7_i_a5_1_0)
        , .C(N_759), .Y(N_772));
    DFN1E0C0 \serdat[2]  (.D(\serdat_20[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[2]_net_1 ));
    DFN1P0 \fsmdet[4]  (.D(\fsmdet_RNO[4]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[4] ));
    NOR3A \fsmsta_0_RNIH8OA1_0[2]  (.A(\fsmsta_0[4]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta_0[3]_net_1 ), .Y(sersta74_0));
    NOR3A \fsmsta_RNO_10[1]  (.A(N_728), .B(\fsmsta[1]_net_1 ), .C(
        fsmsta_nxt93), .Y(N_738));
    DFN1C0 \fsmmod[1]  (.D(\fsmmod_ns[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[1]_net_1 ));
    NOR2 \fsmmod_ns_i_a3_4_tz_1_RNO[0]  (.A(\fsmmod[4]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(\fsmmod_ns_i_a3_4_tz_0[0] ));
    DFN1E0C0 \sercon[6]  (.D(I2C_test_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[6]_net_1 ));
    NOR2A pedetect_RNI537D (.A(pedetect_net_1), .B(N_94), .Y(N_202));
    NOR3B \fsmsta_0_RNIAM584[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_nxt_cnst_i_a4_0[4] ), .C(fsmsta_nxt93), .Y(N_746));
    DFN1P0 \SCLI_ff_reg[0]  (.D(\SCLI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[0]_net_1 ));
    OR3 \sersta_RNO[0]  (.A(N_770), .B(N_771), .C(N_760), .Y(
        \sersta_4[0] ));
    NOR3C \fsmmod_RNO_0[6]  (.A(SCLInt_net_1), .B(\fsmmod[3]_net_1 ), 
        .C(N_120), .Y(\fsmmod_ns_0_0_a2_1[6] ));
    OA1C \fsmsta_0_RNI0KS31[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[2] ));
    MX2 bsd7_tmp_RNO (.A(bsd7_tmp_0_sqmuxa_3), .B(
        I2C_test_0_BIF_1_PWDATA[7]), .S(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_9));
    NOR2B bsd7_RNO_2 (.A(bsd7_tmp_i_m_0), .B(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_i_m));
    DFN1C0 \fsmsync[7]  (.D(\fsmsync_RNO[7]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[7]_net_1 ));
    NOR3A SDAO_int_RNO_6 (.A(N_1388), .B(N_54), .C(ack_bit_net_1), .Y(
        SDAO_int_7_0_a2_2_0));
    NOR2A \fsmsta_RNI1E5M[2]  (.A(N_776), .B(\fsmsta[2]_net_1 ), .Y(
        un1_sersta65_0_a2_0));
    AO1 \fsmmod_RNIRDTE1[4]  (.A(\fsmsync_ns_0_0_a2_3_0[0] ), .B(N_104)
        , .C(\fsmmod[4]_net_1 ), .Y(\fsmsync_ns_0_0_o2_0[0] ));
    DFN1E1C0 \fsmsta_0[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_84), .Q(\fsmsta_0[2]_net_1 ));
    DFN1C0 \PCLK_count1[0]  (.D(\PCLK_count1_RNO[0]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\PCLK_count1[0]_net_1 ));
    NOR3A \sercon_RNI58A4[1]  (.A(\sercon[1]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        N_190));
    NOR3C \sercon_write_proc.un1_PSEL  (.A(I2C_test_0_BIF_1_PSELx), .B(
        I2C_test_0_BIF_1_PENABLE), .C(I2C_test_0_BIF_1_PWRITE), .Y(
        seradr0apb4_0));
    NOR3A \fsmsta_RNO_3[0]  (.A(un1_sersta65_s3_0), .B(N_1363), .C(
        \COREI2C_0_SDAO_0[0] ), .Y(fsmsta_nxt_m));
    OA1A \fsmsta_RNO_16[0]  (.A(N_41_i), .B(N_42), .C(SDAInt_m_a0_1), 
        .Y(\fsmsta_RNO_16[0]_net_1 ));
    NOR3B SDAO_int_RNO_2 (.A(N_195_1), .B(N_1403), .C(un1_sersta65), 
        .Y(N_1401));
    NOR2A \sercon_inferred_clock_RNIERTG[3]  (.A(
        un1_ack_1_sqmuxa_0_a0_1), .B(sercon_0), .Y(
        \sercon_inferred_clock_RNIERTG[3]_net_1 ));
    XA1 \indelay_RNO_0[1]  (.A(\indelay[1]_net_1 ), .B(
        \indelay[0]_net_1 ), .C(\fsmsync[3]_net_1 ), .Y(indelay_n1));
    NOR2B \fsmsync_RNICCPB1[3]  (.A(\fsmsync[3]_net_1 ), .B(N_126), .Y(
        m16_0));
    NOR2B \fsmsta_RNINVOE[4]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(adrcomp7_0_a2_0_0));
    NOR3B \fsmsta_RNI2F5M[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(fsmsta_m3_e_1));
    NOR2B \fsmsta_RNINCU41[3]  (.A(sersta71_1), .B(sersta71_2), .Y(
        sersta71));
    AO1 \fsmsync_RNO_1[2]  (.A(\fsmsync_ns_i_0_a2_0_0[2] ), .B(N_128), 
        .C(N_76), .Y(\fsmsync_ns_i_0_0[2] ));
    AOI1B ack_RNI6ILM9 (.A(fsmsta_1_sqmuxa_1_s9_1), .B(N_1363), .C(
        \fsmsta_10k_i_a2_0[2] ), .Y(N_811));
    NOR3A \sercon_inferred_clock_RNI0L86[3]  (.A(sercon_0), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        sercon_m_0));
    AO1 \sersta_RNI7Q9J[2]  (.A(\sersta[2]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[5]_net_1 ), .Y(
        PRDATA_iv_0_0_d0));
    DFN1E1P0 \fsmsta[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(N_84), .Q(\fsmsta[3]_net_1 ));
    DFN1C0 \sersta[1]  (.D(\sersta_4[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[1]_net_1 ));
    OR2A \SCLI_ff_reg_RNIP31G[0]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[0]_net_1 ), .Y(\SCLI_ff_reg_4[1] ));
    OR2A bsd7_RNITT7V6 (.A(N_45), .B(SDAO_int_7_0_o2_4_0), .Y(N_68));
    NOR3B SDAO_int_RNO_11 (.A(N_1388), .B(bsd7_net_1), .C(N_54), .Y(
        SDAO_int_7_0_a2_1_0));
    NOR2 \fsmsta_RNIEPS92_1[3]  (.A(sersta75), .B(sersta73), .Y(
        SCLO_int5_i_a2_0_1_0));
    NOR2A \fsmmod_RNO_1[0]  (.A(\fsmmod[0]_net_1 ), .B(fsmmod5_i), .Y(
        N_1099));
    OR2A PCLKint_RNO (.A(PCLKint_net_1), .B(counter_PRESETN), .Y(
        PCLKint_5));
    NOR2 \fsmmod_RNIDJKF[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(\fsmsync_ns_0_0_a2_3_0[0] ));
    NOR3C adrcomp_RNO_13 (.A(adrcompen_net_1), .B(\sercon[2]_net_1 ), 
        .C(nedetect_net_1), .Y(un1_sercon_1_1));
    NOR2B \sercon_0_RNO_3[3]  (.A(\sercon_0_a2_3_0[3] ), .B(
        un1_framesync_4), .Y(N_210));
    NOR3C \seradr0_m[7]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[7]), .Y(
        \seradr0_m[7]_net_1 ));
    OA1A ack_bit_RNO_0 (.A(N_195_1), .B(un1_sersta65), .C(
        ack_bit_0_sqmuxa_1_1), .Y(ack_bit_0_sqmuxa_1_2));
    NOR2B \framesync_RNO_0[1]  (.A(I_15), .B(un1_framesync_4_sqmuxa), 
        .Y(N_676));
    NOR2A \fsmmod_ns_i_a3_1_RNO_2[0]  (.A(\sercon[5]_net_1 ), .B(
        PCLKint_ff_net_1), .Y(\fsmmod_ns_i_a3_0_tz[0] ));
    AO1 \serdat_RNIFRRE[7]  (.A(\serdat[7]_net_1 ), .B(un4_PRDATA), .C(
        \sercon_m[7] ), .Y(PRDATA_iv_1_4));
    NOR2 \sercon_RNIKB0N[4]  (.A(N_94), .B(adrcomp12), .Y(
        un1_adrcomp_2_sqmuxa_0));
    OR2A PCLKint_ff_RNIRDPI (.A(PCLKint_net_1), .B(PCLKint_ff_net_1), 
        .Y(N_1389));
    AOI1B pedetect_RNI8HPQ5 (.A(un1_sersta64_0), .B(framesync24), .C(
        fsmmod_m1_e_3), .Y(N_1131_10));
    NOR3B \fsmmod_RNI0MJQ[4]  (.A(PCLKint_ff_net_1), .B(
        \fsmmod[4]_net_1 ), .C(PCLKint_net_1), .Y(fsmsta33));
    OR2 pedetect_RNIS6A97 (.A(fsmsta_1_sqmuxa_2_s8_i_0_3), .B(N_121), 
        .Y(N_1368));
    NOR2A PCLK_count1_ov_RNO (.A(N_99), .B(counter_PRESETN), .Y(
        PCLK_count1_1_sqmuxa));
    OR2 \fsmsta_RNIEPS92_0[3]  (.A(sersta72), .B(sersta71), .Y(
        un1_sersta65_1_2));
    OR3A SDAO_int_RNO_3 (.A(N_1388), .B(N_54), .C(N_1395), .Y(
        SDAO_int_1_sqmuxa_1_i_0));
    OR2A \indelay_RNO_0[0]  (.A(\fsmsync[3]_net_1 ), .B(
        \indelay[0]_net_1 ), .Y(N_1358));
    NOR2A \fsmmod_RNO_1[6]  (.A(\fsmmod[6]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_0_a2_0_0[6] ));
    MX2B ack_RNIK90G3 (.A(\fsmsta_0[3]_net_1 ), .B(ack_net_1), .S(
        fsmsta_nxt93), .Y(\fsmsta_nxt_cnst[3] ));
    DFN1C0 \fsmsync[6]  (.D(\fsmsync_RNO[6]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[6]_net_1 ));
    OR2A \sercon_RNIOONV[5]  (.A(\sercon[5]_net_1 ), .B(sersta59_3), 
        .Y(un1_sersta58));
    NOR2 \fsmsync_RNO[7]  (.A(N_174), .B(N_76), .Y(
        \fsmsync_RNO[7]_net_1 ));
    NOR3 bsd7_RNO_4 (.A(sercon_0), .B(bsd7_tmp_1_sqmuxa_2_i_0), .C(
        \serdat[7]_net_1 ), .Y(\serdat_i_m[7] ));
    OR2 PCLKint_ff_RNO (.A(counter_PRESETN), .B(PCLKint_net_1), .Y(
        PCLKint_ff_RNO_net_1));
    DFN1E1P0 SDAInt (.D(SDAInt6), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_SDAInt5), .Q(SDAInt_net_1));
    OA1B \framesync_RNIF5D91[1]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(\framesync[3]_net_1 ), .Y(N_214));
    OR2 \fsmmod_RNI4SPV[4]  (.A(fsmsta33), .B(N_94), .Y(
        un1_fsmdet_2_0_0));
    OR2A \framesync_RNIOI052[3]  (.A(\framesync[3]_net_1 ), .B(
        N_1131_8), .Y(N_56));
    AO1A \sercon_0_RNO_4[3]  (.A(N_1389), .B(un1_fsmdet_0_a2_0), .C(
        N_209), .Y(\sercon_0_o2_2_0[3] ));
    NOR2 \fsmsta_RNILTOE_1[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_1128_2));
    NOR2B adrcompen_RNI5PPS_0 (.A(adrcompen_net_1), .B(adrcomp_net_1), 
        .Y(fsmsta_nxt93_0));
    DFN1E1C0 \fsmsta[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_84), .Q(\fsmsta[2]_net_1 ));
    OR3A \fsmmod_RNO[0]  (.A(\fsmmod_ns_i_a3_3_0[0] ), .B(N_1099), .C(
        N_1101), .Y(\fsmmod_RNO[0]_net_1 ));
    OA1A ack_RNIOS4T3 (.A(fsmsta_0_sqmuxa_2_s7_0_a2_3_0), .B(N_1368_2), 
        .C(\fsmsta_10k_0_a2_0[4] ), .Y(\fsmsta_10k_0_a2_1[4] ));
    NOR2 \serdat_RNI5FPG[4]  (.A(\serdat[5]_net_1 ), .B(
        \serdat[4]_net_1 ), .Y(fsmsta_1_sqmuxa_2_s8_i_a2_1));
    NOR3C \fsmsta_RNO_8[1]  (.A(N_732), .B(fsmsta_nxt93_0), .C(
        framesync24), .Y(N_737));
    DFN1C0 \fsmdet[0]  (.D(SCLInt_net_1), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(\fsmdet_i_0[0] ));
    MX2 \sercon_0_RNO_6[3]  (.A(I2C_test_0_BIF_1_PWDATA[3]), .B(
        sercon_0), .S(N_100), .Y(\sercon_0_0_0[3] ));
    DFN1P0 \SDAI_ff_reg[0]  (.D(\SDAI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[0]_net_1 ));
    OR2 ack_RNO (.A(bsd7_tmp_0_sqmuxa_1_1), .B(SDAInt_net_1), .Y(
        ack_12));
    OR3 \fsmsync_RNI9CJJ1[5]  (.A(counter_PRESETN_0_0), .B(
        \fsmsync[5]_net_1 ), .C(N_157), .Y(counter_PRESETN_0_2));
    NOR3C \fsmmod_RNO_1[1]  (.A(fsmmod5_i), .B(
        \fsmmod_ns_0_0_a2_0_3[1] ), .C(N_1117_4), .Y(N_83));
    MX2 \serdat_RNO[7]  (.A(I2C_test_0_BIF_1_PWDATA[7]), .B(
        \serdat[6]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[7] ));
    MX2 SDAO_int_RNI45RN22 (.A(N_662), .B(N_813), .S(N_1363), .Y(
        \fsmsta_10[4] ));
    NOR3B \fsmmod_RNO_10[3]  (.A(\sercon[5]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\sercon[4]_net_1 ), .Y(
        fsmmod_tr12_2_0));
    DFN1C0 \fsmdet[3]  (.D(\fsmdet_RNO[3]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[3]_net_1 ));
    NOR3B \fsmmod_RNO_6[3]  (.A(\sercon[5]_net_1 ), .B(
        \fsmsta_0[4]_net_1 ), .C(\sercon[4]_net_1 ), .Y(
        fsmmod_tr12_0_0));
    NOR3B \fsmmod_RNO_2[5]  (.A(fsmmod_tr16_1), .B(fsmmod_tr16_0), .C(
        N_1389), .Y(fsmmod_tr16_3));
    OA1A \fsmsta_RNO_15[0]  (.A(N_41_i), .B(N_42), .C(un1_fsmdet_2_0_0)
        , .Y(\fsmsta_RNO_15[0]_net_1 ));
    AO1C \fsmmod_RNO_1[4]  (.A(N_156_1), .B(\fsmmod_ns_i_a3_0_tz[4] ), 
        .C(fsmmod5_i), .Y(\fsmmod_ns_i_a3_1[4] ));
    NOR2A PCLKint_RNO_0 (.A(PCLK_count2_ov_i_0), .B(counter_PRESETN), 
        .Y(un1_PCLKint5));
    OA1 \fsmsta_0_RNIA29B1[3]  (.A(un1_m7_i_a5_1_0), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(un1_m7_i_0));
    MX2A \framesync_RNO[0]  (.A(framesync_2_sqmuxa), .B(N_675), .S(
        N_670), .Y(\framesync_7[0] ));
    AOI1B \fsmmod_RNO_0[5]  (.A(sclscl_net_1), .B(pedetect_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(fsmmod_tr17_0));
    MX2 \serdat_RNO[4]  (.A(I2C_test_0_BIF_1_PWDATA[4]), .B(
        \serdat[3]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[4] ));
    NOR2B un1_framesync_1_I_20 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \framesync[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    OR3 \sersta_RNO_0[3]  (.A(N_774), .B(N_776), .C(sersta81_3), .Y(
        \sersta_4_0_1[3] ));
    NOR2B pedetect_RNIO9VC1 (.A(pedetect_net_1), .B(fsmsta_N_7_mux), 
        .Y(un1_sersta64_0));
    OR2A nedetect_RNI98184 (.A(un1_nedetect), .B(framesync_1_sqmuxa_2), 
        .Y(un1_framesync_4_sqmuxa));
    OA1B \framesync_RNIEUIV4[1]  (.A(un1_framesync24_1), .B(N_214), .C(
        N_1367_2), .Y(N_200));
    DFN1E0C0 \sercon[0]  (.D(I2C_test_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[0]_net_1 ));
    OR3 adrcomp_RNO_6 (.A(un1_seradr0_1_0), .B(un1_seradr0_0), .C(
        un1_seradr0_6), .Y(un1_seradr0_NE_3));
    NOR2A \fsmsta_RNO_18[0]  (.A(SDAInt_m_a0_0), .B(fsmsta_N_7_mux), 
        .Y(SDAInt_m_a0_1));
    NOR2 \fsmmod_RNIBJQK[1]  (.A(fsmsta32_s3_1), .B(
        ens1_pre_0_sqmuxa_s2_1), .Y(\fsmsta_10k_0_a2_0[4] ));
    AO1A \sercon_0_RNO_2[3]  (.A(N_121), .B(\sercon_0_a2_1_1[3] ), .C(
        \sercon_0_0_0[3] ), .Y(\sercon_0_0_1[3] ));
    NOR3A \fsmsta_RNI3G5M_0[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta71_1));
    NOR2B \serdat_RNI09HA[3]  (.A(\serdat[3]_net_1 ), .B(un4_PRDATA), 
        .Y(\serdat_m[3] ));
    XOR2 adrcomp_RNO_9 (.A(seradr0apb[3]), .B(\serdat[2]_net_1 ), .Y(
        un1_seradr0_2));
    NOR2 \fsmsta_RNIP0T51[3]  (.A(N_726), .B(un1_m7_i_a5_1_0), .Y(
        \fsmsta_nxt_cnst_i_a4_0[4] ));
    DFN1C0 \fsmmod[3]  (.D(\fsmmod_RNO[3]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[3]_net_1 ));
    OR2A \framesync_RNIDEVF[1]  (.A(\sercon[4]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(fsmsync_tr19_i_7_2));
    NOR2 SCLO_int_RNO_3 (.A(N_107), .B(sersta74), .Y(
        SCLO_int5_i_a2_0_0));
    NOR3C \fsmsta_RNO_13[0]  (.A(fsmsta_nxt93_0), .B(ack_net_1), .C(
        N_759), .Y(fsmsta_m2_i_a3_1));
    NOR2B \fsmsync_RNO_5[0]  (.A(\fsmsync[0]_net_1 ), .B(SCLInt_net_1), 
        .Y(\fsmsync_ns_0_0_a2_0_0[0] ));
    DFN1E0C0 \serdat[4]  (.D(\serdat_20[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[4]_net_1 ));
    AO1A \sercon_RNI19RMI[2]  (.A(\fsmsta_nxt_34[1] ), .B(
        un1_framesync24_3_s6), .C(\fsmsta_nxt_4_i_m[2] ), .Y(
        \fsmsta_10s_iv_0[2] ));
    DFN1P0 \fsmdet[1]  (.D(\fsmdet_RNO[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[1] ));
    OR2B \sersta_RNO_2[4]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_o3_0[4] ));
    DFN1P0 \framesync[2]  (.D(\framesync_7[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[2]_net_1 ));
    NOR3B \sercon_RNO_1[4]  (.A(\sercon[4]_net_1 ), .B(
        \sercon[6]_net_1 ), .C(\fsmdet[5]_net_1 ), .Y(\sercon_8_1[4] ));
    NOR3A ack_RNIB6458 (.A(un1_framesync24), .B(N_1363), .C(
        \fsmsta_nxt_4[2] ), .Y(\fsmsta_nxt_4_i_m[2] ));
    XOR2 \PCLK_count1_RNO_0[1]  (.A(\PCLK_count1[0]_net_1 ), .B(
        \PCLK_count1_i_0[1] ), .Y(PCLK_count1_n1_i_0));
    OR2 SCLO_int_inferred_clock_RNI92133 (.A(counter_PRESETN_0_4), .B(
        N_156), .Y(counter_PRESETN));
    OA1C \fsmsync_RNO[4]  (.A(N_126), .B(\fsmsync[4]_net_1 ), .C(N_101)
        , .Y(\fsmsync_RNO[4]_net_1 ));
    OR3A \fsmsync_RNO_0[2]  (.A(SCLInt_net_1), .B(N_1389), .C(
        \fsmsync_ns_0_0_o2_0[0] ), .Y(N_142));
    DFN1E0C0 \serdat[3]  (.D(\serdat_20[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[3]_net_1 ));
    NOR2B ack_RNIK3F6B (.A(\fsmsta_10k_0_a2_1[4] ), .B(N_1368), .Y(
        N_813));
    NOR3C \PRDATA_iv_0_a2_0[4]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[4]), .Y(N_161));
    NOR2A \fsmsta_RNIMUOE_0[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta76_0));
    OR3 \sersta_RNO[2]  (.A(N_772), .B(N_773), .C(N_760), .Y(
        \sersta_4[2] ));
    OR3 \sercon_0_RNO_1[3]  (.A(N_210), .B(\sercon_0_o2_2_0[3] ), .C(
        N_200), .Y(N_232));
    OR3A \sercon_inferred_clock_RNIC24J5[3]  (.A(un1_framesync_4), .B(
        fsmsta_0_sqmuxa_s5_i_0_1), .C(sercon_0), .Y(N_1365));
    NOR3C adrcompen_RNI6MQ41 (.A(adrcomp_net_1), .B(adrcompen_net_1), 
        .C(pedetect_net_1), .Y(SDAInt_m_a0_0));
    NOR2A adrcomp_RNIQ1BM (.A(\fsmmod[0]_net_1 ), .B(adrcomp_net_1), 
        .Y(N_1406));
    OR3A \sercon_0_o2_0[3]  (.A(seradr0apb4_0), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        N_100));
    OA1 \fsmsync_RNO_1[0]  (.A(N_107), .B(\fsmsync_ns_0_0_o2_0_1[0] ), 
        .C(N_76), .Y(N_169));
    DFN1E0P0 bsd7 (.D(bsd7_12_iv), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_SCLI_ff_reg_1_sqmuxa_1), .Q(bsd7_net_1));
    DFN1P0 \SDAI_ff_reg[2]  (.D(N_32), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(\SDAI_ff_reg[2]_net_1 ));
    NOR2 adrcomp_RNO_1 (.A(N_102), .B(fsmsta_N_7_mux), .Y(N_205));
    OR2A \fsmsta_RNO_11[1]  (.A(fsmsta_nxt86), .B(ack_net_1), .Y(N_732)
        );
    OR2A \SCLI_ff_reg_RNO[2]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[1]_net_1 ), .Y(\SCLI_ff_reg_4[2] ));
    OR2A \fsmdet_RNI13VC5[3]  (.A(N_45), .B(N_48), .Y(
        bsd7_tmp_1_sqmuxa_2_i_0));
    OR3C \framesync_RNIC2D91[0]  (.A(\framesync[2]_net_1 ), .B(
        \framesync[0]_net_1 ), .C(\framesync[1]_net_1 ), .Y(N_1392));
    NOR3A \fsmsta_RNO_11[0]  (.A(SDAInt_m_0_1), .B(
        \fsmsta_RNO_15[0]_net_1 ), .C(\fsmsta_RNO_16[0]_net_1 ), .Y(
        SDAInt_m_0_3));
    NOR3B ack_RNIB6458_0 (.A(un1_framesync24), .B(\fsmsta_nxt_4[3] ), 
        .C(N_1363), .Y(\fsmsta_nxt_4_m[3] ));
    NOR3A \fsmsta_RNI2F5M_1[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(sersta72_1));
    DFN1C0 \indelay[0]  (.D(\indelay_RNO[0]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[0]_net_1 ));
    OR3 nedetect_RNIMETA2 (.A(N_1131_8), .B(un1_fsmdet_1), .C(
        nedetect_net_1), .Y(un1_nedetect));
    NOR2A \fsmmod_RNIRDTE1[5]  (.A(fsmsync_tr19_i_a2_0), .B(N_54), .Y(
        N_76));
    NOR3A busfree_RNI5AFR_0 (.A(busfree_net_1), .B(\fsmmod[5]_net_1 ), 
        .C(SCLInt_net_1), .Y(N_157));
    NOR2B \sercon_inferred_clock_RNI253H5[3]  (.A(bsd7_tmp_0_sqmuxa_1), 
        .B(serdat4), .Y(bsd7_tmp_0_sqmuxa_2));
    DFN1C0 \sersta[2]  (.D(\sersta_4[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[2]_net_1 ));
    NOR3B \fsmsync_RNO_0[6]  (.A(N_29_7), .B(N_127), .C(
        \fsmsync[6]_net_1 ), .Y(N_175));
    DFN1P0 \framesync[3]  (.D(\framesync_7[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[3]_net_1 ));
    NOR2A \fsmdet_RNIB0VV1[5]  (.A(N_223), .B(N_94), .Y(
        fsmsta_0_sqmuxa_2_s7_0_a2_3_0));
    NOR2 \fsmsync_RNO_2[2]  (.A(\fsmsync[1]_net_1 ), .B(
        \fsmsync[0]_net_1 ), .Y(\fsmsync_ns_i_0_a2_0_0[2] ));
    DFN1E1P0 ack (.D(ack_12), .CLK(PCLK_c), .PRE(PRESETN_c), .E(N_37), 
        .Q(ack_net_1));
    NOR2B \fsmsta_RNINCU41_0[2]  (.A(sersta78_1), .B(sersta74_1), .Y(
        sersta78));
    NOR2B un1_framesync_1_I_22 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \framesync[2]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_12[0] ));
    NOR3B \fsmmod_RNIUJJQ[2]  (.A(PCLKint_ff_net_1), .B(
        \fsmmod[2]_net_1 ), .C(PCLKint_net_1), .Y(fsmmod_m1_e_1));
    NOR3B pedetect_RNIVAIUF (.A(N_195_1), .B(un1_ack_1_sqmuxa_0_a0_2), 
        .C(un1_sersta65), .Y(N_1_8));
    NOR2A \fsmmod_RNO_0[1]  (.A(\fsmmod[1]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_0_a2_0[1] ));
    NOR2 \fsmsta_RNIKSOE_1[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(un1_m7_i_a5_0));
    DFN1E1P0 \fsmsta[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(N_84), .Q(\fsmsta[4]_net_1 ));
    AO1 SDAO_int_RNI36VTL (.A(un1_framesync24_2_s4), .B(
        \COREI2C_0_SDAO_0[0] ), .C(un1_framesync24_1_s5), .Y(N_662_1));
    NOR3C \PRDATA_iv_0_a2_0[6]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[6]), .Y(N_165));
    OR2A nedetect_RNO_0 (.A(\sercon[6]_net_1 ), .B(un1_SCLI_ff_reg_1), 
        .Y(un1_serdat52));
    AO1 SDAO_int_RNO_1 (.A(SDAO_int_7_0_a2_2_0), .B(N_1409), .C(
        SDAO_int_7_0_1), .Y(SDAO_int_7_0_2));
    OR2 \fsmsta_RNIKSOE[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_763));
    DFN1E1P0 bsd7_tmp (.D(bsd7_tmp_9), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_bsd7_tmp_0_sqmuxa), .Q(bsd7_tmp_net_1));
    NOR3B \fsmmod_RNO_11[3]  (.A(\sercon[5]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\sercon[4]_net_1 ), .Y(fsmmod_tr12_3_0));
    AO1 \fsmdet_RNO[2]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[2] ), .C(
        N_1216_1), .Y(\fsmdet_RNO[2]_net_1 ));
    DFN1C0 \fsmsync[2]  (.D(\fsmsync_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[2]_net_1 ));
    NOR3C SDAInt_RNO (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \SDAI_ff_reg[2]_net_1 ), .C(\SDAI_ff_reg[0]_net_1 ), .Y(
        SDAInt6));
    NOR3A \fsmmod_RNO_8[3]  (.A(\fsmmod[3]_net_1 ), .B(
        PCLKint_ff_net_1), .C(PCLKint_net_1), .Y(fsmmod_tr13_2_1));
    OR2 \sercon_RNITLV3[2]  (.A(\sercon[2]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmsta_nxt_34[1] ));
    OR2 \fsmsync_RNI3N2G[2]  (.A(\fsmsync[2]_net_1 ), .B(
        \fsmsync[5]_net_1 ), .Y(N_103));
    OR2 \framesync_RNIR7QI2[0]  (.A(un1_framesync), .B(framesync24), 
        .Y(un1_framesync24_1));
    NOR3B \sercon_inferred_clock_RNI9TNN3[3]  (.A(un1_framesync_4), .B(
        N_94), .C(sercon_0), .Y(N_201));
    NOR3B pedetect_RNIDPPC (.A(pedetect_net_1), .B(\sercon[6]_net_1 ), 
        .C(\fsmdet[3]_net_1 ), .Y(un1_ack_1_sqmuxa_0_a0_1));
    NOR2B \fsmsta_RNINCU41_1[3]  (.A(sersta73_0), .B(fsmsta_m3_e_0), 
        .Y(sersta73));
    NOR2B \fsmmod_RNI37DA[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ens1_pre_0_sqmuxa_s2_1));
    NOR2B ack_RNIOIHF (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[3] ));
    DFN1E0C0 \sercon[1]  (.D(I2C_test_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[1]_net_1 ));
    AOI1B \sercon_inferred_clock_RNIG306B[3]  (.A(adrcomp7_0_a2_0_1), 
        .B(sercon_0), .C(un1_adrcomp_2_sqmuxa_1_0), .Y(
        un1_adrcomp_2_sqmuxa));
    NOR3B \fsmmod_RNO_7[3]  (.A(\sercon[5]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\sercon[4]_net_1 ), .Y(
        fsmmod_tr12_1_0));
    MX2 \fsmsta_RNO[0]  (.A(N_658), .B(N_809), .S(N_1363), .Y(
        \fsmsta_10[0] ));
    OR3 \SCLI_ff_reg_RNIDVH91[2]  (.A(\SCLI_ff_reg[0]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[1]_net_1 ), .Y(
        un1_SCLI_ff_reg));
    NOR2A SCLInt_RNINV6A2 (.A(N_1131_8), .B(un1_fsmdet_1), .Y(
        framesync_2_sqmuxa));
    AO1 \serdat_RNIHKND[0]  (.A(\serdat[0]_net_1 ), .B(un4_PRDATA), .C(
        N_191), .Y(PRDATA_0_iv_0_0[0]));
    NOR3A \PCLK_count1_RNI0RD7[3]  (.A(\PCLK_count1[3]_net_1 ), .B(
        \PCLK_count1_i_0[1] ), .C(\PCLK_count1_i_0[2] ), .Y(N_99));
    DFN1E0C0 nedetect (.D(N_80), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        un1_serdat52), .Q(nedetect_net_1));
    NOR2A \sersta_RNO_1[3]  (.A(N_763), .B(N_759), .Y(N_775));
    OA1C \PCLK_count1_RNO[3]  (.A(PCLK_count1_n3_i_0_tz), .B(
        \PCLK_count1[3]_net_1 ), .C(N_51), .Y(
        \PCLK_count1_RNO[3]_net_1 ));
    OR2 \fsmdet_RNO_0[4]  (.A(\fsmdet_i_0[4] ), .B(SDAInt_net_1), .Y(
        N_145));
    OR3 \framesync_RNIDLEH8[2]  (.A(N_88_1), .B(
        ens1_pre_1_sqmuxa_1_s6_i_0_0), .C(N_184), .Y(N_1367));
    DFN1P0 \SCLI_ff_reg[1]  (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[1]_net_1 ));
    OR2A SDAInt_RNIMSFB_0 (.A(SCLInt_net_1), .B(SDAInt_net_1), .Y(
        N_1216_1));
    NOR2B \fsmsta_RNIC49B1[2]  (.A(N_731), .B(\fsmsta[2]_net_1 ), .Y(
        N_740));
    NOR2B \SDAI_ff_reg_RNO[2]  (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(N_32));
    OR2 \fsmsta_RNIRGFU2[4]  (.A(N_211), .B(N_212), .Y(un1_sersta65));
    NOR3A \sercon_RNIADA4[6]  (.A(\sercon[6]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        N_167));
    NOR3A \fsmsync_RNO_1[6]  (.A(N_29_7), .B(SDAInt_net_1), .C(
        \fsmsync[5]_net_1 ), .Y(N_176));
    OR2A bsd7_RNIR5VB2 (.A(N_56), .B(bsd7_net_1), .Y(
        SDAO_int_7_0_o2_4_0));
    DFN1C0 PCLK_count1_ov (.D(PCLK_count1_1_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(PCLK_count1_ov_net_1));
    XO1 adrcomp_RNO_4 (.A(\serdat[5]_net_1 ), .B(seradr0apb[6]), .C(
        un1_seradr0_4), .Y(un1_seradr0_NE_2));
    NOR3B \fsmsta_RNO_7[0]  (.A(N_728), .B(\fsmsta[0]_net_1 ), .C(
        fsmsta_nxt93), .Y(N_733));
    NOR2A ack_bit_RNO_1 (.A(ack_bit_0_sqmuxa_1_0), .B(N_45), .Y(
        ack_bit_0_sqmuxa_1_1));
    OR2 \framesync_RNI4LDE3[2]  (.A(un1_framesync_2), .B(N_1131_8), .Y(
        un1_framesync_4));
    OR2A \fsmdet_RNICSO4[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(N_47));
    NOR3C \fsmmod_RNO_2[4]  (.A(N_1131_3), .B(\sercon[4]_net_1 ), .C(
        N_1131_4), .Y(fsmmod_tr14_1));
    NOR2B \fsmmod_RNI8CDA[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(fsmsta32_s3_1));
    DFN1E0C0 starto_en (.D(starto_en_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(starto_en_1_sqmuxa), .Q(starto_en_net_1));
    OR3A \sersta_RNO[4]  (.A(sercon_0), .B(N_778), .C(N_779), .Y(
        \sersta_4[4] ));
    NOR3C \fsmmod_RNO_6[2]  (.A(PCLKint_net_1), .B(\fsmmod[2]_net_1 ), 
        .C(N_1125_2), .Y(N_1125));
    NOR2A \fsmsta_RNIBSHT[4]  (.A(adrcomp7_0_a2_0_0), .B(N_763), .Y(
        adrcomp7_0_a2_0_1));
    NOR2B \fsmsta_RNIKSOE_0[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(sersta71_2));
    MX2 \framesync_RNO[2]  (.A(\fsmdet[3]_net_1 ), .B(N_677), .S(N_670)
        , .Y(\framesync_7[2] ));
    OA1B \fsmsta_RNO_2[0]  (.A(un1_framesync24_2_s4), .B(
        un1_framesync24_1_s5), .C(\COREI2C_0_SDAO_0[0] ), .Y(
        fsmsta_nxt_m_0));
    NOR3 \serdat_RNI326P[1]  (.A(\serdat[2]_net_1 ), .B(
        \serdat[1]_net_1 ), .C(\serdat[6]_net_1 ), .Y(
        fsmsta_1_sqmuxa_2_s8_i_a2_3));
    OR3A \indelay_RNI70PK[1]  (.A(\indelay[0]_net_1 ), .B(
        \indelay[1]_net_1 ), .C(\indelay[3]_net_1 ), .Y(
        \fsmsync_ns_i_a4_0_o2_1[4] ));
    OA1 \sersta_RNO_0[4]  (.A(N_763), .B(\sersta_4_0_o3_0[4] ), .C(
        \fsmsta_0[4]_net_1 ), .Y(N_778));
    NOR2A \sercon_RNI1R4B3[4]  (.A(fsmmod5_i), .B(\sercon[4]_net_1 ), 
        .Y(N_1125_2));
    OR2A \fsmsta_RNI654N[3]  (.A(fsmsta_nxt19), .B(\fsmsta[3]_net_1 ), 
        .Y(N_726));
    AO1 \sersta_RNIBU9J[4]  (.A(\sersta[4]_net_1 ), .B(
        un9_PRDATA_net_1), .C(\seradr0_m[7]_net_1 ), .Y(PRDATA_iv_0_2));
    OR2 \fsmsta_RNIG25H4[3]  (.A(sersta73), .B(un1_sersta69_1), .Y(
        un1_sersta69));
    OR3 \fsmsta_RNO_0[1]  (.A(\fsmsta_nxt_cnst_m[1] ), .B(
        \fsmsta_10s_0_iv_0[1] ), .C(\fsmsta_10s_0_iv_1[1] ), .Y(N_659));
    NOR2B \indelay_RNI39RD[1]  (.A(\indelay[1]_net_1 ), .B(
        \indelay[0]_net_1 ), .Y(indelay_c1));
    NOR3A \framesync_RNIF5D91_0[1]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(\framesync[1]_net_1 ), .Y(
        \framesync_RNIF5D91_0[1]_net_1 ));
    OA1C \fsmmod_RNO_9[3]  (.A(\fsmmod[3]_net_1 ), .B(SCLInt_net_1), 
        .C(fsmmod_tr13_1_1), .Y(\fsmmod_ns_i_a3_0_tz[3] ));
    NOR3A \fsmmod_RNO_0[3]  (.A(\fsmmod_ns_i_a3_0_0[3] ), .B(N_1133), 
        .C(N_1134), .Y(\fsmmod_ns_i_a3_2[3] ));
    NOR2B \serdat_write_proc.serdat4  (.A(seradr0apb4_0), .B(
        un4_PRDATA), .Y(serdat4));
    DFN1C0 \indelay[3]  (.D(\indelay_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\indelay[3]_net_1 ));
    DFN1C0 \fsmsync[3]  (.D(\fsmsync_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[3]_net_1 ));
    DFN1P0 \fsmdet[6]  (.D(\fsmdet_RNO[6]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[6] ));
    AO1A bsd7_RNO_1 (.A(sercon_0), .B(\PWDATA_i_m_2[7] ), .C(
        \fsmdet[3]_net_1 ), .Y(bsd7_12_iv_1_out));
    OR3A \fsmmod_RNI93B01[3]  (.A(\sercon[6]_net_1 ), .B(N_1406), .C(
        \fsmmod[3]_net_1 ), .Y(N_1395));
    NOR2A sclscl_RNO (.A(\fsmmod[5]_net_1 ), .B(pedetect_net_1), .Y(
        sclscl_1_sqmuxa));
    NOR2A pedetect_RNI200L5 (.A(N_69), .B(N_45), .Y(
        un1_ack_0_sqmuxa_2_0_a2_0));
    DFN1P0 PCLK_count2_ov (.D(PCLK_count2_ov_0_sqmuxa), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(PCLK_count2_ov_i_0));
    OA1 \fsmsync_RNO_3[0]  (.A(N_1389), .B(\fsmsync_ns_0_0_o2_0[0] ), 
        .C(\fsmsync_ns_0_0_a2_0_0[0] ), .Y(N_170));
    DFN1E1P0 \fsmsta_0[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(N_84), .Q(\fsmsta_0[3]_net_1 ));
    OR3 \fsmmod_RNIEO6G2[1]  (.A(fsmsta33), .B(N_209), .C(N_1367_2), 
        .Y(ens1_pre_1_sqmuxa_1_s6_i_0_0));
    NOR3A \fsmsta_RNIV7U16[2]  (.A(\fsmsta_nxt_cnst_i_m_1[2] ), .B(
        N_740), .C(N_742), .Y(\fsmsta_nxt_cnst_i_m_2[2] ));
    OR3 nedetect_RNI0SJOI (.A(framesync_1_sqmuxa_1), .B(
        framesync_0_sqmuxa_1), .C(un1_framesync_4_sqmuxa), .Y(N_670));
    NOR2A \fsmsta_RNIMUOE[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(N_776));
    AO1A \fsmsync_RNO_0[0]  (.A(N_126), .B(SCLInt_net_1), .C(N_170), 
        .Y(\fsmsync_ns_0_0_0[0] ));
    OR3 \fsmsync_RNO_4[0]  (.A(\fsmsync[0]_net_1 ), .B(
        \fsmsync[7]_net_1 ), .C(\fsmsync[3]_net_1 ), .Y(
        \fsmsync_ns_0_0_o2_0_1[0] ));
    NOR2B \framesync_RNO_0[2]  (.A(I_18), .B(un1_framesync_4_sqmuxa), 
        .Y(N_677));
    NOR2A pedetect_RNO (.A(un1_SCLI_ff_reg_1), .B(SCLInt_net_1), .Y(
        pedetect_0_sqmuxa));
    NOR2 bsd7_RNO_6 (.A(bsd7_tmp_net_1), .B(SCLInt_net_1), .Y(
        bsd7_tmp_i_m_0));
    OR2A PCLK_count2_ov_RNO (.A(PCLK_count1_ov_net_1), .B(
        counter_PRESETN), .Y(PCLK_count2_ov_0_sqmuxa));
    NOR3A \sercon_RNIBEA4[7]  (.A(\sercon[7]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        \sercon_m[7] ));
    NOR2B \fsmsta_0_RNI44HP1_1[2]  (.A(sersta82_1), .B(sersta74_1), .Y(
        sersta82));
    AO1A SDAO_int_RNI4I7SJ (.A(\COREI2C_0_SDAO_0[0] ), .B(
        un1_framesync24_2_s4), .C(\fsmsta_nxt_4_m[3] ), .Y(
        \fsmsta_10s_0_iv_0[3] ));
    OR2 \fsmdet_RNI4665[5]  (.A(\fsmdet[5]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(N_94));
    NOR2 \sersta_RNO_1[0]  (.A(N_41_i), .B(N_759), .Y(N_771));
    NOR2A \fsmsync_RNO[1]  (.A(\fsmsync[0]_net_1 ), .B(N_101), .Y(
        \fsmsync_RNO[1]_net_1 ));
    DFN1P0 \framesync[1]  (.D(\framesync_7[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[1]_net_1 ));
    OR3 \fsmsta_RNO_5[0]  (.A(N_733), .B(\fsmsta_nxt_cnst_0_0[0] ), .C(
        N_735), .Y(\fsmsta_nxt_cnst[0] ));
    NOR3A ack_RNI6FHD1 (.A(ack_net_1), .B(fsmsta33), .C(N_94), .Y(
        fsmsta_1_sqmuxa_1_s9_1));
    NOR2B \fsmsta_0_RNI44HP1_0[2]  (.A(un1_sersta65_0_a2_0_0), .B(
        un1_m7_i_a5_1_0), .Y(N_212));
    NOR3B \fsmmod_RNO_1[3]  (.A(N_1131_10), .B(fsmmod_tr12_0_0), .C(
        sercon_0), .Y(N_1131));
    INV busfree_RNO (.A(\fsmdet[3]_net_1 ), .Y(\fsmdet_i[3] ));
    AO1A \sercon_RNIGSUNK[2]  (.A(\fsmsta_nxt_34[1] ), .B(
        un1_framesync24_3_s6), .C(fsmsta_nxt20_m), .Y(
        \fsmsta_10s_0_iv_1[3] ));
    DFN1E1P0 \fsmsta_0[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(N_84), .Q(\fsmsta_0[4]_net_1 ));
    OR2 \busfree_write_proc.un1_fsmdet_0_1  (.A(adrcomp12), .B(
        un1_fsmdet_0_0), .Y(un1_fsmdet_0_1));
    NOR2 \serdat_RNIV8PG[0]  (.A(\serdat[3]_net_1 ), .B(
        \serdat[0]_net_1 ), .Y(fsmsta_1_sqmuxa_2_s8_i_a2_2));
    OR2 \fsmsta_RNI2O8J4[2]  (.A(ack_bit_1_sqmuxa_i_o2_0), .B(
        un1_sersta78), .Y(N_45));
    NOR3C \fsmmod_RNO_12[3]  (.A(PCLKint_ff_net_1), .B(
        \fsmmod[3]_net_1 ), .C(PCLKint_net_1), .Y(fsmmod_tr13_1_1));
    DFN1C0 \sersta[0]  (.D(\sersta_4[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sersta[0]_net_1 ));
    NOR2B \fsmsta_0_RNI44HP1_2[2]  (.A(sersta74_0), .B(sersta74_1), .Y(
        sersta74));
    OR3A bsd7_RNO_0 (.A(\sercon[6]_net_1 ), .B(bsd7_1_sqmuxa_1), .C(
        bsd7_tmp_0_sqmuxa_2), .Y(un1_SCLI_ff_reg_1_sqmuxa_1));
    MX2 \sersta_RNO_0[1]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .S(N_759), .Y(N_761));
    NOR2B \sercon_inferred_clock_RNI3QCN4[3]  (.A(N_45), .B(sercon_0), 
        .Y(bsd7_tmp_0_sqmuxa_1_1));
    NOR3C \fsmsta_RNO_1[1]  (.A(N_1367), .B(N_1368), .C(N_1365), .Y(
        N_810));
    OR3 \fsmsync_RNO[0]  (.A(\fsmsync_ns_0_0_0[0] ), .B(N_169), .C(
        N_171), .Y(\fsmsync_ns[0] ));
    OR2B \fsmsync_RNI3VQL[2]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(fsmsync_tr19_i_7_0));
    OR2 \fsmsta_0_RNIPL6C3[2]  (.A(sersta69), .B(sersta70), .Y(
        un1_sersta69_1));
    NOR3C adrcompen_RNIOG1S2 (.A(SDAInt_m_a0_0), .B(framesync24_1), .C(
        N_1131_4), .Y(fsmsta_m2_0_a2_2));
    VCC VCC_i (.Y(VCC));
    DFN1P0 SCLO_int_inst_1 (.D(N_77), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(SCLO_int));
    AO1A \fsmsta_0_RNISAKJ1[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta_0[4]_net_1 ), .C(N_726), .Y(N_728));
    NOR2B bsd7_tmp_RNO_1 (.A(\fsmdet[3]_net_1 ), .B(\sercon[6]_net_1 ), 
        .Y(bsd7_tmp_0_sqmuxa));
    AO1C ack_RNO_1 (.A(un1_sersta65), .B(N_195_1), .C(sercon_0), .Y(
        N_46));
    OA1 \fsmmod_RNO_5[2]  (.A(\fsmmod[6]_net_1 ), .B(\fsmmod[1]_net_1 )
        , .C(nedetect_net_1), .Y(\fsmmod_ns_0_a3_0[2] ));
    OR2B \fsmsta_RNIP1PE[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(N_759));
    AO1C \fsmmod_ns_i_a3_1_RNO_0[0]  (.A(\sercon[4]_net_1 ), .B(
        \fsmmod_ns_i_a3_3_tz_0[0] ), .C(\fsmmod[0]_net_1 ), .Y(
        \fsmmod_ns_i_a3_3[0] ));
    XO1 adrcomp_RNO_5 (.A(\serdat[3]_net_1 ), .B(seradr0apb[4]), .C(
        un1_seradr0_2), .Y(un1_seradr0_NE_1));
    DFN1E1C0 pedetect (.D(pedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_208), .Q(pedetect_net_1));
    DFN1E0C0 sclscl (.D(\fsmmod[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(sclscl_1_sqmuxa), .Q(sclscl_net_1));
    NOR2B \fsmsta_RNO_1[0]  (.A(N_809_1), .B(N_1367), .Y(N_809));
    AO1 \serdat_RNI5HRE[2]  (.A(\serdat[2]_net_1 ), .B(un4_PRDATA), .C(
        \sercon_m[2] ), .Y(PRDATA_0_iv_0_0_d0));
    NOR2B ack_RNIMTLSD (.A(\fsmsta_nxt_cnst[3] ), .B(
        un1_framesync24_6_s7), .Y(\fsmsta_nxt_cnst_m[3] ));
    NOR3B SDAO_int_RNO_12 (.A(N_1388), .B(N_88_1), .C(N_54), .Y(
        SDAO_int_7_0_a2_0));
    NOR3C \PRDATA_0_iv_0_a2[0]  (.A(I2C_test_0_BIF_1_PADDR[3]), .B(
        I2C_test_0_BIF_1_PADDR[2]), .C(seradr0apb[0]), .Y(N_191));
    DFN1E0C0 \sercon[2]  (.D(I2C_test_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[2]_net_1 ));
    NOR3B \fsmsta_RNI2F5M[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(sersta75_0));
    NOR3 \fsmsync_RNO[6]  (.A(N_175), .B(N_76), .C(N_176), .Y(
        \fsmsync_RNO[6]_net_1 ));
    NOR2B SDAO_int_RNI8K4O (.A(out_en), .B(\COREI2C_0_SDAO_0[0] ), .Y(
        SDA_d1));
    AOI1 \fsmmod_RNISFOO6[1]  (.A(fsmsta_1_sqmuxa_1_s9_1), .B(N_1363), 
        .C(ens1_pre_0_sqmuxa_s2_1), .Y(N_809_1));
    DFN1E0C0 \sercon[5]  (.D(I2C_test_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_100), .Q(\sercon[5]_net_1 ));
    MX2 \sercon_RNO[4]  (.A(I2C_test_0_BIF_1_PWDATA[4]), .B(
        \sercon_8[4] ), .S(N_100), .Y(\sercon_10[4] ));
    DFN1E0C0 \serdat[0]  (.D(\serdat_20[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[0]_net_1 ));
    DFN1E1P0 SCLInt (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_serdat52_1), .Q(SCLInt_net_1));
    AOI1B SDAO_int_RNO_10 (.A(N_1131_8), .B(N_45), .C(
        SDAO_int_7_0_a2_0), .Y(N_88));
    NOR2B SCLO_int_inferred_clock_RNICADO (.A(N_156_1), .B(SCLO_int), 
        .Y(N_156));
    AO1 \framesync_RNO_0[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        un1_framesync_4_sqmuxa), .C(framesync_1_m), .Y(N_675));
    OR2 \PCLK_count1_RNO[1]  (.A(PCLK_count1_n1_i_0), .B(N_51), .Y(
        \PCLK_count1_RNO[1]_net_1 ));
    AO1 \fsmsta_RNIK6MA6[4]  (.A(sersta81_3), .B(\fsmsta[4]_net_1 ), 
        .C(SCLO_int5_i_o2_1_1), .Y(N_133));
    NOR3 \fsmsta_RNO_5[1]  (.A(N_737), .B(N_739), .C(N_738), .Y(
        \fsmsta_nxt_cnst_m_1[1] ));
    NOR2A \fsmmod_ns_i_a3_2[0]  (.A(\fsmmod_ns_i_a3_1[0]_net_1 ), .B(
        N_75), .Y(\fsmmod_ns_i_a3_2[0]_net_1 ));
    DFN1C0 \sercon_0[3]  (.D(\sercon_10_0_0[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(sercon_0));
    NOR3A \sercon_RNI47A4[0]  (.A(\sercon[0]_net_1 ), .B(
        I2C_test_0_BIF_1_PADDR[3]), .C(I2C_test_0_BIF_1_PADDR[2]), .Y(
        N_193));
    XA1 \indelay_RNO[3]  (.A(indelay_151_0), .B(\indelay[3]_net_1 ), 
        .C(\fsmsync[3]_net_1 ), .Y(\indelay_RNO[3]_net_1 ));
    NOR3B \framesync_RNIAQR6A[0]  (.A(framesync24), .B(un1_sersta71), 
        .C(N_1363), .Y(un1_framesync24_1_s5));
    OA1 SDAO_int_RNO_4 (.A(N_1395), .B(N_1403), .C(SDAO_int_7_0_a2_0_0)
        , .Y(N_89));
    NOR2B \fsmmod_ns_i_a3_1_RNO_1[0]  (.A(starto_en_net_1), .B(
        PCLKint_net_1), .Y(\fsmmod_ns_i_a3_3_tz_0[0] ));
    AOI1 pedetect_RNIO2V83 (.A(un1_sersta64_0), .B(framesync24), .C(
        N_1394), .Y(fsmmod5_i));
    NOR3A nedetect_RNI89424 (.A(framesync_0_sqmuxa_1_0), .B(N_1131_8), 
        .C(un1_fsmdet_1), .Y(framesync_0_sqmuxa_1));
    AO1 \fsmsta_RNIN0R82[2]  (.A(un1_m7_i_a5_0), .B(N_42), .C(
        un1_m7_i_0), .Y(un1_framesync24_6_s7_5_0));
    NOR3B \fsmsta_RNI4H5M[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(\fsmsta[3]_net_1 ), .Y(sersta78_1));
    
endmodule


module top_0_COREI2C_0_COREI2C_Z2(
       sercon_0,
       PRDATA_0_iv_0_0_d0,
       PRDATA_iv_1_0,
       PRDATA_iv_1_2,
       PRDATA_iv_1_4,
       PRDATA_iv_0_0_d0,
       PRDATA_iv_0_2,
       PRDATA_iv_0_1_0,
       PRDATA_iv_0_1_2,
       PRDATA_iv_0_0_0,
       PRDATA_iv_0_0_2,
       PRDATA_0_iv_0_0,
       seradr0_m_0,
       sercon_m_0,
       COREI2C_1_SDAO_0,
       I2C_test_0_BIF_1_PWDATA,
       I2C_test_0_BIF_1_PADDR,
       I2C_test_0_BIF_1_PSELx,
       I2C_test_0_BIF_1_PENABLE,
       I2C_test_0_BIF_1_PWRITE,
       N_190,
       N_193,
       SDA_in,
       SCLO_int,
       out_en_0,
       SDA_d,
       out_en,
       PRESETN_c,
       PCLK_c
    );
output sercon_0;
output PRDATA_0_iv_0_0_d0;
output PRDATA_iv_1_0;
output PRDATA_iv_1_2;
output PRDATA_iv_1_4;
output PRDATA_iv_0_0_d0;
output PRDATA_iv_0_2;
output PRDATA_iv_0_1_0;
output PRDATA_iv_0_1_2;
output PRDATA_iv_0_0_0;
output PRDATA_iv_0_0_2;
output [1:0] PRDATA_0_iv_0_0;
output seradr0_m_0;
output sercon_m_0;
input  COREI2C_1_SDAO_0;
input  [7:0] I2C_test_0_BIF_1_PWDATA;
input  [3:2] I2C_test_0_BIF_1_PADDR;
input  I2C_test_0_BIF_1_PSELx;
input  I2C_test_0_BIF_1_PENABLE;
input  I2C_test_0_BIF_1_PWRITE;
output N_190;
output N_193;
input  SDA_in;
output SCLO_int;
input  out_en_0;
output SDA_d;
input  out_en;
input  PRESETN_c;
input  PCLK_c;

    wire seradr0apb4, seradr0apb4_0, \seradr0apb[0] , \seradr0apb[1] , 
        \seradr0apb[2] , \seradr0apb[3] , \seradr0apb[4] , 
        \seradr0apb[5] , \seradr0apb[6] , \seradr0apb[7] , GND, VCC;
    
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[3]  (.D(
        I2C_test_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[3] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[1]  (.D(
        I2C_test_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[1] ));
    NOR3C \g_seradr0_reg_bits.genblk1.seradr0_write_proc.seradr0apb4  
        (.A(I2C_test_0_BIF_1_PADDR[3]), .B(I2C_test_0_BIF_1_PADDR[2]), 
        .C(seradr0apb4_0), .Y(seradr0apb4));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[6]  (.D(
        I2C_test_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[6] ));
    COREI2C_COREI2CREAL_Z3_0 \I2C_NUM_GENERATION[0].ui2c  (
        .COREI2C_1_SDAO_0(COREI2C_1_SDAO_0), .sercon_m_0(sercon_m_0), 
        .seradr0apb({\seradr0apb[7] , \seradr0apb[6] , \seradr0apb[5] , 
        \seradr0apb[4] , \seradr0apb[3] , \seradr0apb[2] , 
        \seradr0apb[1] , \seradr0apb[0] }), .seradr0_m_0(seradr0_m_0), 
        .PRDATA_0_iv_0_0({PRDATA_0_iv_0_0[1], PRDATA_0_iv_0_0[0]}), 
        .PRDATA_iv_0_0_0(PRDATA_iv_0_0_0), .PRDATA_iv_0_0_2(
        PRDATA_iv_0_0_2), .PRDATA_iv_0_1_0(PRDATA_iv_0_1_0), 
        .PRDATA_iv_0_1_2(PRDATA_iv_0_1_2), .PRDATA_iv_0_0_d0(
        PRDATA_iv_0_0_d0), .PRDATA_iv_0_2(PRDATA_iv_0_2), 
        .PRDATA_iv_1_0(PRDATA_iv_1_0), .PRDATA_iv_1_2(PRDATA_iv_1_2), 
        .PRDATA_iv_1_4(PRDATA_iv_1_4), .PRDATA_0_iv_0_0_d0(
        PRDATA_0_iv_0_0_d0), .I2C_test_0_BIF_1_PWDATA({
        I2C_test_0_BIF_1_PWDATA[7], I2C_test_0_BIF_1_PWDATA[6], 
        I2C_test_0_BIF_1_PWDATA[5], I2C_test_0_BIF_1_PWDATA[4], 
        I2C_test_0_BIF_1_PWDATA[3], I2C_test_0_BIF_1_PWDATA[2], 
        I2C_test_0_BIF_1_PWDATA[1], I2C_test_0_BIF_1_PWDATA[0]}), 
        .I2C_test_0_BIF_1_PADDR({I2C_test_0_BIF_1_PADDR[3], 
        I2C_test_0_BIF_1_PADDR[2]}), .sercon_0(sercon_0), .out_en_0(
        out_en), .SDA_d(SDA_d), .out_en(out_en_0), .SCLO_int(SCLO_int), 
        .SDA_in(SDA_in), .N_193(N_193), .N_190(N_190), 
        .I2C_test_0_BIF_1_PWRITE(I2C_test_0_BIF_1_PWRITE), 
        .I2C_test_0_BIF_1_PENABLE(I2C_test_0_BIF_1_PENABLE), 
        .I2C_test_0_BIF_1_PSELx(I2C_test_0_BIF_1_PSELx), 
        .seradr0apb4_0(seradr0apb4_0), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[7]  (.D(
        I2C_test_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[7] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[5]  (.D(
        I2C_test_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[5] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[2]  (.D(
        I2C_test_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[2] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[0]  (.D(
        I2C_test_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[0] ));
    GND GND_i (.Y(GND));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[4]  (.D(
        I2C_test_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        seradr0apb4), .Q(\seradr0apb[4] ));
    
endmodule


module COREI2C_COREI2CREAL_Z3_1(
       sersta_0,
       sersta_i_0,
       seradr0apb,
       seradr0_m,
       I2C_slave_0_BIF_1_PWDATA,
       I2C_slave_0_BIF_1_PADDR,
       PRDATA_0_iv_0,
       PRDATA_iv_0_0,
       PRDATA_iv_1_0,
       sercon_0,
       COREI2C_1_SDAO_0,
       INT_net_0_0,
       SCLO_int_0,
       SDA_in,
       N_1434,
       N_1435,
       N_1437,
       N_1439,
       I2C_slave_0_BIF_1_PWRITE,
       I2C_slave_0_BIF_1_PENABLE,
       I2C_slave_0_BIF_1_PSELx,
       seradr0apb4_0,
       N_1443,
       N_91,
       N_79,
       N_1421,
       N_77,
       out_en_0,
       out_en,
       SDA_e,
       un9_PRDATA,
       un1_PRDATA,
       PRESETN_c,
       PCLK_c
    );
output sersta_0;
output [2:0] sersta_i_0;
input  [7:0] seradr0apb;
output [2:0] seradr0_m;
input  [7:0] I2C_slave_0_BIF_1_PWDATA;
input  [3:2] I2C_slave_0_BIF_1_PADDR;
output [2:0] PRDATA_0_iv_0;
output PRDATA_iv_0_0;
output PRDATA_iv_1_0;
output sercon_0;
output COREI2C_1_SDAO_0;
output INT_net_0_0;
input  SCLO_int_0;
input  SDA_in;
output N_1434;
output N_1435;
output N_1437;
output N_1439;
input  I2C_slave_0_BIF_1_PWRITE;
input  I2C_slave_0_BIF_1_PENABLE;
input  I2C_slave_0_BIF_1_PSELx;
output seradr0apb4_0;
output N_1443;
output N_91;
output N_79;
output N_1421;
output N_77;
input  out_en_0;
input  out_en;
output SDA_e;
output un9_PRDATA;
output un1_PRDATA;
input  PRESETN_c;
input  PCLK_c;

    wire \fsmsta_0[2]_net_1 , \fsmsta_10[2] , 
        un1_ens1_pre_2_sqmuxa_net_1, \fsmsta_0[4]_net_1 , 
        \fsmsta_10[4] , \fsmsta_0[3]_net_1 , \fsmsta_10[3] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \framesync[1]_net_1 , \DWACT_ADD_CI_0_g_array_12[0] , 
        \framesync[2]_net_1 , \fsmdet_i[3] , \fsmdet[3]_net_1 , N_1445, 
        N_1454, N_1425, N_31, \fsmsync[3]_net_1 , N_48, N_61, 
        \indelay_i_0[0] , \indelay[1]_net_1 , N_1366, N_52_i, N_47_i, 
        N_51, \indelay[3]_net_1 , N_1385, N_98, N_99, N_1383, 
        adrcomp_2_sqmuxa_1_i_a3_2_5, N_32, 
        \fsmsync_ns_i_a4_i_a3_0_1[3] , N_1368, indelay_n1_i_0_net_1, 
        ens1_pre_2_sqmuxa_1_net_1, ens1_pre_2_sqmuxa_1_0, fsmsta12, 
        SDAO_int_3_sqmuxa_net_1, un1_sersta65_1, SDAO_int_3_sqmuxa_0, 
        fsmsta19, adrcomp_2_sqmuxa_1_i_a3_1_0, \fsmmod_ns[2] , 
        \fsmmod_ns_0_0_0[2]_net_1 , SDAO_int6_i, un1_framesync_1, 
        nedetect_net_1, SDAO_int_1_sqmuxa_1_net_1, 
        ens1_pre_1_sqmuxa_2_net_1, un1_fsmdet_2, pedetect_net_1, 
        N_1446, N_1447, \fsmsync_ns_i_a4_i_o3_0_0[3]_net_1 , 
        \fsmsta_10s_1_iv_2[0] , N_814, SDAInt_net_1, fsmsta_nxt_m_0, 
        \fsmsta_10s_1_iv_0[0] , un1_sersta65, \fsmsta_nxt_4_m[0] , 
        \fsmsta_10s_0_iv_1[1] , \fsmsta_10s_0_iv_0[1] , fsmsta_nxt_m_1, 
        \fsmsta_nxt_34[1] , un1_framesync24_3_s6, \fsmsta_nxt_4_m[1] , 
        \fsmsta_10s_0_iv_1[3] , fsmsta_nxt19, un1_sersta65_s3, 
        \fsmsta_10s_0_iv_0[3] , \fsmsta_nxt_4[3] , un1_framesync24, 
        \fsmsta_nxt_34_i_m[1] , \fsmmod_ns_i_a3_i_a2_0_0[3] , 
        \sercon[4]_net_1 , N_1424, \fsmmod_ns_i_a3_i_1[0] , N_26, 
        \fsmmod[5]_net_1 , \fsmmod_ns_i_a3_i_0[0] , fsmmod5_i, N_1398, 
        un2_PCLKint_p1_0_0, un1_ack_1_sqmuxa_1_0, 
        un1_ack_1_sqmuxa_a0_4, serdat4, \fsmmod_ns_i_a3_i_a2_0_0[4] , 
        \fsmmod_ns_i_a3_i_a3_0_0[5] , \fsmmod[0]_net_1 , 
        un1_ack_0_sqmuxa_0, ack_1_sqmuxa, ack_3_sqmuxa, 
        bsd7_tmp_0_sqmuxa_1, \fsmsta_nxt_cnst_m_0[1] , 
        \fsmsta_nxt_cnst_i_a4_0_0[1] , fsmsta_N_6_1, N_739, 
        fsmsta_m3_0_a2_1_0, un1_framesync24_1_s5, SDAO_int_m_0, 
        un1_framesync24_3, fsmsta_m1_e_1_2, fsmsta_m1_e_1_0, 
        \fsmsta_nxt_4_i_m[2] , \fsmmod_ns_i_a3_i_a3_0_2_1[5] , 
        starto_en_net_1, N_1111_2, un1_fsmsync_2, \fsmsync[6]_net_1 , 
        \fsmsync[1]_net_1 , un1_fsmsync_1, \fsmsync[2]_net_1 , 
        \fsmsync[5]_net_1 , \fsmmod_ns_0_0_a2_0_3[1] , 
        \fsmmod_ns_0_0_a2_0_1[1] , fsmsta_m1_e_4_3, fsmsta_m1_e_4_1, 
        N_747, N_744, un1_framesync24_6_s7_4, un1_fsmdet, fsmsta_N_6, 
        \fsmsta_10k_0_a2_0[4] , ens1_pre_0_sqmuxa_s2, fsmsta32_s3_1, 
        \fsmmod_ns_0_0_a2_0[1] , \fsmmod[1]_net_1 , framesync24, 
        un1_SDAO_int17_1, un1_framesync24_2_s4_0, un1_sersta69, 
        un1_framesync24_4_s2_0, un1_sersta60_2, un1_sersta60_1, 
        \fsmsta_nxt_cnst_0_1[0] , \fsmsta_nxt_cnst_0_a4_0_0[0] , 
        \fsmsta_nxt_cnst_0_0[0] , fsmsta_m2_0_0, N_780, bsd7_12_iv_0, 
        \PWDATA_i_m_0[7] , bsd7_tmp_1_sqmuxa, un1_ack_1_sqmuxa_a0_2, 
        un1_sersta58_0, un1_sersta78, un1_ack_1_sqmuxa_a0_1, 
        \sercon[6]_net_1 , fsmmod5_i_0_a3_0, \fsmdet[5]_net_1 , 
        un1_fsmmod_2_2, un1_framesync24_1_0, un1_fsmmod_2_0, 
        un1_framesync_5_0_0, un1_fsmmod_1, SDAO_int_0_sqmuxa_0, 
        \framesync[3]_net_1 , N_1363, ack_1_sqmuxa_2_a0_3, 
        un1_sersta69_3, un1_sersta65_0, ack_1_sqmuxa_2_a0_2, 
        ack_1_sqmuxa_2_a0_1, serdat33, ack_3_sqmuxa_0, un1_sersta69_8, 
        un1_sersta69_3_0, un1_sersta69_6, un1_sersta69_4, 
        un1_sersta69_7, un1_sersta69_2_0, un1_sersta69_0, sersta80_0, 
        sersta64_1, sersta74, bsd7_tmp_i_m_0, bsd7_tmp_net_1, 
        SCLInt_net_1, \fsmsta_nxt_cnst_i_m_2_3[2] , fsmsta_N_5, N_740, 
        \fsmsta_nxt_cnst_i_m_2_0[2] , \fsmsta[4]_net_1 , N_726, 
        \fsmsta_RNIRSM23[0]_net_1 , un1_sersta58_0_0, N_748, 
        \fsmsta[1]_net_1 , ack_net_1, N_759, SDAO_int_m_1_1, 
        SDAO_int_m_1_0, ens1_pre_3_sqmuxa, fsmsta13, 
        un1_framesync24_1_s5_0_0, un1_sersta69_2, sersta75, 
        adrcomp_2_sqmuxa_1_i_a3_0_2, N_95_3, sersta83, sersta64, 
        adrcomp_2_sqmuxa_1_i_a3_0_1, un1_framesync24_3_s6_0_1, 
        adrcomp_2_sqmuxa_1_i_a4_5, adrcomp_2_sqmuxa_1_i_a4_3, 
        un1_framesync, adrcomp_2_sqmuxa_1_i_a4_2, adrcompen_net_1, 
        \sercon[2]_net_1 , bsd7_tmp_1_sqmuxa_2_0, N_80, adrcomp_net_1, 
        framesync_1_sqmuxa_1_2, sersta81_3, framesync_1_sqmuxa_1_1, 
        sersta76, sersta82, sersta77, counter_PRESETN_0_o4_3, N_97, 
        counter_PRESETN_0_o4_1, N_96, \fsmsync[4]_net_1 , 
        un1_sersta64_0, \fsmmod_ns_0_0_o2_0[2] , PCLKint_ff_net_1, 
        PCLKint_net_1, \fsmsta[0]_net_1 , \fsmsync_ns_i_0[2] , N_1330, 
        N_74, N_22, \fsmsync_ns_0_i_a2_0_4[0] , 
        \fsmsync_ns_0_i_a2_2_0[0] , N_1322, \fsmsync_ns_0_i_a2_0[0] , 
        \fsmsync_ns_i_i_a2_2[6] , \fsmsync_ns_i_i_a2_0[6] , 
        \sersta_4_0_1[3] , N_774, N_776, N_88, un1_framesync_5_0, 
        N_1227_i_0, SDAO_m5_i_a3_0, \fsmsync_ns_i_i_o2_0[6] , 
        \fsmsync_ns_i_0[5] , N_17, un1_m2_e_0, un1_framesync24_1, 
        un1_framesync_12_0, un1_framesync_13_0, un1_framesync24_0, 
        bsd7_tmp_1_sqmuxa_1_2, \sercon_8_1[4] , un1_m7_i_0_0, 
        un1_m7_i_0_tz, un1_N_10, adrcomp_2_sqmuxa_1_i_a3_2_2, 
        adrcomp_2_sqmuxa_1_i_a3_2_1, adrcomp_2_sqmuxa_1_i_a3_2_3, 
        un1_seradr0_0, un1_seradr0_1_0, un1_seradr0_6, 
        \serdat[5]_net_1 , un1_seradr0_4, \serdat[3]_net_1 , 
        un1_seradr0_2, ack_bit_1_sqmuxa_1_1, ack_bit_1_sqmuxa_a0_4, 
        ack_bit_1_sqmuxa_a0_3, \fsmsta_0_RNI4RCN[4]_net_1 , 
        ack_bit_1_sqmuxa_1_0, ack_bit_1_sqmuxa_a1_3, 
        ack_bit_1_sqmuxa_a1_2, \fsmsta_0_RNI2PCN[4]_net_1 , sersta65_0, 
        N_1382, sersta74_0, ack_bit_1_sqmuxa_a0_2, sersta60_0, 
        framesync_2_sqmuxa_i_1, framesync_2_sqmuxa_i_0, 
        \framesync[0]_net_1 , sersta62_0, framesync_1_sqmuxa_1_0, 
        indelay_n2_i_0, \indelay_i_0[2] , sersta82_0, 
        \fsmsta[3]_net_1 , \fsmsta[2]_net_1 , \sersta_4_0_a4_0_0[4] , 
        \fsmsync[0]_net_1 , \sersta_4_0_o3_0[4] , sersta76_0, 
        \serdat[1]_net_1 , un4_PRDATA, \sercon_m[1] , \serdat_m[2] , 
        \serdat[6]_net_1 , \sercon_m[6] , \sersta[3]_net_1 , 
        \seradr0_m[6]_net_1 , \serdat[0]_net_1 , \sercon_m[0] , 
        sersta79_0, sersta72_1, sersta82_1, sersta70_0_a2_1, 
        un1_m4_0_a2_0, fsmmod_tr4_1_0_a3_0, \fsmmod[4]_net_1 , 
        sersta71_1, un1_m7_i_a5_2_0, ack_bit_1_sqmuxa_a0_1, 
        ack_bit_1_sqmuxa_a0_0, \fsmsync_ns_0_o2_0[0] , 
        \fsmsync_ns_0_a3_0[0] , N_1319, ack_bit_1_sqmuxa_a3_1, 
        un1_m4_0_a2_1, \fsmmod_ns_0_0_o2_0_0[2] , fsmsta19_3, 
        \serdat[2]_net_1 , fsmsta19_2, fsmsta19_1, \serdat[4]_net_1 , 
        bsd7_tmp_1_sqmuxa_a0_0, \fsmmod_ns_i_a3_i_o2_1_1[0] , 
        \fsmmod[3]_net_1 , \fsmmod[2]_net_1 , SDAO_int17_0_0, 
        \fsmsync_ns_0_i_a2_0_3[0] , \fsmsync_ns_0_i_a2_0_1[0] , 
        \fsmsync_ns_0_i_a2_0_0[0] , \fsmsync_i_0[7] , 
        \fsmmod[6]_net_1 , un1_ack_0_sqmuxa_2, ack_0_sqmuxa_1, 
        pedetect_RNIEOT6J_net_1, 
        \sercon_inferred_clock_RNIQNIV5[3]_net_1 , 
        framesync_0_sqmuxa_1, un1_framesync_0, N_1387, N_102, 
        un1_framesync24_2_s4, ens1_pre_4_sqmuxa, ack_bit_1_sqmuxa, 
        bsd7_tmp_1_sqmuxa_1, un1_ack_1_sqmuxa, \fsmmod_ns_0_0_a4_1[6] , 
        N_67_i, un1_SCLI_ff_reg, \SCLI_ff_reg[1]_net_1 , 
        \SCLI_ff_reg[2]_net_1 , \SCLI_ff_reg[0]_net_1 , 
        un1_SCLI_ff_reg_1, sersta74_1, SDAO_int_0_sqmuxa, un1_sersta58, 
        un1_bsd7_tmp_0_sqmuxa, bsd7_tmp_0_sqmuxa_2, bsd7_tmp_0_sqmuxa, 
        bsd7_tmp_0_sqmuxa_3, SCLO_int_net_1, busfree_net_1, 
        counter_PRESETN, N_763, un1_SCLI_ff_reg_1_sqmuxa_1, 
        bsd7_1_sqmuxa_1, bsd7_tmp_i_m, bsd7_12_iv, \serdat_i_m[7] , 
        bsd7_tmp_1_sqmuxa_2, N_95, un1_fsmdet_0, N_1406_2, N_111, 
        \fsmmod_RNO_0[0]_net_1 , \fsmsync_RNO_0[1] , 
        \fsmsync_RNO_0[4] , N_65, \fsmsync_RNO_0[2]_net_1 , N_1334, 
        \fsmsync_RNO_0[5]_net_1 , N_28, N_23, un1_sercon, 
        un1_sersta69_1, N_1450, starto_en_1_sqmuxa, starto_en_0_sqmuxa, 
        N_59, N_40, \sercon_8[4] , fsmsta33, un1_fsmmod_2_0_0, N_90, 
        N_16, un1_framesync_2, fsmsta_0_sqmuxa_s5, un1_fsmmod_1_0, 
        \sersta_4[4] , N_778, N_779, \sersta_4[2] , N_772, N_773, 
        N_760, un1_m7_i_a5_1_0, framesync10, un1_sersta58_1, N_1453, 
        N_1427, N_1416, sersta71_2, sersta69, sersta72, sersta73, 
        sersta61_2, sersta81_1, N_771_1, \sersta_4[3] , N_775, N_746, 
        N_735_1, PCLK_count17, \PCLK_count1[1]_net_1 , 
        \PCLK_count1[3]_net_1 , \PCLK_count1[2]_net_1 , 
        framesync_1_sqmuxa_1, N_1376, N_64, N_50, framesync24_1, 
        N_1417, N_811, fsmsta_1_sqmuxa_1_s9, fsmsta_0_sqmuxa_2_s7, 
        N_813, fsmsta_1_sqmuxa_2_s8, N_1373, N_658, 
        \fsmsta_nxt_cnst_m[0] , \sersta_4[0] , N_770, N_771, sersta62, 
        N_1414, sersta63, N_743_1, sersta65, sersta67, sersta78, 
        sersta60, sersta61, N_810, ens1_pre_1_sqmuxa_1_s6, N_812, 
        N_809_1, N_659, SDAO_int_m, \fsmsta_nxt_cnst_m[1] , N_661, 
        \fsmsta_nxt_cnst_m[3] , un1_framesync24_6_s7, N_737, N_1429, 
        N_1451, ack_bit_0_sqmuxa_1, sercon18, 
        \framesync_RNIITKA1[1]_net_1 , framesync_1_sqmuxa_2, un1_N_13, 
        \fsmsta_0_RNIPRTP2[2]_net_1 , un1_N_5, 
        \fsmsta_nxt_cnst_i_m[2] , fsmsta_N_5_mux, fsmsta_N_7_mux_0, 
        \fsmsta_nxt_cnst_0_a4_2_0[2] , \fsmsta_nxt_cnst_0_a4_0_0[2] , 
        PCLK_count1_n2, PCLK_count1_0_sqmuxa, PCLK_count1_n2_tz, 
        PCLK_count1_c1, PCLK_count1_n3, PCLK_count1_n3_tz, 
        \fsmmod_ns[6] , \fsmmod_ns_0_0_a4_0_0[6] , 
        \fsmmod_RNO_0[4]_net_1 , \fsmdet_RNO_0[3] , \fsmdet_i_0[1] , 
        \fsmdet_i_0[6] , N_1216_1, \fsmdet_RNO_0[1] , \fsmdet_i_0[0] , 
        N_1222_1, \fsmdet_RNO_0[2] , \fsmdet_i_0[2] , 
        \fsmdet_RNO_0[5] , \fsmdet_i_0[4] , N_1389, 
        \fsmdet_RNO_0[6]_net_1 , N_682, bsd7_net_1, SDAO_int_2_m, 
        \fsmsta_nxt_cnst[3] , \fsmsta_10[1] , un1_sersta69_1_0, N_735, 
        N_809, \fsmsta_10[0] , N_731, sclscl_1_sqmuxa, N_1377, 
        SDAO_int_7, SDAO_int_1_sqmuxa, un1_SDAO_int_1_sqmuxa_1, 
        ack_bit_net_1, \fsmdet_RNO_0[4]_net_1 , N_1399, 
        PCLK_count2_ov_0_sqmuxa, PCLK_count1_ov_net_1, un1_PCLKint5, 
        PCLK_count2_ov_i_0, N_69, \fsmsync_RNO_0[6]_net_1 , 
        PCLKint_ff_4, PCLKint_5, \framesync_7[2] , I_18_0, 
        un1_framesync_4_sqmuxa, \framesync_7[1] , I_15_0, 
        PCLK_count1_1_sqmuxa, \PCLK_count1[0]_net_1 , PCLK_count1_n0, 
        PCLK_count1_n1, \fsmmod_RNO_0[3]_net_1 , N_1409, framesync_1_m, 
        N_675, \DWACT_ADD_CI_0_partial_sum[0] , N_678, I_16_0, 
        \framesync_7[0] , \framesync_7[3] , N_761, \sersta_4[1] , 
        \serdat[7]_net_1 , \sercon[7]_net_1 , \serdat_20[2] , 
        \sercon[0]_net_1 , \sercon_10[4] , \sercon_10_0_0[3] , 
        \sercon_5_0_0[3] , \serdat_20[6] , \serdat_20[5] , 
        \serdat_20[4] , \serdat_20[3] , \serdat_20[1] , \serdat_20[0] , 
        \sercon[1]_net_1 , ack_12, un1_ack_0_sqmuxa_3, ack_0_sqmuxa_2, 
        \fsmsync_RNO[0]_net_1 , \fsmmod_ns[1] , SCLO_int5, N_1405, 
        \fsmmod_RNO_0[5]_net_1 , \fsmsync_RNO_0[3]_net_1 , 
        \fsmsync_RNO_0[7]_net_1 , N_54, fsmmod_nxt43, sclscl_net_1, 
        \serdat_20[7] , N_1379, N_1374, N_1380, N_1378, bsd7_tmp_9, 
        \SDAI_ff_reg_4[0] , un1_serdat52, un1_serdat52_0, 
        un1_serdat52_1, \SCLI_ff_reg_4[2] , nedetect_0_sqmuxa, 
        pedetect_0_sqmuxa, \SCLI_ff_reg_4[1] , \SCLI_ff_reg_4[0] , 
        \SDAI_ff_reg_4[1] , \SDAI_ff_reg[0]_net_1 , 
        \SDAI_ff_reg_RNO[2]_net_1 , \SDAI_ff_reg[1]_net_1 , 
        un1_SDAInt5, \SDAI_ff_reg[2]_net_1 , \indelay_RNO_0[2]_net_1 , 
        \indelay_RNO_0[0] , GND, VCC;
    
    NOR2A \sersta_RNO_3[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(N_776));
    AO1 \framesync_RNO_0[3]  (.A(I_16_0), .B(un1_framesync_4_sqmuxa), 
        .C(framesync_1_m), .Y(N_678));
    NOR2A \seradr0_m[2]  (.A(seradr0apb[2]), .B(N_1421), .Y(
        seradr0_m[2]));
    NOR2B \fsmsta_RNIQFTD[4]  (.A(\fsmsta[4]_net_1 ), .B(
        ack_bit_1_sqmuxa_a0_0), .Y(ack_bit_1_sqmuxa_a0_3));
    OA1C ack_RNIAC657 (.A(un1_sersta65), .B(fsmsta_nxt19), .C(
        \fsmsta_nxt_4_i_m[2] ), .Y(fsmsta_m1_e_1_0));
    NOR2 \fsmsta_RNIBICE2[4]  (.A(fsmsta_N_6_1), .B(\fsmsta[4]_net_1 ), 
        .Y(N_747));
    AO1C \fsmdet_RNO[6]  (.A(\fsmdet[5]_net_1 ), .B(N_1389), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO_0[6]_net_1 ));
    OR2A \fsmdet_RNO_0[6]  (.A(SDAInt_net_1), .B(\fsmdet_i_0[6] ), .Y(
        N_1389));
    AX1C \PCLK_count1_RNO_0[3]  (.A(PCLK_count1_c1), .B(
        \PCLK_count1[2]_net_1 ), .C(\PCLK_count1[3]_net_1 ), .Y(
        PCLK_count1_n3_tz));
    OR3 SCLO_int_RNO_2 (.A(un1_sersta69_2_0), .B(un1_sersta69_8), .C(
        un1_sersta69_3_0), .Y(un1_sersta69_1));
    OR2A \sercon_RNICJK2[4]  (.A(\sercon[4]_net_1 ), .B(INT_net_0_0), 
        .Y(N_50));
    DFN1C0 \fsmsync[1]  (.D(\fsmsync_RNO_0[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmsync[1]_net_1 ));
    NOR2B \fsmsta_0_RNICFLR3[3]  (.A(un1_sersta65_0), .B(framesync24), 
        .Y(un1_sersta65));
    NOR2A \seradr0_m[0]  (.A(seradr0apb[0]), .B(N_1421), .Y(
        seradr0_m[0]));
    NOR3B SCLO_int_RNIMMIK (.A(\fsmmod[4]_net_1 ), .B(SCLO_int_net_1), 
        .C(SCLInt_net_1), .Y(N_96));
    AO1 \fsmmod_RNO[5]  (.A(\fsmmod_ns_i_a3_i_a3_0_0[5] ), .B(N_1406_2)
        , .C(N_1405), .Y(\fsmmod_RNO_0[5]_net_1 ));
    XA1C adrcomp_2_sqmuxa_1_i_a3_2_RNO_1 (.A(\serdat[5]_net_1 ), .B(
        seradr0apb[6]), .C(un1_seradr0_4), .Y(
        adrcomp_2_sqmuxa_1_i_a3_2_2));
    NOR2B \sercon_RNI1E0R[6]  (.A(un1_PRDATA), .B(\sercon[6]_net_1 ), 
        .Y(\sercon_m[6] ));
    AO1 \fsmsta_RNO_4[0]  (.A(N_814), .B(SDAInt_net_1), .C(
        fsmsta_nxt_m_0), .Y(\fsmsta_10s_1_iv_2[0] ));
    DFN1P0 \indelay[2]  (.D(\indelay_RNO_0[2]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\indelay_i_0[2] ));
    NOR2A \fsmdet_RNIE6F2[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ack_3_sqmuxa_0));
    OR2A \SCLI_ff_reg_RNO[0]  (.A(\sercon[6]_net_1 ), .B(SCLO_int_0), 
        .Y(\SCLI_ff_reg_4[0] ));
    NOR2B \fsmsta_RNO_10[0]  (.A(ack_net_1), .B(N_759), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[0] ));
    DFN1P0 \framesync[0]  (.D(\framesync_7[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[0]_net_1 ));
    OR2 SCLInt_RNO (.A(un1_serdat52_0), .B(un1_SCLI_ff_reg_1), .Y(
        un1_serdat52_1));
    OR2A \framesync_RNIDVDS[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(N_1417));
    NOR3C starto_en_RNIBJBU (.A(sercon_0), .B(starto_en_net_1), .C(
        N_1111_2), .Y(\fsmmod_ns_i_a3_i_a3_0_2_1[5] ));
    XOR2 adrcomp_2_sqmuxa_1_i_a3_2_RNO_8 (.A(seradr0apb[7]), .B(
        \serdat[6]_net_1 ), .Y(un1_seradr0_6));
    NOR3 \fsmsta_RNI875A6[2]  (.A(fsmsta_N_5), .B(un1_fsmdet), .C(
        N_740), .Y(\fsmsta_nxt_cnst_i_m_2_3[2] ));
    AO1A \framesync_RNIOSRO1[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(un1_framesync), .Y(un1_framesync24_0)
        );
    NOR2B \sercon_inferred_clock_RNIS6112[3]  (.A(bsd7_tmp_1_sqmuxa), 
        .B(INT_net_0_0), .Y(bsd7_tmp_0_sqmuxa_1));
    DFN1C0 \fsmsync[5]  (.D(\fsmsync_RNO_0[5]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[5]_net_1 ));
    NOR2 \fsmsta_RNIN7FC_0[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta64_1));
    XOR2 un1_framesync_1_I_16 (.A(\framesync[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16_0));
    OR2 adrcompen_RNI20GL4 (.A(fsmsta_N_6), .B(un1_fsmdet), .Y(
        un1_fsmdet_2));
    NOR3A \sersta_RNO_1[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(N_759), .Y(N_773));
    NOR2 \fsmsta_0_RNI1F643[4]  (.A(sersta74), .B(un1_sersta69_6), .Y(
        adrcomp_2_sqmuxa_1_i_a3_0_1));
    OR3 \framesync_RNIMQRO1[1]  (.A(\framesync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(framesync_2_sqmuxa_i_0), .Y(
        framesync_2_sqmuxa_i_1));
    NOR3B adrcompen_RNIPBGR3 (.A(framesync24), .B(SDAO_m5_i_a3_0), .C(
        sersta64), .Y(fsmsta_N_6));
    NOR2A \sercon_RNICN9R5[2]  (.A(un1_framesync24_3_s6), .B(
        \fsmsta_nxt_34[1] ), .Y(\fsmsta_nxt_34_i_m[1] ));
    NOR2B \fsmdet_RNID0PE[3]  (.A(N_40), .B(\fsmdet[3]_net_1 ), .Y(
        un1_fsmmod_1));
    DFN1E0C0 \serdat[5]  (.D(\serdat_20[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[5]_net_1 ));
    NOR3C starto_en_RNIPPMF4 (.A(fsmmod5_i), .B(
        \fsmmod_ns_i_a3_i_a3_0_2_1[5] ), .C(N_111), .Y(N_1406_2));
    OR2B \fsmmod_RNO_2[3]  (.A(N_67_i), .B(SCLInt_net_1), .Y(N_1427));
    NOR2A ack_RNIPM0Q (.A(seradr0apb[0]), .B(ack_net_1), .Y(
        adrcomp_2_sqmuxa_1_i_a3_1_0));
    AOI1B \fsmsta_RNO_6[1]  (.A(adrcomp_2_sqmuxa_1_i_a3_1_0), .B(
        fsmsta19), .C(fsmsta_N_6_1), .Y(N_737));
    DFN1C0 \fsmmod[5]  (.D(\fsmmod_RNO_0[5]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmmod[5]_net_1 ));
    DFN1C0 \fsmmod[4]  (.D(\fsmmod_RNO_0[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmmod[4]_net_1 ));
    OR2 \framesync_RNIVVJ82[1]  (.A(framesync_2_sqmuxa_i_1), .B(N_1387)
        , .Y(N_1376));
    NOR3A \fsmsta_0_RNI075R[2]  (.A(N_1414), .B(\fsmsta_0[2]_net_1 ), 
        .C(\fsmsta[0]_net_1 ), .Y(un1_N_10));
    NOR3 nedetect_RNI7H09G (.A(framesync_1_sqmuxa_1), .B(
        framesync_0_sqmuxa_1), .C(un1_framesync_4_sqmuxa), .Y(N_1409));
    OR2 \fsmsta_RNIM6FC[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_763));
    NOR2B bsd7_tmp_RNO_2 (.A(bsd7_tmp_1_sqmuxa_2), .B(nedetect_net_1), 
        .Y(bsd7_tmp_0_sqmuxa_3));
    OR2 \sercon_RNIVSC4[2]  (.A(\sercon[2]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmsta_nxt_34[1] ));
    XA1C \sersta_RNO[1]  (.A(\fsmsta[0]_net_1 ), .B(N_761), .C(N_760), 
        .Y(\sersta_4[1] ));
    NOR2A pedetect_RNI6S0L2 (.A(un1_ack_1_sqmuxa_a0_1), .B(
        un1_sersta60_1), .Y(un1_ack_1_sqmuxa_a0_2));
    NOR3B \fsmsync_RNO_2[6]  (.A(N_22), .B(\fsmsync_ns_i_i_a2_2[6] ), 
        .C(N_50), .Y(N_64));
    MX2 \serdat_RNO[3]  (.A(I2C_slave_0_BIF_1_PWDATA[3]), .B(
        \serdat[2]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[3] ));
    XOR2 adrcomp_2_sqmuxa_1_i_a3_2_RNO_5 (.A(seradr0apb[3]), .B(
        \serdat[2]_net_1 ), .Y(un1_seradr0_2));
    AO1 \framesync_RNO[1]  (.A(I_15_0), .B(un1_framesync_4_sqmuxa), .C(
        \fsmdet[3]_net_1 ), .Y(\framesync_7[1] ));
    XOR2 un1_framesync_1_I_13 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    OR3C \PCLK_count1_RNI3P8G[3]  (.A(\PCLK_count1[1]_net_1 ), .B(
        \PCLK_count1[3]_net_1 ), .C(\PCLK_count1[2]_net_1 ), .Y(
        PCLK_count17));
    NOR2A \seradr0_m[1]  (.A(seradr0apb[1]), .B(N_1421), .Y(
        seradr0_m[1]));
    NOR2B adrcompen_RNO (.A(N_1382), .B(\fsmdet[3]_net_1 ), .Y(N_1377));
    AOI1 \framesync_RNIRNLC3[3]  (.A(\framesync[3]_net_1 ), .B(N_1363), 
        .C(un1_SDAO_int17_1), .Y(SDAO_int_0_sqmuxa_0));
    NOR2 \PRDATA_iv_i_a2[3]  (.A(seradr0apb[3]), .B(N_1421), .Y(N_77));
    DFN1P0 \fsmmod[0]  (.D(\fsmmod_RNO_0[0]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmmod[0]_net_1 ));
    NOR2B \PCLK_count1_RNO[2]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n2_tz), .Y(PCLK_count1_n2));
    NOR3B \fsmsta_RNI2B30E[4]  (.A(\fsmsta_nxt_cnst_i_m_2_0[2] ), .B(
        \fsmsta_nxt_cnst_i_m_2_3[2] ), .C(fsmsta_N_6), .Y(
        \fsmsta_nxt_cnst_i_m[2] ));
    AO1 \fsmsta_0_RNIHFTK[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[3]_net_1 ), .Y(un1_m7_i_0_tz));
    NOR3B \fsmmod_ns_0_0_0_RNO[2]  (.A(N_1454), .B(N_1424), .C(
        \sercon[4]_net_1 ), .Y(N_1446));
    OR3 SCLO_int_RNO_5 (.A(un1_sersta69_6), .B(un1_sersta69_4), .C(
        un1_sersta69_7), .Y(un1_sersta69_3_0));
    NOR2A \fsmsta_RNI8EQH2[2]  (.A(framesync24), .B(N_1416), .Y(
        un1_framesync24));
    NOR2B \fsmsync_RNO_4[6]  (.A(\fsmsync[2]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(\fsmsync_ns_i_i_a2_0[6] ));
    AO1D ack_RNO_0 (.A(un1_ack_0_sqmuxa_0), .B(ack_0_sqmuxa_1), .C(
        ack_0_sqmuxa_2), .Y(un1_ack_0_sqmuxa_3));
    NOR2 \fsmsta_RNIL5FC_1[0]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(sersta74_1));
    OR2 \fsmmod_RNIBPAD[1]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .Y(N_40));
    NOR2B pedetect_RNIORJ82 (.A(pedetect_net_1), .B(framesync24), .Y(
        un1_sersta64_0));
    NOR2A \fsmsta_0_RNIBQC11_2[2]  (.A(sersta60_0), .B(N_1414), .Y(
        sersta60));
    XOR2 un1_framesync_1_I_18 (.A(\framesync[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18_0));
    OR2 \sercon_RNISB3E3[6]  (.A(ack_bit_1_sqmuxa_1_1), .B(
        ack_bit_1_sqmuxa_1_0), .Y(ack_bit_1_sqmuxa));
    NOR2 bsd7_RNO_5 (.A(bsd7_tmp_net_1), .B(SCLInt_net_1), .Y(
        bsd7_tmp_i_m_0));
    NOR3B \fsmsta_0_RNIBQC11_0[4]  (.A(sersta76_0), .B(
        \fsmsta_0[4]_net_1 ), .C(N_763), .Y(sersta76));
    NOR2A \fsmdet_RNIG8F2[5]  (.A(\sercon[6]_net_1 ), .B(
        \fsmdet[5]_net_1 ), .Y(fsmmod5_i_0_a3_0));
    OR2 \fsmsta_0_RNI1F643[3]  (.A(sersta73), .B(un1_sersta69_1_0), .Y(
        un1_sersta69));
    DFN1C0 \fsmmod[2]  (.D(\fsmmod_ns[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[2]_net_1 ));
    OR2 \fsmsta_RNIAI0A4[4]  (.A(un1_sersta69_2), .B(un1_sersta69_1_0), 
        .Y(un1_sersta69_8));
    NOR2A \sersta_RNO_0[0]  (.A(N_731), .B(\fsmsta[0]_net_1 ), .Y(
        N_770));
    NOR2B \fsmsta_RNIP9FC[3]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_a4_0_0[4] ));
    NOR3B SDAO_int_RNO_0 (.A(\sercon[6]_net_1 ), .B(un1_fsmmod_1_0), 
        .C(SDAO_int17_0_0), .Y(SDAO_int_1_sqmuxa));
    OA1 \fsmsync_RNO[3]  (.A(N_28), .B(
        \fsmsync_ns_i_a4_i_o3_0_0[3]_net_1 ), .C(N_22), .Y(
        \fsmsync_RNO_0[3]_net_1 ));
    NOR3B pedetect_RNIKEBS6 (.A(serdat33), .B(ack_3_sqmuxa_0), .C(
        un1_sersta69_8), .Y(ack_1_sqmuxa_2_a0_1));
    NOR3B ack_RNIJFGJ6 (.A(ens1_pre_4_sqmuxa), .B(fsmsta19), .C(
        ack_net_1), .Y(fsmsta_0_sqmuxa_2_s7));
    DFN1E0C0 \serdat[1]  (.D(\serdat_20[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[1]_net_1 ));
    AO1A \fsmsta_RNO_8[0]  (.A(un1_fsmdet_2), .B(
        un1_framesync24_4_s2_0), .C(un1_framesync24_3_s6), .Y(N_814));
    AND2 SDAO_int_1_sqmuxa_1 (.A(SDAO_int_3_sqmuxa_net_1), .B(
        SDAO_int6_i), .Y(SDAO_int_1_sqmuxa_1_net_1));
    NOR3A ack_RNI4OE0N (.A(fsmsta_m1_e_1_0), .B(un1_framesync24_1_s5), 
        .C(SDAO_int_m_0), .Y(fsmsta_m1_e_1_2));
    OA1B \fsmsta_RNO_9[0]  (.A(un1_framesync24_2_s4), .B(
        un1_framesync24_1_s5), .C(COREI2C_1_SDAO_0), .Y(fsmsta_nxt_m_0)
        );
    NOR3B PCLKint_ff_RNI343N (.A(PCLKint_ff_net_1), .B(
        \fsmmod[4]_net_1 ), .C(PCLKint_net_1), .Y(fsmsta33));
    NOR2B \fsmsync_RNO_2[0]  (.A(\fsmsync[0]_net_1 ), .B(SCLInt_net_1), 
        .Y(\fsmsync_ns_0_i_a2_2_0[0] ));
    NOR3C \fsmsta_0_RNIBQC11[3]  (.A(N_771_1), .B(\fsmsta_0[3]_net_1 ), 
        .C(sersta61_2), .Y(sersta67));
    NOR3 bsd7_RNO (.A(bsd7_tmp_i_m), .B(bsd7_12_iv_0), .C(
        \serdat_i_m[7] ), .Y(bsd7_12_iv));
    NOR2A \sercon_RNINI87[6]  (.A(\sercon[6]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .Y(ack_bit_1_sqmuxa_a0_1));
    NOR3C \fsmsta_0_RNI264N[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(sersta79_0));
    DFN1E0C0 \fsmsta[1]  (.D(\fsmsta_10[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta[1]_net_1 ));
    OR2 SCLInt_RNI95OF (.A(N_1227_i_0), .B(N_102), .Y(N_1387));
    NOR2B \fsmsta_RNI70NI[4]  (.A(\fsmsta[4]_net_1 ), .B(sersta82_0), 
        .Y(sersta82_1));
    NOR3B \fsmsta_0_RNI594N[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta[4]_net_1 ), .Y(
        sersta70_0_a2_1));
    AO1A \fsmmod_RNI1MFF[0]  (.A(adrcomp_net_1), .B(\fsmmod[0]_net_1 ), 
        .C(\fsmmod[3]_net_1 ), .Y(SDAO_int17_0_0));
    NOR3B SDAO_int_RNI88BV7 (.A(un1_sersta69), .B(SDAO_int_m_1_1), .C(
        un1_N_5), .Y(SDAO_int_m_0));
    NOR3 \fsmsta_0_RNIIQV13[4]  (.A(sersta76), .B(sersta82), .C(
        sersta77), .Y(framesync_1_sqmuxa_1_1));
    NOR3C adrcomp_RNO_2 (.A(\framesync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(adrcomp_2_sqmuxa_1_i_a4_2), .Y(
        adrcomp_2_sqmuxa_1_i_a4_3));
    AO1 \fsmdet_RNO[1]  (.A(\fsmdet_i_0[1] ), .B(\fsmdet_i_0[0] ), .C(
        N_1222_1), .Y(\fsmdet_RNO_0[1] ));
    MX2 adrcomp_RNIKBCVO1 (.A(N_661), .B(N_812), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[3] ));
    OR2A sclscl_RNISVEU3 (.A(fsmmod5_i), .B(fsmmod_nxt43), .Y(N_26));
    DFN1C0 \sercon[4]  (.D(\sercon_10[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\sercon[4]_net_1 ));
    NOR3A ack_RNIL68ND (.A(\fsmsta_10k_0_a2_0[4] ), .B(
        fsmsta_0_sqmuxa_2_s7), .C(fsmsta_1_sqmuxa_2_s8), .Y(N_813));
    DFN1C0 \indelay[1]  (.D(N_1368), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \indelay[1]_net_1 ));
    MX2A SDAO_int_RNO (.A(SDAO_int_1_sqmuxa), .B(N_682), .S(
        un1_SDAO_int_1_sqmuxa_1), .Y(SDAO_int_7));
    NOR2A \fsmsta_RNIO8FC[4]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(sersta61_2));
    AO1 \fsmsta_RNITR8R1[4]  (.A(ack_bit_1_sqmuxa_a0_4), .B(
        ack_bit_1_sqmuxa_a0_3), .C(\fsmsta_0_RNI4RCN[4]_net_1 ), .Y(
        ack_bit_1_sqmuxa_1_1));
    XA1C adrcomp_2_sqmuxa_1_i_a3_2_RNO_2 (.A(\serdat[3]_net_1 ), .B(
        seradr0apb[4]), .C(un1_seradr0_2), .Y(
        adrcomp_2_sqmuxa_1_i_a3_2_1));
    MX2 \sercon_0_RNO[3]  (.A(\sercon_5_0_0[3] ), .B(
        I2C_slave_0_BIF_1_PWDATA[3]), .S(sercon18), .Y(
        \sercon_10_0_0[3] ));
    OA1 \fsmsta_RNI6U8V4[4]  (.A(un1_sersta69_2), .B(sersta75), .C(
        framesync24), .Y(un1_framesync24_1_s5_0_0));
    OA1C \fsmsta_0_RNI374N[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(
        \fsmsta_nxt_cnst_0_a4_0_0[2] ));
    NOR3 ack_RNIR5DBC (.A(fsmsta_1_sqmuxa_1_s9), .B(fsmsta33), .C(
        fsmsta_0_sqmuxa_2_s7), .Y(N_811));
    DFN1C0 \PCLK_count1[2]  (.D(PCLK_count1_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[2]_net_1 ));
    NOR2A indelay_n1_i (.A(N_31), .B(indelay_n1_i_0_net_1), .Y(N_1368));
    OR2 PCLKint_ff_RNI9KVP (.A(fsmsta33), .B(N_1227_i_0), .Y(
        un1_fsmdet));
    NOR2B adrcompen_RNI719F (.A(adrcompen_net_1), .B(adrcomp_net_1), 
        .Y(N_80));
    NOR2A \serdat_RNIRD711[7]  (.A(un4_PRDATA), .B(\serdat[7]_net_1 ), 
        .Y(N_91));
    NOR3B \fsmsta_0_RNIBQC11_0[2]  (.A(un1_m7_i_a5_2_0), .B(
        \fsmsta_0[2]_net_1 ), .C(N_1414), .Y(un1_N_13));
    NOR3A \fsmsync_RNO_0[3]  (.A(\fsmsync[5]_net_1 ), .B(
        \sercon[4]_net_1 ), .C(INT_net_0_0), .Y(N_28));
    DFN1C0 \fsmsync[4]  (.D(\fsmsync_RNO_0[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmsync[4]_net_1 ));
    OR2 \fsmmod_RNI1C081[5]  (.A(N_1398), .B(\fsmmod[5]_net_1 ), .Y(
        N_22));
    NOR2A indelay_n1_i_a2 (.A(\indelay_i_0[0] ), .B(\indelay[1]_net_1 )
        , .Y(N_61));
    NOR3A \sersta_RNO_2[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .C(sersta71_2), .Y(N_774));
    NOR2A \fsmsta_0_RNIBQC11_1[2]  (.A(sersta62_0), .B(N_1414), .Y(
        sersta62));
    NOR2A ack_RNI0EEJ2 (.A(fsmsta_N_6_1), .B(ack_net_1), .Y(N_744));
    DFN1E0P0 SDAO_int (.D(SDAO_int_7), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(SDAO_int_1_sqmuxa_1_net_1), .Q(COREI2C_1_SDAO_0));
    AO1 \fsmsta_RNO_6[0]  (.A(\fsmsta_nxt_cnst_0_a4_0_0[0] ), .B(
        fsmsta_N_6_1), .C(\fsmsta_nxt_cnst_0_0[0] ), .Y(
        \fsmsta_nxt_cnst_0_1[0] ));
    NOR3A ack_RNIJFGJ6_0 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .C(
        fsmsta19), .Y(fsmsta_1_sqmuxa_2_s8));
    NOR3B \fsmsta_RNIS56V_0[4]  (.A(sersta82_0), .B(un1_m7_i_a5_1_0), 
        .C(\fsmsta[4]_net_1 ), .Y(sersta69));
    AO1A \fsmmod_RNO[3]  (.A(N_1425), .B(\fsmmod_ns_i_a3_i_a2_0_0[3] ), 
        .C(N_1453), .Y(\fsmmod_RNO_0[3]_net_1 ));
    NOR2 \framesync_RNIDVDS_0[2]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[2]_net_1 ), .Y(un1_framesync_12_0));
    OR2B \sercon_RNIJKBE[4]  (.A(N_1379), .B(\sercon[4]_net_1 ), .Y(
        N_1382));
    AO1 \sercon_0_RNO_0[3]  (.A(un1_fsmmod_2_0_0), .B(
        \sercon[6]_net_1 ), .C(INT_net_0_0), .Y(\sercon_5_0_0[3] ));
    AO1 \fsmmod_RNO[1]  (.A(\fsmmod_ns_0_0_a2_0[1] ), .B(fsmmod5_i), 
        .C(N_1450), .Y(\fsmmod_ns[1] ));
    NOR3A busfree_RNI8KGV_0 (.A(busfree_net_1), .B(\fsmmod[5]_net_1 ), 
        .C(SCLInt_net_1), .Y(N_97));
    DFN1P0 \sersta[4]  (.D(\sersta_4[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(sersta_0));
    NOR3C \fsmmod_RNO_2[1]  (.A(\fsmmod_ns_0_0_a2_0_1[1] ), .B(
        SDAInt_net_1), .C(N_1111_2), .Y(\fsmmod_ns_0_0_a2_0_3[1] ));
    MX2 \serdat_RNO[0]  (.A(I2C_slave_0_BIF_1_PWDATA[0]), .B(ack_net_1)
        , .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[0] ));
    AOI1 \fsmdet_RNO[5]  (.A(\fsmdet_i_0[4] ), .B(\fsmdet_i_0[2] ), .C(
        N_1222_1), .Y(\fsmdet_RNO_0[5] ));
    NOR3A \sercon_RNI95KS[4]  (.A(un1_sersta58_1), .B(
        \sercon[4]_net_1 ), .C(INT_net_0_0), .Y(framesync10));
    NOR3C adrcomp_RNIU09U4 (.A(ens1_pre_3_sqmuxa), .B(adrcomp_net_1), 
        .C(fsmsta12), .Y(fsmsta_0_sqmuxa_s5));
    NOR2A \fsmsta_RNO_9[1]  (.A(\fsmsta_0[2]_net_1 ), .B(N_759), .Y(
        N_739));
    NOR2B \fsmdet_RNITUR27[3]  (.A(ens1_pre_3_sqmuxa), .B(fsmsta13), 
        .Y(ens1_pre_1_sqmuxa_1_s6));
    OR2A SDAInt_RNIO0KE_0 (.A(SCLInt_net_1), .B(SDAInt_net_1), .Y(
        N_1216_1));
    OA1C \sercon_inferred_clock_RNIEBBJ3[3]  (.A(N_16), .B(
        un1_framesync_2), .C(INT_net_0_0), .Y(fsmsta12));
    AOI1 \fsmsync_RNO[2]  (.A(N_1334), .B(\fsmsync[0]_net_1 ), .C(
        \fsmsync_ns_i_0[2] ), .Y(\fsmsync_RNO_0[2]_net_1 ));
    NOR2A \fsmsta_RNIQAFC[2]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_748));
    NOR3A \fsmsta_RNII3TR7[4]  (.A(un1_framesync24_1_s5_0_0), .B(
        un1_N_5), .C(un1_fsmdet), .Y(un1_framesync24_1_s5));
    AOI1 \fsmdet_RNO[3]  (.A(\fsmdet_i_0[1] ), .B(\fsmdet_i_0[6] ), .C(
        N_1216_1), .Y(\fsmdet_RNO_0[3] ));
    OR2A \sercon_RNIQ8DA1[5]  (.A(N_1416), .B(\fsmmod_ns_0_0_o2_0[2] ), 
        .Y(N_1424));
    NOR3A \framesync_RNIITKA1[1]  (.A(\framesync[3]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(\framesync[2]_net_1 ), .Y(
        \framesync_RNIITKA1[1]_net_1 ));
    GND GND_i (.Y(GND));
    NOR2B \framesync_RNIOCRJB[3]  (.A(SDAO_int_0_sqmuxa_0), .B(
        un1_sersta58), .Y(SDAO_int_0_sqmuxa));
    NOR2B \fsmmod_RNI5H38[1]  (.A(\fsmmod[1]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ens1_pre_0_sqmuxa_s2));
    NOR3 \fsmsta_0_RNIR0HLI[4]  (.A(un1_framesync24_1_s5), .B(
        SDAO_int_m_0), .C(un1_framesync24_3), .Y(fsmsta_m3_0_a2_1_0));
    AO1A \fsmmod_RNO[4]  (.A(N_1425), .B(\fsmmod_ns_i_a3_i_a2_0_0[4] ), 
        .C(N_1451), .Y(\fsmmod_RNO_0[4]_net_1 ));
    NOR2A ens1_pre_2_sqmuxa_1_RNO (.A(ens1_pre_3_sqmuxa), .B(fsmsta13), 
        .Y(ens1_pre_2_sqmuxa_1_0));
    NOR2A nedetect_RNO (.A(SCLInt_net_1), .B(un1_SCLI_ff_reg), .Y(
        nedetect_0_sqmuxa));
    OA1C pedetect_RNIEOT6J_0 (.A(un1_ack_1_sqmuxa_a0_4), .B(
        un1_sersta65_1), .C(serdat4), .Y(un1_ack_1_sqmuxa_1_0));
    AO1 \fsmsta_0_RNIVNJ83[2]  (.A(sersta80_0), .B(sersta64_1), .C(
        un1_sersta69_4), .Y(un1_sersta78));
    NOR3C \fsmmod_ns_0_0_0_RNO_0[2]  (.A(N_40), .B(nedetect_net_1), .C(
        fsmmod5_i), .Y(N_1447));
    DFN1E1C0 adrcomp (.D(N_1378), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        N_1374), .Q(adrcomp_net_1));
    NOR2B ack_RNIQJLE (.A(ack_net_1), .B(SDAInt_net_1), .Y(
        \fsmsta_nxt_4[3] ));
    NOR2B \SDAI_ff_reg_RNO[1]  (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_4[1] ));
    NOR2B \fsmsta_RNIMKTK[4]  (.A(\fsmsta[4]_net_1 ), .B(
        ack_bit_1_sqmuxa_a0_2), .Y(sersta74_0));
    NOR3C \fsmsta_RNIBQC11[1]  (.A(ack_bit_1_sqmuxa_a0_2), .B(
        \fsmsta[1]_net_1 ), .C(sersta61_2), .Y(sersta61));
    NOR3A \fsmsta_0_RNI374N_0[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(sersta72_1));
    NOR2 \serdat_RNI1JFE[0]  (.A(\serdat[0]_net_1 ), .B(
        \serdat[3]_net_1 ), .Y(fsmsta19_2));
    OR3 \fsmsta_RNO_0[0]  (.A(\fsmsta_nxt_cnst_m[0] ), .B(
        \fsmsta_10s_1_iv_0[0] ), .C(\fsmsta_10s_1_iv_2[0] ), .Y(N_658));
    OR2 \fsmdet_RNI6GS2[5]  (.A(\fsmdet[5]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(N_1227_i_0));
    MX2 \serdat_RNO[6]  (.A(I2C_slave_0_BIF_1_PWDATA[6]), .B(
        \serdat[5]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[6] ));
    NOR3 \serdat_RNIALNL[2]  (.A(\serdat[5]_net_1 ), .B(
        \serdat[6]_net_1 ), .C(\serdat[2]_net_1 ), .Y(fsmsta19_3));
    NOR3B \fsmsta_RNO_3[1]  (.A(\fsmsta_nxt_cnst_m_0[1] ), .B(
        un1_framesync24_6_s7), .C(N_737), .Y(\fsmsta_nxt_cnst_m[1] ));
    XOR2 \PCLK_count1_RNO_0[2]  (.A(\PCLK_count1[2]_net_1 ), .B(
        PCLK_count1_c1), .Y(PCLK_count1_n2_tz));
    OA1A \sercon_0_RNO_5[3]  (.A(N_16), .B(un1_framesync_2), .C(
        un1_framesync_5_0), .Y(un1_framesync_5_0_0));
    NOR3C adrcomp_2_sqmuxa_1_i_a3_2_RNO_0 (.A(
        adrcomp_2_sqmuxa_1_i_a3_2_2), .B(adrcomp_2_sqmuxa_1_i_a3_2_1), 
        .C(adrcomp_2_sqmuxa_1_i_a3_2_3), .Y(
        adrcomp_2_sqmuxa_1_i_a3_2_5));
    NOR3C adrcomp_RNO_0 (.A(adrcomp_2_sqmuxa_1_i_a4_3), .B(
        un1_framesync), .C(N_1385), .Y(adrcomp_2_sqmuxa_1_i_a4_5));
    DFN1C0 \fsmdet[5]  (.D(\fsmdet_RNO_0[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[5]_net_1 ));
    NOR2A SDAO_int_RNIU27O9 (.A(un1_framesync24_2_s4), .B(
        COREI2C_1_SDAO_0), .Y(fsmsta_nxt_m_1));
    NOR2 \fsmsta_RNIN7FC_0[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(N_771_1));
    MX2 \serdat_RNO[1]  (.A(I2C_slave_0_BIF_1_PWDATA[1]), .B(
        \serdat[0]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[1] ));
    NOR2B \fsmsta_0_RNIQGDV1[2]  (.A(bsd7_tmp_1_sqmuxa_1_2), .B(
        bsd7_tmp_1_sqmuxa_1), .Y(bsd7_tmp_1_sqmuxa));
    NOR2A \fsmsta_RNIO8FC_0[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta76_0));
    NOR2B sclscl_RNIQCOF (.A(sclscl_net_1), .B(pedetect_net_1), .Y(
        fsmmod_nxt43));
    NOR2A \serdat_RNIOA711[4]  (.A(un4_PRDATA), .B(\serdat[4]_net_1 ), 
        .Y(N_1434));
    MX2 \serdat_RNO[2]  (.A(I2C_slave_0_BIF_1_PWDATA[2]), .B(
        \serdat[1]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[2] ));
    OR2 SDA_e_inst_1 (.A(out_en), .B(out_en_0), .Y(SDA_e));
    AO1 \fsmsta_RNO_7[1]  (.A(\fsmsta_nxt_34[1] ), .B(
        un1_framesync24_3_s6), .C(\fsmsta_nxt_4_m[1] ), .Y(
        \fsmsta_10s_0_iv_0[1] ));
    OR2 SCLO_int_RNO_4 (.A(un1_sersta69_0), .B(un1_sersta69_3), .Y(
        un1_sersta69_2_0));
    OR2 adrcomp_2_sqmuxa_1_i_o3_1 (.A(N_98), .B(N_99), .Y(N_1385));
    NOR2A \sercon_RNIP48H[4]  (.A(N_1382), .B(N_1227_i_0), .Y(N_95_3));
    NOR2A \fsmsta_RNIP9FC_0[3]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(un1_m4_0_a2_0));
    DFN1P0 \fsmdet[2]  (.D(\fsmdet_RNO_0[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[2] ));
    NOR2B nedetect_RNIMD912 (.A(nedetect_net_1), .B(framesync24), .Y(
        N_88));
    NOR2 \sercon_write_proc.un1_PRDATA_0_a2  (.A(
        I2C_slave_0_BIF_1_PADDR[2]), .B(I2C_slave_0_BIF_1_PADDR[3]), 
        .Y(un1_PRDATA));
    OR3A \sersta_RNO[3]  (.A(INT_net_0_0), .B(\sersta_4_0_1[3] ), .C(
        N_775), .Y(\sersta_4[3] ));
    NOR2B \fsmsta_RNIN7FC[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(bsd7_tmp_1_sqmuxa_a0_0));
    NOR2B ack_RNI5IP05 (.A(ens1_pre_4_sqmuxa), .B(ack_net_1), .Y(
        fsmsta_1_sqmuxa_1_s9));
    NOR2A \serdat_RNIN9711[3]  (.A(un4_PRDATA), .B(\serdat[3]_net_1 ), 
        .Y(N_79));
    NOR3A \fsmsta_0_RNIUD8M2[4]  (.A(N_95_3), .B(sersta83), .C(
        sersta64), .Y(adrcomp_2_sqmuxa_1_i_a3_0_2));
    OA1 \fsmmod_RNO[6]  (.A(\fsmmod_ns_0_0_a4_1[6] ), .B(
        \fsmmod_ns_0_0_a4_0_0[6] ), .C(fsmmod5_i), .Y(\fsmmod_ns[6] ));
    DFN1P0 \sersta[3]  (.D(\sersta_4[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sersta[3]_net_1 ));
    NOR2A indelay_n3_i (.A(N_31), .B(N_52_i), .Y(N_1366));
    AO1 \fsmsta_0_RNI70J02[4]  (.A(sersta81_3), .B(\fsmsta_0[4]_net_1 )
        , .C(sersta82), .Y(un1_sersta69_7));
    NOR3A adrcomp_RNIIQ9FA (.A(N_809_1), .B(fsmsta32_s3_1), .C(
        fsmsta_0_sqmuxa_s5), .Y(N_812));
    NOR2A \framesync_RNIBTDS_0[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(un1_framesync));
    AND2 adrcomp_2_sqmuxa_1_i_a3_1 (.A(fsmsta19), .B(
        adrcomp_2_sqmuxa_1_i_a3_1_0), .Y(N_98));
    AND2 un1_framesync_1_I_1 (.A(\framesync[0]_net_1 ), .B(
        framesync_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    NOR2B \serdat_RNIM8711[2]  (.A(\serdat[2]_net_1 ), .B(un4_PRDATA), 
        .Y(\serdat_m[2] ));
    OR2 \fsmsta_0_RNIMKP22[2]  (.A(sersta62), .B(sersta63), .Y(
        un1_sersta60_2));
    DFN1E1P0 busfree (.D(\fsmdet_i[3] ), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_fsmdet_0), .Q(busfree_net_1));
    DFN1E1C0 \sercon[7]  (.D(I2C_slave_0_BIF_1_PWDATA[7]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[7]_net_1 ));
    DFN1E1P0 ack_bit (.D(I2C_slave_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(ack_bit_0_sqmuxa_1), .Q(ack_bit_net_1));
    NOR2A \fsmdet_RNICPL7[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(ack_bit_1_sqmuxa_a0_0));
    DFN1P0 \SCLI_ff_reg[2]  (.D(\SCLI_ff_reg_4[2] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[2]_net_1 ));
    AOI1 \fsmsta_RNI70J02[4]  (.A(sersta81_3), .B(\fsmsta[4]_net_1 ), 
        .C(sersta74), .Y(framesync_1_sqmuxa_1_2));
    MX2 \serdat_RNO[5]  (.A(I2C_slave_0_BIF_1_PWDATA[5]), .B(
        \serdat[4]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[5] ));
    OR3 bsd7_tmp_RNO_0 (.A(bsd7_tmp_0_sqmuxa_2), .B(bsd7_tmp_0_sqmuxa), 
        .C(bsd7_tmp_0_sqmuxa_3), .Y(un1_bsd7_tmp_0_sqmuxa));
    AO1B \indelay_RNO[2]  (.A(N_48), .B(indelay_n2_i_0), .C(
        \fsmsync[3]_net_1 ), .Y(\indelay_RNO_0[2]_net_1 ));
    NOR2B \fsmmod_RNI43B21[4]  (.A(fsmmod_tr4_1_0_a3_0), .B(N_1111_2), 
        .Y(un2_PCLKint_p1_0_0));
    NOR3C \SCLI_ff_reg_RNIGTC2_0[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(
        un1_SCLI_ff_reg_1));
    NOR3C ack_bit_RNO (.A(ack_bit_1_sqmuxa), .B(sercon18), .C(
        INT_net_0_0), .Y(ack_bit_0_sqmuxa_1));
    NOR2 \fsmsta_0_RNILCDB5_0[2]  (.A(un1_sersta60_1), .B(un1_sersta78)
        , .Y(ack_1_sqmuxa_2_a0_2));
    NOR3C \fsmmod_RNO_3[1]  (.A(\fsmmod[0]_net_1 ), .B(starto_en_net_1)
        , .C(sercon_0), .Y(\fsmmod_ns_0_0_a2_0_1[1] ));
    DFN1P0 \fsmsync[0]  (.D(\fsmsync_RNO[0]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmsync[0]_net_1 ));
    AO1C \fsmsta_0_RNIDPBT[2]  (.A(un1_m7_i_a5_1_0), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(
        bsd7_tmp_1_sqmuxa_1));
    NOR2A \seradr0_m[6]  (.A(seradr0apb[6]), .B(N_1421), .Y(
        \seradr0_m[6]_net_1 ));
    NOR2B \SDAI_ff_reg_RNO[0]  (.A(SDA_in), .B(\sercon[6]_net_1 ), .Y(
        \SDAI_ff_reg_4[0] ));
    DFN1E0P0 \fsmsta[0]  (.D(\fsmsta_10[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta[0]_net_1 ));
    AO1A SDAO_int_RNIO30MH (.A(fsmsta_nxt19), .B(un1_sersta65_s3), .C(
        \fsmsta_10s_0_iv_0[3] ), .Y(\fsmsta_10s_0_iv_1[3] ));
    NOR3C adrcomp_RNO_3 (.A(adrcompen_net_1), .B(\sercon[2]_net_1 ), 
        .C(nedetect_net_1), .Y(adrcomp_2_sqmuxa_1_i_a4_2));
    AO1 \framesync_RNIENNH3[0]  (.A(un1_framesync_12_0), .B(
        un1_framesync_13_0), .C(un1_framesync24_0), .Y(
        un1_framesync24_1));
    OR2 \fsmsta_RNIMKP22[1]  (.A(sersta60), .B(sersta61), .Y(
        un1_sersta60_1));
    NOR3A adrcompen_RNIHM989 (.A(un1_framesync24_6_s7_4), .B(
        un1_fsmdet), .C(fsmsta_N_6), .Y(fsmsta_m1_e_4_1));
    OR2 \fsmsta_RNO_4[1]  (.A(\fsmsta_10s_0_iv_0[1] ), .B(
        fsmsta_nxt_m_1), .Y(\fsmsta_10s_0_iv_1[1] ));
    AO1 \sercon_RNIJI7S1[2]  (.A(\sercon[2]_net_1 ), .B(un1_PRDATA), 
        .C(\serdat_m[2] ), .Y(PRDATA_0_iv_0[2]));
    DFN1E0C0 \serdat[6]  (.D(\serdat_20[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[6]_net_1 ));
    AO1 \fsmmod_RNIC10K[2]  (.A(\fsmmod[2]_net_1 ), .B(
        \fsmmod[1]_net_1 ), .C(\fsmmod[3]_net_1 ), .Y(N_1319));
    MX2B ack_RNIF0PSR1 (.A(fsmsta_N_5_mux), .B(N_811), .S(un1_fsmdet_2)
        , .Y(\fsmsta_10[2] ));
    NOR3B \sercon_RNO_0[4]  (.A(\sercon_8_1[4] ), .B(N_1382), .C(
        fsmsta33), .Y(\sercon_8[4] ));
    OA1A \fsmsta_RNIDI0C41[2]  (.A(fsmsta_m1_e_4_3), .B(N_746), .C(
        fsmsta_m3_0_a2_1_0), .Y(fsmsta_N_7_mux_0));
    AO1D nedetect_RNIQ8SJ4 (.A(un1_framesync_0), .B(nedetect_net_1), 
        .C(framesync_1_sqmuxa_2), .Y(un1_framesync_4_sqmuxa));
    NOR2A starto_en_RNO (.A(starto_en_0_sqmuxa), .B(N_1111_2), .Y(
        starto_en_1_sqmuxa));
    DFN1E0P0 PCLKint (.D(PCLKint_5), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_PCLKint5), .Q(PCLKint_net_1));
    AO1 \fsmsta_RNIMKP22[4]  (.A(sersta70_0_a2_1), .B(sersta74_1), .C(
        sersta69), .Y(un1_sersta69_1_0));
    NOR2A \fsmmod_RNO_1[5]  (.A(\fsmmod[5]_net_1 ), .B(N_26), .Y(
        N_1405));
    NOR3B \fsmsync_RNO[5]  (.A(N_22), .B(INT_net_0_0), .C(
        \fsmsync_ns_i_0[5] ), .Y(\fsmsync_RNO_0[5]_net_1 ));
    NOR2B \fsmsta_RNIM6FC_0[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(sersta71_2));
    NOR3C \fsmsta_0_RNIBQC11[4]  (.A(un1_m4_0_a2_0), .B(
        \fsmsta_0[4]_net_1 ), .C(sersta74_1), .Y(sersta78));
    NOR3B \fsmsta_0_RNI6T1R7[4]  (.A(adrcomp_2_sqmuxa_1_i_a3_0_1), .B(
        adrcomp_2_sqmuxa_1_i_a3_0_2), .C(un1_sersta69_7), .Y(N_95));
    OR3 SDAO_int_RNI0HIQ91 (.A(\fsmsta_nxt_cnst_m[3] ), .B(
        fsmsta_nxt_m_1), .C(\fsmsta_10s_0_iv_1[3] ), .Y(N_661));
    OR2 \fsmsta_0_RNITK578[2]  (.A(un1_sersta58_0_0), .B(
        un1_sersta58_0), .Y(un1_sersta58));
    NOR3B SCLO_int_RNO_0 (.A(un1_sersta69_1), .B(INT_net_0_0), .C(
        SCLInt_net_1), .Y(un1_sercon));
    AND2 adrcomp_2_sqmuxa_1_i_a3_2 (.A(N_1383), .B(
        adrcomp_2_sqmuxa_1_i_a3_2_5), .Y(N_99));
    DFN1E0C0 \serdat[7]  (.D(\serdat_20[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[7]_net_1 ));
    OR3 \fsmsync_RNI5V7Q1[1]  (.A(N_97), .B(counter_PRESETN_0_o4_1), 
        .C(N_96), .Y(counter_PRESETN_0_o4_3));
    NOR2B \fsmmod_RNI6UBL3[2]  (.A(\fsmmod[2]_net_1 ), .B(fsmmod5_i), 
        .Y(N_1454));
    NOR2 \fsmsta_RNI8ULE[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .Y(ack_bit_1_sqmuxa_a0_2));
    NOR2B adrcompen_RNITR482 (.A(N_80), .B(framesync24), .Y(
        fsmsta_N_6_1));
    OA1 \fsmsta_RNO_12[0]  (.A(un1_sersta60_2), .B(un1_sersta60_1), .C(
        framesync24), .Y(un1_framesync24_4_s2_0));
    MX2 \framesync_RNO[3]  (.A(N_678), .B(N_1376), .S(N_1409), .Y(
        \framesync_7[3] ));
    OR3 SCLO_int_RNO_1 (.A(\fsmsync[6]_net_1 ), .B(\fsmsync[1]_net_1 ), 
        .C(un1_fsmsync_1), .Y(un1_fsmsync_2));
    NOR2B \PCLK_count1_RNIV2RA[0]  (.A(\PCLK_count1[0]_net_1 ), .B(
        \PCLK_count1[1]_net_1 ), .Y(PCLK_count1_c1));
    DFN1C0 \fsmmod[6]  (.D(\fsmmod_ns[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[6]_net_1 ));
    OR3A adrcompen_RNO_0 (.A(N_1382), .B(\fsmdet[3]_net_1 ), .C(N_88), 
        .Y(N_1373));
    NOR2A pedetect_RNISLRF2 (.A(pedetect_net_1), .B(serdat4), .Y(
        serdat33));
    NOR2A nedetect_RNILDT94 (.A(N_88), .B(un1_framesync_0), .Y(
        framesync_0_sqmuxa_1));
    NOR3C \framesync_RNIMQRO1_0[1]  (.A(\framesync[2]_net_1 ), .B(
        \framesync[1]_net_1 ), .C(un1_framesync), .Y(un1_framesync_1));
    DFN1C0 \PCLK_count1[3]  (.D(PCLK_count1_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[3]_net_1 ));
    NOR2B \fsmsta_RNIEFUO[3]  (.A(sersta81_1), .B(
        bsd7_tmp_1_sqmuxa_a0_0), .Y(sersta81_3));
    AO1C \fsmdet_RNO[4]  (.A(\fsmdet[3]_net_1 ), .B(N_1399), .C(
        SCLInt_net_1), .Y(\fsmdet_RNO_0[4]_net_1 ));
    AO1 \fsmsta_0_RNIE1HO1[4]  (.A(\fsmsta_0[4]_net_1 ), .B(
        un1_m7_i_0_tz), .C(un1_N_10), .Y(un1_m7_i_0_0));
    NOR2A ens1_pre_2_sqmuxa_1 (.A(ens1_pre_2_sqmuxa_1_0), .B(fsmsta12), 
        .Y(ens1_pre_2_sqmuxa_1_net_1));
    OA1 \fsmsta_RNI1ODQ3[4]  (.A(\fsmsta[4]_net_1 ), .B(N_726), .C(
        \fsmsta_RNIRSM23[0]_net_1 ), .Y(\fsmsta_nxt_cnst_i_m_2_0[2] ));
    OR3 \indelay_RNIEEN3[3]  (.A(\indelay[1]_net_1 ), .B(
        \indelay[3]_net_1 ), .C(N_23), .Y(N_48));
    OR2B \framesync_RNIBTDS[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[3]_net_1 ), .Y(framesync_2_sqmuxa_i_0));
    NOR2A \PCLK_count1_RNO[0]  (.A(PCLK_count1_0_sqmuxa), .B(
        \PCLK_count1[0]_net_1 ), .Y(PCLK_count1_n0));
    DFN1E1C0 adrcompen (.D(N_1377), .CLK(PCLK_c), .CLR(PRESETN_c), .E(
        N_1373), .Q(adrcompen_net_1));
    NOR3C \fsmsta_0_RNIGETK[2]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta_0[2]_net_1 ), .Y(sersta65_0));
    NOR3B busfree_RNI8KGV (.A(SCLInt_net_1), .B(busfree_net_1), .C(
        \fsmmod[5]_net_1 ), .Y(starto_en_0_sqmuxa));
    NOR2B pedetect_RNIOSSG4 (.A(bsd7_tmp_1_sqmuxa_2), .B(
        pedetect_net_1), .Y(ack_0_sqmuxa_1));
    NOR2A \sercon_inferred_clock_RNIMR414[3]  (.A(
        bsd7_tmp_1_sqmuxa_2_0), .B(INT_net_0_0), .Y(
        bsd7_tmp_1_sqmuxa_2));
    NOR3B \fsmsta_RNIOQ6B7[4]  (.A(framesync_1_sqmuxa_1_2), .B(
        framesync_1_sqmuxa_1_1), .C(N_1376), .Y(framesync_1_sqmuxa_1));
    OA1 \fsmsta_RNO_2[1]  (.A(un1_framesync24_1_s5), .B(
        un1_sersta65_s3), .C(COREI2C_1_SDAO_0), .Y(SDAO_int_m));
    AOI1 \fsmsync_RNO_0[5]  (.A(N_1111_2), .B(\fsmsync[2]_net_1 ), .C(
        \fsmsync[5]_net_1 ), .Y(\fsmsync_ns_i_0[5] ));
    AO1C \indelay_RNO[0]  (.A(\indelay_i_0[0] ), .B(N_48), .C(
        \fsmsync[3]_net_1 ), .Y(\indelay_RNO_0[0] ));
    AO1 \fsmmod_RNO_0[0]  (.A(N_26), .B(\fsmmod[5]_net_1 ), .C(
        \fsmmod_ns_i_a3_i_0[0] ), .Y(\fsmmod_ns_i_a3_i_1[0] ));
    MX2A ack_RNI4POOM1 (.A(fsmsta_N_7_mux_0), .B(N_813), .S(
        un1_fsmdet_2), .Y(\fsmsta_10[4] ));
    NOR2B \fsmmod_RNO_0[4]  (.A(\sercon[4]_net_1 ), .B(N_1454), .Y(
        \fsmmod_ns_i_a3_i_a2_0_0[4] ));
    DFN1P0 PCLKint_ff (.D(PCLKint_ff_4), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(PCLKint_ff_net_1));
    AO1B adrcomp_RNO (.A(adrcomp_2_sqmuxa_1_i_a4_5), .B(N_1380), .C(
        N_1378), .Y(N_1374));
    OR3B \sercon_RNI8LEH[5]  (.A(PCLKint_ff_net_1), .B(sercon_0), .C(
        PCLKint_net_1), .Y(\fsmmod_ns_0_0_o2_0[2] ));
    DFN1C0 \PCLK_count1[1]  (.D(PCLK_count1_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[1]_net_1 ));
    NOR2B \sersta_RNO_1[4]  (.A(\sersta_4_0_a4_0_0[4] ), .B(
        un1_m7_i_a5_1_0), .Y(N_779));
    NOR2A bsd7_RNO_3 (.A(bsd7_tmp_1_sqmuxa_2), .B(\serdat[7]_net_1 ), 
        .Y(\serdat_i_m[7] ));
    OR3 \sercon_inferred_clock_RNIOGFQ1[3]  (.A(N_1417), .B(
        \fsmmod_ns_0_0_o2_0_0[2] ), .C(INT_net_0_0), .Y(N_1425));
    NOR2A \serdat_write_proc.un4_PRDATA_0_a2  (.A(
        I2C_slave_0_BIF_1_PADDR[3]), .B(I2C_slave_0_BIF_1_PADDR[2]), 
        .Y(un4_PRDATA));
    OR3A \sercon_RNIU3GB2[4]  (.A(N_1382), .B(N_1227_i_0), .C(
        counter_PRESETN_0_o4_3), .Y(counter_PRESETN));
    DFN1P0 \SDAI_ff_reg[1]  (.D(\SDAI_ff_reg_4[1] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[1]_net_1 ));
    OR2 \indelay_RNI6MR1[2]  (.A(\indelay_i_0[2] ), .B(
        \indelay_i_0[0] ), .Y(N_23));
    OR3 \fsmmod_RNIO7931[4]  (.A(N_80), .B(\fsmmod[4]_net_1 ), .C(N_40)
        , .Y(un1_fsmmod_1_0));
    NOR2B \sercon_inferred_clock_RNIMR414_0[3]  (.A(serdat4), .B(
        bsd7_tmp_0_sqmuxa_1), .Y(bsd7_tmp_0_sqmuxa_2));
    MX2B \fsmsta_RNO[1]  (.A(N_659), .B(N_810), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[1] ));
    NOR2A PCLKint_ff_RNITMDG_0 (.A(PCLKint_net_1), .B(PCLKint_ff_net_1)
        , .Y(N_1111_2));
    NOR2B SDAO_int_RNIRJGU1 (.A(COREI2C_1_SDAO_0), .B(framesync24), .Y(
        SDAO_int_m_1_0));
    OR2A \framesync_RNIMQRO1[3]  (.A(\framesync[3]_net_1 ), .B(N_1363), 
        .Y(N_16));
    NOR3B \fsmsta_0_RNI4RCN[4]  (.A(ack_3_sqmuxa_0), .B(
        \sersta_4_0_a4_0_0[4] ), .C(\fsmsta_0[4]_net_1 ), .Y(
        \fsmsta_0_RNI4RCN[4]_net_1 ));
    OR2A \fsmsync_RNO_0[7]  (.A(\fsmsync[6]_net_1 ), .B(SDAInt_net_1), 
        .Y(N_54));
    NOR2B \fsmsta_0_RNIN92T4[3]  (.A(framesync24), .B(un1_sersta69), 
        .Y(un1_framesync24_2_s4_0));
    OAI1 SCLO_int_RNO (.A(un1_sercon), .B(un1_fsmsync_2), .C(
        \sercon[6]_net_1 ), .Y(SCLO_int5));
    XOR2 un1_framesync_1_I_15 (.A(\framesync[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_15_0));
    XA1 \sersta_RNO_0[2]  (.A(\fsmsta_0[2]_net_1 ), .B(un1_m7_i_a5_1_0)
        , .C(N_759), .Y(N_772));
    DFN1E0C0 \serdat[2]  (.D(\serdat_20[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[2]_net_1 ));
    DFN1P0 \fsmdet[4]  (.D(\fsmdet_RNO_0[4]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmdet_i_0[4] ));
    NOR3A \fsmsta_RNO_10[1]  (.A(un1_framesync24), .B(
        \fsmsta_nxt_4[3] ), .C(un1_fsmdet_2), .Y(\fsmsta_nxt_4_m[1] ));
    NOR2B \fsmsta_RNIPK87[3]  (.A(\sercon[6]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(ack_bit_1_sqmuxa_a3_1));
    DFN1C0 \fsmmod[1]  (.D(\fsmmod_ns[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmmod[1]_net_1 ));
    NOR2B \fsmsta_RNIL5FC[0]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(un1_m7_i_a5_1_0));
    DFN1E1C0 \sercon[6]  (.D(I2C_slave_0_BIF_1_PWDATA[6]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[6]_net_1 ));
    AX1 \indelay_RNO_0[2]  (.A(\indelay_i_0[0] ), .B(
        \indelay[1]_net_1 ), .C(\indelay_i_0[2] ), .Y(indelay_n2_i_0));
    NOR2B \fsmmod_RNIAM38[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmdet[3]_net_1 ), .Y(fsmsta32_s3_1));
    DFN1P0 \SCLI_ff_reg[0]  (.D(\SCLI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[0]_net_1 ));
    NOR3 \sersta_RNO[0]  (.A(N_770), .B(N_771), .C(N_760), .Y(
        \sersta_4[0] ));
    NOR3C \fsmmod_RNO_0[6]  (.A(N_67_i), .B(\fsmmod[3]_net_1 ), .C(
        SCLInt_net_1), .Y(\fsmmod_ns_0_0_a4_1[6] ));
    OAI1 \fsmsta_RNIRSM23[0]  (.A(\fsmsta_nxt_cnst_0_a4_2_0[2] ), .B(
        \fsmsta_nxt_cnst_0_a4_0_0[2] ), .C(framesync24), .Y(
        \fsmsta_RNIRSM23[0]_net_1 ));
    MX2 bsd7_tmp_RNO (.A(bsd7_tmp_1_sqmuxa_2), .B(
        I2C_slave_0_BIF_1_PWDATA[7]), .S(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_9));
    AO1 bsd7_RNO_2 (.A(\PWDATA_i_m_0[7] ), .B(bsd7_tmp_1_sqmuxa), .C(
        \fsmdet[3]_net_1 ), .Y(bsd7_12_iv_0));
    DFN1P0 \fsmsync[7]  (.D(\fsmsync_RNO_0[7]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmsync_i_0[7] ));
    DFN1E0C0 \fsmsta_0[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta_0[2]_net_1 ));
    DFN1C0 \PCLK_count1[0]  (.D(PCLK_count1_n0), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\PCLK_count1[0]_net_1 ));
    XOR2 adrcomp_2_sqmuxa_1_i_a3_2_RNO_6 (.A(seradr0apb[1]), .B(
        \serdat[0]_net_1 ), .Y(un1_seradr0_0));
    OA1B \sercon_RNIMDOHC[4]  (.A(framesync_1_sqmuxa_1), .B(
        framesync_0_sqmuxa_1), .C(framesync10), .Y(framesync_1_m));
    NOR3C \sercon_write_proc.un1_PSEL  (.A(I2C_slave_0_BIF_1_PSELx), 
        .B(I2C_slave_0_BIF_1_PENABLE), .C(I2C_slave_0_BIF_1_PWRITE), 
        .Y(seradr0apb4_0));
    AO1A \fsmsta_RNO_3[0]  (.A(COREI2C_1_SDAO_0), .B(un1_sersta65), .C(
        \fsmsta_nxt_4_m[0] ), .Y(\fsmsta_10s_1_iv_0[0] ));
    NOR3C adrcompen_RNI921V (.A(pedetect_net_1), .B(adrcompen_net_1), 
        .C(adrcomp_net_1), .Y(SDAO_m5_i_a3_0));
    AO1 SDAO_int_RNO_2 (.A(SDAO_int_3_sqmuxa_0), .B(un1_sersta65_1), 
        .C(SDAO_int_0_sqmuxa), .Y(un1_SDAO_int_1_sqmuxa_1));
    OR2 \fsmmod_RNIQTA11[2]  (.A(\fsmmod_ns_i_a3_i_o2_1_1[0] ), .B(
        N_40), .Y(N_1398));
    OR2 \fsmsync_ns_i_a4_i_o3_0_0[3]  (.A(N_32), .B(N_31), .Y(
        \fsmsync_ns_i_a4_i_o3_0_0[3]_net_1 ));
    AO1B \fsmsync_RNO_1[2]  (.A(N_1330), .B(N_74), .C(N_22), .Y(
        \fsmsync_ns_i_0[2] ));
    OR2A \SCLI_ff_reg_RNIRIQ1[0]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[0]_net_1 ), .Y(\SCLI_ff_reg_4[1] ));
    OR3 \fsmsync_RNI7K46[1]  (.A(\fsmsync[4]_net_1 ), .B(
        \fsmsync[1]_net_1 ), .C(\fsmsync[5]_net_1 ), .Y(
        counter_PRESETN_0_o4_1));
    DFN1E0P0 \fsmsta[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta[3]_net_1 ));
    DFN1P0 \sersta[1]  (.D(\sersta_4[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(sersta_i_0[1]));
    OR3 \fsmmod_RNIF40K[2]  (.A(\fsmmod[3]_net_1 ), .B(
        \fsmmod[2]_net_1 ), .C(\fsmmod[4]_net_1 ), .Y(
        \fsmmod_ns_i_a3_i_o2_1_1[0] ));
    AO1A \fsmmod_RNO_1[0]  (.A(fsmmod5_i), .B(N_1398), .C(
        un2_PCLKint_p1_0_0), .Y(\fsmmod_ns_i_a3_i_0[0] ));
    OR2A PCLKint_RNO (.A(PCLKint_net_1), .B(counter_PRESETN), .Y(
        PCLKint_5));
    OR2A \framesync_RNIVVJ82[3]  (.A(N_16), .B(N_1387), .Y(
        un1_framesync_0));
    NOR3B \sercon_0_RNO_3[3]  (.A(pedetect_net_1), .B(framesync24), .C(
        N_90), .Y(un1_framesync24_1_0));
    AO1A \sercon_inferred_clock_RNI1OTD8[3]  (.A(INT_net_0_0), .B(
        N_95_3), .C(N_95), .Y(N_1378));
    NOR2A SDAO_int_RNI48GO2 (.A(SDAO_int_m_1_0), .B(un1_fsmdet), .Y(
        SDAO_int_m_1_1));
    NOR3A \fsmdet_RNIRLQ22[5]  (.A(framesync_1_sqmuxa_1_0), .B(
        \framesync_RNIITKA1[1]_net_1 ), .C(N_102), .Y(
        framesync_1_sqmuxa_2));
    NOR2 \fsmmod_RNIFTAD[6]  (.A(\fsmmod[6]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(\fsmsync_ns_0_a3_0[0] ));
    NOR2B \fsmsta_0_RNIQEJ31[2]  (.A(un1_m2_e_0), .B(sersta64_1), .Y(
        sersta64));
    OA1B \sercon_RNIHIH55[6]  (.A(framesync24), .B(un1_framesync_1), 
        .C(un1_SDAO_int17_1), .Y(SDAO_int_3_sqmuxa_0));
    AND2 SDAO_int_3_sqmuxa (.A(un1_sersta65_1), .B(SDAO_int_3_sqmuxa_0)
        , .Y(SDAO_int_3_sqmuxa_net_1));
    NOR3A \fsmsta_RNIIQRRA1[4]  (.A(fsmsta_m1_e_1_2), .B(
        \fsmsta_nxt_34_i_m[1] ), .C(\fsmsta_nxt_cnst_i_m[2] ), .Y(
        fsmsta_N_5_mux));
    NOR2 PCLK_count1_ov_RNO (.A(PCLK_count17), .B(counter_PRESETN), .Y(
        PCLK_count1_1_sqmuxa));
    NOR2B \sercon_RNIVGUL[6]  (.A(ack_bit_1_sqmuxa_a0_1), .B(
        ack_bit_1_sqmuxa_a0_2), .Y(ack_bit_1_sqmuxa_a0_4));
    NOR2A \fsmsta_0_RNIBQC11_3[2]  (.A(sersta65_0), .B(N_1414), .Y(
        sersta65));
    NOR3B SDAO_int_RNO_3 (.A(un1_sersta65_1), .B(SDAO_int_3_sqmuxa_0), 
        .C(ack_bit_net_1), .Y(SDAO_int_2_m));
    NOR2A \fsmmod_RNO_1[6]  (.A(\fsmmod[6]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_0_a4_0_0[6] ));
    DFN1C0 \fsmsync[6]  (.D(\fsmsync_RNO_0[6]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[6]_net_1 ));
    AO1B \fsmsync_RNO[7]  (.A(N_54), .B(\fsmsync_i_0[7] ), .C(N_22), 
        .Y(\fsmsync_RNO_0[7]_net_1 ));
    NOR2A bsd7_RNO_4 (.A(bsd7_tmp_1_sqmuxa_2), .B(nedetect_net_1), .Y(
        bsd7_1_sqmuxa_1));
    OR2 PCLKint_ff_RNO (.A(counter_PRESETN), .B(PCLKint_net_1), .Y(
        PCLKint_ff_4));
    DFN1E1P0 SDAInt (.D(\SDAI_ff_reg[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_SDAInt5), .Q(SDAInt_net_1));
    NOR3B pedetect_RNIG77I (.A(pedetect_net_1), .B(\sercon[6]_net_1 ), 
        .C(\fsmdet[3]_net_1 ), .Y(un1_ack_1_sqmuxa_a0_1));
    AO1 \serdat_RNIHG7S1[1]  (.A(\serdat[1]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[1] ), .Y(PRDATA_0_iv_0[1]));
    OR2 \sercon_0_RNO_4[3]  (.A(un1_fsmmod_1), .B(un2_PCLKint_p1_0_0), 
        .Y(un1_fsmmod_2_0));
    NOR2B \fsmsta_RNIBQC11[4]  (.A(sersta74_0), .B(sersta74_1), .Y(
        sersta74));
    NOR3C \fsmsta_0_RNIBQC11_0[3]  (.A(bsd7_tmp_1_sqmuxa_a0_0), .B(
        \fsmsta_0[3]_net_1 ), .C(sersta61_2), .Y(sersta73));
    NOR3A \fsmsta_0_RNI484N_0[3]  (.A(\fsmsta_0[3]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(sersta71_1));
    NOR2A un9_PRDATA_0_a2 (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .Y(un9_PRDATA));
    NOR2A \framesync_RNI9RDS_0[0]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(un1_framesync_13_0));
    NOR2B \fsmsta_RNIS56V_1[4]  (.A(sersta82_1), .B(sersta74_1), .Y(
        sersta82));
    NOR2A \fsmsta_0_RNIHM989[2]  (.A(un1_framesync24_6_s7_4), .B(
        un1_fsmdet_2), .Y(un1_framesync24_6_s7));
    DFN1E0C0 \fsmsta[2]  (.D(\fsmsta_10[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta[2]_net_1 ));
    AO1A \fsmmod_RNO[0]  (.A(N_1406_2), .B(\fsmmod[0]_net_1 ), .C(
        \fsmmod_ns_i_a3_i_1[0] ), .Y(\fsmmod_RNO_0[0]_net_1 ));
    AND2 \fsmmod_ns_0_0_a2[2]  (.A(N_1454), .B(N_1425), .Y(N_1445));
    OR2A \fsmsta_0_RNI88OR2[2]  (.A(N_1416), .B(un1_sersta60_2), .Y(
        un1_sersta58_0));
    OA1B \fsmsta_RNO_8[1]  (.A(N_726), .B(N_748), .C(\fsmsta[1]_net_1 )
        , .Y(\fsmsta_nxt_cnst_i_a4_0_0[1] ));
    NOR2A \fsmsta_0_RNIFMPI4_0[2]  (.A(framesync24), .B(
        \fsmsta_0_RNIPRTP2[2]_net_1 ), .Y(fsmsta_N_5));
    DFN1C0 \fsmdet[0]  (.D(SCLInt_net_1), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(\fsmdet_i_0[0] ));
    NOR2B \sercon_0_RNO_6[3]  (.A(adrcomp_net_1), .B(N_1227_i_0), .Y(
        un1_framesync_5_0));
    DFN1P0 \SDAI_ff_reg[0]  (.D(\SDAI_ff_reg_4[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SDAI_ff_reg[0]_net_1 ));
    OR2 ack_RNO (.A(bsd7_tmp_0_sqmuxa_1), .B(SDAInt_net_1), .Y(ack_12));
    NOR3C \fsmmod_RNO_1[1]  (.A(fsmmod5_i), .B(
        \fsmmod_ns_0_0_a2_0_3[1] ), .C(N_111), .Y(N_1450));
    MX2 \serdat_RNO[7]  (.A(I2C_slave_0_BIF_1_PWDATA[7]), .B(
        \serdat[6]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[7] ));
    NOR3C \fsmsync_ns_i_a4_i_a3_0_RNO[3]  (.A(N_1111_2), .B(
        \fsmsync[2]_net_1 ), .C(N_17), .Y(
        \fsmsync_ns_i_a4_i_a3_0_1[3] ));
    DFN1C0 \fsmdet[3]  (.D(\fsmdet_RNO_0[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\fsmdet[3]_net_1 ));
    OA1B ack_RNO_2 (.A(ack_1_sqmuxa), .B(ack_3_sqmuxa), .C(serdat33), 
        .Y(ack_0_sqmuxa_2));
    NOR3C \fsmmod_RNO_1[4]  (.A(N_1429), .B(\fsmmod[4]_net_1 ), .C(
        fsmmod5_i), .Y(N_1451));
    NOR2A PCLKint_RNO_0 (.A(PCLK_count2_ov_i_0), .B(counter_PRESETN), 
        .Y(un1_PCLKint5));
    MX2 \framesync_RNO[0]  (.A(N_675), .B(N_1376), .S(N_1409), .Y(
        \framesync_7[0] ));
    NOR2A \fsmmod_RNO_0[5]  (.A(\fsmmod[0]_net_1 ), .B(SDAInt_net_1), 
        .Y(\fsmmod_ns_i_a3_i_a3_0_0[5] ));
    OA1A \sercon_inferred_clock_RNI0MOQJ[3]  (.A(un1_ack_1_sqmuxa_a0_1)
        , .B(INT_net_0_0), .C(un1_ack_1_sqmuxa_1_0), .Y(
        un1_ack_1_sqmuxa));
    MX2 \serdat_RNO[4]  (.A(I2C_slave_0_BIF_1_PWDATA[4]), .B(
        \serdat[3]_net_1 ), .S(un1_ack_0_sqmuxa_2), .Y(\serdat_20[4] ));
    NOR2B un1_framesync_1_I_20 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \framesync[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    OR3 \sersta_RNO_0[3]  (.A(N_774), .B(N_776), .C(sersta81_3), .Y(
        \sersta_4_0_1[3] ));
    NOR2B \fsmsta_0_RNIQEJ31[3]  (.A(sersta72_1), .B(
        bsd7_tmp_1_sqmuxa_a0_0), .Y(sersta72));
    NOR3 \fsmsta_RNI5T4V6[4]  (.A(un1_sersta69_3), .B(un1_sersta65_0), 
        .C(un1_sersta58_0), .Y(ack_1_sqmuxa_2_a0_3));
    OR2A \fsmmod_RNIU2EO1[4]  (.A(N_1111_2), .B(\fsmsync_ns_0_o2_0[0] )
        , .Y(N_1322));
    DFN1E1C0 \sercon[0]  (.D(I2C_slave_0_BIF_1_PWDATA[0]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[0]_net_1 ));
    OR2 \fsmsta_RNIRBFC_0[3]  (.A(\fsmsta[4]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(N_1414));
    OR3 \sercon_0_RNO_2[3]  (.A(un1_framesync24_1_0), .B(
        un1_fsmmod_2_0), .C(un1_framesync_5_0_0), .Y(un1_fsmmod_2_2));
    AO1 ack_RNIEPPR8 (.A(\fsmsta_nxt_4[3] ), .B(un1_framesync24), .C(
        \fsmsta_nxt_34_i_m[1] ), .Y(\fsmsta_10s_0_iv_0[3] ));
    AO1 \fsmsta_0_RNI59052[2]  (.A(sersta79_0), .B(N_743_1), .C(
        sersta78), .Y(un1_sersta69_4));
    OR2B \sercon_RNITHVP[5]  (.A(N_1416), .B(sercon_0), .Y(
        un1_sersta58_1));
    NOR2A adrcomp_RNI3OFF (.A(N_1379), .B(adrcomp_net_1), .Y(N_90));
    NOR3 adrcomp_2_sqmuxa_1_i_a3_2_RNO_3 (.A(un1_seradr0_0), .B(
        un1_seradr0_1_0), .C(un1_seradr0_6), .Y(
        adrcomp_2_sqmuxa_1_i_a3_2_3));
    OR3A \framesync_RNIFQKA1[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[2]_net_1 ), .C(\framesync[1]_net_1 ), .Y(N_1363));
    NOR3A \fsmsta_0_RNIDN121[3]  (.A(ack_3_sqmuxa_0), .B(
        \fsmsta_0[3]_net_1 ), .C(un1_m2_e_0), .Y(bsd7_tmp_1_sqmuxa_1_2)
        );
    NOR2B \framesync_RNIMQRO1[0]  (.A(un1_framesync_12_0), .B(
        framesync24_1), .Y(un1_framesync_2));
    DFN1C0 \fsmmod[3]  (.D(\fsmmod_RNO_0[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmmod[3]_net_1 ));
    OR2 SCLO_int_RNO_3 (.A(\fsmsync[2]_net_1 ), .B(\fsmsync[5]_net_1 ), 
        .Y(un1_fsmsync_1));
    OAI1 \fsmsta_RNO_13[0]  (.A(N_726), .B(N_748), .C(
        \fsmsta[0]_net_1 ), .Y(fsmsta_m2_0_0));
    NOR2A \fsmsync_RNO_5[0]  (.A(\fsmsync_i_0[7] ), .B(
        \fsmsync[3]_net_1 ), .Y(\fsmsync_ns_0_i_a2_0_0[0] ));
    DFN1E0C0 \serdat[4]  (.D(\serdat_20[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[4]_net_1 ));
    DFN1P0 \fsmdet[1]  (.D(\fsmdet_RNO_0[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\fsmdet_i_0[1] ));
    DFN1P0 \framesync[2]  (.D(\framesync_7[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[2]_net_1 ));
    NOR3B \sercon_RNO_1[4]  (.A(\sercon[4]_net_1 ), .B(
        \sercon[6]_net_1 ), .C(\fsmdet[5]_net_1 ), .Y(\sercon_8_1[4] ));
    NOR2A \sercon_RNIVB0R[4]  (.A(un1_PRDATA), .B(\sercon[4]_net_1 ), 
        .Y(N_1435));
    AND2 \fsmsync_ns_i_a4_i_a3[3]  (.A(\fsmsync[3]_net_1 ), .B(N_48), 
        .Y(N_31));
    OR2A indelay_n3_i_x2_RNO (.A(\indelay[1]_net_1 ), .B(N_23), .Y(
        N_51));
    OR2 \fsmsta_0_RNIPRTP2[2]  (.A(un1_m7_i_0_0), .B(un1_N_13), .Y(
        \fsmsta_0_RNIPRTP2[2]_net_1 ));
    NOR3A \fsmsync_RNO[4]  (.A(N_22), .B(N_65), .C(SCLInt_net_1), .Y(
        \fsmsync_RNO_0[4] ));
    NOR2A \fsmsta_0_RNIP9II9[3]  (.A(un1_framesync24_2_s4_0), .B(
        un1_fsmdet_2), .Y(un1_framesync24_2_s4));
    OR2A \fsmsync_RNO_0[2]  (.A(SCLInt_net_1), .B(N_1322), .Y(N_1334));
    NOR3C \fsmsta_RNIS56V[4]  (.A(sersta81_1), .B(\fsmsta[4]_net_1 ), 
        .C(N_771_1), .Y(sersta75));
    DFN1E0C0 \serdat[3]  (.D(\serdat_20[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[3]_net_1 ));
    NOR2B \fsmmod_RNI7CTH[4]  (.A(\fsmmod[4]_net_1 ), .B(SCLInt_net_1), 
        .Y(fsmmod_tr4_1_0_a3_0));
    NOR3 \sersta_RNO[2]  (.A(N_772), .B(N_773), .C(N_760), .Y(
        \sersta_4[2] ));
    AOI1B \fsmdet_RNI2JME3[5]  (.A(un1_sersta64_0), .B(sersta64), .C(
        fsmmod5_i_0_a3_0), .Y(fsmmod5_i));
    AO1 \sercon_0_RNO_1[3]  (.A(fsmsta13), .B(N_1227_i_0), .C(
        un1_fsmmod_2_2), .Y(un1_fsmmod_2_0_0));
    AO1A \fsmsta_0_RNIPJ145[3]  (.A(fsmsta_N_6_1), .B(
        \fsmsta_0[3]_net_1 ), .C(N_744), .Y(\fsmsta_nxt_cnst[3] ));
    NOR3C \fsmsta_0_RNI374N[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(sersta80_0));
    NOR3A \fsmsta_RNIMQAC3[2]  (.A(N_735_1), .B(N_726), .C(
        un1_m7_i_a5_1_0), .Y(N_746));
    NOR3C \fsmsync_RNO_1[0]  (.A(\fsmsync_ns_0_i_a2_0_1[0] ), .B(
        \fsmsync_ns_0_i_a2_0_0[0] ), .C(\fsmsync_ns_0_i_a2_0_3[0] ), 
        .Y(N_59));
    DFN1E0P0 bsd7 (.D(bsd7_12_iv), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_SCLI_ff_reg_1_sqmuxa_1), .Q(bsd7_net_1));
    DFN1P0 \SDAI_ff_reg[2]  (.D(\SDAI_ff_reg_RNO[2]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\SDAI_ff_reg[2]_net_1 ));
    OR2 adrcomp_RNO_1 (.A(N_1379), .B(sersta64), .Y(N_1380));
    OR3A \sercon_RNI5TPJ1[6]  (.A(\sercon[6]_net_1 ), .B(
        SDAO_int17_0_0), .C(un1_fsmmod_1_0), .Y(un1_SDAO_int17_1));
    NOR3A \fsmsta_0_RNIGETK_1[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta62_0));
    OR2A \SCLI_ff_reg_RNO[2]  (.A(\sercon[6]_net_1 ), .B(
        \SCLI_ff_reg[1]_net_1 ), .Y(\SCLI_ff_reg_4[2] ));
    NOR3A \fsmdet_RNIMKO81[3]  (.A(N_1227_i_0), .B(fsmsta33), .C(
        un1_fsmmod_1), .Y(ens1_pre_3_sqmuxa));
    NOR3B \fsmsta_0_RNI374N_0[2]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(un1_m2_e_0));
    NOR3A \fsmdet_RNI63AB[5]  (.A(nedetect_net_1), .B(
        \fsmdet[5]_net_1 ), .C(\fsmdet[3]_net_1 ), .Y(
        framesync_1_sqmuxa_1_0));
    AO1D \fsmsta_RNO_11[0]  (.A(fsmsta_m2_0_0), .B(fsmsta_N_6_1), .C(
        N_780), .Y(\fsmsta_nxt_cnst_0_0[0] ));
    NOR2B \fsmsta_RNIBQC11_0[4]  (.A(sersta74_0), .B(un1_m7_i_a5_1_0), 
        .Y(sersta77));
    NOR2A \sercon_RNI2F0R[7]  (.A(un1_PRDATA), .B(\sercon[7]_net_1 ), 
        .Y(N_1443));
    DFN1P0 \indelay[0]  (.D(\indelay_RNO_0[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\indelay_i_0[0] ));
    OA1B adrcomp_RNI7A3Q5 (.A(framesync24), .B(un1_framesync24_1), .C(
        N_90), .Y(fsmsta13));
    OR2 \fsmsta_RNI70J02_0[4]  (.A(sersta73), .B(sersta75), .Y(
        un1_sersta69_3));
    OR3B busfree_RNO_0 (.A(\sercon[6]_net_1 ), .B(N_95_3), .C(
        un2_PCLKint_p1_0_0), .Y(un1_fsmdet_0));
    NOR3C \fsmsta_0_RNI1L8Q2[4]  (.A(un1_m4_0_a2_0), .B(un1_m4_0_a2_1), 
        .C(framesync24), .Y(un1_framesync24_3));
    NOR2A \fsmsta_RNIQAFC_0[2]  (.A(\fsmsta[2]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(ack_bit_1_sqmuxa_a1_2));
    DFN1P0 \sersta[2]  (.D(\sersta_4[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(sersta_i_0[2]));
    OR2 indelay_n1_i_0 (.A(N_47_i), .B(N_61), .Y(indelay_n1_i_0_net_1));
    OAI1 \fsmsync_RNO_0[6]  (.A(SDAInt_net_1), .B(\fsmsync[5]_net_1 ), 
        .C(N_22), .Y(\fsmsync_ns_i_i_o2_0[6] ));
    OR2B SDAInt_RNIO0KE (.A(SDAInt_net_1), .B(SCLInt_net_1), .Y(
        N_1222_1));
    DFN1P0 \framesync[3]  (.D(\framesync_7[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[3]_net_1 ));
    OR2A \fsmsync_RNO_2[2]  (.A(\fsmsync[2]_net_1 ), .B(N_1111_2), .Y(
        N_1330));
    NOR2A indelay_n2_i_o2 (.A(\indelay[1]_net_1 ), .B(\indelay_i_0[0] )
        , .Y(N_47_i));
    NOR2A adrcompen_RNIDQSM5 (.A(un1_framesync24_3_s6_0_1), .B(un1_N_5)
        , .Y(un1_framesync24_3_s6));
    DFN1E0P0 ack (.D(ack_12), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_ack_0_sqmuxa_3), .Q(ack_net_1));
    OR3 \SCLI_ff_reg_RNIGTC2[2]  (.A(\SCLI_ff_reg[1]_net_1 ), .B(
        \SCLI_ff_reg[2]_net_1 ), .C(\SCLI_ff_reg[0]_net_1 ), .Y(
        un1_SCLI_ff_reg));
    NOR2A \fsmsta_RNIN7FC[3]  (.A(\fsmsta[0]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(sersta81_1));
    NOR2B un1_framesync_1_I_22 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), .B(
        \framesync[2]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_12[0] ));
    NOR2A \fsmsta_RNIP9FC_1[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[2]_net_1 ), .Y(sersta82_0));
    NOR2 \sercon_RNICJK2_0[4]  (.A(\sercon[4]_net_1 ), .B(INT_net_0_0), 
        .Y(N_111));
    NOR2A \fsmmod_RNO_0[1]  (.A(\fsmmod[1]_net_1 ), .B(nedetect_net_1), 
        .Y(\fsmmod_ns_0_0_a2_0[1] ));
    NOR2A \PCLK_count1_RNI1TOR2[3]  (.A(PCLK_count17), .B(
        counter_PRESETN), .Y(PCLK_count1_0_sqmuxa));
    DFN1E0P0 \fsmsta[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta[4]_net_1 ));
    OR2A nedetect_RNO_0 (.A(\sercon[6]_net_1 ), .B(un1_SCLI_ff_reg_1), 
        .Y(un1_serdat52));
    AO1 SDAO_int_RNO_1 (.A(bsd7_net_1), .B(SDAO_int_0_sqmuxa), .C(
        SDAO_int_2_m), .Y(N_682));
    DFN1E1P0 bsd7_tmp (.D(bsd7_tmp_9), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(un1_bsd7_tmp_0_sqmuxa), .Q(bsd7_tmp_net_1));
    NOR3A \fsmsta_0_RNIGETK_0[2]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta_0[2]_net_1 ), .C(\fsmsta[0]_net_1 ), .Y(sersta60_0));
    AO1 \fsmdet_RNO[2]  (.A(\fsmdet_i_0[0] ), .B(\fsmdet_i_0[2] ), .C(
        N_1216_1), .Y(\fsmdet_RNO_0[2] ));
    DFN1C0 \fsmsync[2]  (.D(\fsmsync_RNO_0[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[2]_net_1 ));
    ZOR3 SDAInt_RNO (.A(\SDAI_ff_reg[0]_net_1 ), .B(
        \SDAI_ff_reg[2]_net_1 ), .C(\SDAI_ff_reg[1]_net_1 ), .Y(
        un1_SDAInt5));
    NOR2A \fsmsta_RNI9GCE2[2]  (.A(\fsmsta[2]_net_1 ), .B(fsmsta_N_6_1)
        , .Y(N_735_1));
    NOR2A \fsmsta_RNIGSBT_0[2]  (.A(\fsmsta[2]_net_1 ), .B(N_731), .Y(
        N_780));
    OR2A \fsmsta_0_RNIFMPI4[2]  (.A(framesync24), .B(
        \fsmsta_0_RNIPRTP2[2]_net_1 ), .Y(un1_framesync24_6_s7_4));
    NOR2A adrcompen_RNI3HK22 (.A(SDAO_m5_i_a3_0), .B(sersta64), .Y(
        un1_N_5));
    NOR3A \fsmsta_0_RNIBQC11_1[4]  (.A(\fsmsta_0[4]_net_1 ), .B(N_763), 
        .C(\sersta_4_0_o3_0[4] ), .Y(sersta83));
    OR2A \framesync_RNI9RDS[0]  (.A(\framesync[0]_net_1 ), .B(
        \framesync[1]_net_1 ), .Y(\fsmmod_ns_0_0_o2_0_0[2] ));
    DFN1E1C0 \sercon[1]  (.D(I2C_slave_0_BIF_1_PWDATA[1]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[1]_net_1 ));
    NOR2 \fsmmod_RNIA3T85[1]  (.A(ens1_pre_0_sqmuxa_s2), .B(
        fsmsta_1_sqmuxa_1_s9), .Y(N_809_1));
    MX2 \fsmsta_RNO[0]  (.A(N_658), .B(N_809), .S(un1_fsmdet_2), .Y(
        \fsmsta_10[0] ));
    XOR2 indelay_n3_i_x2 (.A(N_51), .B(\indelay[3]_net_1 ), .Y(N_52_i));
    OR2A \fsmsync_ns_i_a4_i_a3_0_RNO_0[3]  (.A(\sercon[4]_net_1 ), .B(
        N_16), .Y(N_17));
    NOR3B \fsmsta_0_RNI2PCN[4]  (.A(ack_bit_1_sqmuxa_a0_0), .B(
        ack_bit_1_sqmuxa_a3_1), .C(\fsmsta_0[4]_net_1 ), .Y(
        \fsmsta_0_RNI2PCN[4]_net_1 ));
    DFN1E0C0 nedetect (.D(nedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52), .Q(nedetect_net_1));
    NOR2A \sersta_RNO_1[3]  (.A(N_763), .B(N_759), .Y(N_775));
    NOR2B \PCLK_count1_RNO[3]  (.A(PCLK_count1_0_sqmuxa), .B(
        PCLK_count1_n3_tz), .Y(PCLK_count1_n3));
    AOI1B \fsmsta_0_RNIIGTK[4]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .C(\fsmsta_0[4]_net_1 ), .Y(un1_m4_0_a2_1));
    OA1C \fsmsync_RNIJHQ7[4]  (.A(\fsmsync[3]_net_1 ), .B(N_48), .C(
        \fsmsync[4]_net_1 ), .Y(N_65));
    OR2 \fsmdet_RNO_0[4]  (.A(\fsmdet_i_0[4] ), .B(SDAInt_net_1), .Y(
        N_1399));
    DFN1P0 \SCLI_ff_reg[1]  (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\SCLI_ff_reg[1]_net_1 ));
    NOR2 \framesync_RNI9RDS_1[0]  (.A(\framesync[1]_net_1 ), .B(
        \framesync[0]_net_1 ), .Y(framesync24_1));
    NOR2B \SDAI_ff_reg_RNO[2]  (.A(\SDAI_ff_reg[1]_net_1 ), .B(
        \sercon[6]_net_1 ), .Y(\SDAI_ff_reg_RNO[2]_net_1 ));
    XOR2 PCLKint_ff_RNITMDG (.A(PCLKint_ff_net_1), .B(PCLKint_net_1), 
        .Y(N_67_i));
    NOR3C \fsmsta_0_RNIBQC11[2]  (.A(N_743_1), .B(\fsmsta_0[2]_net_1 ), 
        .C(sersta61_2), .Y(sersta63));
    OR2 \fsmsta_0_RNILCDB5[2]  (.A(un1_sersta60_1), .B(un1_sersta78), 
        .Y(un1_sersta58_0_0));
    OA1C \fsmsync_RNO_1[6]  (.A(\fsmsync[5]_net_1 ), .B(N_50), .C(
        \fsmsync[6]_net_1 ), .Y(N_69));
    NOR2A \fsmsta_0_RNIA98K3[4]  (.A(un1_framesync24_3), .B(un1_fsmdet)
        , .Y(un1_framesync24_3_s6_0_1));
    NOR2B \sercon_inferred_clock_RNIQNIV5[3]  (.A(serdat33), .B(
        ack_1_sqmuxa), .Y(\sercon_inferred_clock_RNIQNIV5[3]_net_1 ));
    DFN1C0 PCLK_count1_ov (.D(PCLK_count1_1_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(PCLK_count1_ov_net_1));
    XA1 \fsmsta_RNO_7[0]  (.A(SDAInt_net_1), .B(ack_net_1), .C(
        un1_framesync24), .Y(\fsmsta_nxt_4_m[0] ));
    OR2B \fsmsta_RNIO8FC[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(\sersta_4_0_o3_0[4] ));
    OR3B \fsmmod_RNO_2[4]  (.A(PCLKint_net_1), .B(SCLInt_net_1), .C(
        PCLKint_ff_net_1), .Y(N_1429));
    NOR2A SCLInt_RNI3LRC (.A(INT_net_0_0), .B(SCLInt_net_1), .Y(N_102));
    NOR2 ens1_pre_1_sqmuxa_2 (.A(un1_fsmdet_2), .B(pedetect_net_1), .Y(
        ens1_pre_1_sqmuxa_2_net_1));
    DFN1E0C0 starto_en (.D(starto_en_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(starto_en_1_sqmuxa), .Q(starto_en_net_1));
    OR3A \sersta_RNO[4]  (.A(INT_net_0_0), .B(N_778), .C(N_779), .Y(
        \sersta_4[4] ));
    NOR2A \serdat_RNIPB711[5]  (.A(un4_PRDATA), .B(\serdat[5]_net_1 ), 
        .Y(N_1439));
    NOR2 \fsmmod_RNIF77G[1]  (.A(ens1_pre_0_sqmuxa_s2), .B(
        fsmsta32_s3_1), .Y(\fsmsta_10k_0_a2_0[4] ));
    AO1 \framesync_RNO[2]  (.A(I_18_0), .B(un1_framesync_4_sqmuxa), .C(
        \fsmdet[3]_net_1 ), .Y(\framesync_7[2] ));
    NOR2B \sercon_RNIS80R[1]  (.A(\sercon[1]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[1] ));
    OR3A SDAO_int_RNIO4FH (.A(COREI2C_1_SDAO_0), .B(SDAInt_net_1), .C(
        \fsmsta_0[3]_net_1 ), .Y(N_726));
    OA1 \fsmsta_RNO_2[0]  (.A(N_735), .B(\fsmsta_nxt_cnst_0_1[0] ), .C(
        un1_framesync24_6_s7), .Y(\fsmsta_nxt_cnst_m[0] ));
    OR3 pedetect_RNI0DDNT (.A(ack_0_sqmuxa_1), .B(
        pedetect_RNIEOT6J_net_1), .C(
        \sercon_inferred_clock_RNIQNIV5[3]_net_1 ), .Y(
        un1_ack_0_sqmuxa_2));
    OA1 \sersta_RNO_0[4]  (.A(N_763), .B(\sersta_4_0_o3_0[4] ), .C(
        \fsmsta[4]_net_1 ), .Y(N_778));
    OR2B \SDAO_int_write_proc.SDAO_int6  (.A(un1_framesync_1), .B(
        nedetect_net_1), .Y(SDAO_int6_i));
    OR2A \fsmsta_RNIIJUO[2]  (.A(N_771_1), .B(N_1414), .Y(N_1416));
    OR3 \fsmsta_RNO_0[1]  (.A(SDAO_int_m), .B(\fsmsta_nxt_cnst_m[1] ), 
        .C(\fsmsta_10s_0_iv_1[1] ), .Y(N_659));
    AO1 \fsmmod_RNI1C081[4]  (.A(\fsmsync_ns_0_a3_0[0] ), .B(N_1319), 
        .C(\fsmmod[4]_net_1 ), .Y(\fsmsync_ns_0_o2_0[0] ));
    NOR3A \fsmmod_RNO_0[3]  (.A(N_1454), .B(\sercon[4]_net_1 ), .C(
        N_1424), .Y(\fsmmod_ns_i_a3_i_a2_0_0[3] ));
    NOR2B \serdat_write_proc.serdat4  (.A(seradr0apb4_0), .B(
        un4_PRDATA), .Y(serdat4));
    OR2 un1_ens1_pre_2_sqmuxa (.A(ens1_pre_1_sqmuxa_2_net_1), .B(
        ens1_pre_2_sqmuxa_1_net_1), .Y(un1_ens1_pre_2_sqmuxa_net_1));
    DFN1C0 \indelay[3]  (.D(N_1366), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \indelay[3]_net_1 ));
    DFN1C0 \fsmsync[3]  (.D(\fsmsync_RNO_0[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\fsmsync[3]_net_1 ));
    OR3C \fsmsta_0_RNI484N[3]  (.A(\fsmsta_0[4]_net_1 ), .B(
        \fsmsta_0[3]_net_1 ), .C(\fsmsta[1]_net_1 ), .Y(N_731));
    NOR2B \fsmsta_0_RNIAABCE[3]  (.A(\fsmsta_nxt_cnst[3] ), .B(
        un1_framesync24_6_s7), .Y(\fsmsta_nxt_cnst_m[3] ));
    DFN1P0 \fsmdet[6]  (.D(\fsmdet_RNO_0[6]_net_1 ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\fsmdet_i_0[6] ));
    NOR2B bsd7_RNO_1 (.A(bsd7_tmp_i_m_0), .B(bsd7_tmp_0_sqmuxa_1), .Y(
        bsd7_tmp_i_m));
    NOR2A sclscl_RNO (.A(\fsmmod[5]_net_1 ), .B(pedetect_net_1), .Y(
        sclscl_1_sqmuxa));
    NOR2B \fsmsta_RNI2RMI[0]  (.A(\fsmsta[0]_net_1 ), .B(N_743_1), .Y(
        \fsmsta_nxt_cnst_0_a4_2_0[2] ));
    NOR3B \fsmsync_RNO_3[6]  (.A(\fsmsync_ns_i_i_a2_0[6] ), .B(
        N_1111_2), .C(N_1363), .Y(\fsmsync_ns_i_i_a2_2[6] ));
    OR2B un14_PRDATA_i_o2 (.A(I2C_slave_0_BIF_1_PADDR[2]), .B(
        I2C_slave_0_BIF_1_PADDR[3]), .Y(N_1421));
    NOR3C \serdat_RNIETMI1[0]  (.A(fsmsta19_2), .B(fsmsta19_1), .C(
        fsmsta19_3), .Y(fsmsta19));
    AO1 SCLO_int_RNO_6 (.A(sersta80_0), .B(sersta64_1), .C(sersta74), 
        .Y(un1_sersta69_0));
    DFN1P0 PCLK_count2_ov (.D(PCLK_count2_ov_0_sqmuxa), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(PCLK_count2_ov_i_0));
    NOR3A pedetect_RNIDSCP8 (.A(un1_ack_1_sqmuxa_a0_2), .B(
        un1_sersta58_0), .C(un1_sersta78), .Y(un1_ack_1_sqmuxa_a0_4));
    OR2A \fsmsync_RNO_3[0]  (.A(SCLInt_net_1), .B(N_65), .Y(
        \fsmsync_ns_0_i_a2_0[0] ));
    OA1A ack_RNI22G03 (.A(ack_net_1), .B(SDAInt_net_1), .C(
        un1_framesync24), .Y(\fsmsta_nxt_4_i_m[2] ));
    DFN1E0P0 \fsmsta_0[3]  (.D(\fsmsta_10[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta_0[3]_net_1 ));
    OR2B \sercon_RNISSD3[6]  (.A(un1_SCLI_ff_reg), .B(
        \sercon[6]_net_1 ), .Y(un1_serdat52_0));
    OR2 \fsmsta_0_RNIMKP22[3]  (.A(sersta65), .B(sersta67), .Y(
        un1_sersta65_0));
    NOR2A SDAO_int_RNISQ09 (.A(COREI2C_1_SDAO_0), .B(SDAInt_net_1), .Y(
        fsmsta_nxt19));
    XOR2 adrcomp_2_sqmuxa_1_i_a3_2_RNO_4 (.A(seradr0apb[5]), .B(
        \serdat[4]_net_1 ), .Y(un1_seradr0_4));
    AOI1B \fsmsync_RNO_0[0]  (.A(\fsmsync_ns_0_i_a2_2_0[0] ), .B(
        N_1322), .C(\fsmsync_ns_0_i_a2_0[0] ), .Y(
        \fsmsync_ns_0_i_a2_0_4[0] ));
    NOR2 \fsmsync_RNO_4[0]  (.A(\fsmsync[4]_net_1 ), .B(
        \fsmsync[6]_net_1 ), .Y(\fsmsync_ns_0_i_a2_0_1[0] ));
    NOR2A pedetect_RNO (.A(un1_SCLI_ff_reg_1), .B(SCLInt_net_1), .Y(
        pedetect_0_sqmuxa));
    AO1 \serdat_RNIRQ7S1[6]  (.A(\serdat[6]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[6] ), .Y(PRDATA_iv_1_0));
    NOR2A bsd7_RNO_6 (.A(serdat4), .B(I2C_slave_0_BIF_1_PWDATA[7]), .Y(
        \PWDATA_i_m_0[7] ));
    OR3 \fsmsta_RNI77DD8[4]  (.A(un1_sersta69_3), .B(un1_sersta65_0), 
        .C(un1_sersta69_8), .Y(un1_sersta65_1));
    NOR3C pedetect_RNIEOT6J (.A(ack_1_sqmuxa_2_a0_2), .B(
        ack_1_sqmuxa_2_a0_1), .C(ack_1_sqmuxa_2_a0_3), .Y(
        pedetect_RNIEOT6J_net_1));
    NOR3A \fsmsync_RNO_6[0]  (.A(N_74), .B(\fsmsync[5]_net_1 ), .C(
        \fsmsync[2]_net_1 ), .Y(\fsmsync_ns_0_i_a2_0_3[0] ));
    OR2A PCLK_count2_ov_RNO (.A(PCLK_count1_ov_net_1), .B(
        counter_PRESETN), .Y(PCLK_count2_ov_0_sqmuxa));
    AO1 \sercon_RNIVFQI1[6]  (.A(ack_bit_1_sqmuxa_a1_3), .B(
        ack_bit_1_sqmuxa_a1_2), .C(\fsmsta_0_RNI2PCN[4]_net_1 ), .Y(
        ack_bit_1_sqmuxa_1_0));
    OR2B adrcomp_2_sqmuxa_1_i_a3_2_RNO (.A(fsmsta19), .B(ack_net_1), 
        .Y(N_1383));
    OR2 \fsmmod_RNI9NAD[0]  (.A(\fsmmod[0]_net_1 ), .B(
        \fsmmod[5]_net_1 ), .Y(N_1379));
    NOR2A \sersta_RNO_1[0]  (.A(N_771_1), .B(N_759), .Y(N_771));
    NOR3B \fsmsync_RNO[1]  (.A(\fsmsync[0]_net_1 ), .B(N_22), .C(
        SCLInt_net_1), .Y(\fsmsync_RNO_0[1] ));
    DFN1P0 \framesync[1]  (.D(\framesync_7[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\framesync[1]_net_1 ));
    NOR2B \fsmsta_RNO_5[0]  (.A(N_735_1), .B(un1_m7_i_a5_1_0), .Y(
        N_735));
    AO1 \serdat_RNIFE7S1[0]  (.A(\serdat[0]_net_1 ), .B(un4_PRDATA), 
        .C(\sercon_m[0] ), .Y(PRDATA_0_iv_0[0]));
    NOR2A \fsmsta_0_RNIK5HV3[2]  (.A(bsd7_tmp_1_sqmuxa), .B(serdat4), 
        .Y(bsd7_tmp_1_sqmuxa_2_0));
    NOR3C \fsmmod_RNO_1[3]  (.A(N_1427), .B(\fsmmod[3]_net_1 ), .C(
        fsmmod5_i), .Y(N_1453));
    INV busfree_RNO (.A(\fsmdet[3]_net_1 ), .Y(\fsmdet_i[3] ));
    DFN1E0P0 \fsmsta_0[4]  (.D(\fsmsta_10[4] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_ens1_pre_2_sqmuxa_net_1), .Q(
        \fsmsta_0[4]_net_1 ));
    OR2 \fsmmod_ns_0_0[2]  (.A(N_1445), .B(\fsmmod_ns_0_0_0[2]_net_1 ), 
        .Y(\fsmmod_ns[2] ));
    NOR2A \sercon_inferred_clock_RNIU1NF3[3]  (.A(ack_bit_1_sqmuxa), 
        .B(INT_net_0_0), .Y(ack_1_sqmuxa));
    NOR3A \fsmdet_RNII22NG[3]  (.A(ack_3_sqmuxa_0), .B(un1_sersta65_1), 
        .C(un1_sersta58), .Y(ack_3_sqmuxa));
    NOR2B \sercon_write_proc.sercon18  (.A(seradr0apb4_0), .B(
        un1_PRDATA), .Y(sercon18));
    NOR2B \fsmsta_RNIGSBT[2]  (.A(N_731), .B(\fsmsta[2]_net_1 ), .Y(
        N_740));
    DFN1P0 \sersta[0]  (.D(\sersta_4[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(sersta_i_0[0]));
    OR3A bsd7_RNO_0 (.A(\sercon[6]_net_1 ), .B(bsd7_tmp_0_sqmuxa_2), 
        .C(bsd7_1_sqmuxa_1), .Y(un1_SCLI_ff_reg_1_sqmuxa_1));
    XOR2 adrcomp_2_sqmuxa_1_i_a3_2_RNO_7 (.A(seradr0apb[2]), .B(
        \serdat[1]_net_1 ), .Y(un1_seradr0_1_0));
    MX2 \sersta_RNO_0[1]  (.A(\fsmsta_0[2]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .S(N_759), .Y(N_761));
    NOR3 \fsmsta_RNO_1[1]  (.A(fsmsta_1_sqmuxa_2_s8), .B(
        ens1_pre_1_sqmuxa_1_s6), .C(fsmsta_0_sqmuxa_s5), .Y(N_810));
    AOI1 \fsmsync_RNO[0]  (.A(\fsmsync_ns_0_i_a2_0_4[0] ), .B(N_22), 
        .C(N_59), .Y(\fsmsync_RNO[0]_net_1 ));
    OR2 \fsmmod_ns_0_0_0[2]  (.A(N_1446), .B(N_1447), .Y(
        \fsmmod_ns_0_0_0[2]_net_1 ));
    AO1 \sersta_RNIN1GF2[3]  (.A(\sersta[3]_net_1 ), .B(un9_PRDATA), 
        .C(\seradr0_m[6]_net_1 ), .Y(PRDATA_iv_0_0));
    OR2 \fsmsta_0_RNIMKP22[4]  (.A(sersta76), .B(sersta77), .Y(
        un1_sersta69_6));
    NOR2 \fsmsync_RNIVS24[1]  (.A(\fsmsync[1]_net_1 ), .B(
        \fsmsync[0]_net_1 ), .Y(N_74));
    VCC VCC_i (.Y(VCC));
    DFN1P0 SCLO_int (.D(SCLO_int5), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        SCLO_int_net_1));
    NOR2B bsd7_tmp_RNO_1 (.A(\fsmdet[3]_net_1 ), .B(\sercon[6]_net_1 ), 
        .Y(bsd7_tmp_0_sqmuxa));
    OR3 ack_RNO_1 (.A(ack_1_sqmuxa), .B(ack_3_sqmuxa), .C(
        bsd7_tmp_0_sqmuxa_1), .Y(un1_ack_0_sqmuxa_0));
    NOR2A \fsmsta_0_RNIEF5H8[3]  (.A(un1_sersta65), .B(un1_fsmdet_2), 
        .Y(un1_sersta65_s3));
    NOR3A \fsmsta_RNISM4AE[4]  (.A(fsmsta_m1_e_4_1), .B(N_747), .C(
        N_744), .Y(fsmsta_m1_e_4_3));
    NOR2A \fsmsta_RNIL5FC_0[0]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[0]_net_1 ), .Y(un1_m7_i_a5_2_0));
    DFN1E0C0 pedetect (.D(pedetect_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_serdat52_0), .Q(pedetect_net_1));
    OR2B \fsmsta_RNIRBFC[3]  (.A(\fsmsta[3]_net_1 ), .B(
        \fsmsta[4]_net_1 ), .Y(N_759));
    NOR2 \fsmsta_RNIO8FC_1[3]  (.A(\fsmsta[1]_net_1 ), .B(
        \fsmsta[3]_net_1 ), .Y(N_743_1));
    DFN1E0C0 sclscl (.D(\fsmmod[5]_net_1 ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(sclscl_1_sqmuxa), .Q(sclscl_net_1));
    NOR2A \fsmsta_RNO_1[0]  (.A(N_809_1), .B(ens1_pre_1_sqmuxa_1_s6), 
        .Y(N_809));
    NOR3C \sercon_RNI3CUE[6]  (.A(\sercon[6]_net_1 ), .B(
        \fsmsta[1]_net_1 ), .C(ack_bit_1_sqmuxa_a0_0), .Y(
        ack_bit_1_sqmuxa_a1_3));
    DFN1E1C0 \sercon[2]  (.D(I2C_slave_0_BIF_1_PWDATA[2]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(\sercon[2]_net_1 ));
    AO1D \fsmsync_RNO[6]  (.A(\fsmsync_ns_i_i_o2_0[6] ), .B(N_69), .C(
        N_64), .Y(\fsmsync_RNO_0[6]_net_1 ));
    DFN1E1C0 \sercon[5]  (.D(I2C_slave_0_BIF_1_PWDATA[5]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .E(sercon18), .Q(sercon_0));
    MX2 \sercon_RNO[4]  (.A(\sercon_8[4] ), .B(
        I2C_slave_0_BIF_1_PWDATA[4]), .S(sercon18), .Y(\sercon_10[4] ));
    NOR2 \serdat_RNI3LFE[1]  (.A(\serdat[4]_net_1 ), .B(
        \serdat[1]_net_1 ), .Y(fsmsta19_1));
    DFN1E0C0 \serdat[0]  (.D(\serdat_20[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_ack_1_sqmuxa), .Q(\serdat[0]_net_1 ));
    DFN1E1P0 SCLInt (.D(\SCLI_ff_reg_4[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(un1_serdat52_1), .Q(SCLInt_net_1));
    NOR2 \PRDATA_iv_i_a2[5]  (.A(seradr0apb[5]), .B(N_1421), .Y(N_1437)
        );
    OR2A \sercon_inferred_clock_RNIIIVU[3]  (.A(INT_net_0_0), .B(N_780)
        , .Y(N_760));
    AO1 \framesync_RNO_0[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        un1_framesync_4_sqmuxa), .C(framesync_1_m), .Y(N_675));
    NOR2A adrcompen_RNI20GL4_0 (.A(fsmsta_N_6), .B(un1_fsmdet), .Y(
        ens1_pre_4_sqmuxa));
    XA1 \PCLK_count1_RNO[1]  (.A(\PCLK_count1[1]_net_1 ), .B(
        \PCLK_count1[0]_net_1 ), .C(PCLK_count1_0_sqmuxa), .Y(
        PCLK_count1_n1));
    NOR2A \fsmsync_ns_i_a4_i_a3_0[3]  (.A(
        \fsmsync_ns_i_a4_i_a3_0_1[3] ), .B(INT_net_0_0), .Y(N_32));
    OA1C \fsmsta_RNO_5[1]  (.A(\fsmsta_nxt_cnst_i_a4_0_0[1] ), .B(
        fsmsta_N_6_1), .C(N_739), .Y(\fsmsta_nxt_cnst_m_0[1] ));
    DFN1C0 \sercon_0[3]  (.D(\sercon_10_0_0[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(INT_net_0_0));
    AO1 \fsmsta_0_RNIKT672[3]  (.A(sersta71_1), .B(sersta71_2), .C(
        sersta72), .Y(un1_sersta69_2));
    NOR2A \framesync_RNIMQRO1_0[0]  (.A(framesync24_1), .B(N_1417), .Y(
        framesync24));
    NOR2B \sercon_RNIR70R[0]  (.A(\sercon[0]_net_1 ), .B(un1_PRDATA), 
        .Y(\sercon_m[0] ));
    
endmodule


module top_0_COREI2C_1_COREI2C_Z4(
       INT_net_0_0,
       COREI2C_1_SDAO_0,
       sercon_0,
       PRDATA_iv_1_0,
       PRDATA_iv_0_0,
       PRDATA_0_iv_0,
       I2C_slave_0_BIF_1_PADDR,
       seradr0_m,
       sersta_i_0,
       sersta_0,
       I2C_slave_0_BIF_1_PWDATA,
       seradr0apb_0,
       seradr0apb_3,
       un1_PRDATA,
       un9_PRDATA,
       SDA_e,
       out_en_0,
       out_en,
       N_77,
       N_79,
       N_91,
       N_1443,
       I2C_slave_0_BIF_1_PSELx,
       I2C_slave_0_BIF_1_PENABLE,
       I2C_slave_0_BIF_1_PWRITE,
       N_1439,
       N_1437,
       N_1435,
       N_1434,
       SDA_in,
       SCLO_int,
       PRESETN_c,
       PCLK_c,
       N_1421
    );
output INT_net_0_0;
output COREI2C_1_SDAO_0;
output sercon_0;
output PRDATA_iv_1_0;
output PRDATA_iv_0_0;
output [2:0] PRDATA_0_iv_0;
input  [3:2] I2C_slave_0_BIF_1_PADDR;
output [2:0] seradr0_m;
output [2:0] sersta_i_0;
output sersta_0;
input  [7:0] I2C_slave_0_BIF_1_PWDATA;
output seradr0apb_0;
output seradr0apb_3;
output un1_PRDATA;
output un9_PRDATA;
output SDA_e;
input  out_en_0;
input  out_en;
output N_77;
output N_79;
output N_91;
output N_1443;
input  I2C_slave_0_BIF_1_PSELx;
input  I2C_slave_0_BIF_1_PENABLE;
input  I2C_slave_0_BIF_1_PWRITE;
output N_1439;
output N_1437;
output N_1435;
output N_1434;
input  SDA_in;
input  SCLO_int;
input  PRESETN_c;
input  PCLK_c;
output N_1421;

    wire seradr0apb4, seradr0apb4_0, \seradr0apb[0] , \seradr0apb[1] , 
        \seradr0apb[2] , \seradr0apb[3] , \seradr0apb[5] , 
        \seradr0apb[6] , GND, VCC;
    
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[3]  (.D(
        I2C_slave_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[3] ));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[1]  (.D(
        I2C_slave_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[1] ));
    NOR2A \g_seradr0_reg_bits.genblk1.seradr0_write_proc.seradr0apb4  
        (.A(seradr0apb4_0), .B(N_1421), .Y(seradr0apb4));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[6]  (.D(
        I2C_slave_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(\seradr0apb[6] ));
    COREI2C_COREI2CREAL_Z3_1 \I2C_NUM_GENERATION[0].ui2c  (.sersta_0(
        sersta_0), .sersta_i_0({sersta_i_0[2], sersta_i_0[1], 
        sersta_i_0[0]}), .seradr0apb({seradr0apb_3, \seradr0apb[6] , 
        \seradr0apb[5] , seradr0apb_0, \seradr0apb[3] , 
        \seradr0apb[2] , \seradr0apb[1] , \seradr0apb[0] }), 
        .seradr0_m({seradr0_m[2], seradr0_m[1], seradr0_m[0]}), 
        .I2C_slave_0_BIF_1_PWDATA({I2C_slave_0_BIF_1_PWDATA[7], 
        I2C_slave_0_BIF_1_PWDATA[6], I2C_slave_0_BIF_1_PWDATA[5], 
        I2C_slave_0_BIF_1_PWDATA[4], I2C_slave_0_BIF_1_PWDATA[3], 
        I2C_slave_0_BIF_1_PWDATA[2], I2C_slave_0_BIF_1_PWDATA[1], 
        I2C_slave_0_BIF_1_PWDATA[0]}), .I2C_slave_0_BIF_1_PADDR({
        I2C_slave_0_BIF_1_PADDR[3], I2C_slave_0_BIF_1_PADDR[2]}), 
        .PRDATA_0_iv_0({PRDATA_0_iv_0[2], PRDATA_0_iv_0[1], 
        PRDATA_0_iv_0[0]}), .PRDATA_iv_0_0(PRDATA_iv_0_0), 
        .PRDATA_iv_1_0(PRDATA_iv_1_0), .sercon_0(sercon_0), 
        .COREI2C_1_SDAO_0(COREI2C_1_SDAO_0), .INT_net_0_0(INT_net_0_0), 
        .SCLO_int_0(SCLO_int), .SDA_in(SDA_in), .N_1434(N_1434), 
        .N_1435(N_1435), .N_1437(N_1437), .N_1439(N_1439), 
        .I2C_slave_0_BIF_1_PWRITE(I2C_slave_0_BIF_1_PWRITE), 
        .I2C_slave_0_BIF_1_PENABLE(I2C_slave_0_BIF_1_PENABLE), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), 
        .seradr0apb4_0(seradr0apb4_0), .N_1443(N_1443), .N_91(N_91), 
        .N_79(N_79), .N_1421(N_1421), .N_77(N_77), .out_en_0(out_en), 
        .out_en(out_en_0), .SDA_e(SDA_e), .un9_PRDATA(un9_PRDATA), 
        .un1_PRDATA(un1_PRDATA), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c)
        );
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \g_seradr0_reg_bits.genblk1.seradr0apb[7]  (.D(
        I2C_slave_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(seradr0apb4), .Q(seradr0apb_3));
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
        .E(seradr0apb4), .Q(seradr0apb_0));
    
endmodule


module top_0(
       ADDR,
       PCLK,
       PRESETN,
       data_in_0,
       data_in_1,
       INT,
       S_DATA,
       data_0,
       data_1,
       SCL,
       SDA
    );
input  [7:0] ADDR;
input  PCLK;
input  PRESETN;
input  [7:0] data_in_0;
input  [7:0] data_in_1;
output [0:0] INT;
output [7:0] S_DATA;
output [7:0] data_0;
output [7:0] data_1;
output SCL;
inout  SDA;

    wire GND, \I2C_test_0_BIF_1_PADDR[2] , \I2C_test_0_BIF_1_PADDR[3] , 
        I2C_test_0_BIF_1_PWRITE, I2C_test_0_BIF_1_PENABLE, 
        I2C_test_0_BIF_1_PSELx, \I2C_test_0_BIF_1_PWDATA[0] , 
        \I2C_test_0_BIF_1_PWDATA[1] , \I2C_test_0_BIF_1_PWDATA[2] , 
        \I2C_test_0_BIF_1_PWDATA[3] , \I2C_test_0_BIF_1_PWDATA[4] , 
        \I2C_test_0_BIF_1_PWDATA[5] , \I2C_test_0_BIF_1_PWDATA[6] , 
        \I2C_test_0_BIF_1_PWDATA[7] , VCC, 
        \I2C_slave_0_BIF_1_PADDR[2] , \I2C_slave_0_BIF_1_PADDR[3] , 
        I2C_slave_0_BIF_1_PWRITE, I2C_slave_0_BIF_1_PENABLE, 
        I2C_slave_0_BIF_1_PSELx, \I2C_slave_0_BIF_1_PWDATA[0] , 
        \I2C_slave_0_BIF_1_PWDATA[1] , \I2C_slave_0_BIF_1_PWDATA[2] , 
        \I2C_slave_0_BIF_1_PWDATA[3] , \I2C_slave_0_BIF_1_PWDATA[4] , 
        \I2C_slave_0_BIF_1_PWDATA[5] , \I2C_slave_0_BIF_1_PWDATA[6] , 
        \I2C_slave_0_BIF_1_PWDATA[7] , \sercon[3] , 
        \COREI2C_1_SDAO[0] , \I2C_test_0.out_en , \I2C_slave_0.out_en , 
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[4] , 
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon[5] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta[4] , SDA_d, SDA_e, 
        SDA_in, \ADDR_c[0] , \ADDR_c[1] , \ADDR_c[2] , \ADDR_c[3] , 
        \ADDR_c[4] , \ADDR_c[5] , \ADDR_c[6] , \ADDR_c[7] , PCLK_c, 
        PRESETN_c, \data_in_0_c[0] , \data_in_0_c[1] , 
        \data_in_0_c[2] , \data_in_0_c[3] , \data_in_0_c[4] , 
        \data_in_0_c[5] , \data_in_0_c[6] , \data_in_0_c[7] , 
        \data_in_1_c[0] , \data_in_1_c[1] , \data_in_1_c[2] , 
        \data_in_1_c[3] , \data_in_1_c[4] , \data_in_1_c[5] , 
        \data_in_1_c[6] , \data_in_1_c[7] , \INT_net_0[0] , 
        \S_DATA_c[0] , \S_DATA_c[1] , \S_DATA_c[2] , \S_DATA_c[3] , 
        \S_DATA_c[4] , \S_DATA_c[5] , \S_DATA_c[6] , \S_DATA_c[7] , 
        \data_0_c[0] , \data_0_c[1] , \data_0_c[2] , \data_0_c[3] , 
        \data_0_c[4] , \data_0_c[5] , \data_0_c[6] , \data_0_c[7] , 
        \data_1_c[0] , \data_1_c[1] , \data_1_c[2] , \data_1_c[3] , 
        \data_1_c[4] , \data_1_c[5] , \data_1_c[6] , \data_1_c[7] , 
        SCLO_int, \I2C_test_0_BIF_1_PRDATA[3] , 
        \I2C_test_0_BIF_1_PRDATA[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.sercon_m[3] , 
        \I2C_test_0_BIF_1_PRDATA[6] , \I2C_slave_0_BIF_1_PRDATA[1] , 
        \I2C_slave_0_BIF_1_PRDATA[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon_write_proc.un1_PRDATA , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1421 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \I2C_slave_0_BIF_1_PRDATA[0] , \I2C_slave_0_BIF_1_PRDATA[5] , 
        \I2C_slave_0_BIF_1_PRDATA[6] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1434 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1435 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1437 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.un9_PRDATA , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1439 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] , 
        \I2C_slave_0_BIF_1_PRDATA[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_91 , 
        \I2C_slave_0_BIF_1_PRDATA[4] , \I2C_slave_0_BIF_1_PRDATA[3] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_79 , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_77 , 
        \I2C_test_0_BIF_1_PRDATA[7] , \I2C_test_0_BIF_1_PRDATA[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_190 , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_193 , 
        \I2C_test_0_BIF_1_PRDATA[5] , \I2C_test_0_BIF_1_PRDATA[1] , 
        \I2C_test_0_BIF_1_PRDATA[0] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[0] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[6] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[4] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[4] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] ;
    
    INBUF \data_in_0_pad[4]  (.PAD(data_in_0[4]), .Y(\data_in_0_c[4] ));
    INBUF \data_in_1_pad[5]  (.PAD(data_in_1[5]), .Y(\data_in_1_c[5] ));
    INBUF \data_in_0_pad[2]  (.PAD(data_in_0[2]), .Y(\data_in_0_c[2] ));
    OUTBUF \S_DATA_pad[4]  (.D(\S_DATA_c[4] ), .PAD(S_DATA[4]));
    OUTBUF \data_1_pad[3]  (.D(\data_1_c[3] ), .PAD(data_1[3]));
    OUTBUF \data_0_pad[2]  (.D(\data_0_c[2] ), .PAD(data_0[2]));
    INBUF \data_in_1_pad[7]  (.PAD(data_in_1[7]), .Y(\data_in_1_c[7] ));
    OUTBUF \data_0_pad[4]  (.D(\data_0_c[4] ), .PAD(data_0[4]));
    I2C_slave_Z5 I2C_slave_0 (.I2C_slave_0_BIF_1_PWDATA({
        \I2C_slave_0_BIF_1_PWDATA[7] , \I2C_slave_0_BIF_1_PWDATA[6] , 
        \I2C_slave_0_BIF_1_PWDATA[5] , \I2C_slave_0_BIF_1_PWDATA[4] , 
        \I2C_slave_0_BIF_1_PWDATA[3] , \I2C_slave_0_BIF_1_PWDATA[2] , 
        \I2C_slave_0_BIF_1_PWDATA[1] , \I2C_slave_0_BIF_1_PWDATA[0] }), 
        .I2C_slave_0_BIF_1_PADDR({\I2C_slave_0_BIF_1_PADDR[3] , 
        \I2C_slave_0_BIF_1_PADDR[2] }), .INT_net_0_0(\INT_net_0[0] ), 
        .I2C_slave_0_BIF_1_PRDATA({\I2C_slave_0_BIF_1_PRDATA[7] , 
        \I2C_slave_0_BIF_1_PRDATA[6] , \I2C_slave_0_BIF_1_PRDATA[5] , 
        \I2C_slave_0_BIF_1_PRDATA[4] , \I2C_slave_0_BIF_1_PRDATA[3] , 
        \I2C_slave_0_BIF_1_PRDATA[2] , \I2C_slave_0_BIF_1_PRDATA[1] , 
        \I2C_slave_0_BIF_1_PRDATA[0] }), .data_1_c({\data_1_c[7] , 
        \data_1_c[6] , \data_1_c[5] , \data_1_c[4] , \data_1_c[3] , 
        \data_1_c[2] , \data_1_c[1] , \data_1_c[0] }), .data_in_1_c({
        \data_in_1_c[7] , \data_in_1_c[6] , \data_in_1_c[5] , 
        \data_in_1_c[4] , \data_in_1_c[3] , \data_in_1_c[2] , 
        \data_in_1_c[1] , \data_in_1_c[0] }), .I2C_slave_0_BIF_1_PSELx(
        I2C_slave_0_BIF_1_PSELx), .SCLO_int(SCLO_int), .out_en(
        \I2C_slave_0.out_en ), .I2C_slave_0_BIF_1_PENABLE(
        I2C_slave_0_BIF_1_PENABLE), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c), .I2C_slave_0_BIF_1_PWRITE(I2C_slave_0_BIF_1_PWRITE));
    INBUF \data_in_0_pad[3]  (.PAD(data_in_0[3]), .Y(\data_in_0_c[3] ));
    OUTBUF \S_DATA_pad[5]  (.D(\S_DATA_c[5] ), .PAD(S_DATA[5]));
    INBUF \ADDR_pad[5]  (.PAD(ADDR[5]), .Y(\ADDR_c[5] ));
    OUTBUF \data_1_pad[5]  (.D(\data_1_c[5] ), .PAD(data_1[5]));
    VCC VCC_i (.Y(VCC));
    INBUF \data_in_1_pad[3]  (.PAD(data_in_1[3]), .Y(\data_in_1_c[3] ));
    CoreAPB3_Z1 CoreAPB3_0 (.PRDATA_0_iv_0_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[0] }), 
        .seradr0_m_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] ), 
        .PRDATA_0_iv_0_0_d0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] ), 
        .PRDATA_iv_0_0_d0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] ), 
        .PRDATA_iv_0_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] ), 
        .PRDATA_iv_0_0_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[6] ), 
        .PRDATA_iv_0_0_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[4] ), 
        .PRDATA_iv_0_1_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[6] ), 
        .PRDATA_iv_0_1_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[4] ), 
        .I2C_test_0_BIF_1_PRDATA({\I2C_test_0_BIF_1_PRDATA[7] , 
        \I2C_test_0_BIF_1_PRDATA[6] , \I2C_test_0_BIF_1_PRDATA[5] , 
        \I2C_test_0_BIF_1_PRDATA[4] , \I2C_test_0_BIF_1_PRDATA[3] , 
        \I2C_test_0_BIF_1_PRDATA[2] , \I2C_test_0_BIF_1_PRDATA[1] , 
        \I2C_test_0_BIF_1_PRDATA[0] }), .sercon_m_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.sercon_m[3] ), 
        .PRDATA_iv_1_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] ), 
        .PRDATA_iv_1_4(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] ), 
        .PRDATA_iv_1_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] ), .N_193(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_193 ), 
        .I2C_test_0_BIF_1_PSELx(I2C_test_0_BIF_1_PSELx), .N_190(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_190 ));
    INBUF \data_in_1_pad[1]  (.PAD(data_in_1[1]), .Y(\data_in_1_c[1] ));
    INBUF \ADDR_pad[2]  (.PAD(ADDR[2]), .Y(\ADDR_c[2] ));
    INBUF \data_in_1_pad[2]  (.PAD(data_in_1[2]), .Y(\data_in_1_c[2] ));
    OUTBUF \data_0_pad[7]  (.D(\data_0_c[7] ), .PAD(data_0[7]));
    INBUF \data_in_1_pad[0]  (.PAD(data_in_1[0]), .Y(\data_in_1_c[0] ));
    OUTBUF \S_DATA_pad[2]  (.D(\S_DATA_c[2] ), .PAD(S_DATA[2]));
    INBUF \ADDR_pad[1]  (.PAD(ADDR[1]), .Y(\ADDR_c[1] ));
    OUTBUF \data_1_pad[6]  (.D(\data_1_c[6] ), .PAD(data_1[6]));
    INBUF \ADDR_pad[3]  (.PAD(ADDR[3]), .Y(\ADDR_c[3] ));
    OUTBUF \data_0_pad[3]  (.D(\data_0_c[3] ), .PAD(data_0[3]));
    INBUF \data_in_0_pad[5]  (.PAD(data_in_0[5]), .Y(\data_in_0_c[5] ));
    OUTBUF \data_1_pad[7]  (.D(\data_1_c[7] ), .PAD(data_1[7]));
    OUTBUF \S_DATA_pad[1]  (.D(\S_DATA_c[1] ), .PAD(S_DATA[1]));
    OUTBUF \data_1_pad[2]  (.D(\data_1_c[2] ), .PAD(data_1[2]));
    OUTBUF \data_0_pad[0]  (.D(\data_0_c[0] ), .PAD(data_0[0]));
    INBUF \ADDR_pad[0]  (.PAD(ADDR[0]), .Y(\ADDR_c[0] ));
    INBUF \data_in_0_pad[0]  (.PAD(data_in_0[0]), .Y(\data_in_0_c[0] ));
    OUTBUF \data_1_pad[4]  (.D(\data_1_c[4] ), .PAD(data_1[4]));
    OUTBUF \data_0_pad[1]  (.D(\data_0_c[1] ), .PAD(data_0[1]));
    GND GND_i (.Y(GND));
    OUTBUF \data_1_pad[1]  (.D(\data_1_c[1] ), .PAD(data_1[1]));
    OUTBUF \S_DATA_pad[6]  (.D(\S_DATA_c[6] ), .PAD(S_DATA[6]));
    INBUF \ADDR_pad[4]  (.PAD(ADDR[4]), .Y(\ADDR_c[4] ));
    OUTBUF \S_DATA_pad[7]  (.D(\S_DATA_c[7] ), .PAD(S_DATA[7]));
    OUTBUF \S_DATA_pad[3]  (.D(\S_DATA_c[3] ), .PAD(S_DATA[3]));
    I2C_test_Z6 I2C_test_0 (.I2C_test_0_BIF_1_PWDATA({
        \I2C_test_0_BIF_1_PWDATA[7] , \I2C_test_0_BIF_1_PWDATA[6] , 
        \I2C_test_0_BIF_1_PWDATA[5] , \I2C_test_0_BIF_1_PWDATA[4] , 
        \I2C_test_0_BIF_1_PWDATA[3] , \I2C_test_0_BIF_1_PWDATA[2] , 
        \I2C_test_0_BIF_1_PWDATA[1] , \I2C_test_0_BIF_1_PWDATA[0] }), 
        .I2C_test_0_BIF_1_PADDR({\I2C_test_0_BIF_1_PADDR[3] , 
        \I2C_test_0_BIF_1_PADDR[2] }), .sercon_0(\sercon[3] ), 
        .I2C_test_0_BIF_1_PRDATA({\I2C_test_0_BIF_1_PRDATA[7] , 
        \I2C_test_0_BIF_1_PRDATA[6] , \I2C_test_0_BIF_1_PRDATA[5] , 
        \I2C_test_0_BIF_1_PRDATA[4] , \I2C_test_0_BIF_1_PRDATA[3] , 
        \I2C_test_0_BIF_1_PRDATA[2] , \I2C_test_0_BIF_1_PRDATA[1] , 
        \I2C_test_0_BIF_1_PRDATA[0] }), .data_0_c({\data_0_c[7] , 
        \data_0_c[6] , \data_0_c[5] , \data_0_c[4] , \data_0_c[3] , 
        \data_0_c[2] , \data_0_c[1] , \data_0_c[0] }), .data_in_0_c({
        \data_in_0_c[7] , \data_in_0_c[6] , \data_in_0_c[5] , 
        \data_in_0_c[4] , \data_in_0_c[3] , \data_in_0_c[2] , 
        \data_in_0_c[1] , \data_in_0_c[0] }), .ADDR_c({\ADDR_c[7] , 
        \ADDR_c[6] , \ADDR_c[5] , \ADDR_c[4] , \ADDR_c[3] , 
        \ADDR_c[2] , \ADDR_c[1] , \ADDR_c[0] }), .S_DATA_c({
        \S_DATA_c[7] , \S_DATA_c[6] , \S_DATA_c[5] , \S_DATA_c[4] , 
        \S_DATA_c[3] , \S_DATA_c[2] , \S_DATA_c[1] , \S_DATA_c[0] }), 
        .I2C_test_0_BIF_1_PSELx(I2C_test_0_BIF_1_PSELx), .SCLO_int(
        SCLO_int), .out_en(\I2C_test_0.out_en ), 
        .I2C_test_0_BIF_1_PWRITE(I2C_test_0_BIF_1_PWRITE), .PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .I2C_test_0_BIF_1_PENABLE(
        I2C_test_0_BIF_1_PENABLE));
    INBUF \data_in_1_pad[4]  (.PAD(data_in_1[4]), .Y(\data_in_1_c[4] ));
    CoreAPB3_Z1_0 CoreAPB3_1 (.seradr0apb_0(
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[4] ), 
        .seradr0apb_3(
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[7] ), 
        .sersta_0(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta[4] ), 
        .sercon_0(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon[5] ), 
        .sersta_i_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] }), 
        .INT_net_0_0(\INT_net_0[0] ), .PRDATA_iv_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] ), 
        .PRDATA_iv_1_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] ), 
        .I2C_slave_0_BIF_1_PRDATA({\I2C_slave_0_BIF_1_PRDATA[7] , 
        \I2C_slave_0_BIF_1_PRDATA[6] , \I2C_slave_0_BIF_1_PRDATA[5] , 
        \I2C_slave_0_BIF_1_PRDATA[4] , \I2C_slave_0_BIF_1_PRDATA[3] , 
        \I2C_slave_0_BIF_1_PRDATA[2] , \I2C_slave_0_BIF_1_PRDATA[1] , 
        \I2C_slave_0_BIF_1_PRDATA[0] }), .seradr0_m({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .PRDATA_0_iv_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .N_1421(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1421 ), 
        .N_1435(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1435 ), 
        .un9_PRDATA(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.un9_PRDATA ), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), .N_79(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_79 ), .N_77(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_77 ), .N_91(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_91 ), .un1_PRDATA(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon_write_proc.un1_PRDATA )
        , .N_1439(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1439 ), 
        .N_1437(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1437 ), 
        .N_1443(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443 ), 
        .N_1434(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1434 ));
    OUTBUF \S_DATA_pad[0]  (.D(\S_DATA_c[0] ), .PAD(S_DATA[0]));
    OUTBUF \data_0_pad[5]  (.D(\data_0_c[5] ), .PAD(data_0[5]));
    CLKBUF PRESETN_pad (.PAD(PRESETN), .Y(PRESETN_c));
    top_0_COREI2C_0_COREI2C_Z2 COREI2C_0 (.sercon_0(\sercon[3] ), 
        .PRDATA_0_iv_0_0_d0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] ), 
        .PRDATA_iv_1_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[3] ), 
        .PRDATA_iv_1_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[5] ), 
        .PRDATA_iv_1_4(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[7] ), 
        .PRDATA_iv_0_0_d0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[5] ), 
        .PRDATA_iv_0_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[7] ), 
        .PRDATA_iv_0_1_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[4] ), 
        .PRDATA_iv_0_1_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_1[6] ), 
        .PRDATA_iv_0_0_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[4] ), 
        .PRDATA_iv_0_0_2(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0_0[6] ), 
        .PRDATA_0_iv_0_0({
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[1] , 
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0_0[0] }), 
        .seradr0_m_0(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] ), 
        .sercon_m_0(\COREI2C_0.I2C_NUM_GENERATION[0].ui2c.sercon_m[3] )
        , .COREI2C_1_SDAO_0(\COREI2C_1_SDAO[0] ), 
        .I2C_test_0_BIF_1_PWDATA({\I2C_test_0_BIF_1_PWDATA[7] , 
        \I2C_test_0_BIF_1_PWDATA[6] , \I2C_test_0_BIF_1_PWDATA[5] , 
        \I2C_test_0_BIF_1_PWDATA[4] , \I2C_test_0_BIF_1_PWDATA[3] , 
        \I2C_test_0_BIF_1_PWDATA[2] , \I2C_test_0_BIF_1_PWDATA[1] , 
        \I2C_test_0_BIF_1_PWDATA[0] }), .I2C_test_0_BIF_1_PADDR({
        \I2C_test_0_BIF_1_PADDR[3] , \I2C_test_0_BIF_1_PADDR[2] }), 
        .I2C_test_0_BIF_1_PSELx(I2C_test_0_BIF_1_PSELx), 
        .I2C_test_0_BIF_1_PENABLE(I2C_test_0_BIF_1_PENABLE), 
        .I2C_test_0_BIF_1_PWRITE(I2C_test_0_BIF_1_PWRITE), .N_190(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_190 ), .N_193(
        \COREI2C_0.I2C_NUM_GENERATION[0].ui2c.N_193 ), .SDA_in(SDA_in), 
        .SCLO_int(SCLO_int), .out_en_0(\I2C_test_0.out_en ), .SDA_d(
        SDA_d), .out_en(\I2C_slave_0.out_en ), .PRESETN_c(PRESETN_c), 
        .PCLK_c(PCLK_c));
    OUTBUF \INT_pad[0]  (.D(\INT_net_0[0] ), .PAD(INT[0]));
    OUTBUF \data_1_pad[0]  (.D(\data_1_c[0] ), .PAD(data_1[0]));
    INBUF \data_in_0_pad[7]  (.PAD(data_in_0[7]), .Y(\data_in_0_c[7] ));
    INBUF \data_in_0_pad[6]  (.PAD(data_in_0[6]), .Y(\data_in_0_c[6] ));
    OUTBUF \data_0_pad[6]  (.D(\data_0_c[6] ), .PAD(data_0[6]));
    INBUF \ADDR_pad[6]  (.PAD(ADDR[6]), .Y(\ADDR_c[6] ));
    BIBUF SDA_pad (.PAD(SDA), .D(SDA_d), .E(SDA_e), .Y(SDA_in));
    top_0_COREI2C_1_COREI2C_Z4 COREI2C_1 (.INT_net_0_0(\INT_net_0[0] ), 
        .COREI2C_1_SDAO_0(\COREI2C_1_SDAO[0] ), .sercon_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon[5] ), 
        .PRDATA_iv_1_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_1[6] ), 
        .PRDATA_iv_0_0(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_iv_0[6] ), 
        .PRDATA_0_iv_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.PRDATA_0_iv_0[0] }), 
        .I2C_slave_0_BIF_1_PADDR({\I2C_slave_0_BIF_1_PADDR[3] , 
        \I2C_slave_0_BIF_1_PADDR[2] }), .seradr0_m({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.seradr0_m[0] }), 
        .sersta_i_0({
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[2] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[1] , 
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta_i_0[0] }), 
        .sersta_0(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sersta[4] ), 
        .I2C_slave_0_BIF_1_PWDATA({\I2C_slave_0_BIF_1_PWDATA[7] , 
        \I2C_slave_0_BIF_1_PWDATA[6] , \I2C_slave_0_BIF_1_PWDATA[5] , 
        \I2C_slave_0_BIF_1_PWDATA[4] , \I2C_slave_0_BIF_1_PWDATA[3] , 
        \I2C_slave_0_BIF_1_PWDATA[2] , \I2C_slave_0_BIF_1_PWDATA[1] , 
        \I2C_slave_0_BIF_1_PWDATA[0] }), .seradr0apb_0(
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[4] ), 
        .seradr0apb_3(
        \COREI2C_1.g_seradr0_reg_bits.genblk1.seradr0apb[7] ), 
        .un1_PRDATA(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.sercon_write_proc.un1_PRDATA )
        , .un9_PRDATA(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.un9_PRDATA ), .SDA_e(
        SDA_e), .out_en_0(\I2C_slave_0.out_en ), .out_en(
        \I2C_test_0.out_en ), .N_77(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_77 ), .N_79(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_79 ), .N_91(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_91 ), .N_1443(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1443 ), 
        .I2C_slave_0_BIF_1_PSELx(I2C_slave_0_BIF_1_PSELx), 
        .I2C_slave_0_BIF_1_PENABLE(I2C_slave_0_BIF_1_PENABLE), 
        .I2C_slave_0_BIF_1_PWRITE(I2C_slave_0_BIF_1_PWRITE), .N_1439(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1439 ), .N_1437(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1437 ), .N_1435(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1435 ), .N_1434(
        \COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1434 ), .SDA_in(SDA_in)
        , .SCLO_int(SCLO_int), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c), 
        .N_1421(\COREI2C_1.I2C_NUM_GENERATION[0].ui2c.N_1421 ));
    INBUF \data_in_0_pad[1]  (.PAD(data_in_0[1]), .Y(\data_in_0_c[1] ));
    CLKBUF PCLK_pad (.PAD(PCLK), .Y(PCLK_c));
    OUTBUF SCL_pad (.D(SCLO_int), .PAD(SCL));
    INBUF \ADDR_pad[7]  (.PAD(ADDR[7]), .Y(\ADDR_c[7] ));
    INBUF \data_in_1_pad[6]  (.PAD(data_in_1[6]), .Y(\data_in_1_c[6] ));
    
endmodule
