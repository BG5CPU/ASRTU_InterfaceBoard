`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module UART_AD7606(
       UART_AD7606_0_m_axis_tdata,
       sp_fifo_0_dout,
       uart_0_m_axis_tdata,
       UART_AD7606_0_s_axis_tready,
       RE_c,
       uart_0_m_axis_tvalid,
       uart_0_tx_busy,
       empty_c,
       PRESETN_c,
       PCLK_c,
       WEP,
       UART_AD7606_0_m_axis_tvalid,
       uart_0_s_axis_tready
    );
output [7:0] UART_AD7606_0_m_axis_tdata;
input  [15:0] sp_fifo_0_dout;
input  [7:0] uart_0_m_axis_tdata;
output UART_AD7606_0_s_axis_tready;
output RE_c;
input  uart_0_m_axis_tvalid;
input  uart_0_tx_busy;
input  empty_c;
input  PRESETN_c;
input  PCLK_c;
output WEP;
output UART_AD7606_0_m_axis_tvalid;
input  uart_0_s_axis_tready;

    wire N_13_0, N_11, un1_data_count_2_0, \data_count[0]_net_1 , 
        \data_count[1]_net_1 , WE_reg_2, N_3, \AD_data_count[1]_net_1 , 
        \AD_data_count[0]_net_1 , m5_0, \FIFO_count[0]_net_1 , 
        WE_reg_2_1, WE_reg_2_0, \AD_data_count[3]_net_1 , 
        \AD_data_count[2]_net_1 , AD_data_count12_12, 
        AD_data_count12_1, AD_data_count12_0, AD_data_count12_9, 
        AD_data_count12_11, \PC_data_reg[7]_net_1 , AD_data_count12_7, 
        \PC_data_reg[0]_net_1 , AD_data_count12_10, 
        \PC_data_reg[3]_net_1 , \PC_data_reg[1]_net_1 , 
        AD_data_count12_5, \PC_data_reg[13]_net_1 , AD_data_count12_3, 
        \PC_data_reg[10]_net_1 , \PC_data_reg[2]_net_1 , 
        \PC_data_reg[6]_net_1 , \PC_data_reg[4]_net_1 , 
        \PC_data_reg[5]_net_1 , \PC_data_reg[14]_net_1 , 
        \PC_data_reg[8]_net_1 , \PC_data_reg[11]_net_1 , 
        \PC_data_reg[12]_net_1 , \PC_data_reg[9]_net_1 , 
        \PC_data_reg[15]_net_1 , RE_reg8, AD_data_count12, 
        s_axis_tready_reg8, \PC_data_count[1]_net_1 , 
        \PC_data_count[0]_net_1 , PC_data_reg_1_sqmuxa, 
        \AD_data_count_3[0] , \AD_data_count_3[1] , I_5, 
        \AD_data_count_3[2] , I_7, \PC_data_count_4[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , \PC_data_count_4[1] , I_10_0, 
        \PC_data_reg_4[0] , \PC_data_reg_4[1] , \PC_data_reg_4[2] , 
        \PC_data_reg_4[3] , \PC_data_reg_4[4] , \PC_data_reg_4[5] , 
        \PC_data_reg_4[6] , \PC_data_reg_4[7] , \PC_data_reg_4[8] , 
        \PC_data_reg_4[9] , \PC_data_reg_4[10] , \PC_data_reg_4[11] , 
        \PC_data_reg_4[12] , \PC_data_reg_4[13] , \PC_data_reg_4[14] , 
        \PC_data_reg_4[15] , \AD_data_count_3[3] , I_9, 
        un1_data_count_2, \m_axis_tdata_reg_3[0] , 
        \s_axis_din_tdata_reg[8]_net_1 , \m_axis_tdata_reg_3[1] , 
        \s_axis_din_tdata_reg[9]_net_1 , \m_axis_tdata_reg_3[2] , 
        \s_axis_din_tdata_reg[10]_net_1 , \m_axis_tdata_reg_3[3] , 
        \s_axis_din_tdata_reg[11]_net_1 , \m_axis_tdata_reg_3[4] , 
        \s_axis_din_tdata_reg[12]_net_1 , \m_axis_tdata_reg_3[5] , 
        \s_axis_din_tdata_reg[13]_net_1 , \m_axis_tdata_reg_3[6] , 
        \s_axis_din_tdata_reg[14]_net_1 , \m_axis_tdata_reg_3[7] , 
        \s_axis_din_tdata_reg[15]_net_1 , \s_axis_din_tdata_reg_4[9] , 
        \s_axis_din_tdata_reg[1]_net_1 , \s_axis_din_tdata_reg_4[10] , 
        \s_axis_din_tdata_reg[2]_net_1 , \s_axis_din_tdata_reg_4[11] , 
        \s_axis_din_tdata_reg[3]_net_1 , \s_axis_din_tdata_reg_4[12] , 
        \s_axis_din_tdata_reg[4]_net_1 , \s_axis_din_tdata_reg_4[13] , 
        \s_axis_din_tdata_reg[5]_net_1 , \s_axis_din_tdata_reg_4[14] , 
        \s_axis_din_tdata_reg[6]_net_1 , \s_axis_din_tdata_reg_4[15] , 
        \s_axis_din_tdata_reg[7]_net_1 , \s_axis_din_tdata_reg_4[1] , 
        \s_axis_din_tdata_reg_4[2] , \s_axis_din_tdata_reg_4[3] , 
        \s_axis_din_tdata_reg_4[5] , \s_axis_din_tdata_reg_4[6] , 
        \s_axis_din_tdata_reg_4[7] , \FIFO_count_3[0] , 
        \FIFO_count[1]_net_1 , N_13, un1_m_axis_tvalid_reg10_1, N_7_0, 
        N_10, m_axis_tvalid_reg12, N_4_0, \s_axis_din_tdata_reg_4[4] , 
        \s_axis_din_tdata_reg_4[0] , SUM1, \s_axis_din_tdata_reg_4[8] , 
        \s_axis_din_tdata_reg[0]_net_1 , \data_count_3[0] , 
        \DWACT_ADD_CI_0_partial_sum_0[0] , I_10, 
        \DWACT_ADD_CI_0_TMP[0] , \DWACT_ADD_CI_0_partial_sum[1] , 
        \DWACT_ADD_CI_0_TMP_0[0] , N_2, GND, VCC;
    
    DFN1E0C0 \PC_data_reg[1]  (.D(\PC_data_reg_4[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[1]_net_1 ));
    DFN1E0C0 \PC_data_reg[12]  (.D(\PC_data_reg_4[12] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[12]_net_1 ));
    DFN1E1C0 \s_axis_din_tdata_reg[12]  (.D(
        \s_axis_din_tdata_reg_4[12] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[12]_net_1 ));
    DFN1C0 \PC_data_count[1]  (.D(\PC_data_count_4[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\PC_data_count[1]_net_1 ));
    NOR2B \s_axis_din_tdata_reg_RNO[0]  (.A(sp_fifo_0_dout[0]), .B(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[0] ));
    NOR2B \PC_data_count_RNO[1]  (.A(I_10_0), .B(s_axis_tready_reg8), 
        .Y(\PC_data_count_4[1] ));
    AOI1B \data_count_RNO_0[0]  (.A(uart_0_s_axis_tready), .B(
        UART_AD7606_0_m_axis_tvalid), .C(\FIFO_count[0]_net_1 ), .Y(
        m5_0));
    MX2 \s_axis_din_tdata_reg_RNO[12]  (.A(
        \s_axis_din_tdata_reg[4]_net_1 ), .B(sp_fifo_0_dout[12]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[12] ));
    XNOR2 un2_AD_data_count_I_9 (.A(N_2), .B(\AD_data_count[3]_net_1 ), 
        .Y(I_9));
    NOR2B \s_axis_din_tdata_reg_RNO[2]  (.A(sp_fifo_0_dout[2]), .B(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[2] ));
    DFN1E1C0 \s_axis_din_tdata_reg[1]  (.D(\s_axis_din_tdata_reg_4[1] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[1]_net_1 ));
    NOR2 \AD_data_count_RNO[0]  (.A(\AD_data_count[0]_net_1 ), .B(
        WE_reg_2), .Y(\AD_data_count_3[0] ));
    NOR3B \AD_data_count_RNO_8[3]  (.A(\PC_data_reg[13]_net_1 ), .B(
        AD_data_count12_3), .C(\PC_data_reg[10]_net_1 ), .Y(
        AD_data_count12_9));
    NOR2B \s_axis_din_tdata_reg_RNO[5]  (.A(sp_fifo_0_dout[5]), .B(
        un1_data_count_2), .Y(\s_axis_din_tdata_reg_4[5] ));
    DFN1E1C0 \s_axis_din_tdata_reg[10]  (.D(
        \s_axis_din_tdata_reg_4[10] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[10]_net_1 ));
    DFN1E1C0 \m_axis_tdata_reg[3]  (.D(\m_axis_tdata_reg_3[3] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[3]));
    DFN1C0 \FIFO_count[1]  (.D(SUM1), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\FIFO_count[1]_net_1 ));
    NOR2B \PC_data_reg_RNO[3]  (.A(uart_0_m_axis_tdata[3]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[3] ));
    DFN1C0 \PC_data_count[0]  (.D(\PC_data_count_4[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\PC_data_count[0]_net_1 ));
    NOR2B \PC_data_reg_RNO[7]  (.A(uart_0_m_axis_tdata[7]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[7] ));
    MX2A \FIFO_count_RNI97PU1[0]  (.A(N_7_0), .B(N_10), .S(
        \FIFO_count[0]_net_1 ), .Y(N_11));
    DFN1E1C0 \m_axis_tdata_reg[1]  (.D(\m_axis_tdata_reg_3[1] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[1]));
    XOR2 un1_data_count_4_I_10 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), 
        .B(\DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_10));
    NOR2B \s_axis_din_tdata_reg_RNO[7]  (.A(sp_fifo_0_dout[7]), .B(
        un1_data_count_2), .Y(\s_axis_din_tdata_reg_4[7] ));
    OA1C \FIFO_count_RNO[0]  (.A(RE_c), .B(\FIFO_count[1]_net_1 ), .C(
        \FIFO_count[0]_net_1 ), .Y(\FIFO_count_3[0] ));
    DFN1C0 s_axis_tready_reg (.D(s_axis_tready_reg8), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(UART_AD7606_0_s_axis_tready));
    DFN1E1C0 \s_axis_din_tdata_reg[3]  (.D(\s_axis_din_tdata_reg_4[3] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[3]_net_1 ));
    DFN1E1C0 \m_axis_tdata_reg[4]  (.D(\m_axis_tdata_reg_3[4] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[4]));
    MX2 \s_axis_din_tdata_reg_RNO[10]  (.A(
        \s_axis_din_tdata_reg[2]_net_1 ), .B(sp_fifo_0_dout[10]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[10] ));
    NOR2 \data_count_RNI0RUG[1]  (.A(uart_0_tx_busy), .B(
        un1_data_count_2), .Y(N_7_0));
    DFN1C0 \AD_data_count[2]  (.D(\AD_data_count_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\AD_data_count[2]_net_1 ));
    DFN1E1C0 \m_axis_tdata_reg[0]  (.D(\m_axis_tdata_reg_3[0] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[0]));
    NOR2A \m_axis_tdata_reg_RNO[6]  (.A(
        \s_axis_din_tdata_reg[14]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[6] ));
    NOR2 \AD_data_count_RNITM6I[1]  (.A(\AD_data_count[1]_net_1 ), .B(
        \AD_data_count[0]_net_1 ), .Y(WE_reg_2_1));
    GND GND_i (.Y(GND));
    DFN1E1C0 \s_axis_din_tdata_reg[4]  (.D(\s_axis_din_tdata_reg_4[4] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[4]_net_1 ));
    NOR2A \m_axis_tdata_reg_RNO[2]  (.A(
        \s_axis_din_tdata_reg[10]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[2] ));
    NOR2A \m_axis_tdata_reg_RNO[5]  (.A(
        \s_axis_din_tdata_reg[13]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[5] ));
    NOR2B \PC_data_reg_RNO[14]  (.A(\PC_data_reg[6]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[14] ));
    NOR2 \data_count_RNILKD7[1]  (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .Y(un1_data_count_2_0));
    DFN1E1C0 \s_axis_din_tdata_reg[2]  (.D(\s_axis_din_tdata_reg_4[2] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[2]_net_1 ));
    DFN1C0 \FIFO_count[0]  (.D(\FIFO_count_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\FIFO_count[0]_net_1 ));
    NOR2A \PC_data_count_RNI3FQE[1]  (.A(s_axis_tready_reg8), .B(
        uart_0_m_axis_tvalid), .Y(PC_data_reg_1_sqmuxa));
    NOR2B \PC_data_count_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(s_axis_tready_reg8), .Y(\PC_data_count_4[0] ));
    MX2 \s_axis_din_tdata_reg_RNO[9]  (.A(
        \s_axis_din_tdata_reg[1]_net_1 ), .B(sp_fifo_0_dout[9]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[9] ));
    NOR2B \PC_data_reg_RNO[2]  (.A(uart_0_m_axis_tdata[2]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[2] ));
    DFI1P0 WE_reg (.D(WE_reg_2), .CLK(PCLK_c), .PRE(PRESETN_c), .QN(
        WEP));
    NOR3C \AD_data_count_RNO_3[3]  (.A(AD_data_count12_1), .B(
        AD_data_count12_0), .C(AD_data_count12_9), .Y(
        AD_data_count12_12));
    DFN1E0C0 \PC_data_reg[13]  (.D(\PC_data_reg_4[13] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[13]_net_1 ));
    NOR2B \PC_data_reg_RNO[13]  (.A(\PC_data_reg[5]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[13] ));
    NOR2 \AD_data_count_RNI1R6I[3]  (.A(\AD_data_count[3]_net_1 ), .B(
        \AD_data_count[2]_net_1 ), .Y(WE_reg_2_0));
    OR3 un2_AD_data_count_I_8 (.A(\AD_data_count[0]_net_1 ), .B(
        \AD_data_count[1]_net_1 ), .C(\AD_data_count[2]_net_1 ), .Y(
        N_2));
    NOR2A \m_axis_tdata_reg_RNO[7]  (.A(
        \s_axis_din_tdata_reg[15]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[7] ));
    VCC VCC_i (.Y(VCC));
    DFN1E0C0 \PC_data_reg[0]  (.D(\PC_data_reg_4[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[0]_net_1 ));
    XOR2 un1_PC_data_count_1_I_10 (.A(\PC_data_count[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_10_0));
    DFN1E1C0 \s_axis_din_tdata_reg[5]  (.D(\s_axis_din_tdata_reg_4[5] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[5]_net_1 ));
    NOR2A \AD_data_count_RNO[1]  (.A(I_5), .B(WE_reg_2), .Y(
        \AD_data_count_3[1] ));
    NOR2 \AD_data_count_RNO_4[3]  (.A(\PC_data_reg[2]_net_1 ), .B(
        \PC_data_reg[6]_net_1 ), .Y(AD_data_count12_7));
    DFN1E0C0 \PC_data_reg[6]  (.D(\PC_data_reg_4[6] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[6]_net_1 ));
    NOR2B \PC_data_reg_RNO[6]  (.A(uart_0_m_axis_tdata[6]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[6] ));
    NOR2B \PC_data_reg_RNO[5]  (.A(uart_0_m_axis_tdata[5]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[5] ));
    XNOR2 un2_AD_data_count_I_7 (.A(N_3), .B(\AD_data_count[2]_net_1 ), 
        .Y(I_7));
    NOR2B \PC_data_reg_RNO[1]  (.A(uart_0_m_axis_tdata[1]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[1] ));
    XOR2 un1_PC_data_count_1_I_8 (.A(\PC_data_count[0]_net_1 ), .B(
        uart_0_m_axis_tvalid), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    XOR2 un2_FIFO_count_1_1_SUM1 (.A(\FIFO_count[1]_net_1 ), .B(
        \FIFO_count[0]_net_1 ), .Y(SUM1));
    DFN1E1C0 \s_axis_din_tdata_reg[11]  (.D(
        \s_axis_din_tdata_reg_4[11] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[11]_net_1 ));
    AOI1 m_axis_tvalid_reg_RNIH1AP2_0 (.A(uart_0_s_axis_tready), .B(
        UART_AD7606_0_m_axis_tvalid), .C(N_11), .Y(N_13_0));
    NOR2B \PC_data_reg_RNO[0]  (.A(uart_0_m_axis_tdata[0]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[0] ));
    NOR2B \PC_data_reg_RNO[12]  (.A(\PC_data_reg[4]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[12] ));
    DFN1C0 \AD_data_count[0]  (.D(\AD_data_count_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\AD_data_count[0]_net_1 ));
    XOR2 un1_data_count_4_I_7 (.A(\data_count[1]_net_1 ), .B(N_13), .Y(
        \DWACT_ADD_CI_0_partial_sum[1] ));
    DFN1P0 RE_reg (.D(RE_reg8), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(RE_c)
        );
    DFN1C0 \AD_data_count[1]  (.D(\AD_data_count_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\AD_data_count[1]_net_1 ));
    MX2 \AD_data_count_RNO[3]  (.A(I_9), .B(AD_data_count12), .S(
        WE_reg_2), .Y(\AD_data_count_3[3] ));
    MX2 \s_axis_din_tdata_reg_RNO[15]  (.A(
        \s_axis_din_tdata_reg[7]_net_1 ), .B(sp_fifo_0_dout[15]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[15] ));
    XOR2 un1_data_count_4_I_8 (.A(\data_count[0]_net_1 ), .B(N_13), .Y(
        \DWACT_ADD_CI_0_partial_sum_0[0] ));
    NOR2B \data_count_RNO_1[0]  (.A(\FIFO_count[1]_net_1 ), .B(
        un1_data_count_2), .Y(N_4_0));
    AOI1B m_axis_tvalid_reg_RNO_0 (.A(uart_0_s_axis_tready), .B(
        UART_AD7606_0_m_axis_tvalid), .C(N_11), .Y(
        un1_m_axis_tvalid_reg10_1));
    NOR3C \AD_data_count_RNO_0[3]  (.A(AD_data_count12_11), .B(
        AD_data_count12_10), .C(AD_data_count12_12), .Y(
        AD_data_count12));
    DFN1E0C0 \PC_data_reg[2]  (.D(\PC_data_reg_4[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[2]_net_1 ));
    DFN1E1C0 \s_axis_din_tdata_reg[9]  (.D(\s_axis_din_tdata_reg_4[9] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[9]_net_1 ));
    NOR2A \AD_data_count_RNO[2]  (.A(I_7), .B(WE_reg_2), .Y(
        \AD_data_count_3[2] ));
    OR3A RE_reg_RNO (.A(un1_data_count_2_0), .B(empty_c), .C(
        uart_0_tx_busy), .Y(RE_reg8));
    DFN1E0C0 \PC_data_reg[4]  (.D(\PC_data_reg_4[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[4]_net_1 ));
    NOR2B \s_axis_din_tdata_reg_RNO[3]  (.A(sp_fifo_0_dout[3]), .B(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[3] ));
    AOI1 m_axis_tvalid_reg_RNO (.A(uart_0_s_axis_tready), .B(
        UART_AD7606_0_m_axis_tvalid), .C(un1_data_count_2_0), .Y(
        m_axis_tvalid_reg12));
    DFN1E1C0 \s_axis_din_tdata_reg[7]  (.D(\s_axis_din_tdata_reg_4[7] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[7]_net_1 ));
    OR2 un2_AD_data_count_I_6 (.A(\AD_data_count[1]_net_1 ), .B(
        \AD_data_count[0]_net_1 ), .Y(N_3));
    NOR2A \m_axis_tdata_reg_RNO[1]  (.A(
        \s_axis_din_tdata_reg[9]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[1] ));
    DFN1E0C0 \PC_data_reg[11]  (.D(\PC_data_reg_4[11] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[11]_net_1 ));
    DFN1C0 \data_count[1]  (.D(I_10), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\data_count[1]_net_1 ));
    MX2 \s_axis_din_tdata_reg_RNO[8]  (.A(
        \s_axis_din_tdata_reg[0]_net_1 ), .B(sp_fifo_0_dout[8]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[8] ));
    DFN1E1C0 \s_axis_din_tdata_reg[6]  (.D(\s_axis_din_tdata_reg_4[6] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[6]_net_1 ));
    NOR2B \AD_data_count_RNIUHD41[1]  (.A(WE_reg_2_1), .B(WE_reg_2_0), 
        .Y(WE_reg_2));
    DFN1E1C0 \s_axis_din_tdata_reg[15]  (.D(
        \s_axis_din_tdata_reg_4[15] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[15]_net_1 ));
    MX2 \s_axis_din_tdata_reg_RNO[14]  (.A(
        \s_axis_din_tdata_reg[6]_net_1 ), .B(sp_fifo_0_dout[14]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[14] ));
    DFN1E0C0 \PC_data_reg[10]  (.D(\PC_data_reg_4[10] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[10]_net_1 ));
    AOI1B \data_count_RNO[0]  (.A(m5_0), .B(N_4_0), .C(
        \DWACT_ADD_CI_0_partial_sum_0[0] ), .Y(\data_count_3[0] ));
    NOR2B \AD_data_count_RNO_6[3]  (.A(\PC_data_reg[11]_net_1 ), .B(
        \PC_data_reg[12]_net_1 ), .Y(AD_data_count12_1));
    NOR2B \AD_data_count_RNO_5[3]  (.A(\PC_data_reg[4]_net_1 ), .B(
        \PC_data_reg[5]_net_1 ), .Y(AD_data_count12_5));
    DFN1E0C0 \PC_data_reg[14]  (.D(\PC_data_reg_4[14] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[14]_net_1 ));
    NOR2B \PC_data_reg_RNO[8]  (.A(\PC_data_reg[0]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[8] ));
    DFN1E0C0 \PC_data_reg[15]  (.D(\PC_data_reg_4[15] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[15]_net_1 ));
    DFN1E0C0 \PC_data_reg[8]  (.D(\PC_data_reg_4[8] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[8]_net_1 ));
    AND2 un1_data_count_4_I_1 (.A(\data_count[0]_net_1 ), .B(N_13), .Y(
        \DWACT_ADD_CI_0_TMP_0[0] ));
    NOR2B \PC_data_reg_RNO[11]  (.A(\PC_data_reg[3]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[11] ));
    DFN1E0C0 m_axis_tvalid_reg (.D(m_axis_tvalid_reg12), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_m_axis_tvalid_reg10_1), .Q(
        UART_AD7606_0_m_axis_tvalid));
    DFN1E1C0 \m_axis_tdata_reg[2]  (.D(\m_axis_tdata_reg_3[2] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[2]));
    DFN1E1C0 \s_axis_din_tdata_reg[8]  (.D(\s_axis_din_tdata_reg_4[8] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[8]_net_1 ));
    MX2 \s_axis_din_tdata_reg_RNO[13]  (.A(
        \s_axis_din_tdata_reg[5]_net_1 ), .B(sp_fifo_0_dout[13]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[13] ));
    DFN1E0C0 \PC_data_reg[7]  (.D(\PC_data_reg_4[7] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[7]_net_1 ));
    NOR2A \m_axis_tdata_reg_RNO[3]  (.A(
        \s_axis_din_tdata_reg[11]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[3] ));
    DFN1E0C0 \PC_data_reg[9]  (.D(\PC_data_reg_4[9] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[9]_net_1 ));
    AND2 un1_PC_data_count_1_I_1 (.A(\PC_data_count[0]_net_1 ), .B(
        uart_0_m_axis_tvalid), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    NOR2 \data_count_RNILKD7_0[1]  (.A(\data_count[0]_net_1 ), .B(
        \data_count[1]_net_1 ), .Y(un1_data_count_2));
    DFN1E1C0 \m_axis_tdata_reg[6]  (.D(\m_axis_tdata_reg_3[6] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[6]));
    OR2A \PC_data_count_RNIPTB9[1]  (.A(\PC_data_count[1]_net_1 ), .B(
        \PC_data_count[0]_net_1 ), .Y(s_axis_tready_reg8));
    XNOR2 un2_AD_data_count_I_5 (.A(\AD_data_count[0]_net_1 ), .B(
        \AD_data_count[1]_net_1 ), .Y(I_5));
    DFN1E1C0 \s_axis_din_tdata_reg[14]  (.D(
        \s_axis_din_tdata_reg_4[14] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[14]_net_1 ));
    NOR2A \m_axis_tdata_reg_RNO[0]  (.A(
        \s_axis_din_tdata_reg[8]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[0] ));
    DFN1E1C0 \s_axis_din_tdata_reg[13]  (.D(
        \s_axis_din_tdata_reg_4[13] ), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_13_0), .Q(\s_axis_din_tdata_reg[13]_net_1 ));
    DFN1C0 \data_count[0]  (.D(\data_count_3[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\data_count[0]_net_1 ));
    NOR3C \AD_data_count_RNO_2[3]  (.A(\PC_data_reg[3]_net_1 ), .B(
        \PC_data_reg[1]_net_1 ), .C(AD_data_count12_5), .Y(
        AD_data_count12_10));
    NOR2B \s_axis_din_tdata_reg_RNO[6]  (.A(sp_fifo_0_dout[6]), .B(
        un1_data_count_2), .Y(\s_axis_din_tdata_reg_4[6] ));
    NOR2 \AD_data_count_RNO_9[3]  (.A(\PC_data_reg[14]_net_1 ), .B(
        \PC_data_reg[8]_net_1 ), .Y(AD_data_count12_3));
    NOR2A \AD_data_count_RNO_7[3]  (.A(\PC_data_reg[9]_net_1 ), .B(
        \PC_data_reg[15]_net_1 ), .Y(AD_data_count12_0));
    NOR3B \AD_data_count_RNO_1[3]  (.A(\PC_data_reg[7]_net_1 ), .B(
        AD_data_count12_7), .C(\PC_data_reg[0]_net_1 ), .Y(
        AD_data_count12_11));
    NOR2B \s_axis_din_tdata_reg_RNO[4]  (.A(sp_fifo_0_dout[4]), .B(
        un1_data_count_2), .Y(\s_axis_din_tdata_reg_4[4] ));
    MX2 \s_axis_din_tdata_reg_RNO[11]  (.A(
        \s_axis_din_tdata_reg[3]_net_1 ), .B(sp_fifo_0_dout[11]), .S(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[11] ));
    NOR2B \PC_data_reg_RNO[4]  (.A(uart_0_m_axis_tdata[4]), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[4] ));
    DFN1E1C0 \m_axis_tdata_reg[7]  (.D(\m_axis_tdata_reg_3[7] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[7]));
    MX2B \FIFO_count_RNI5KCV[1]  (.A(uart_0_tx_busy), .B(
        \FIFO_count[1]_net_1 ), .S(un1_data_count_2_0), .Y(N_10));
    DFN1E0C0 \PC_data_reg[5]  (.D(\PC_data_reg_4[5] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[5]_net_1 ));
    AOI1 m_axis_tvalid_reg_RNIH1AP2 (.A(uart_0_s_axis_tready), .B(
        UART_AD7606_0_m_axis_tvalid), .C(N_11), .Y(N_13));
    NOR2B \PC_data_reg_RNO[10]  (.A(\PC_data_reg[2]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[10] ));
    DFN1C0 \AD_data_count[3]  (.D(\AD_data_count_3[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\AD_data_count[3]_net_1 ));
    NOR2B \s_axis_din_tdata_reg_RNO[1]  (.A(sp_fifo_0_dout[1]), .B(
        un1_data_count_2_0), .Y(\s_axis_din_tdata_reg_4[1] ));
    DFN1E1C0 \m_axis_tdata_reg[5]  (.D(\m_axis_tdata_reg_3[5] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_13_0), .Q(
        UART_AD7606_0_m_axis_tdata[5]));
    NOR2B \PC_data_reg_RNO[9]  (.A(\PC_data_reg[1]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[9] ));
    DFN1E0C0 \PC_data_reg[3]  (.D(\PC_data_reg_4[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(PC_data_reg_1_sqmuxa), .Q(
        \PC_data_reg[3]_net_1 ));
    NOR2A \m_axis_tdata_reg_RNO[4]  (.A(
        \s_axis_din_tdata_reg[12]_net_1 ), .B(un1_data_count_2), .Y(
        \m_axis_tdata_reg_3[4] ));
    NOR2B \PC_data_reg_RNO[15]  (.A(\PC_data_reg[7]_net_1 ), .B(
        s_axis_tready_reg8), .Y(\PC_data_reg_4[15] ));
    DFN1E1C0 \s_axis_din_tdata_reg[0]  (.D(\s_axis_din_tdata_reg_4[0] )
        , .CLK(PCLK_c), .CLR(PRESETN_c), .E(N_13), .Q(
        \s_axis_din_tdata_reg[0]_net_1 ));
    
endmodule


module uart_tx_8s(
       UART_AD7606_0_m_axis_tdata,
       uart_0_tx_busy,
       PCLK_c,
       txd_c,
       uart_0_s_axis_tready,
       UART_AD7606_0_m_axis_tvalid,
       PRESETN_c
    );
input  [7:0] UART_AD7606_0_m_axis_tdata;
output uart_0_tx_busy;
input  PCLK_c;
output txd_c;
output uart_0_s_axis_tready;
input  UART_AD7606_0_m_axis_tvalid;
input  PRESETN_c;

    wire \un1_prescale_b_I_0[1] , \bit_cnt_RNIFO9D2[0]_net_1 , N_18, 
        \prescale_reg[1]_net_1 , \prescale_reg[0]_net_1 , N_16, 
        \prescale_reg[3]_net_1 , \DWACT_FDEC_E[0] , N_11, 
        \prescale_reg[8]_net_1 , \DWACT_FDEC_E[4] , N_8, 
        \DWACT_FDEC_E[7] , \DWACT_FDEC_E[6] , 
        data_reg_0_sqmuxa_1_0_net_1, data_reg_0_sqmuxa_0, bit_cnt20, 
        s_axis_tready_reg11lt18_16, s_axis_tready_reg11lt18_10, 
        s_axis_tready_reg11lt18_9, s_axis_tready_reg11lt18_13, 
        s_axis_tready_reg11lt18_15, s_axis_tready_reg11lt18_4, 
        s_axis_tready_reg11lt18_3, s_axis_tready_reg11lt18_12, 
        \prescale_reg[12]_net_1 , \prescale_reg[9]_net_1 , 
        s_axis_tready_reg11lt18_8, \prescale_reg[4]_net_1 , 
        s_axis_tready_reg11lt18_6, \prescale_reg[17]_net_1 , 
        \prescale_reg[14]_net_1 , s_axis_tready_reg11lt18_2, 
        \prescale_reg[11]_net_1 , \prescale_reg[18]_net_1 , 
        \prescale_reg[15]_net_1 , \prescale_reg[6]_net_1 , 
        \prescale_reg[13]_net_1 , \prescale_reg[16]_net_1 , 
        \prescale_reg[7]_net_1 , \prescale_reg[10]_net_1 , 
        \prescale_reg[2]_net_1 , \prescale_reg[5]_net_1 , 
        \un1_prescale_0_0[0] , un1_bit_cnt_4_1, \bit_cnt[2]_net_1 , 
        \bit_cnt[1]_net_1 , un1_bit_cnt_4_0, \bit_cnt[3]_net_1 , 
        \bit_cnt[0]_net_1 , \un1_prescale_0[0] , un1_bit_cnt_4, 
        s_axis_tready_reg11, data_reg_0_sqmuxa, \data_reg_7[1] , 
        \data_reg[2]_net_1 , \data_reg_7[2] , \data_reg[3]_net_1 , 
        \data_reg_7[3] , \data_reg[4]_net_1 , \data_reg_7[4] , 
        \data_reg[5]_net_1 , \data_reg_7[5] , \data_reg[6]_net_1 , 
        \data_reg_7[6] , \data_reg[7]_net_1 , \data_reg_7[7] , 
        \data_reg[8]_net_1 , N_227_mux, un1_s_axis_tready_reg11_1_mux, 
        \un1_prescale_1[14] , \un1_prescale_10[14] , 
        \un1_prescale_11[14] , \un1_prescale_1[13] , 
        \un1_prescale_10[13] , \un1_prescale_11[13] , 
        \un1_prescale_1[11] , \un1_prescale_10[11] , 
        \un1_prescale_11[11] , txd_reg_5, \data_reg[0]_net_1 , 
        s_axis_tready_reg12, un1_s_axis_tready_reg11_2, 
        \prescale_reg_8[14] , un1_s_axis_tready_reg11_1, 
        \prescale_reg_8[13] , \prescale_reg_8[11] , 
        un1_data_reg_0_sqmuxa, \data_reg_7[0] , \data_reg[1]_net_1 , 
        \bit_cnt_6[2] , I_18, \bit_cnt_6[1] , I_15, 
        \prescale_reg_8[10] , \un1_prescale_1[10] , 
        \prescale_reg_8[12] , \un1_prescale_1[12] , 
        \un1_prescale_10[10] , \un1_prescale_11[10] , 
        \un1_prescale_10[12] , \un1_prescale_11[12] , 
        \un1_prescale_1[18] , \un1_prescale_10[18] , 
        \un1_prescale_11[18] , \un1_prescale_1[17] , 
        \un1_prescale_10[17] , \un1_prescale_11[17] , 
        \un1_prescale_1[16] , \un1_prescale_10[16] , 
        \un1_prescale_11[16] , \un1_prescale_1[15] , 
        \un1_prescale_10[15] , \un1_prescale_11[15] , 
        \un1_prescale_1[9] , \un1_prescale_10[9] , 
        \un1_prescale_11[9] , \un1_prescale_1[8] , 
        \un1_prescale_10[8] , \un1_prescale_11[8] , 
        \un1_prescale_1[7] , \un1_prescale_10[7] , 
        \un1_prescale_11[7] , \un1_prescale_1[6] , 
        \un1_prescale_10[6] , \un1_prescale_11[6] , 
        \un1_prescale_1[5] , \un1_prescale_10[5] , 
        \un1_prescale_11[5] , \un1_prescale_1[4] , 
        \un1_prescale_10[4] , \un1_prescale_11[4] , 
        \un1_prescale_1[3] , \un1_prescale_10[3] , 
        \un1_prescale_11[3] , \un1_prescale_1[2] , 
        \un1_prescale_10[2] , \un1_prescale_11[2] , 
        \un1_prescale_1[1] , \un1_prescale_10[1] , 
        \un1_prescale_11[1] , \un1_prescale_1[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , \un1_prescale_0[18] , 
        \un1_prescale_0[17] , \un1_prescale_0[16] , 
        \un1_prescale_0[15] , \un1_prescale_0[14] , 
        \un1_prescale_0[13] , \un1_prescale_0[12] , 
        \un1_prescale_0[11] , \un1_prescale_0[10] , 
        \un1_prescale_0[9] , \un1_prescale_0[8] , \un1_prescale_0[7] , 
        \un1_prescale_0[6] , \un1_prescale_0[5] , \un1_prescale_0[4] , 
        \un1_prescale_0[3] , \un1_prescale_0[2] , \un1_prescale_0[1] , 
        \prescale_reg_8[18] , \prescale_reg_8[17] , 
        \prescale_reg_8[16] , \prescale_reg_8[15] , 
        \prescale_reg_8[9] , \prescale_reg_8[8] , \prescale_reg_8[7] , 
        \prescale_reg_8[6] , \prescale_reg_8[5] , \prescale_reg_8[4] , 
        \prescale_reg_8[3] , \prescale_reg_8[2] , \prescale_reg_8[1] , 
        \prescale_reg_8[0] , \DWACT_ADD_CI_0_partial_sum_0[0] , I_16, 
        \DWACT_ADD_CI_0_g_array_12[0] , 
        \DWACT_ADD_CI_0_pog_array_0_1[0] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_g_array_0_2[0] , 
        \DWACT_ADD_CI_0_pog_array_0[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \DWACT_ADD_CI_0_g_array_0_1[0] , 
        \DWACT_ADD_CI_0_partial_sum[2] , 
        \DWACT_ADD_CI_0_partial_sum[3] , 
        \DWACT_ADD_CI_0_partial_sum[1] , 
        \DWACT_ADD_CI_0_pog_array_1_6[0] , 
        \DWACT_ADD_CI_0_pog_array_0_13[0] , 
        \DWACT_ADD_CI_0_pog_array_0_14[0] , 
        \DWACT_ADD_CI_0_pog_array_1_7[0] , 
        \DWACT_ADD_CI_0_pog_array_0_15[0] , 
        \DWACT_ADD_CI_0_pog_array_0_16[0] , 
        \DWACT_ADD_CI_0_pog_array_1_5[0] , 
        \DWACT_ADD_CI_0_pog_array_0_11[0] , 
        \DWACT_ADD_CI_0_pog_array_0_12[0] , 
        \DWACT_ADD_CI_0_pog_array_1_2[0] , 
        \DWACT_ADD_CI_0_pog_array_0_5[0] , 
        \DWACT_ADD_CI_0_pog_array_0_6[0] , 
        \DWACT_ADD_CI_0_pog_array_3[0] , 
        \DWACT_ADD_CI_0_pog_array_2_1[0] , 
        \DWACT_ADD_CI_0_pog_array_2_2[0] , 
        \DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0_4[0] , 
        \DWACT_ADD_CI_0_pog_array_1_4[0] , 
        \DWACT_ADD_CI_0_pog_array_0_9[0] , 
        \DWACT_ADD_CI_0_pog_array_0_10[0] , 
        \DWACT_ADD_CI_0_pog_array_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_1_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_2[0] , 
        \DWACT_ADD_CI_0_pog_array_1_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0_7[0] , 
        \DWACT_ADD_CI_0_pog_array_0_8[0] , 
        \DWACT_ADD_CI_0_pog_array_2[0] , 
        \DWACT_ADD_CI_0_g_array_12_1[0] , 
        \DWACT_ADD_CI_0_g_array_2[0] , \DWACT_ADD_CI_0_g_array_0_4[0] , 
        \DWACT_ADD_CI_0_g_array_2_3[0] , 
        \DWACT_ADD_CI_0_g_array_1_6[0] , 
        \DWACT_ADD_CI_0_g_array_1_7[0] , 
        \DWACT_ADD_CI_0_g_array_1_5[0] , 
        \DWACT_ADD_CI_0_g_array_0_10[0] , 
        \DWACT_ADD_CI_0_g_array_0_11[0] , 
        \DWACT_ADD_CI_0_g_array_1_2[0] , 
        \DWACT_ADD_CI_0_g_array_0_5[0] , 
        \DWACT_ADD_CI_0_g_array_11_1[0] , 
        \DWACT_ADD_CI_0_g_array_3[0] , \DWACT_ADD_CI_0_g_array_1_4[0] , 
        \DWACT_ADD_CI_0_g_array_2_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_12[0] , 
        \DWACT_ADD_CI_0_g_array_0_13[0] , 
        \DWACT_ADD_CI_0_g_array_1_3[0] , 
        \DWACT_ADD_CI_0_g_array_0_6[0] , 
        \DWACT_ADD_CI_0_g_array_0_7[0] , 
        \DWACT_ADD_CI_0_g_array_11_3[0] , 
        \DWACT_ADD_CI_0_g_array_4[0] , \DWACT_ADD_CI_0_g_array_1_8[0] , 
        \DWACT_ADD_CI_0_g_array_12_6[0] , 
        \DWACT_ADD_CI_0_g_array_11_2[0] , 
        \DWACT_ADD_CI_0_g_array_0_14[0] , 
        \DWACT_ADD_CI_0_g_array_0_15[0] , 
        \DWACT_ADD_CI_0_g_array_2_2[0] , 
        \DWACT_ADD_CI_0_g_array_12_7[0] , 
        \DWACT_ADD_CI_0_g_array_0_16[0] , 
        \DWACT_ADD_CI_0_g_array_10[0] , 
        \DWACT_ADD_CI_0_g_array_0_17[0] , 
        \DWACT_ADD_CI_0_g_array_12_2[0] , 
        \DWACT_ADD_CI_0_g_array_11[0] , 
        \DWACT_ADD_CI_0_g_array_12_3[0] , 
        \DWACT_ADD_CI_0_g_array_0_8[0] , 
        \DWACT_ADD_CI_0_g_array_3_1[0] , 
        \DWACT_ADD_CI_0_g_array_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_12_4[0] , 
        \DWACT_ADD_CI_0_g_array_12_5[0] , 
        \DWACT_ADD_CI_0_g_array_12_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_9[0] , 
        \DWACT_ADD_CI_0_g_array_0_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_1_0[0] , 
        \DWACT_ADD_CI_0_partial_sum[18] , 
        \DWACT_ADD_CI_0_partial_sum[17] , 
        \DWACT_ADD_CI_0_partial_sum[4] , 
        \DWACT_ADD_CI_0_partial_sum[11] , 
        \DWACT_ADD_CI_0_partial_sum_0[3] , 
        \DWACT_ADD_CI_0_partial_sum[10] , 
        \DWACT_ADD_CI_0_partial_sum[7] , 
        \DWACT_ADD_CI_0_partial_sum[16] , 
        \DWACT_ADD_CI_0_partial_sum[8] , 
        \DWACT_ADD_CI_0_partial_sum[9] , 
        \DWACT_ADD_CI_0_partial_sum[13] , 
        \DWACT_ADD_CI_0_partial_sum_0[2] , 
        \DWACT_ADD_CI_0_partial_sum[15] , 
        \DWACT_ADD_CI_0_partial_sum[5] , 
        \DWACT_ADD_CI_0_partial_sum[14] , 
        \DWACT_ADD_CI_0_partial_sum[6] , 
        \DWACT_ADD_CI_0_partial_sum[12] , 
        \DWACT_ADD_CI_0_partial_sum_0[1] , N_2, \DWACT_FDEC_E[28] , 
        \DWACT_FDEC_E[10] , \DWACT_FDEC_E[12] , \DWACT_FDEC_E[2] , 
        \DWACT_FDEC_E[5] , N_3, \DWACT_FDEC_E[11] , N_4, 
        \DWACT_FDEC_E[9] , N_5, N_6, \DWACT_FDEC_E[8] , N_7, N_9, N_10, 
        \DWACT_FDEC_E[3] , N_12, N_13, N_14, \DWACT_FDEC_E[1] , N_15, 
        N_17, GND, VCC;
    
    XOR2 un1_prescale_I_48 (.A(\un1_prescale_0[16] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[16] ));
    AOI1B \bit_cnt_RNO[1]  (.A(s_axis_tready_reg12), .B(
        UART_AD7606_0_m_axis_tvalid), .C(I_15), .Y(\bit_cnt_6[1] ));
    OR3 un1_prescale_0_I_33 (.A(\prescale_reg[9]_net_1 ), .B(
        \prescale_reg[10]_net_1 ), .C(\prescale_reg[11]_net_1 ), .Y(
        \DWACT_FDEC_E[7] ));
    XOR2 un1_prescale_I_68 (.A(\DWACT_ADD_CI_0_partial_sum[13] ), .B(
        \DWACT_ADD_CI_0_g_array_12_5[0] ), .Y(\un1_prescale_10[13] ));
    OR2 un1_prescale_0_I_6 (.A(\prescale_reg[1]_net_1 ), .B(
        \prescale_reg[0]_net_1 ), .Y(N_18));
    AND2 un1_prescale_I_13 (.A(\un1_prescale_0[7] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_7[0] ));
    AO1 un1_prescale_I_84 (.A(\DWACT_ADD_CI_0_pog_array_0_1_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_2_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_0[0] ));
    OR3 un1_prescale_0_I_27 (.A(\DWACT_FDEC_E[4] ), .B(
        \prescale_reg[8]_net_1 ), .C(\prescale_reg[9]_net_1 ), .Y(N_10)
        );
    MX2A txd_reg_RNO (.A(un1_bit_cnt_4), .B(\data_reg[0]_net_1 ), .S(
        bit_cnt20), .Y(txd_reg_5));
    OR2 un1_prescale_0_I_44 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[9] ), .Y(\DWACT_FDEC_E[10] ));
    OR3 un1_prescale_0_I_22 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(N_12));
    OR2 \bit_cnt_RNILBPI6[0]  (.A(s_axis_tready_reg11), .B(
        un1_bit_cnt_4), .Y(un1_s_axis_tready_reg11_1));
    AO1 un1_prescale_I_85 (.A(\DWACT_ADD_CI_0_pog_array_0_11[0] ), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_12[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_5[0] ));
    AND2 un1_prescale_I_11 (.A(\un1_prescale_0[4] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_4[0] ));
    XOR2 un1_prescale_I_23 (.A(\un1_prescale_0[11] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_10[0] ));
    NOR2A \prescale_reg_RNIJJIO2[5]  (.A(\prescale_reg[5]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[5] ));
    DFN1C0 \prescale_reg[7]  (.D(\prescale_reg_8[7] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[7]_net_1 ));
    XNOR2 un1_bit_cnt_5_I_14 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[3]_net_1 ), .Y(\DWACT_ADD_CI_0_partial_sum[3] ));
    AO1 un1_prescale_I_101 (.A(\DWACT_ADD_CI_0_pog_array_0_12[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_12[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_13[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_6[0] ));
    DFN1E1 \data_reg[0]  (.D(\data_reg_7[0] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[0]_net_1 ));
    AND2 un1_prescale_I_21 (.A(\un1_prescale_0[3] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_3[0] ));
    AO1 un1_prescale_I_87 (.A(\DWACT_ADD_CI_0_pog_array_1_2[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_3[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_1[0] ));
    AO1 un1_prescale_I_106 (.A(\DWACT_ADD_CI_0_pog_array_1_6[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_6[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_7[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_3[0] ));
    XOR2 un1_bit_cnt_5_I_15 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_15));
    XNOR2 un1_prescale_0_I_23 (.A(N_12), .B(\prescale_reg[8]_net_1 ), 
        .Y(\un1_prescale_11[8] ));
    OA1 \prescale_reg_RNO[14]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[14] ), .Y(
        \prescale_reg_8[14] ));
    DFN1C0 \prescale_reg[2]  (.D(\prescale_reg_8[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[2]_net_1 ));
    MX2 \prescale_reg_RNO_0[14]  (.A(\un1_prescale_10[14] ), .B(
        \un1_prescale_11[14] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[14] ));
    OR2 \prescale_reg_RNI168H2[12]  (.A(\un1_prescale_b_I_0[1] ), .B(
        \prescale_reg[12]_net_1 ), .Y(\un1_prescale_0[12] ));
    AO1 un1_prescale_I_105 (.A(\DWACT_ADD_CI_0_pog_array_0_10[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_10[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_11[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_5[0] ));
    XOR2 un1_prescale_I_50 (.A(\un1_prescale_0[11] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[11] ));
    AO1 un1_prescale_I_94 (.A(\DWACT_ADD_CI_0_pog_array_1_5[0] ), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_6[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_2[0] ));
    OA1 \prescale_reg_RNO[9]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[9] ), .Y(
        \prescale_reg_8[9] ));
    AO1 un1_prescale_I_102 (.A(\DWACT_ADD_CI_0_pog_array_2[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3[0] ));
    OR2 un1_prescale_0_I_34 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[6] ), .Y(N_8));
    AO1 un1_prescale_I_95 (.A(\DWACT_ADD_CI_0_pog_array_0_15[0] ), .B(
        \DWACT_ADD_CI_0_g_array_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_16[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_7[0] ));
    DFN1C0 \prescale_reg[5]  (.D(\prescale_reg_8[5] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[5]_net_1 ));
    XOR2 un1_prescale_I_70 (.A(\DWACT_ADD_CI_0_partial_sum[8] ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .Y(\un1_prescale_10[8] ));
    OR2 un1_prescale_0_I_11 (.A(\prescale_reg[3]_net_1 ), .B(
        \DWACT_FDEC_E[0] ), .Y(N_16));
    XNOR2 un1_bit_cnt_5_I_8 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[2]_net_1 ), .Y(\DWACT_ADD_CI_0_pog_array_0_1[0] ));
    DFN1C0 \bit_cnt[3]  (.D(I_16), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        \bit_cnt[3]_net_1 ));
    AO1D \prescale_reg_RNO[6]  (.A(un1_s_axis_tready_reg11_1), .B(
        bit_cnt20), .C(\un1_prescale_1[6] ), .Y(\prescale_reg_8[6] ));
    NOR2A \prescale_reg_RNIGP3Q[0]  (.A(\prescale_reg[0]_net_1 ), .B(
        UART_AD7606_0_m_axis_tvalid), .Y(\un1_prescale_0_0[0] ));
    MX2 \data_reg_RNO[4]  (.A(\data_reg[5]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[4]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[4] ));
    DFN1C0 \prescale_reg[16]  (.D(\prescale_reg_8[16] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[16]_net_1 ));
    AND2 un1_prescale_I_111 (.A(\DWACT_ADD_CI_0_pog_array_1_5[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_6[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_2[0] ));
    AO1 un1_prescale_I_97 (.A(\DWACT_ADD_CI_0_pog_array_0_14[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_14[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_15[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_7[0] ));
    AO1 un1_prescale_I_86 (.A(\DWACT_ADD_CI_0_pog_array_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .C(
        \DWACT_ADD_CI_0_g_array_3_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_4[0] ));
    AND2 un1_prescale_I_116 (.A(\DWACT_ADD_CI_0_pog_array_2_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_2_2[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_3[0] ));
    XOR2 un1_prescale_I_40 (.A(\un1_prescale_0[6] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_5[0] )
        );
    NOR2A \bit_cnt_RNIKSN86[3]  (.A(data_reg_0_sqmuxa_0), .B(
        s_axis_tready_reg11), .Y(data_reg_0_sqmuxa));
    AO1 un1_prescale_I_89 (.A(\DWACT_ADD_CI_0_pog_array_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2[0] ));
    XOR2 un1_prescale_I_53 (.A(\un1_prescale_0[10] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[10] ));
    XOR2 un1_prescale_I_60 (.A(\DWACT_ADD_CI_0_partial_sum_0[1] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(\un1_prescale_10[1] ));
    DFN1C0 \prescale_reg[3]  (.D(\prescale_reg_8[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[3]_net_1 ));
    AND2 un1_prescale_I_120 (.A(\DWACT_ADD_CI_0_pog_array_0_13[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_0_14[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_6[0] ));
    NOR2A \prescale_reg_RNI278H2[13]  (.A(\prescale_reg[13]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[13] ));
    MX2 \data_reg_RNO[2]  (.A(\data_reg[3]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[2]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[2] ));
    AND2 un1_prescale_I_115 (.A(\DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_4[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ));
    XOR2 un1_prescale_I_51 (.A(\un1_prescale_0[3] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum_0[3] )
        );
    AO1D \prescale_reg_RNO[10]  (.A(un1_s_axis_tready_reg11_1), .B(
        bit_cnt20), .C(\un1_prescale_1[10] ), .Y(\prescale_reg_8[10] ));
    XOR2 un1_prescale_I_73 (.A(\DWACT_ADD_CI_0_partial_sum[10] ), .B(
        \DWACT_ADD_CI_0_g_array_11_1[0] ), .Y(\un1_prescale_10[10] ));
    XNOR2 un1_prescale_0_I_9 (.A(N_17), .B(\prescale_reg[3]_net_1 ), 
        .Y(\un1_prescale_11[3] ));
    OR3 un1_prescale_0_I_24 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(
        \DWACT_FDEC_E[4] ));
    AND2 un1_prescale_I_112 (.A(\DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_1[0] ));
    OA1 \prescale_reg_RNO[2]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[2] ), .Y(
        \prescale_reg_8[2] ));
    XOR2 un1_prescale_I_71 (.A(\DWACT_ADD_CI_0_partial_sum[16] ), .B(
        \DWACT_ADD_CI_0_g_array_4[0] ), .Y(\un1_prescale_10[16] ));
    XOR2 un1_prescale_I_30 (.A(\un1_prescale_0[15] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_14[0] ));
    XNOR2 un1_prescale_0_I_5 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .Y(\un1_prescale_11[1] ));
    DFN1C0 s_axis_tready_reg (.D(N_227_mux), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(uart_0_s_axis_tready));
    AND2 un1_prescale_I_1 (.A(\un1_prescale_0[0] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    MX2 \prescale_reg_RNO_0[1]  (.A(\un1_prescale_10[1] ), .B(
        \un1_prescale_11[1] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[1] ));
    XOR2 un1_prescale_I_43 (.A(\un1_prescale_0[9] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[9] ));
    AO1 un1_prescale_I_96 (.A(\DWACT_ADD_CI_0_pog_array_1_4[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_2[0] ));
    XOR2 un1_prescale_I_63 (.A(\DWACT_ADD_CI_0_partial_sum[14] ), .B(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .Y(\un1_prescale_10[14] ));
    AO1D \prescale_reg_RNO[3]  (.A(un1_s_axis_tready_reg11_1), .B(
        bit_cnt20), .C(\un1_prescale_1[3] ), .Y(\prescale_reg_8[3] ));
    OR3 \prescale_reg_RNIEK742[10]  (.A(s_axis_tready_reg11lt18_4), .B(
        s_axis_tready_reg11lt18_3), .C(s_axis_tready_reg11lt18_12), .Y(
        s_axis_tready_reg11lt18_15));
    DFN1C0 \prescale_reg[12]  (.D(\prescale_reg_8[12] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[12]_net_1 ));
    XOR2 un1_prescale_I_41 (.A(\un1_prescale_0[1] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum_0[1] )
        );
    AO1 un1_prescale_I_99 (.A(\DWACT_ADD_CI_0_pog_array_1_7[0] ), .B(
        \DWACT_ADD_CI_0_g_array_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_8[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_3[0] ));
    NOR2A \prescale_reg_RNILLIO2[7]  (.A(\prescale_reg[7]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[7] ));
    NOR2B \bit_cnt_RNIUKEU1[0]  (.A(un1_bit_cnt_4_1), .B(
        un1_bit_cnt_4_0), .Y(un1_bit_cnt_4));
    XOR2 un1_prescale_I_61 (.A(\DWACT_ADD_CI_0_partial_sum[12] ), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .Y(\un1_prescale_10[12] ));
    AO1 \bit_cnt_RNIFGUFD[3]  (.A(data_reg_0_sqmuxa_1_0_net_1), .B(
        s_axis_tready_reg12), .C(data_reg_0_sqmuxa), .Y(
        un1_data_reg_0_sqmuxa));
    GND GND_i (.Y(GND));
    XOR2 un1_prescale_I_33 (.A(\un1_prescale_0[16] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_15[0] ));
    AO1 un1_prescale_I_104 (.A(\DWACT_ADD_CI_0_pog_array_0_4[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_2[0] ));
    DFN1E1 \data_reg[4]  (.D(\data_reg_7[4] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[4]_net_1 ));
    NOR2A \prescale_reg_RNI6B8H2[17]  (.A(\prescale_reg[17]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[17] ));
    DFN1C0 \prescale_reg[4]  (.D(\prescale_reg_8[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[4]_net_1 ));
    XOR2 un1_prescale_I_31 (.A(\un1_prescale_0[17] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_16[0] ));
    OR2A \prescale_reg_RNI6FK17[10]  (.A(\un1_prescale_b_I_0[1] ), .B(
        s_axis_tready_reg11), .Y(un1_s_axis_tready_reg11_2));
    AO1D \prescale_reg_RNO[12]  (.A(un1_s_axis_tready_reg11_1), .B(
        bit_cnt20), .C(\un1_prescale_1[12] ), .Y(\prescale_reg_8[12] ));
    OR3 un1_prescale_0_I_10 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .C(\prescale_reg[2]_net_1 ), .Y(
        \DWACT_FDEC_E[0] ));
    MX2 \prescale_reg_RNO_0[2]  (.A(\un1_prescale_10[2] ), .B(
        \un1_prescale_11[2] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[2] ));
    AO1 un1_prescale_I_82 (.A(\DWACT_ADD_CI_0_pog_array_0_8[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_8[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_9[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_4[0] ));
    XNOR2 un1_prescale_0_I_7 (.A(N_18), .B(\prescale_reg[2]_net_1 ), 
        .Y(\un1_prescale_11[2] ));
    AND2 un1_prescale_I_5 (.A(\un1_prescale_0[2] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_2_0[0] )
        );
    DFN1C0 \prescale_reg[6]  (.D(\prescale_reg_8[6] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[6]_net_1 ));
    DFN1E1 \data_reg[7]  (.D(\data_reg_7[7] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[7]_net_1 ));
    AND2 un1_prescale_I_114 (.A(\DWACT_ADD_CI_0_pog_array_0_9[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_10[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ));
    OR3 \prescale_reg_RNIGLEU[14]  (.A(\prescale_reg[17]_net_1 ), .B(
        \prescale_reg[14]_net_1 ), .C(s_axis_tready_reg11lt18_2), .Y(
        s_axis_tready_reg11lt18_10));
    OR3 un1_prescale_0_I_41 (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[13]_net_1 ), .C(\prescale_reg[14]_net_1 ), .Y(
        \DWACT_FDEC_E[9] ));
    DFN1E1 \data_reg[1]  (.D(\data_reg_7[1] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[1]_net_1 ));
    AOI1B \bit_cnt_RNO[2]  (.A(s_axis_tready_reg12), .B(
        UART_AD7606_0_m_axis_tvalid), .C(I_18), .Y(\bit_cnt_6[2] ));
    AND2 un1_prescale_I_7 (.A(\un1_prescale_0[1] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_1_0[0] )
        );
    AND2 un1_prescale_I_109 (.A(\DWACT_ADD_CI_0_pog_array_1_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2[0] ));
    MX2 \prescale_reg_RNO_0[18]  (.A(\un1_prescale_10[18] ), .B(
        \un1_prescale_11[18] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[18] ));
    OR2 un1_prescale_0_I_15 (.A(\prescale_reg[3]_net_1 ), .B(
        \prescale_reg[4]_net_1 ), .Y(\DWACT_FDEC_E[1] ));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \prescale_reg[15]  (.D(\prescale_reg_8[15] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[15]_net_1 ));
    OR2A \bit_cnt_RNIFO9D2[0]  (.A(un1_bit_cnt_4), .B(
        UART_AD7606_0_m_axis_tvalid), .Y(\bit_cnt_RNIFO9D2[0]_net_1 ));
    OA1 \prescale_reg_RNO[5]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[5] ), .Y(
        \prescale_reg_8[5] ));
    DFN1C0 \prescale_reg[9]  (.D(\prescale_reg_8[9] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[9]_net_1 ));
    NOR2A \bit_cnt_RNILBPI6_0[0]  (.A(un1_bit_cnt_4), .B(
        s_axis_tready_reg11), .Y(s_axis_tready_reg12));
    OR3 un1_prescale_0_I_51 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[28] ));
    OR3 \prescale_reg_RNIEJEU[12]  (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[9]_net_1 ), .C(s_axis_tready_reg11lt18_8), .Y(
        s_axis_tready_reg11lt18_13));
    AND2 un1_prescale_I_6 (.A(\un1_prescale_0[8] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_8[0] ));
    AO1 un1_prescale_I_92 (.A(\DWACT_ADD_CI_0_pog_array_0_5[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_6[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_2[0] ));
    AND2 un1_prescale_I_117 (.A(\DWACT_ADD_CI_0_pog_array_0_5[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_6[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_2[0] ));
    XNOR2 un1_bit_cnt_5_I_12 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[1]_net_1 ), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    OR3 \bit_cnt_RNI81RE1[3]  (.A(\bit_cnt[2]_net_1 ), .B(
        \bit_cnt[3]_net_1 ), .C(\bit_cnt[1]_net_1 ), .Y(bit_cnt20));
    AND2 un1_prescale_I_14 (.A(\un1_prescale_0[13] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_13[0] ));
    NOR2A \prescale_reg_RNINNIO2[9]  (.A(\prescale_reg[9]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[9] ));
    OR3 un1_prescale_0_I_18 (.A(\prescale_reg[3]_net_1 ), .B(
        \prescale_reg[4]_net_1 ), .C(\prescale_reg[5]_net_1 ), .Y(
        \DWACT_FDEC_E[2] ));
    OR2 \prescale_reg_RNIM87F[10]  (.A(\prescale_reg[7]_net_1 ), .B(
        \prescale_reg[10]_net_1 ), .Y(s_axis_tready_reg11lt18_3));
    AND2 un1_prescale_I_15 (.A(\un1_prescale_0[6] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_6[0] ));
    AO1 un1_prescale_I_100 (.A(\DWACT_ADD_CI_0_pog_array_0_6[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_6[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_7[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_3[0] ));
    OR3 un1_prescale_0_I_31 (.A(\DWACT_FDEC_E[6] ), .B(
        \prescale_reg[9]_net_1 ), .C(\prescale_reg[10]_net_1 ), .Y(N_9)
        );
    NOR2B \prescale_reg_RNIEEIO2[0]  (.A(\un1_prescale_0_0[0] ), .B(
        un1_bit_cnt_4), .Y(\un1_prescale_0[0] ));
    XOR2 un1_prescale_I_24 (.A(\un1_prescale_0[10] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_9[0] )
        );
    AND2 un1_prescale_I_119 (.A(\DWACT_ADD_CI_0_pog_array_0_15[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_0_16[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_7[0] ));
    AO1 un1_prescale_I_88 (.A(\DWACT_ADD_CI_0_pog_array_0_9[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_10[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_4[0] ));
    XOR2 un1_prescale_I_25 (.A(\un1_prescale_0[14] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_13[0] ));
    OR3 un1_prescale_0_I_16 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[1] ), .C(\prescale_reg[5]_net_1 ), .Y(N_14));
    AND2 un1_prescale_I_17 (.A(\un1_prescale_0[5] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_5[0] ));
    OA1 \prescale_reg_RNO[7]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[7] ), .Y(
        \prescale_reg_8[7] ));
    MX2 \data_reg_RNO[5]  (.A(\data_reg[6]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[5]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[5] ));
    NOR2B data_reg_0_sqmuxa_1_0 (.A(PRESETN_c), .B(
        UART_AD7606_0_m_axis_tvalid), .Y(data_reg_0_sqmuxa_1_0_net_1));
    AO1 un1_bit_cnt_5_I_22 (.A(\DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12[0] ));
    XOR2 un1_prescale_I_27 (.A(\un1_prescale_0[8] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_7[0] )
        );
    OA1 \prescale_reg_RNO[0]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[0] ), .Y(
        \prescale_reg_8[0] ));
    MX2 \data_reg_RNO[6]  (.A(\data_reg[7]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[6]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[6] ));
    DFN1E1 \data_reg[2]  (.D(\data_reg_7[2] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[2]_net_1 ));
    AO1D \prescale_reg_RNO[4]  (.A(un1_s_axis_tready_reg11_1), .B(
        bit_cnt20), .C(\un1_prescale_1[4] ), .Y(\prescale_reg_8[4] ));
    OR2 un1_prescale_0_I_21 (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[7]_net_1 ), .Y(\DWACT_FDEC_E[3] ));
    AND2 un1_prescale_I_110 (.A(\DWACT_ADD_CI_0_pog_array_0_7[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_8[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ));
    AO1 un1_prescale_I_98 (.A(\DWACT_ADD_CI_0_pog_array_0_13[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_14[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_6[0] ));
    MX2 \data_reg_RNO[1]  (.A(\data_reg[2]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[1]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[1] ));
    AND2 un1_prescale_I_16 (.A(\un1_prescale_0[12] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_12[0] ));
    NOR2A \prescale_reg_RNIGGIO2[2]  (.A(\prescale_reg[2]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[2] ));
    DFN1C0 \prescale_reg[11]  (.D(\prescale_reg_8[11] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[11]_net_1 ));
    DFN1C0 \prescale_reg[0]  (.D(\prescale_reg_8[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[0]_net_1 ));
    XNOR2 un1_prescale_0_I_40 (.A(N_6), .B(\prescale_reg[14]_net_1 ), 
        .Y(\un1_prescale_11[14] ));
    NOR2A \prescale_reg_RNI5A8H2[16]  (.A(\prescale_reg[16]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[16] ));
    OA1 \prescale_reg_RNO[8]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[8] ), .Y(
        \prescale_reg_8[8] ));
    AND2 un1_prescale_I_19 (.A(\un1_prescale_0[15] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_15[0] ));
    XOR2 un1_prescale_I_54 (.A(\un1_prescale_0[4] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[4] ));
    XOR2 un1_prescale_I_26 (.A(\un1_prescale_0[3] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_2[0] )
        );
    NOR2B \bit_cnt_RNIT5DK1[3]  (.A(PRESETN_c), .B(bit_cnt20), .Y(
        data_reg_0_sqmuxa_0));
    NOR2A un1_bit_cnt_5_I_1 (.A(\bit_cnt[0]_net_1 ), .B(
        un1_s_axis_tready_reg11_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    MX2B \prescale_reg_RNO_0[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(\prescale_reg[0]_net_1 ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[0] ));
    XOR2 un1_prescale_I_55 (.A(\un1_prescale_0[0] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1C0 \bit_cnt[1]  (.D(\bit_cnt_6[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\bit_cnt[1]_net_1 ));
    XOR2 un1_prescale_I_74 (.A(\DWACT_ADD_CI_0_partial_sum_0[3] ), .B(
        \DWACT_ADD_CI_0_g_array_12_0[0] ), .Y(\un1_prescale_10[3] ));
    XOR2 un1_prescale_I_29 (.A(\un1_prescale_0[1] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_0[0] )
        );
    OA1 \prescale_reg_RNO[1]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[1] ), .Y(
        \prescale_reg_8[1] ));
    DFN1E0P0 txd_reg (.D(txd_reg_5), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        un1_s_axis_tready_reg11_2), .Q(txd_c));
    OR3 un1_prescale_0_I_8 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .C(\prescale_reg[2]_net_1 ), .Y(N_17)
        );
    XOR2 un1_prescale_I_75 (.A(\DWACT_ADD_CI_0_partial_sum[11] ), .B(
        \DWACT_ADD_CI_0_g_array_12_4[0] ), .Y(\un1_prescale_10[11] ));
    OR3 un1_prescale_0_I_50 (.A(\prescale_reg[15]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .C(\prescale_reg[17]_net_1 ), .Y(
        \DWACT_FDEC_E[12] ));
    XOR2 un1_prescale_I_57 (.A(\un1_prescale_0[18] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[18] ));
    MX2 \prescale_reg_RNO_0[13]  (.A(\un1_prescale_10[13] ), .B(
        \un1_prescale_11[13] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[13] ));
    OA1C s_axis_tready_reg_RNO (.A(\un1_prescale_b_I_0[1] ), .B(
        un1_s_axis_tready_reg11_1_mux), .C(s_axis_tready_reg11), .Y(
        N_227_mux));
    AO1 un1_prescale_I_80 (.A(\DWACT_ADD_CI_0_pog_array_2_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_10[0] ));
    XOR2 un1_prescale_I_44 (.A(\un1_prescale_0[2] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum_0[2] )
        );
    OR3 \prescale_reg_RNIBP5J[18]  (.A(\prescale_reg[11]_net_1 ), .B(
        \prescale_reg[18]_net_1 ), .C(\prescale_reg[3]_net_1 ), .Y(
        s_axis_tready_reg11lt18_9));
    DFN1C0 \prescale_reg[10]  (.D(\prescale_reg_8[10] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[10]_net_1 ));
    XOR2 un1_prescale_I_77 (.A(\DWACT_ADD_CI_0_partial_sum[17] ), .B(
        \DWACT_ADD_CI_0_g_array_12_7[0] ), .Y(\un1_prescale_10[17] ));
    XOR2 un1_prescale_I_64 (.A(\DWACT_ADD_CI_0_partial_sum[5] ), .B(
        \DWACT_ADD_CI_0_g_array_12_1[0] ), .Y(\un1_prescale_10[5] ));
    DFN1E1 \data_reg[6]  (.D(\data_reg_7[6] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[6]_net_1 ));
    XOR2 un1_prescale_I_45 (.A(\un1_prescale_0[15] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[15] ));
    OR3 un1_prescale_0_I_45 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\prescale_reg[15]_net_1 ), .Y(N_4));
    OR3 un1_prescale_0_I_30 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[6] ));
    OR3 un1_prescale_0_I_19 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\prescale_reg[6]_net_1 ), .Y(N_13));
    XOR2 un1_prescale_I_65 (.A(\DWACT_ADD_CI_0_partial_sum[15] ), .B(
        \DWACT_ADD_CI_0_g_array_12_6[0] ), .Y(\un1_prescale_10[15] ));
    OR2 \prescale_reg_RNI5JHM[2]  (.A(\prescale_reg[2]_net_1 ), .B(
        \prescale_reg[5]_net_1 ), .Y(s_axis_tready_reg11lt18_2));
    XOR2 un1_prescale_I_47 (.A(\un1_prescale_0[17] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[17] ));
    MX2 \prescale_reg_RNO_0[6]  (.A(\un1_prescale_10[6] ), .B(
        \un1_prescale_11[6] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[6] ));
    OA1 \prescale_reg_RNO[17]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[17] ), .Y(
        \prescale_reg_8[17] ));
    XOR2 un1_prescale_I_34 (.A(\un1_prescale_0[7] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_6[0] )
        );
    XOR2 un1_prescale_I_67 (.A(\DWACT_ADD_CI_0_partial_sum_0[2] ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(\un1_prescale_10[2] ));
    OR3 un1_prescale_0_I_48 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[11] ), .Y(N_3));
    DFN1C0 \prescale_reg[1]  (.D(\prescale_reg_8[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[1]_net_1 ));
    AO1 un1_prescale_I_83 (.A(\DWACT_ADD_CI_0_pog_array_1_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11[0] ));
    XOR2 s_axis_tready_reg_RNO_0 (.A(uart_0_s_axis_tready), .B(
        un1_bit_cnt_4), .Y(un1_s_axis_tready_reg11_1_mux));
    OR2 \prescale_reg_RNIK67F[15]  (.A(\prescale_reg[15]_net_1 ), .B(
        \prescale_reg[0]_net_1 ), .Y(s_axis_tready_reg11lt18_8));
    XOR2 un1_prescale_I_56 (.A(\un1_prescale_0[12] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[12] ));
    XOR2 un1_prescale_I_35 (.A(\un1_prescale_0[9] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_8[0] )
        );
    XNOR2 un1_prescale_0_I_17 (.A(N_14), .B(\prescale_reg[6]_net_1 ), 
        .Y(\un1_prescale_11[6] ));
    NOR2A \prescale_reg_RNI058H2[11]  (.A(\prescale_reg[11]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[11] ));
    XNOR2 un1_prescale_0_I_12 (.A(N_16), .B(\prescale_reg[4]_net_1 ), 
        .Y(\un1_prescale_11[4] ));
    AO1 un1_prescale_I_90 (.A(\DWACT_ADD_CI_0_pog_array_2_2[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_3[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3_1[0] ));
    NOR2A \prescale_reg_RNIFFIO2[1]  (.A(\prescale_reg[1]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[1] ));
    AO1 un1_prescale_I_81 (.A(\DWACT_ADD_CI_0_pog_array_0_2[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_2_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_3[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_1[0] ));
    XOR2 un1_prescale_I_59 (.A(\un1_prescale_0[5] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[5] ));
    XOR2 un1_prescale_I_76 (.A(\DWACT_ADD_CI_0_partial_sum[4] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .Y(\un1_prescale_10[4] ));
    XNOR2 un1_prescale_0_I_46 (.A(N_4), .B(\prescale_reg[16]_net_1 ), 
        .Y(\un1_prescale_11[16] ));
    NOR2 \bit_cnt_RNIFA7V[1]  (.A(\bit_cnt[2]_net_1 ), .B(
        \bit_cnt[1]_net_1 ), .Y(un1_bit_cnt_4_1));
    XNOR2 un1_prescale_0_I_20 (.A(N_13), .B(\prescale_reg[7]_net_1 ), 
        .Y(\un1_prescale_11[7] ));
    DFN1C0 \prescale_reg[13]  (.D(\prescale_reg_8[13] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[13]_net_1 ));
    XOR2 un1_prescale_I_37 (.A(\un1_prescale_0[2] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_1_0[0] ));
    XNOR2 un1_prescale_0_I_35 (.A(N_8), .B(\prescale_reg[12]_net_1 ), 
        .Y(\un1_prescale_11[12] ));
    MX2 \prescale_reg_RNO_0[9]  (.A(\un1_prescale_10[9] ), .B(
        \un1_prescale_11[9] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[9] ));
    AO1 un1_prescale_I_79 (.A(\DWACT_ADD_CI_0_pog_array_0_0[0] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_1_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_0[0] ));
    NOR2A un1_bit_cnt_5_I_5 (.A(\bit_cnt[2]_net_1 ), .B(
        un1_s_axis_tready_reg11_2), .Y(\DWACT_ADD_CI_0_g_array_0_2[0] )
        );
    XOR2 un1_prescale_I_46 (.A(\un1_prescale_0[7] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[7] ));
    OR3 un1_prescale_0_I_13 (.A(\DWACT_FDEC_E[0] ), .B(
        \prescale_reg[3]_net_1 ), .C(\prescale_reg[4]_net_1 ), .Y(N_15)
        );
    AND2 un1_prescale_I_12 (.A(\un1_prescale_0[10] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_10[0] ));
    XOR2 un1_bit_cnt_5_I_18 (.A(\DWACT_ADD_CI_0_partial_sum[2] ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_18));
    MX2 \prescale_reg_RNO_0[16]  (.A(\un1_prescale_10[16] ), .B(
        \un1_prescale_11[16] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[16] ));
    XOR2 un1_prescale_I_49 (.A(\un1_prescale_0[6] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[6] ));
    AO1 un1_prescale_I_93 (.A(\DWACT_ADD_CI_0_pog_array_0_16[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_16[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_17[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_8[0] ));
    OR2 un1_prescale_0_I_38 (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[13]_net_1 ), .Y(\DWACT_FDEC_E[8] ));
    NOR2A \prescale_reg_RNIMMIO2[8]  (.A(\prescale_reg[8]_net_1 ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[8] ));
    XOR2 un1_prescale_I_69 (.A(\DWACT_ADD_CI_0_partial_sum[9] ), .B(
        \DWACT_ADD_CI_0_g_array_12_3[0] ), .Y(\un1_prescale_10[9] ));
    AND2 un1_prescale_I_22 (.A(\un1_prescale_0[9] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_9[0] ));
    MX2 \prescale_reg_RNO_0[15]  (.A(\un1_prescale_10[15] ), .B(
        \un1_prescale_11[15] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[15] ));
    AO1 un1_prescale_I_91 (.A(\DWACT_ADD_CI_0_pog_array_0_7[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_8[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_3[0] ));
    AO1 un1_prescale_I_103 (.A(\DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_4[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_1[0] ));
    OA1 \prescale_reg_RNO[13]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[13] ), .Y(
        \prescale_reg_8[13] ));
    CLKINT \bit_cnt_RNIFO9D2_0[0]  (.A(\bit_cnt_RNIFO9D2[0]_net_1 ), 
        .Y(\un1_prescale_b_I_0[1] ));
    XNOR2 un1_bit_cnt_5_I_9 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[1]_net_1 ), .Y(\DWACT_ADD_CI_0_pog_array_0[0] ));
    DFN1E1 \data_reg[3]  (.D(\data_reg_7[3] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[3]_net_1 ));
    XOR2 un1_prescale_I_36 (.A(\un1_prescale_0[12] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_11[0] ));
    OR3 un1_prescale_0_I_36 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\prescale_reg[12]_net_1 ), .Y(N_7));
    OR2 un1_prescale_0_I_25 (.A(\prescale_reg[8]_net_1 ), .B(
        \DWACT_FDEC_E[4] ), .Y(N_11));
    XNOR2 un1_bit_cnt_5_I_11 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[2]_net_1 ), .Y(\DWACT_ADD_CI_0_partial_sum[2] ));
    MX2 \data_reg_RNO[0]  (.A(\data_reg[1]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[0]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[0] ));
    XOR2 un1_prescale_I_39 (.A(\un1_prescale_0[13] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(
        \DWACT_ADD_CI_0_pog_array_0_12[0] ));
    OR2 \prescale_reg_RNICQHM[6]  (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[8]_net_1 ), .Y(s_axis_tready_reg11lt18_6));
    XNOR2 un1_prescale_0_I_28 (.A(N_10), .B(\prescale_reg[10]_net_1 ), 
        .Y(\un1_prescale_11[10] ));
    AO1 un1_prescale_I_108 (.A(\DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1[0] ));
    XNOR2 un1_bit_cnt_5_I_13 (.A(un1_s_axis_tready_reg11_2), .B(
        \bit_cnt[0]_net_1 ), .Y(\DWACT_ADD_CI_0_partial_sum_0[0] ));
    DFN1C0 \bit_cnt[0]  (.D(\DWACT_ADD_CI_0_partial_sum_0[0] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\bit_cnt[0]_net_1 ));
    XNOR2 un1_prescale_0_I_14 (.A(N_15), .B(\prescale_reg[5]_net_1 ), 
        .Y(\un1_prescale_11[5] ));
    MX2 \prescale_reg_RNO_0[12]  (.A(\un1_prescale_10[12] ), .B(
        \un1_prescale_11[12] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[12] ));
    MX2 \prescale_reg_RNO_0[17]  (.A(\un1_prescale_10[17] ), .B(
        \un1_prescale_11[17] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[17] ));
    DFN1C0 \prescale_reg[14]  (.D(\prescale_reg_8[14] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[14]_net_1 ));
    MX2 \prescale_reg_RNO_0[4]  (.A(\un1_prescale_10[4] ), .B(
        \un1_prescale_11[4] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[4] ));
    OR2 \prescale_reg_RNI90T7[13]  (.A(\prescale_reg[13]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .Y(s_axis_tready_reg11lt18_4));
    AND2 un1_prescale_I_113 (.A(\DWACT_ADD_CI_0_pog_array_0_1_0[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_0_2[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1[0] ));
    XNOR2 un1_prescale_0_I_26 (.A(N_11), .B(\prescale_reg[9]_net_1 ), 
        .Y(\un1_prescale_11[9] ));
    OA1 \prescale_reg_RNO[18]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[18] ), .Y(
        \prescale_reg_8[18] ));
    AND2 un1_prescale_I_18 (.A(\un1_prescale_0[16] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_16[0] ));
    OR3 \prescale_reg_RNIFB3D1[1]  (.A(\prescale_reg[4]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .C(s_axis_tready_reg11lt18_6), .Y(
        s_axis_tready_reg11lt18_12));
    MX2 \prescale_reg_RNO_0[10]  (.A(\un1_prescale_10[10] ), .B(
        \un1_prescale_11[10] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[10] ));
    XOR2 un1_prescale_I_52 (.A(\un1_prescale_0[8] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[8] ));
    XNOR2 un1_prescale_0_I_49 (.A(N_3), .B(\prescale_reg[17]_net_1 ), 
        .Y(\un1_prescale_11[17] ));
    DFN1E1 \data_reg[8]  (.D(un1_s_axis_tready_reg11_1), .CLK(PCLK_c), 
        .E(un1_data_reg_0_sqmuxa), .Q(\data_reg[8]_net_1 ));
    DFN1C0 \prescale_reg[17]  (.D(\prescale_reg_8[17] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[17]_net_1 ));
    DFN1C0 \bit_cnt[2]  (.D(\bit_cnt_6[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\bit_cnt[2]_net_1 ));
    XOR2 un1_prescale_I_28 (.A(\un1_prescale_0[5] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_4[0] )
        );
    OR2 \prescale_reg_RNIV38H2[10]  (.A(\un1_prescale_b_I_0[1] ), .B(
        \prescale_reg[10]_net_1 ), .Y(\un1_prescale_0[10] ));
    DFN1E1C0 busy_reg (.D(UART_AD7606_0_m_axis_tvalid), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(s_axis_tready_reg12), .Q(uart_0_tx_busy));
    XOR2 un1_prescale_I_72 (.A(\DWACT_ADD_CI_0_partial_sum[7] ), .B(
        \DWACT_ADD_CI_0_g_array_12_2[0] ), .Y(\un1_prescale_10[7] ));
    NOR2 \bit_cnt_RNIFA7V[0]  (.A(\bit_cnt[3]_net_1 ), .B(
        \bit_cnt[0]_net_1 ), .Y(un1_bit_cnt_4_0));
    NOR2A \prescale_reg_RNI498H2[15]  (.A(\prescale_reg[15]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[15] ));
    OR2 \prescale_reg_RNINMAK4[10]  (.A(s_axis_tready_reg11lt18_16), 
        .B(s_axis_tready_reg11lt18_15), .Y(s_axis_tready_reg11));
    AND2 un1_prescale_I_118 (.A(\DWACT_ADD_CI_0_pog_array_0_11[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_0_12[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_5[0] ));
    MX2 \prescale_reg_RNO_0[3]  (.A(\un1_prescale_10[3] ), .B(
        \un1_prescale_11[3] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[3] ));
    XOR2 un1_bit_cnt_5_I_16 (.A(\DWACT_ADD_CI_0_partial_sum[3] ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(I_16));
    OR2 un1_prescale_0_I_47 (.A(\prescale_reg[15]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .Y(\DWACT_FDEC_E[11] ));
    MX2 \prescale_reg_RNO_0[7]  (.A(\un1_prescale_10[7] ), .B(
        \un1_prescale_11[7] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[7] ));
    OR3 un1_prescale_0_I_42 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[9] ), .Y(N_5));
    DFN1E1 \data_reg[5]  (.D(\data_reg_7[5] ), .CLK(PCLK_c), .E(
        un1_data_reg_0_sqmuxa), .Q(\data_reg[5]_net_1 ));
    OA1 \prescale_reg_RNO[16]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[16] ), .Y(
        \prescale_reg_8[16] ));
    XOR2 un1_prescale_I_42 (.A(\un1_prescale_0[14] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[14] ));
    OA1 \prescale_reg_RNO[15]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[15] ), .Y(
        \prescale_reg_8[15] ));
    MX2 \prescale_reg_RNO_0[5]  (.A(\un1_prescale_10[5] ), .B(
        \un1_prescale_11[5] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[5] ));
    AND2 un1_prescale_I_9 (.A(\un1_prescale_0[17] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_17[0] ));
    XOR2 un1_prescale_I_62 (.A(\DWACT_ADD_CI_0_partial_sum[6] ), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .Y(\un1_prescale_10[6] ));
    AO1 un1_bit_cnt_5_I_20 (.A(\DWACT_ADD_CI_0_pog_array_0[0] ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .C(\DWACT_ADD_CI_0_g_array_0_1[0] ), 
        .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    OR3 \prescale_reg_RNI923G2[12]  (.A(s_axis_tready_reg11lt18_10), 
        .B(s_axis_tready_reg11lt18_9), .C(s_axis_tready_reg11lt18_13), 
        .Y(s_axis_tready_reg11lt18_16));
    OR3 un1_prescale_0_I_39 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[8] ), .Y(N_6));
    OR2 \prescale_reg_RNIIIIO2[4]  (.A(\un1_prescale_b_I_0[1] ), .B(
        \prescale_reg[4]_net_1 ), .Y(\un1_prescale_0[4] ));
    DFN1C0 \prescale_reg[18]  (.D(\prescale_reg_8[18] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[18]_net_1 ));
    NOR2A \prescale_reg_RNI388H2[14]  (.A(\prescale_reg[14]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[14] ));
    OR3 un1_prescale_0_I_52 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[12] ), .Y(N_2));
    XNOR2 un1_prescale_0_I_43 (.A(N_5), .B(\prescale_reg[15]_net_1 ), 
        .Y(\un1_prescale_11[15] ));
    MX2 \prescale_reg_RNO_0[8]  (.A(\un1_prescale_10[8] ), .B(
        \un1_prescale_11[8] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[8] ));
    XOR2 un1_prescale_I_32 (.A(\un1_prescale_0[4] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_pog_array_0_3[0] )
        );
    OA1 \prescale_reg_RNO[11]  (.A(bit_cnt20), .B(
        un1_s_axis_tready_reg11_1), .C(\un1_prescale_1[11] ), .Y(
        \prescale_reg_8[11] ));
    DFN1C0 \prescale_reg[8]  (.D(\prescale_reg_8[8] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[8]_net_1 ));
    NOR2A un1_bit_cnt_5_I_6 (.A(\bit_cnt[1]_net_1 ), .B(
        un1_s_axis_tready_reg11_2), .Y(\DWACT_ADD_CI_0_g_array_0_1[0] )
        );
    XOR2 un1_prescale_I_58 (.A(\un1_prescale_0[13] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_partial_sum[13] ));
    XNOR2 un1_prescale_0_I_37 (.A(N_7), .B(\prescale_reg[13]_net_1 ), 
        .Y(\un1_prescale_11[13] ));
    XNOR2 un1_prescale_0_I_32 (.A(N_9), .B(\prescale_reg[11]_net_1 ), 
        .Y(\un1_prescale_11[11] ));
    AND2 un1_prescale_I_10 (.A(\un1_prescale_0[11] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_11[0] ));
    OR2 \prescale_reg_RNIHHIO2[3]  (.A(\un1_prescale_b_I_0[1] ), .B(
        \prescale_reg[3]_net_1 ), .Y(\un1_prescale_0[3] ));
    XOR2 un1_prescale_I_78 (.A(\DWACT_ADD_CI_0_partial_sum[18] ), .B(
        \DWACT_ADD_CI_0_g_array_11_3[0] ), .Y(\un1_prescale_10[18] ));
    XNOR2 un1_prescale_0_I_53 (.A(N_2), .B(\prescale_reg[18]_net_1 ), 
        .Y(\un1_prescale_11[18] ));
    MX2 \prescale_reg_RNO_0[11]  (.A(\un1_prescale_10[11] ), .B(
        \un1_prescale_11[11] ), .S(s_axis_tready_reg11), .Y(
        \un1_prescale_1[11] ));
    OR3 un1_prescale_0_I_29 (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[7]_net_1 ), .C(\prescale_reg[8]_net_1 ), .Y(
        \DWACT_FDEC_E[5] ));
    OR2 \prescale_reg_RNIKKIO2[6]  (.A(\un1_prescale_b_I_0[1] ), .B(
        \prescale_reg[6]_net_1 ), .Y(\un1_prescale_0[6] ));
    NOR2A \prescale_reg_RNI7C8H2[18]  (.A(\prescale_reg[18]_net_1 ), 
        .B(\un1_prescale_b_I_0[1] ), .Y(\un1_prescale_0[18] ));
    AND2 un1_prescale_I_20 (.A(\un1_prescale_0[14] ), .B(
        \un1_prescale_b_I_0[1] ), .Y(\DWACT_ADD_CI_0_g_array_0_14[0] ));
    MX2 \data_reg_RNO[7]  (.A(\data_reg[8]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[7]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[7] ));
    MX2 \data_reg_RNO[3]  (.A(\data_reg[4]_net_1 ), .B(
        UART_AD7606_0_m_axis_tdata[3]), .S(un1_bit_cnt_4), .Y(
        \data_reg_7[3] ));
    
endmodule


module uart_rx_8s(
       uart_0_m_axis_tdata,
       rxd_c,
       PCLK_c,
       uart_0_m_axis_tvalid,
       UART_AD7606_0_s_axis_tready,
       PRESETN_c
    );
output [7:0] uart_0_m_axis_tdata;
input  rxd_c;
input  PCLK_c;
output uart_0_m_axis_tvalid;
input  UART_AD7606_0_s_axis_tready;
input  PRESETN_c;

    wire un11lto3_0, un11lt3_1, un11lt3_0, prescale_reg_0_sqmuxa_0, 
        \bit_cnt_RNIMRRQ_1[3]_net_1 , \DWACT_ADD_CI_0_g_array_2[0] , 
        \DWACT_ADD_CI_0_g_array_1[0] , \DWACT_ADD_CI_0_pog_array_1[0] , 
        \DWACT_ADD_CI_0_g_array_12_5[0] , 
        \DWACT_ADD_CI_0_g_array_12_4[0] , 
        \DWACT_ADD_CI_0_g_array_12_2[0] , 
        \DWACT_ADD_CI_0_g_array_11_2[0] , 
        \DWACT_ADD_CI_0_g_array_1_6[0] , 
        \DWACT_ADD_CI_0_pog_array_1_5[0] , 
        \DWACT_ADD_CI_0_g_array_12_1[0] , 
        \DWACT_ADD_CI_0_g_array_11[0] , 
        \DWACT_ADD_CI_0_g_array_11_3[0] , 
        \DWACT_ADD_CI_0_g_array_4[0] , 
        \DWACT_ADD_CI_0_pog_array_1_7[0] , 
        \DWACT_ADD_CI_0_g_array_3[0] , \DWACT_ADD_CI_0_g_array_2_1[0] , 
        \DWACT_ADD_CI_0_pog_array_2[0] , 
        \DWACT_ADD_CI_0_g_array_11_1[0] , 
        \DWACT_ADD_CI_0_g_array_2_3[0] , 
        \DWACT_ADD_CI_0_g_array_1_6_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_6[0] , \un1_prescale_reg_10_s2[5] , 
        N_161, un11lto3, \DWACT_ADD_CI_0_g_array_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_4[0] , 
        \DWACT_ADD_CI_0_g_array_0_8[0] , \prescale_reg[9]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12[0] , \prescale_reg[2]_net_1 , 
        \DWACT_ADD_CI_0_g_array_1_2[0] , 
        \DWACT_ADD_CI_0_g_array_0_4[0] , \prescale_reg[5]_net_1 , 
        \DWACT_ADD_CI_0_g_array_1_5[0] , 
        \DWACT_ADD_CI_0_g_array_0_10[0] , \prescale_reg[11]_net_1 , 
        \DWACT_ADD_CI_0_g_array_2_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_3[0] , 
        \DWACT_ADD_CI_0_pog_array_1_2[0] , 
        \DWACT_ADD_CI_0_g_array_3_1[0] , 
        \DWACT_ADD_CI_0_g_array_2_3_0[0] , 
        \DWACT_ADD_CI_0_pog_array_2_2[0] , \DWACT_ADD_CI_0_TMP[0] , 
        \un1_prescale_reg_10_s2[9] , \DWACT_ADD_CI_0_g_array_12_7[0] , 
        \DWACT_ADD_CI_0_g_array_12_6[0] , 
        \DWACT_ADD_CI_0_g_array_11_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_3_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_14[0] , 
        \DWACT_ADD_CI_0_pog_array_0_16[0] , 
        \DWACT_ADD_CI_0_pog_array_0_6[0] , 
        \DWACT_ADD_CI_0_pog_array_0_12[0] , N_18, 
        \prescale_reg[1]_net_1 , \prescale_reg[0]_net_1 , N_16, 
        \prescale_reg[3]_net_1 , \DWACT_FDEC_E[0] , N_11, 
        \prescale_reg[8]_net_1 , \DWACT_FDEC_E[4] , N_8, 
        \DWACT_FDEC_E[7] , \DWACT_FDEC_E[6] , 
        frame_error_reg_2_sqmuxa_0, rxd_reg_net_1, \bit_cnt[3]_net_1 , 
        data_reg_1_sqmuxa_1, data_reg_0_sqmuxa_1, data_reg_0_sqmuxa_0, 
        prescale_reg46lt18_16, prescale_reg46lt18_10, 
        prescale_reg46lt18_9, prescale_reg46lt18_13, 
        prescale_reg46lt18_15, prescale_reg46lt18_4, 
        prescale_reg46lt18_3, prescale_reg46lt18_12, 
        \prescale_reg[12]_net_1 , \prescale_reg[15]_net_1 , 
        prescale_reg46lt18_8, \prescale_reg[16]_net_1 , 
        prescale_reg46lt18_6, \prescale_reg[17]_net_1 , 
        prescale_reg46lt18_2, \prescale_reg[14]_net_1 , 
        \prescale_reg[18]_net_1 , \prescale_reg[6]_net_1 , 
        \prescale_reg[4]_net_1 , \prescale_reg[13]_net_1 , 
        \prescale_reg[10]_net_1 , \prescale_reg[7]_net_1 , 
        \bit_cnt[2]_net_1 , \bit_cnt[1]_net_1 , un12lto0, 
        prescale_reg46, frame_error_reg_2_sqmuxa, prescale_reg47, 
        data_reg_0_sqmuxa, \bit_cnt_8[3] , I_16_0, 
        un1_bit_cnt_0_sqmuxa, \bit_cnt_8[1] , I_15_0, 
        rxd_reg_RNIRCOG6_net_1, bit_cnt_0_sqmuxa, 
        un1_data_reg_1_sqmuxa, bit_cnt_1_sqmuxa_1_0, bit_cnt_1_sqmuxa, 
        \bit_cnt_8[2] , I_18_0, \bit_cnt_8[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , m_axis_tvalid_reg_1_sqmuxa, 
        m_axis_tvalid_reg5, \data_reg_6[6] , \data_reg[7]_net_1 , 
        \data_reg_6[5] , \data_reg[6]_net_1 , \data_reg_6[4] , 
        \data_reg[5]_net_1 , \data_reg_6[3] , \data_reg[4]_net_1 , 
        \data_reg_6[2] , \data_reg[3]_net_1 , \data_reg_6[1] , 
        \data_reg[2]_net_1 , \data_reg_6[0] , \data_reg[1]_net_1 , 
        N_171, \un1_prescale_reg_10_s1[13] , 
        \un1_prescale_reg_10_s2[13] , N_172, 
        \un1_prescale_reg_10_s1[14] , \un1_prescale_reg_10_s2[14] , 
        N_173, \un1_prescale_reg_10_s1[15] , 
        \un1_prescale_reg_10_s2[15] , N_174, 
        \un1_prescale_reg_10_s1[16] , \un1_prescale_reg_10_s2[16] , 
        N_175, \un1_prescale_reg_10_s1[17] , 
        \un1_prescale_reg_10_s2[17] , N_176, 
        \un1_prescale_reg_10_s1[18] , \un1_prescale_reg_10_s2[18] , 
        N_181, N_139, N_160, un1_prescale_reg_1_m_sn_N_3, N_170, 
        \un1_prescale_reg_10_s2[12] , N_169, 
        \un1_prescale_reg_10_s2[11] , N_168, 
        \un1_prescale_reg_10_s2[10] , \DWACT_ADD_CI_0_g_array_1_1[0] , 
        N_159, \un1_prescale_reg_10_s1[1] , 
        \un1_prescale_reg_10_s2[1] , N_158, 
        \DWACT_ADD_CI_0_partial_sum_0[0] , 
        \DWACT_ADD_CI_0_partial_sum_1[0] , \un1_prescale_reg_10_s0[2] , 
        \un1_prescale_reg_11[2] , \prescale_reg_9[2] , 
        prescale_reg_2_sqmuxa_0, \un1_prescale_reg_0[0] , 
        un1_prescale_reg46_2_0, N_197, N_155, N_196, N_154, N_195, 
        N_153, N_194, N_152, N_193, N_151, N_192, N_150, N_191, N_149, 
        N_190, N_148, N_189, N_147, N_188, N_146, N_167, N_187, N_145, 
        N_166, N_186, N_144, N_165, N_185, N_143, N_164, N_184, N_142, 
        N_163, N_183, N_141, N_162, N_182, N_140, N_180, N_138, N_179, 
        N_137, \DWACT_ADD_CI_0_g_array_12_3[0] , 
        \un1_prescale_reg_10_s1[8] , \un1_prescale_reg_10_s2[8] , 
        \un1_prescale_reg_10_s1[7] , \un1_prescale_reg_10_s2[7] , 
        \un1_prescale_reg_10_s2[6] , \un1_prescale_reg_10_s0[18] , 
        \un1_prescale_reg_11[18] , \un1_prescale_reg_10_s0[17] , 
        \un1_prescale_reg_11[17] , \un1_prescale_reg_10_s0[16] , 
        \un1_prescale_reg_11[16] , \un1_prescale_reg_10_s0[15] , 
        \un1_prescale_reg_11[15] , \un1_prescale_reg_10_s0[14] , 
        \un1_prescale_reg_11[14] , \un1_prescale_reg_10_s0[13] , 
        \un1_prescale_reg_11[13] , \un1_prescale_reg_10_s0[12] , 
        \un1_prescale_reg_11[12] , \un1_prescale_reg_10_s0[11] , 
        \un1_prescale_reg_11[11] , \un1_prescale_reg_10_s0[10] , 
        \un1_prescale_reg_11[10] , \un1_prescale_reg_10_s0[9] , 
        \un1_prescale_reg_11[9] , \un1_prescale_reg_10_s0[8] , 
        \un1_prescale_reg_11[8] , \un1_prescale_reg_10_s0[7] , 
        \un1_prescale_reg_11[7] , \un1_prescale_reg_10_s0[6] , 
        \un1_prescale_reg_11[6] , \un1_prescale_reg_10_s0[5] , 
        \un1_prescale_reg_11[5] , \un1_prescale_reg_10_s0[4] , 
        \un1_prescale_reg_11[4] , \un1_prescale_reg_10_s0[3] , 
        \un1_prescale_reg_11[3] , \un1_prescale_reg_10_s0[1] , 
        \un1_prescale_reg_11[1] , \DWACT_ADD_CI_0_partial_sum_2[0] , 
        \prescale_reg_9[18] , \prescale_reg_9[17] , 
        \prescale_reg_9[16] , \prescale_reg_9[15] , 
        \prescale_reg_9[14] , \prescale_reg_9[13] , 
        \prescale_reg_9[12] , \prescale_reg_9[11] , 
        \prescale_reg_9[10] , \prescale_reg_9[9] , \prescale_reg_9[8] , 
        \prescale_reg_9[7] , \prescale_reg_9[6] , \prescale_reg_9[5] , 
        \prescale_reg_9[4] , \prescale_reg_9[3] , \prescale_reg_9[1] , 
        \prescale_reg_9[0] , \data_reg[0]_net_1 , 
        \DWACT_ADD_CI_0_g_array_12_0[0] , 
        \DWACT_ADD_CI_0_pog_array_0_1[0] , 
        \DWACT_ADD_CI_0_g_array_1_7[0] , 
        \DWACT_ADD_CI_0_g_array_0_2[0] , 
        \DWACT_ADD_CI_0_pog_array_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_1[0] , 
        \DWACT_ADD_CI_0_partial_sum[2] , 
        \DWACT_ADD_CI_0_partial_sum[3] , 
        \DWACT_ADD_CI_0_partial_sum[1] , N_2, \DWACT_FDEC_E[28] , 
        \DWACT_FDEC_E[10] , \DWACT_FDEC_E[12] , \DWACT_FDEC_E[2] , 
        \DWACT_FDEC_E[5] , N_3, \DWACT_FDEC_E[11] , N_4, 
        \DWACT_FDEC_E[9] , N_5, N_6, \DWACT_FDEC_E[8] , N_7, N_9, N_10, 
        \DWACT_FDEC_E[3] , N_12, N_13, N_14, \DWACT_FDEC_E[1] , N_15, 
        N_17, \DWACT_ADD_CI_0_pog_array_1_5_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_2_0[0] , 
        \DWACT_ADD_CI_0_pog_array_3[0] , 
        \DWACT_ADD_CI_0_pog_array_2_1[0] , 
        \DWACT_ADD_CI_0_pog_array_2_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_10[0] , 
        \DWACT_ADD_CI_0_g_array_12_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_3_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_5_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_6_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_7_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_7_0[0] , 
        \DWACT_ADD_CI_0_g_array_11_3_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_8[0] , 
        \DWACT_ADD_CI_0_g_array_12_6_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_7_0[0] , \DWACT_ADD_CI_0_TMP_1[0] , 
        \DWACT_ADD_CI_0_pog_array_1_6_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_13[0] , 
        \DWACT_ADD_CI_0_pog_array_0_14_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_7_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_15[0] , 
        \DWACT_ADD_CI_0_pog_array_0_16_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_5_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_11[0] , 
        \DWACT_ADD_CI_0_pog_array_0_12_0[0] , 
        \DWACT_ADD_CI_0_pog_array_1_2_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_5[0] , 
        \DWACT_ADD_CI_0_pog_array_0_6_0[0] , 
        \DWACT_ADD_CI_0_pog_array_3_0[0] , 
        \DWACT_ADD_CI_0_pog_array_2_1_0[0] , 
        \DWACT_ADD_CI_0_pog_array_2_2_1[0] , 
        \DWACT_ADD_CI_0_pog_array_1_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_3[0] , 
        \DWACT_ADD_CI_0_pog_array_1_4[0] , 
        \DWACT_ADD_CI_0_pog_array_0_9[0] , 
        \DWACT_ADD_CI_0_pog_array_1_3[0] , 
        \DWACT_ADD_CI_0_pog_array_0_7[0] , 
        \DWACT_ADD_CI_0_pog_array_2_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_2_3_1[0] , 
        \DWACT_ADD_CI_0_g_array_1_6_1[0] , 
        \DWACT_ADD_CI_0_g_array_1_7_1[0] , 
        \DWACT_ADD_CI_0_g_array_11_1_0[0] , 
        \DWACT_ADD_CI_0_g_array_3_0[0] , 
        \DWACT_ADD_CI_0_g_array_2_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_12[0] , 
        \DWACT_ADD_CI_0_g_array_0_13[0] , 
        \DWACT_ADD_CI_0_g_array_1_3_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_6[0] , 
        \DWACT_ADD_CI_0_g_array_0_7[0] , 
        \DWACT_ADD_CI_0_g_array_11_3_1[0] , 
        \DWACT_ADD_CI_0_g_array_4_0[0] , 
        \DWACT_ADD_CI_0_g_array_1_8_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_6_1[0] , 
        \DWACT_ADD_CI_0_g_array_11_2_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_14[0] , 
        \DWACT_ADD_CI_0_g_array_0_15[0] , 
        \DWACT_ADD_CI_0_g_array_2_2[0] , 
        \DWACT_ADD_CI_0_g_array_12_7_1[0] , 
        \DWACT_ADD_CI_0_g_array_0_16[0] , 
        \DWACT_ADD_CI_0_g_array_10_0[0] , 
        \DWACT_ADD_CI_0_g_array_0_17[0] , 
        \DWACT_ADD_CI_0_g_array_12_2_1[0] , 
        \DWACT_ADD_CI_0_g_array_11_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_3_0[0] , 
        \DWACT_ADD_CI_0_g_array_3_1_1[0] , 
        \DWACT_ADD_CI_0_g_array_12_4_0[0] , 
        \DWACT_ADD_CI_0_g_array_12_5_1[0] , 
        \DWACT_ADD_CI_0_pog_array_0_0[0] , \DWACT_ADD_CI_0_TMP_2[0] , 
        \DWACT_ADD_CI_0_g_array_0_1_0[0] , 
        \DWACT_ADD_CI_0_partial_sum[18] , 
        \DWACT_ADD_CI_0_partial_sum[17] , 
        \DWACT_ADD_CI_0_partial_sum[4] , 
        \DWACT_ADD_CI_0_partial_sum[10] , 
        \DWACT_ADD_CI_0_partial_sum[7] , 
        \DWACT_ADD_CI_0_partial_sum[16] , 
        \DWACT_ADD_CI_0_partial_sum[8] , 
        \DWACT_ADD_CI_0_partial_sum[13] , 
        \DWACT_ADD_CI_0_partial_sum[15] , 
        \DWACT_ADD_CI_0_partial_sum[14] , 
        \DWACT_ADD_CI_0_partial_sum[6] , 
        \DWACT_ADD_CI_0_partial_sum[12] , 
        \DWACT_ADD_CI_0_partial_sum_0[1] , GND, VCC;
    
    MX2A \bit_cnt_RNO[1]  (.A(rxd_reg_net_1), .B(I_15_0), .S(
        un1_bit_cnt_0_sqmuxa), .Y(\bit_cnt_8[1] ));
    XNOR2 un1_prescale_reg_d2_I_61 (.A(\DWACT_ADD_CI_0_g_array_10[0] ), 
        .B(prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s2[12] ));
    OR2 un1_prescale_reg_0_I_25 (.A(\prescale_reg[8]_net_1 ), .B(
        \DWACT_FDEC_E[4] ), .Y(N_11));
    AND2 un1_prescale_reg_d0_I_14 (.A(\prescale_reg[13]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_13[0] ));
    XOR2 un1_prescale_reg_d0_I_72 (.A(\DWACT_ADD_CI_0_partial_sum[7] ), 
        .B(\DWACT_ADD_CI_0_g_array_12_2_1[0] ), .Y(
        \un1_prescale_reg_10_s0[7] ));
    XOR2 un1_prescale_reg_d0_I_52 (.A(\prescale_reg[8]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[8] ));
    XOR2 un1_prescale_reg_d0_I_77 (.A(\DWACT_ADD_CI_0_partial_sum[17] )
        , .B(\DWACT_ADD_CI_0_g_array_12_7_1[0] ), .Y(
        \un1_prescale_reg_10_s0[17] ));
    XOR2 un1_prescale_reg_d0_I_57 (.A(\prescale_reg[18]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[18] ));
    MX2 \prescale_reg_RNO_1[8]  (.A(\un1_prescale_reg_10_s0[8] ), .B(
        \un1_prescale_reg_11[8] ), .S(prescale_reg46), .Y(N_145));
    AND2 un1_prescale_reg_d0_I_113 (.A(\prescale_reg[2]_net_1 ), .B(
        \prescale_reg[3]_net_1 ), .Y(\DWACT_ADD_CI_0_pog_array_1[0] ));
    MX2B \prescale_reg_RNO_2[2]  (.A(\DWACT_ADD_CI_0_g_array_1_1[0] ), 
        .B(\DWACT_ADD_CI_0_g_array_1_0[0] ), .S(un11lto3_0), .Y(N_160));
    INV un1_prescale_reg_d1_I_39 (.A(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_12[0] ));
    AO1 un1_prescale_reg_d0_I_106 (.A(
        \DWACT_ADD_CI_0_pog_array_1_6_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_6_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_7_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_3_1[0] ));
    MX2 \prescale_reg_RNO_1[13]  (.A(\un1_prescale_reg_10_s0[13] ), .B(
        \un1_prescale_reg_11[13] ), .S(prescale_reg46), .Y(N_150));
    XOR2 un1_prescale_reg_d2_I_71 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_4[0] ), .Y(
        \un1_prescale_reg_10_s2[16] ));
    OR2 \bit_cnt_RNIMCAS_0[0]  (.A(un11lt3_1), .B(un11lt3_0), .Y(
        un11lto3));
    DFN1C0 \prescale_reg[7]  (.D(\prescale_reg_9[7] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[7]_net_1 ));
    OR3 un1_prescale_reg_0_I_30 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[6] ));
    NOR2A rxd_reg_RNIVHG71 (.A(data_reg_0_sqmuxa_0), .B(un11lto3), .Y(
        data_reg_0_sqmuxa_1));
    MX2 \prescale_reg_RNO_2[9]  (.A(\DWACT_ADD_CI_0_g_array_12_3[0] ), 
        .B(\un1_prescale_reg_10_s2[9] ), .S(un11lto3_0), .Y(N_167));
    NOR2B \prescale_reg_RNIVU9O2[0]  (.A(\prescale_reg[0]_net_1 ), .B(
        un1_prescale_reg46_2_0), .Y(\un1_prescale_reg_0[0] ));
    DFN1E1 \data_reg[0]  (.D(\data_reg_6[0] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[0]_net_1 ));
    XNOR2 un1_prescale_reg_d1_I_63 (.A(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .B(prescale_reg_0_sqmuxa_0), 
        .Y(\un1_prescale_reg_10_s1[14] ));
    NOR2B un1_prescale_reg_d0_I_89 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2[0] ));
    AOI1B \prescale_reg_RNO[14]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_193), .Y(\prescale_reg_9[14] ));
    AO1 un1_prescale_reg_d0_I_92 (.A(\DWACT_ADD_CI_0_pog_array_0_5[0] )
        , .B(\DWACT_ADD_CI_0_g_array_11_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_6[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_2_1[0] ));
    XOR2 un1_prescale_reg_d0_I_39 (.A(\prescale_reg[13]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_12_0[0] ));
    DFN1C0 \prescale_reg[2]  (.D(\prescale_reg_9[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[2]_net_1 ));
    AO1 un1_prescale_reg_d0_I_97 (.A(
        \DWACT_ADD_CI_0_pog_array_0_14_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_14[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_15[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_7_1[0] ));
    MX2 \prescale_reg_RNO_0[14]  (.A(N_151), .B(N_172), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_193));
    NOR2A \bit_cnt_RNI7C4B6[0]  (.A(un11lto3), .B(prescale_reg46), .Y(
        prescale_reg47));
    NOR2B un1_prescale_reg_d2_I_98 (.A(
        \DWACT_ADD_CI_0_g_array_11_2_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_12_6[0] ));
    MX2 \prescale_reg_RNO_2[4]  (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .S(un11lto3_0), .Y(N_162));
    OR2A un1_prescale_reg_d1_I_88 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_12_4[0] ));
    OR2 \bit_cnt_RNI2LGJ2[3]  (.A(bit_cnt_1_sqmuxa_1_0), .B(
        prescale_reg_2_sqmuxa_0), .Y(un1_prescale_reg46_2_0));
    AOI1B \prescale_reg_RNO[9]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_188), .Y(\prescale_reg_9[9] ));
    DFN1E1C0 \m_axis_tdata_reg[3]  (.D(\data_reg[3]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[3]));
    AND2 un1_prescale_reg_d2_I_1 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    INV un1_prescale_reg_d1_I_34 (.A(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_6[0] ));
    NOR2A un1_prescale_reg_d2_I_109 (.A(
        \DWACT_ADD_CI_0_pog_array_1_2_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_2[0] ));
    AO1A un1_prescale_reg_d1_I_95 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_3_1[0] ), .C(prescale_reg_0_sqmuxa_0), 
        .Y(\DWACT_ADD_CI_0_g_array_12_7_0[0] ));
    XOR2 un1_prescale_reg_d0_I_70 (.A(\DWACT_ADD_CI_0_partial_sum[8] ), 
        .B(\DWACT_ADD_CI_0_g_array_3_0[0] ), .Y(
        \un1_prescale_reg_10_s0[8] ));
    DFN1C0 \prescale_reg[5]  (.D(\prescale_reg_9[5] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[5]_net_1 ));
    DFN1C0 \bit_cnt[3]  (.D(\bit_cnt_8[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\bit_cnt[3]_net_1 ));
    AOI1B \prescale_reg_RNO[6]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_185), .Y(\prescale_reg_9[6] ));
    NOR2B \data_reg_RNO[4]  (.A(\data_reg[5]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[4] ));
    NOR2 \bit_cnt_RNIJKA28[3]  (.A(un1_prescale_reg46_2_0), .B(
        prescale_reg46), .Y(un1_prescale_reg_1_m_sn_N_3));
    AO1A un1_prescale_reg_d1_I_91 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_2_1_0[0] ), .C(prescale_reg_0_sqmuxa_0)
        , .Y(\DWACT_ADD_CI_0_g_array_12_3[0] ));
    DFN1C0 \prescale_reg[16]  (.D(\prescale_reg_9[16] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[16]_net_1 ));
    XOR2 un1_prescale_reg_d0_I_65 (.A(\DWACT_ADD_CI_0_partial_sum[15] )
        , .B(\DWACT_ADD_CI_0_g_array_12_6_1[0] ), .Y(
        \un1_prescale_reg_10_s0[15] ));
    NOR2B un1_prescale_reg_d0_I_84 (.A(\DWACT_ADD_CI_0_g_array_1[0] ), 
        .B(\prescale_reg[2]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_12[0] )
        );
    AND2 un1_bit_cnt_I_5 (.A(\bit_cnt[2]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_2[0] ));
    XOR2 un1_prescale_reg_d0_I_34 (.A(\prescale_reg[7]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_6_0[0] ));
    XOR2 un1_bit_cnt_I_8 (.A(\bit_cnt[2]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_pog_array_0_1[0] ));
    XOR2 un1_prescale_reg_d0_I_61 (.A(\DWACT_ADD_CI_0_partial_sum[12] )
        , .B(\DWACT_ADD_CI_0_g_array_10_0[0] ), .Y(
        \un1_prescale_reg_10_s0[12] ));
    DFN1P0 rxd_reg (.D(rxd_c), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        rxd_reg_net_1));
    DFN1C0 \prescale_reg[3]  (.D(\prescale_reg_9[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[3]_net_1 ));
    AND2 un1_prescale_reg_d0_I_13 (.A(\prescale_reg[7]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_7[0] ));
    OR3 un1_prescale_reg_0_I_24 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(
        \DWACT_FDEC_E[4] ));
    XOR2 un1_bit_cnt_I_15 (.A(\DWACT_ADD_CI_0_partial_sum[1] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_15_0));
    AND2 un1_prescale_reg_d0_I_7 (.A(\prescale_reg[1]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_1_0[0] )
        );
    AO1 un1_prescale_reg_d0_I_108 (.A(
        \DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_1_0[0] ));
    MX2 \prescale_reg_RNO_1[16]  (.A(\un1_prescale_reg_10_s0[16] ), .B(
        \un1_prescale_reg_11[16] ), .S(prescale_reg46), .Y(N_153));
    DFN1E1C0 \m_axis_tdata_reg[1]  (.D(\data_reg[1]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[1]));
    NOR2B \data_reg_RNO[2]  (.A(\data_reg[3]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[2] ));
    AO1 un1_prescale_reg_d0_I_90 (.A(
        \DWACT_ADD_CI_0_pog_array_2_2_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_3_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3_1_1[0] ));
    AOI1B \prescale_reg_RNO[10]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_189), .Y(\prescale_reg_9[10] ));
    NOR2 un1_prescale_reg_d1_I_118 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_1_5[0] )
        );
    OR3 un1_prescale_reg_0_I_50 (.A(\prescale_reg[15]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .C(\prescale_reg[17]_net_1 ), .Y(
        \DWACT_FDEC_E[12] ));
    AOI1B \prescale_reg_RNO[2]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_181), .Y(\prescale_reg_9[2] ));
    XOR2 un1_prescale_reg_d0_I_42 (.A(\prescale_reg[14]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[14] ));
    OR2 un1_prescale_reg_0_I_38 (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[13]_net_1 ), .Y(\DWACT_FDEC_E[8] ));
    NOR2B un1_prescale_reg_d2_I_106 (.A(
        \DWACT_ADD_CI_0_g_array_1_6_0[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_6[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_3[0] ));
    XOR2 un1_prescale_reg_d0_I_47 (.A(\prescale_reg[17]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[17] ));
    NOR2 rxd_reg_RNIRCOG6 (.A(bit_cnt_1_sqmuxa_1_0), .B(prescale_reg46)
        , .Y(rxd_reg_RNIRCOG6_net_1));
    MX2 \prescale_reg_RNO_1[15]  (.A(\un1_prescale_reg_10_s0[15] ), .B(
        \un1_prescale_reg_11[15] ), .S(prescale_reg46), .Y(N_152));
    XA1 \bit_cnt_RNINVPQ[3]  (.A(\bit_cnt[3]_net_1 ), .B(un11lt3_1), 
        .C(PRESETN_c), .Y(data_reg_1_sqmuxa_1));
    XOR2 un1_prescale_reg_d0_I_76 (.A(\DWACT_ADD_CI_0_partial_sum[4] ), 
        .B(\DWACT_ADD_CI_0_g_array_2[0] ), .Y(
        \un1_prescale_reg_10_s0[4] ));
    XOR2 un1_prescale_reg_d0_I_56 (.A(\prescale_reg[12]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[12] ));
    MX2 \prescale_reg_RNO_1[1]  (.A(\un1_prescale_reg_10_s0[1] ), .B(
        \un1_prescale_reg_11[1] ), .S(prescale_reg46), .Y(N_138));
    OR2 \prescale_reg_RNI60J9[5]  (.A(\prescale_reg[7]_net_1 ), .B(
        \prescale_reg[5]_net_1 ), .Y(prescale_reg46lt18_3));
    NOR2B un1_prescale_reg_d2_I_103 (.A(\DWACT_ADD_CI_0_g_array_3[0] ), 
        .B(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_11_1[0] ));
    MX2 \prescale_reg_RNO_0[1]  (.A(N_138), .B(N_159), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_180));
    OR2 un1_prescale_reg_0_I_15 (.A(\prescale_reg[3]_net_1 ), .B(
        \prescale_reg[4]_net_1 ), .Y(\DWACT_FDEC_E[1] ));
    OR3 un1_prescale_reg_0_I_39 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[8] ), .Y(N_6));
    NOR2B un1_prescale_reg_d2_I_79 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_1_0[0] ));
    DFN1E1C0 \m_axis_tdata_reg[4]  (.D(\data_reg[4]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[4]));
    XNOR2 un1_prescale_reg_0_I_20 (.A(N_13), .B(
        \prescale_reg[7]_net_1 ), .Y(\un1_prescale_reg_11[7] ));
    AOI1B \prescale_reg_RNO[3]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_182), .Y(\prescale_reg_9[3] ));
    AO1 un1_prescale_reg_d1_I_106 (.A(
        \DWACT_ADD_CI_0_pog_array_1_6_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_6[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_7_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_3_0[0] ));
    DFN1C0 \prescale_reg[12]  (.D(\prescale_reg_9[12] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[12]_net_1 ));
    NOR2B \bit_cnt_RNIT7067[3]  (.A(frame_error_reg_2_sqmuxa_0), .B(
        prescale_reg47), .Y(frame_error_reg_2_sqmuxa));
    AND2 un1_prescale_reg_d0_I_9 (.A(\prescale_reg[17]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_17[0] ));
    XNOR2 un1_prescale_reg_d1_I_72 (.A(
        \DWACT_ADD_CI_0_g_array_12_2[0] ), .B(prescale_reg_0_sqmuxa_0), 
        .Y(\un1_prescale_reg_10_s1[7] ));
    XNOR2 un1_prescale_reg_d1_I_77 (.A(
        \DWACT_ADD_CI_0_g_array_12_7_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s1[17] ));
    XNOR2 un1_prescale_reg_0_I_5 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .Y(\un1_prescale_reg_11[1] ));
    OR3 un1_prescale_reg_0_I_33 (.A(\prescale_reg[9]_net_1 ), .B(
        \prescale_reg[10]_net_1 ), .C(\prescale_reg[11]_net_1 ), .Y(
        \DWACT_FDEC_E[7] ));
    MX2 \prescale_reg_RNO_1[5]  (.A(\un1_prescale_reg_10_s0[5] ), .B(
        \un1_prescale_reg_11[5] ), .S(prescale_reg46), .Y(N_142));
    OR2 un1_prescale_reg_0_I_47 (.A(\prescale_reg[15]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .Y(\DWACT_FDEC_E[11] ));
    XOR2 un1_bit_cnt_I_16 (.A(\DWACT_ADD_CI_0_partial_sum[3] ), .B(
        \DWACT_ADD_CI_0_g_array_12_0[0] ), .Y(I_16_0));
    MX2 \prescale_reg_RNO_2[18]  (.A(\un1_prescale_reg_10_s1[18] ), .B(
        \un1_prescale_reg_10_s2[18] ), .S(un11lto3), .Y(N_176));
    AND2 un1_prescale_reg_d0_I_110 (.A(
        \DWACT_ADD_CI_0_pog_array_0_7[0] ), .B(\prescale_reg[9]_net_1 )
        , .Y(\DWACT_ADD_CI_0_pog_array_1_3[0] ));
    DFN1E1C0 \m_axis_tdata_reg[0]  (.D(\data_reg[0]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[0]));
    GND GND_i (.Y(GND));
    OR2A un1_prescale_reg_d2_I_83 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_11[0] ));
    AO1 un1_prescale_reg_d0_I_96 (.A(\DWACT_ADD_CI_0_pog_array_1_4[0] )
        , .B(\DWACT_ADD_CI_0_g_array_1_4[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_2[0] ));
    MX2 \prescale_reg_RNO_2[0]  (.A(\DWACT_ADD_CI_0_partial_sum_0[0] ), 
        .B(\DWACT_ADD_CI_0_partial_sum_1[0] ), .S(un11lto3_0), .Y(
        N_158));
    XOR2 un1_prescale_reg_d0_I_78 (.A(\DWACT_ADD_CI_0_partial_sum[18] )
        , .B(\DWACT_ADD_CI_0_g_array_11_3_1[0] ), .Y(
        \un1_prescale_reg_10_s0[18] ));
    XOR2 un1_prescale_reg_d0_I_58 (.A(\prescale_reg[13]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[13] ));
    DFN1E1 \data_reg[4]  (.D(\data_reg_6[4] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[4]_net_1 ));
    OR2 \bit_cnt_RNIB65E[0]  (.A(\bit_cnt[3]_net_1 ), .B(un12lto0), .Y(
        un11lt3_0));
    MX2 \prescale_reg_RNO_1[12]  (.A(\un1_prescale_reg_10_s0[12] ), .B(
        \un1_prescale_reg_11[12] ), .S(prescale_reg46), .Y(N_149));
    DFN1C0 \prescale_reg[4]  (.D(\prescale_reg_9[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[4]_net_1 ));
    MX2 \prescale_reg_RNO_1[17]  (.A(\un1_prescale_reg_10_s0[17] ), .B(
        \un1_prescale_reg_11[17] ), .S(prescale_reg46), .Y(N_154));
    XNOR2 un1_prescale_reg_0_I_46 (.A(N_4), .B(
        \prescale_reg[16]_net_1 ), .Y(\un1_prescale_reg_11[16] ));
    XOR2 un1_prescale_reg_d0_I_40 (.A(\prescale_reg[6]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_0_5[0] )
        );
    MX2 \prescale_reg_RNO_1[2]  (.A(\un1_prescale_reg_10_s0[2] ), .B(
        \un1_prescale_reg_11[2] ), .S(prescale_reg46), .Y(N_139));
    NOR2B un1_prescale_reg_d2_I_101 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_1_6_0[0] )
        );
    AO1 un1_prescale_reg_d0_I_83 (.A(\DWACT_ADD_CI_0_pog_array_1_1[0] )
        , .B(\DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_0[0] ));
    NOR2B \bit_cnt_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), .B(
        un1_bit_cnt_0_sqmuxa), .Y(\bit_cnt_8[0] ));
    MX2 \prescale_reg_RNO_1[10]  (.A(\un1_prescale_reg_10_s0[10] ), .B(
        \un1_prescale_reg_11[10] ), .S(prescale_reg46), .Y(N_147));
    AOI1B \prescale_reg_RNO[12]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_191), .Y(\prescale_reg_9[12] ));
    XOR2 un1_prescale_reg_d0_I_33 (.A(\prescale_reg[16]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_15[0] ));
    XOR2 un1_prescale_reg_d0_I_25 (.A(\prescale_reg[14]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_13[0] ));
    AO1 un1_prescale_reg_d1_I_99 (.A(
        \DWACT_ADD_CI_0_pog_array_1_7_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_8[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_3_0[0] ));
    MX2 \prescale_reg_RNO_1[7]  (.A(\un1_prescale_reg_10_s0[7] ), .B(
        \un1_prescale_reg_11[7] ), .S(prescale_reg46), .Y(N_144));
    NOR2B un1_prescale_reg_d2_I_95 (.A(\DWACT_ADD_CI_0_g_array_4[0] ), 
        .B(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_12_7[0] ));
    OR2A un1_prescale_reg_d1_I_85 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_12_5[0] ));
    XNOR2 un1_prescale_reg_d1_I_60 (.A(\DWACT_ADD_CI_0_TMP_1[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s1[1] ));
    AND2 un1_prescale_reg_d0_I_12 (.A(\prescale_reg[10]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_10[0] ));
    AND2 un1_prescale_reg_d0_I_115 (.A(
        \DWACT_ADD_CI_0_pog_array_0_3[0] ), .B(\prescale_reg[5]_net_1 )
        , .Y(\DWACT_ADD_CI_0_pog_array_1_1[0] ));
    MX2 \prescale_reg_RNO_0[2]  (.A(N_139), .B(N_160), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_181));
    OR2B un1_prescale_reg_d2_I_91 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .Y(\un1_prescale_reg_10_s2[9] )
        );
    XNOR2 un1_prescale_reg_d1_I_70 (.A(
        \DWACT_ADD_CI_0_g_array_2_1_0[0] ), .B(prescale_reg_0_sqmuxa_0)
        , .Y(\un1_prescale_reg_10_s1[8] ));
    OR3 un1_prescale_reg_0_I_41 (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[13]_net_1 ), .C(\prescale_reg[14]_net_1 ), .Y(
        \DWACT_FDEC_E[9] ));
    AO1 un1_prescale_reg_d0_I_98 (.A(
        \DWACT_ADD_CI_0_pog_array_0_13[0] ), .B(
        \DWACT_ADD_CI_0_g_array_11_2_1[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_14[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_6_1[0] ));
    OR3 un1_prescale_reg_0_I_42 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\DWACT_FDEC_E[9] ), .Y(N_5));
    XOR2 un1_prescale_reg_d0_I_69 (.A(\prescale_reg[9]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_3_0[0] ), .Y(
        \un1_prescale_reg_10_s0[9] ));
    AND2 un1_prescale_reg_d0_I_109 (.A(
        \DWACT_ADD_CI_0_pog_array_1_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_2_1[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_0[0] ));
    DFN1C0 \prescale_reg[6]  (.D(\prescale_reg_9[6] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[6]_net_1 ));
    DFN1E1 \data_reg[7]  (.D(rxd_reg_net_1), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[7]_net_1 ));
    DFN1E1 \data_reg[1]  (.D(\data_reg_6[1] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[1]_net_1 ));
    NOR2B \bit_cnt_RNO[2]  (.A(I_18_0), .B(un1_bit_cnt_0_sqmuxa), .Y(
        \bit_cnt_8[2] ));
    AND2 un1_prescale_reg_d1_I_111 (.A(
        \DWACT_ADD_CI_0_pog_array_1_5[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_6_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_2[0] ));
    XNOR2 un1_prescale_reg_0_I_28 (.A(N_10), .B(
        \prescale_reg[10]_net_1 ), .Y(\un1_prescale_reg_11[10] ));
    XNOR2 un1_prescale_reg_0_I_53 (.A(N_2), .B(
        \prescale_reg[18]_net_1 ), .Y(\un1_prescale_reg_11[18] ));
    XNOR2 un1_prescale_reg_0_I_14 (.A(N_15), .B(
        \prescale_reg[5]_net_1 ), .Y(\un1_prescale_reg_11[5] ));
    NOR2B un1_prescale_reg_d0_I_104 (.A(
        \DWACT_ADD_CI_0_g_array_0_4[0] ), .B(\prescale_reg[5]_net_1 ), 
        .Y(\DWACT_ADD_CI_0_g_array_1_2[0] ));
    OR2 un1_prescale_reg_d1_I_94 (.A(\DWACT_ADD_CI_0_g_array_1_6[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1_5[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_2[0] ));
    XOR2 un1_prescale_reg_d0_I_46 (.A(\prescale_reg[7]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[7] ));
    MX2 \prescale_reg_RNO_0[18]  (.A(N_155), .B(N_176), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_197));
    OR3 un1_prescale_reg_0_I_29 (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[7]_net_1 ), .C(\prescale_reg[8]_net_1 ), .Y(
        \DWACT_FDEC_E[5] ));
    AND2 un1_bit_cnt_I_1 (.A(un12lto0), .B(rxd_reg_RNIRCOG6_net_1), .Y(
        \DWACT_ADD_CI_0_TMP_0[0] ));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \prescale_reg[15]  (.D(\prescale_reg_9[15] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[15]_net_1 ));
    AOI1B \prescale_reg_RNO[5]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_184), .Y(\prescale_reg_9[5] ));
    DFN1C0 \prescale_reg[9]  (.D(\prescale_reg_9[9] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[9]_net_1 ));
    AO1 un1_prescale_reg_d0_I_101 (.A(
        \DWACT_ADD_CI_0_pog_array_0_12_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_12[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_13[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_6_1[0] ));
    XOR2 un1_bit_cnt_I_12 (.A(\bit_cnt[1]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[1] ));
    XOR2 un1_prescale_reg_d2_I_63 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_11_2_0[0] ), .Y(
        \un1_prescale_reg_10_s2[14] ));
    XNOR2 un1_prescale_reg_0_I_23 (.A(N_12), .B(
        \prescale_reg[8]_net_1 ), .Y(\un1_prescale_reg_11[8] ));
    XOR2 un1_prescale_reg_d0_I_64 (.A(\prescale_reg[5]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_1_0[0] ), .Y(
        \un1_prescale_reg_10_s0[5] ));
    XNOR2 un1_prescale_reg_0_I_9 (.A(N_17), .B(\prescale_reg[3]_net_1 )
        , .Y(\un1_prescale_reg_11[3] ));
    AO1 un1_prescale_reg_d2_I_87 (.A(
        \DWACT_ADD_CI_0_pog_array_1_2_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .C(\DWACT_ADD_CI_0_g_array_1_3_0[0] )
        , .Y(\DWACT_ADD_CI_0_g_array_2_1[0] ));
    OR3 un1_prescale_reg_0_I_10 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .C(\prescale_reg[2]_net_1 ), .Y(
        \DWACT_FDEC_E[0] ));
    MX2 \prescale_reg_RNO_2[7]  (.A(\un1_prescale_reg_10_s1[7] ), .B(
        \un1_prescale_reg_10_s2[7] ), .S(un11lto3_0), .Y(N_165));
    AND2 un1_prescale_reg_d0_I_116 (.A(
        \DWACT_ADD_CI_0_pog_array_2_1_0[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_2_2_1[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_3_0[0] ));
    XNOR2 un1_prescale_reg_d2_I_73 (.A(
        \DWACT_ADD_CI_0_g_array_11_1[0] ), .B(prescale_reg_0_sqmuxa_0), 
        .Y(\un1_prescale_reg_10_s2[10] ));
    XOR2 un1_prescale_reg_d0_I_48 (.A(\prescale_reg[16]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[16] ));
    NOR2B un1_prescale_reg_d0_I_82 (.A(\DWACT_ADD_CI_0_g_array_0_8[0] )
        , .B(\prescale_reg[9]_net_1 ), .Y(
        \DWACT_ADD_CI_0_g_array_1_4[0] ));
    AO1 un1_prescale_reg_d0_I_87 (.A(
        \DWACT_ADD_CI_0_pog_array_1_2_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_3_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_1_1[0] ));
    XOR2 un1_prescale_reg_d0_I_32 (.A(\prescale_reg[4]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_0_3[0] )
        );
    MX2 \prescale_reg_RNO_1[11]  (.A(\un1_prescale_reg_10_s0[11] ), .B(
        \un1_prescale_reg_11[11] ), .S(prescale_reg46), .Y(N_148));
    OR2 \prescale_reg_RNIHVPE5[5]  (.A(prescale_reg46lt18_16), .B(
        prescale_reg46lt18_15), .Y(prescale_reg46));
    MX2 \prescale_reg_RNO_2[13]  (.A(\un1_prescale_reg_10_s1[13] ), .B(
        \un1_prescale_reg_10_s2[13] ), .S(un11lto3_0), .Y(N_171));
    AOI1B \prescale_reg_RNO[7]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_186), .Y(\prescale_reg_9[7] ));
    AND2 un1_prescale_reg_d0_I_1 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_TMP_2[0] ));
    AO1 un1_bit_cnt_I_20 (.A(\DWACT_ADD_CI_0_pog_array_0[0] ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .C(\DWACT_ADD_CI_0_g_array_0_1[0] )
        , .Y(\DWACT_ADD_CI_0_g_array_1_7[0] ));
    NOR2B \data_reg_RNO[5]  (.A(\data_reg[6]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[5] ));
    XNOR2 un1_prescale_reg_d1_I_68 (.A(
        \DWACT_ADD_CI_0_g_array_12_5[0] ), .B(prescale_reg_0_sqmuxa_0), 
        .Y(\un1_prescale_reg_10_s1[13] ));
    NOR2 un1_prescale_reg_d1_I_120 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_1_6_0[0] ));
    OR3 un1_prescale_reg_0_I_8 (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[1]_net_1 ), .C(\prescale_reg[2]_net_1 ), .Y(N_17)
        );
    OR2A \bit_cnt_RNI7LU78[3]  (.A(rxd_reg_RNIRCOG6_net_1), .B(
        bit_cnt_0_sqmuxa), .Y(un1_bit_cnt_0_sqmuxa));
    XOR2 un1_bit_cnt_I_9 (.A(\bit_cnt[1]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_pog_array_0[0] ));
    XNOR2 un1_prescale_reg_d1_I_78 (.A(
        \DWACT_ADD_CI_0_g_array_11_3_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s1[18] ));
    AND2 un1_prescale_reg_d2_I_120 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_1_6[0] )
        );
    XOR2 un1_prescale_reg_d1_I_55 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum_0[0] )
        );
    AO1 un1_prescale_reg_d0_I_102 (.A(
        \DWACT_ADD_CI_0_pog_array_2_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3_0[0] ));
    AOI1B \prescale_reg_RNO[0]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_179), .Y(\prescale_reg_9[0] ));
    XOR2 un1_prescale_reg_d0_I_75 (.A(\prescale_reg[11]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12_4_0[0] ), .Y(
        \un1_prescale_reg_10_s0[11] ));
    XOR2 un1_prescale_reg_d0_I_55 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum_2[0] )
        );
    XOR2 un1_prescale_reg_d0_I_29 (.A(\prescale_reg[1]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_0_0[0] )
        );
    NOR2B \data_reg_RNO[6]  (.A(\data_reg[7]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[6] ));
    INV un1_prescale_reg_d1_I_30 (.A(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_14[0] ));
    AND2 un1_prescale_reg_d0_I_16 (.A(\prescale_reg[12]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_12[0] ));
    DFN1E1 \data_reg[2]  (.D(\data_reg_6[2] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[2]_net_1 ));
    AOI1B \prescale_reg_RNO[4]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_183), .Y(\prescale_reg_9[4] ));
    NOR2B un1_prescale_reg_d2_I_99 (.A(\DWACT_ADD_CI_0_g_array_4[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1_7[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_3[0] ));
    AND2 un1_prescale_reg_d2_I_119 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_1_7[0] )
        );
    MX2A \bit_cnt_RNO[3]  (.A(rxd_reg_net_1), .B(I_16_0), .S(
        un1_bit_cnt_0_sqmuxa), .Y(\bit_cnt_8[3] ));
    AO1 un1_prescale_reg_d2_I_80 (.A(\DWACT_ADD_CI_0_pog_array_2_1[0] )
        , .B(\DWACT_ADD_CI_0_g_array_3[0] ), .C(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_10[0] ));
    XOR2 un1_prescale_reg_d0_I_71 (.A(\DWACT_ADD_CI_0_partial_sum[16] )
        , .B(\DWACT_ADD_CI_0_g_array_4_0[0] ), .Y(
        \un1_prescale_reg_10_s0[16] ));
    XNOR2 un1_prescale_reg_0_I_37 (.A(N_7), .B(
        \prescale_reg[13]_net_1 ), .Y(\un1_prescale_reg_11[13] ));
    NOR3A \bit_cnt_RNIO7IH1[3]  (.A(un11lto3_0), .B(\bit_cnt[3]_net_1 )
        , .C(un11lt3_1), .Y(prescale_reg_2_sqmuxa_0));
    MX2 \prescale_reg_RNO_2[1]  (.A(\un1_prescale_reg_10_s1[1] ), .B(
        \un1_prescale_reg_10_s2[1] ), .S(un11lto3_0), .Y(N_159));
    XOR2 un1_prescale_reg_d2_I_55 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum_1[0] )
        );
    AO1 un1_prescale_reg_d1_I_93 (.A(
        \DWACT_ADD_CI_0_pog_array_0_16[0] ), .B(
        prescale_reg_0_sqmuxa_0), .C(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_1_8[0] ));
    NOR2A \bit_cnt_RNIC86N1[3]  (.A(un11lto3), .B(bit_cnt_1_sqmuxa), 
        .Y(bit_cnt_0_sqmuxa));
    NOR2B \data_reg_RNO[1]  (.A(\data_reg[2]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[1] ));
    DFN1C0 \prescale_reg[11]  (.D(\prescale_reg_9[11] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[11]_net_1 ));
    AO1 un1_prescale_reg_d0_I_80 (.A(
        \DWACT_ADD_CI_0_pog_array_2_1_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_2_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_10_0[0] ));
    DFN1C0 \prescale_reg[0]  (.D(\prescale_reg_9[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[0]_net_1 ));
    XOR2 un1_prescale_reg_d0_I_30 (.A(\prescale_reg[15]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_14_0[0] ));
    AOI1B \prescale_reg_RNO[8]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_187), .Y(\prescale_reg_9[8] ));
    AO1 un1_prescale_reg_d0_I_95 (.A(
        \DWACT_ADD_CI_0_pog_array_0_15[0] ), .B(
        \DWACT_ADD_CI_0_g_array_4_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_16[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_7_1[0] ));
    XOR2 un1_prescale_reg_d0_I_63 (.A(\DWACT_ADD_CI_0_partial_sum[14] )
        , .B(\DWACT_ADD_CI_0_g_array_11_2_1[0] ), .Y(
        \un1_prescale_reg_10_s0[14] ));
    NOR2B m_axis_tvalid_reg_RNO_0 (.A(UART_AD7606_0_s_axis_tready), .B(
        uart_0_m_axis_tvalid), .Y(m_axis_tvalid_reg5));
    XNOR2 un1_prescale_reg_d2_I_62 (.A(\DWACT_ADD_CI_0_g_array_11[0] ), 
        .B(prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s2[6] ));
    OR3 un1_prescale_reg_0_I_36 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[7] ), .C(\prescale_reg[12]_net_1 ), .Y(N_7));
    OR2A \prescale_reg_RNO_2[3]  (.A(un11lto3), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(N_161));
    AND2 un1_prescale_reg_d0_I_18 (.A(\prescale_reg[16]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_16[0] ));
    AND2 un1_prescale_reg_d0_I_118 (.A(
        \DWACT_ADD_CI_0_pog_array_0_11[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_12_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_5_1[0] ));
    MX2 \prescale_reg_RNO_1[14]  (.A(\un1_prescale_reg_10_s0[14] ), .B(
        \un1_prescale_reg_11[14] ), .S(prescale_reg46), .Y(N_151));
    AO1 un1_prescale_reg_d1_I_100 (.A(
        \DWACT_ADD_CI_0_pog_array_0_6[0] ), .B(prescale_reg_0_sqmuxa_0)
        , .C(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_1_3[0] ));
    XOR2 un1_prescale_reg_d0_I_24 (.A(\prescale_reg[10]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_0_9[0] )
        );
    OR3 un1_prescale_reg_0_I_18 (.A(\prescale_reg[3]_net_1 ), .B(
        \prescale_reg[4]_net_1 ), .C(\prescale_reg[5]_net_1 ), .Y(
        \DWACT_FDEC_E[2] ));
    MX2 \prescale_reg_RNO_0[0]  (.A(N_137), .B(N_158), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_179));
    AO1 un1_prescale_reg_d0_I_91 (.A(\DWACT_ADD_CI_0_pog_array_0_7[0] )
        , .B(\DWACT_ADD_CI_0_g_array_3_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_8[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_3_0[0] ));
    DFN1C0 \bit_cnt[1]  (.D(\bit_cnt_8[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\bit_cnt[1]_net_1 ));
    AO1 un1_prescale_reg_d2_I_94 (.A(
        \DWACT_ADD_CI_0_pog_array_1_5_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_6_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_2_0[0] ));
    AOI1B \prescale_reg_RNO[1]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_180), .Y(\prescale_reg_9[1] ));
    NOR2B un1_prescale_reg_d2_I_100 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_1_3_0[0] )
        );
    OR2 un1_prescale_reg_0_I_6 (.A(\prescale_reg[1]_net_1 ), .B(
        \prescale_reg[0]_net_1 ), .Y(N_18));
    AND2 un1_bit_cnt_I_6 (.A(\bit_cnt[1]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_g_array_0_1[0] ));
    MX2 \prescale_reg_RNO_2[16]  (.A(\un1_prescale_reg_10_s1[16] ), .B(
        \un1_prescale_reg_10_s2[16] ), .S(un11lto3), .Y(N_174));
    NOR2A un1_prescale_reg_d2_I_108 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s2[5] ));
    OR3 un1_prescale_reg_0_I_19 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\prescale_reg[6]_net_1 ), .Y(N_13));
    XOR2 un1_prescale_reg_d2_I_72 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_12_2_0[0] ), .Y(
        \un1_prescale_reg_10_s2[7] ));
    AND2 un1_prescale_reg_d2_I_116 (.A(
        \DWACT_ADD_CI_0_pog_array_2_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_2_2_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_3[0] ));
    AND2 un1_prescale_reg_d1_I_1 (.A(\un1_prescale_reg_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_TMP_1[0] ));
    MX2 \prescale_reg_RNO_2[5]  (.A(\DWACT_ADD_CI_0_g_array_12_1[0] ), 
        .B(\un1_prescale_reg_10_s2[5] ), .S(un11lto3_0), .Y(N_163));
    XOR2 un1_prescale_reg_d2_I_77 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_12_7[0] ), .Y(
        \un1_prescale_reg_10_s2[17] ));
    AO1 un1_prescale_reg_d2_I_86 (.A(\DWACT_ADD_CI_0_pog_array_3[0] ), 
        .B(\DWACT_ADD_CI_0_g_array_3[0] ), .C(
        \DWACT_ADD_CI_0_g_array_3_1_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_4[0] ));
    OR3 un1_prescale_reg_0_I_31 (.A(\DWACT_FDEC_E[6] ), .B(
        \prescale_reg[9]_net_1 ), .C(\prescale_reg[10]_net_1 ), .Y(N_9)
        );
    MX2 \prescale_reg_RNO_0[13]  (.A(N_150), .B(N_171), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_192));
    NOR3C \bit_cnt_RNIMRRQ[3]  (.A(\bit_cnt[3]_net_1 ), .B(un11lt3_1), 
        .C(rxd_reg_net_1), .Y(bit_cnt_1_sqmuxa));
    OR3 un1_prescale_reg_0_I_45 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\prescale_reg[15]_net_1 ), .Y(N_4));
    XNOR2 un1_prescale_reg_0_I_32 (.A(N_9), .B(
        \prescale_reg[11]_net_1 ), .Y(\un1_prescale_reg_11[11] ));
    OR3 un1_prescale_reg_0_I_13 (.A(\DWACT_FDEC_E[0] ), .B(
        \prescale_reg[3]_net_1 ), .C(\prescale_reg[4]_net_1 ), .Y(N_15)
        );
    DFN1C0 \prescale_reg[10]  (.D(\prescale_reg_9[10] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[10]_net_1 ));
    OR2 \bit_cnt_RNIB65E[1]  (.A(\bit_cnt[2]_net_1 ), .B(
        \bit_cnt[1]_net_1 ), .Y(un11lt3_1));
    MX2 \prescale_reg_RNO_2[15]  (.A(\un1_prescale_reg_10_s1[15] ), .B(
        \un1_prescale_reg_10_s2[15] ), .S(un11lto3_0), .Y(N_173));
    NOR2A un1_prescale_reg_d2_I_117 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_1_2_0[0] ));
    DFN1E1 \data_reg[6]  (.D(\data_reg_6[6] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[6]_net_1 ));
    XNOR2 un1_prescale_reg_0_I_7 (.A(N_18), .B(\prescale_reg[2]_net_1 )
        , .Y(\un1_prescale_reg_11[2] ));
    MX2 \prescale_reg_RNO_1[4]  (.A(\un1_prescale_reg_10_s0[4] ), .B(
        \un1_prescale_reg_11[4] ), .S(prescale_reg46), .Y(N_141));
    OR2 un1_prescale_reg_d2_I_102 (.A(\DWACT_ADD_CI_0_g_array_2_1[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3[0] ));
    AO1 un1_prescale_reg_d0_I_86 (.A(\DWACT_ADD_CI_0_pog_array_3_0[0] )
        , .B(\DWACT_ADD_CI_0_g_array_3_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_3_1_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_4_0[0] ));
    XOR2 un1_prescale_reg_d0_I_36 (.A(\prescale_reg[12]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_11[0] ));
    NOR2 m_axis_tvalid_reg_RNO (.A(m_axis_tvalid_reg5), .B(
        frame_error_reg_2_sqmuxa), .Y(m_axis_tvalid_reg_1_sqmuxa));
    XOR2 un1_prescale_reg_d2_I_60 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(\un1_prescale_reg_10_s2[1] ));
    MX2 \prescale_reg_RNO_0[6]  (.A(N_143), .B(N_164), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_185));
    AOI1B \prescale_reg_RNO[17]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_196), .Y(\prescale_reg_9[17] ));
    XOR2 un1_bit_cnt_I_11 (.A(\bit_cnt[2]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[2] ));
    OA1C un1_prescale_reg_d2_I_88 (.A(\DWACT_ADD_CI_0_g_array_11_1[0] )
        , .B(prescale_reg_0_sqmuxa_0), .C(prescale_reg_0_sqmuxa_0), .Y(
        \un1_prescale_reg_10_s2[11] ));
    DFN1C0 \prescale_reg[1]  (.D(\prescale_reg_9[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[1]_net_1 ));
    XOR2 un1_prescale_reg_d0_I_45 (.A(\prescale_reg[15]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[15] ));
    AO1 un1_prescale_reg_d0_I_103 (.A(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \DWACT_ADD_CI_0_g_array_3_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_4[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_1_0[0] ));
    OR3 \prescale_reg_RNIE7P51[12]  (.A(\prescale_reg[12]_net_1 ), .B(
        \prescale_reg[15]_net_1 ), .C(prescale_reg46lt18_8), .Y(
        prescale_reg46lt18_13));
    OR2A un1_prescale_reg_d1_I_92 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_12_2[0] ));
    AO1 un1_prescale_reg_d1_I_97 (.A(
        \DWACT_ADD_CI_0_pog_array_0_14[0] ), .B(
        prescale_reg_0_sqmuxa_0), .C(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_1_7_0[0] ));
    OR3 un1_prescale_reg_0_I_27 (.A(\DWACT_FDEC_E[4] ), .B(
        \prescale_reg[8]_net_1 ), .C(\prescale_reg[9]_net_1 ), .Y(N_10)
        );
    XOR2 un1_prescale_reg_d0_I_41 (.A(\prescale_reg[1]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum_0[1] )
        );
    XOR2 un1_prescale_reg_d2_I_70 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_3[0] ), .Y(\un1_prescale_reg_10_s2[8] )
        );
    AND2 un1_prescale_reg_d2_I_111 (.A(
        \DWACT_ADD_CI_0_pog_array_1_5_0[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_6[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_2_0[0] ));
    AO1 un1_prescale_reg_d0_I_79 (.A(\DWACT_ADD_CI_0_pog_array_0_0[0] )
        , .B(\DWACT_ADD_CI_0_TMP_2[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_1_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1[0] ));
    NOR2A rxd_reg_RNIADU11 (.A(rxd_reg_net_1), .B(un11lto3), .Y(
        bit_cnt_1_sqmuxa_1_0));
    OR2 \prescale_reg_RNISLI9[0]  (.A(\prescale_reg[0]_net_1 ), .B(
        \prescale_reg[2]_net_1 ), .Y(prescale_reg46lt18_2));
    MX2 \prescale_reg_RNO_2[12]  (.A(prescale_reg_0_sqmuxa_0), .B(
        \un1_prescale_reg_10_s2[12] ), .S(un11lto3_0), .Y(N_170));
    OR3 \prescale_reg_RNI0PO51[11]  (.A(\prescale_reg[17]_net_1 ), .B(
        \prescale_reg[11]_net_1 ), .C(prescale_reg46lt18_2), .Y(
        prescale_reg46lt18_10));
    OR2 \prescale_reg_RNIB5J9[8]  (.A(\prescale_reg[8]_net_1 ), .B(
        \prescale_reg[9]_net_1 ), .Y(prescale_reg46lt18_8));
    AO1 un1_prescale_reg_d0_I_88 (.A(\DWACT_ADD_CI_0_pog_array_0_9[0] )
        , .B(\DWACT_ADD_CI_0_g_array_11_1_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_10[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_4_0[0] ));
    MX2 \prescale_reg_RNO_1[6]  (.A(\un1_prescale_reg_10_s0[6] ), .B(
        \un1_prescale_reg_11[6] ), .S(prescale_reg46), .Y(N_143));
    XNOR2 un1_prescale_reg_d1_I_65 (.A(
        \DWACT_ADD_CI_0_g_array_12_6_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s1[15] ));
    MX2 \prescale_reg_RNO_2[17]  (.A(\un1_prescale_reg_10_s1[17] ), .B(
        \un1_prescale_reg_10_s2[17] ), .S(un11lto3), .Y(N_175));
    DFN1C0 \prescale_reg[13]  (.D(\prescale_reg_9[13] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[13]_net_1 ));
    MX2 \prescale_reg_RNO_0[9]  (.A(N_146), .B(N_167), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_188));
    XOR2 un1_prescale_reg_d0_I_62 (.A(\DWACT_ADD_CI_0_partial_sum[6] ), 
        .B(\DWACT_ADD_CI_0_g_array_11_0[0] ), .Y(
        \un1_prescale_reg_10_s0[6] ));
    AO1 un1_bit_cnt_I_22 (.A(\DWACT_ADD_CI_0_pog_array_0_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_1_7[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_0[0] ));
    XOR2 un1_bit_cnt_I_14 (.A(\bit_cnt[3]_net_1 ), .B(
        rxd_reg_RNIRCOG6_net_1), .Y(\DWACT_ADD_CI_0_partial_sum[3] ));
    XOR2 un1_prescale_reg_d0_I_67 (.A(\prescale_reg[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(\un1_prescale_reg_10_s0[2] )
        );
    OR2 \prescale_reg_RNI4UI9[4]  (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[4]_net_1 ), .Y(prescale_reg46lt18_6));
    MX2 \prescale_reg_RNO_2[10]  (.A(prescale_reg_0_sqmuxa_0), .B(
        \un1_prescale_reg_10_s2[10] ), .S(un11lto3_0), .Y(N_168));
    OR3 \prescale_reg_RNI8KV01[18]  (.A(\prescale_reg[14]_net_1 ), .B(
        \prescale_reg[18]_net_1 ), .C(\prescale_reg[3]_net_1 ), .Y(
        prescale_reg46lt18_9));
    XNOR2 un1_prescale_reg_d1_I_71 (.A(\DWACT_ADD_CI_0_g_array_3_1[0] )
        , .B(prescale_reg_0_sqmuxa_0), .Y(\un1_prescale_reg_10_s1[16] )
        );
    OR3 \prescale_reg_RNIMKHC3[11]  (.A(prescale_reg46lt18_10), .B(
        prescale_reg46lt18_9), .C(prescale_reg46lt18_13), .Y(
        prescale_reg46lt18_16));
    OR3 un1_prescale_reg_0_I_51 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[5] ), .Y(
        \DWACT_FDEC_E[28] ));
    XNOR2 un1_prescale_reg_0_I_26 (.A(N_11), .B(
        \prescale_reg[9]_net_1 ), .Y(\un1_prescale_reg_11[9] ));
    MX2 \prescale_reg_RNO_0[16]  (.A(N_153), .B(N_174), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_195));
    AND2 un1_prescale_reg_d0_I_119 (.A(
        \DWACT_ADD_CI_0_pog_array_0_15[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_16_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_7_1[0] ));
    AND2 un1_prescale_reg_d0_I_117 (.A(
        \DWACT_ADD_CI_0_pog_array_0_5[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_6_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_2_1[0] ));
    OR3 un1_prescale_reg_0_I_52 (.A(\DWACT_FDEC_E[28] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[12] ), .Y(N_2));
    NOR3A \bit_cnt_RNIMRRQ_0[3]  (.A(rxd_reg_net_1), .B(
        \bit_cnt[3]_net_1 ), .C(un11lt3_1), .Y(
        frame_error_reg_2_sqmuxa_0));
    AO1 un1_prescale_reg_d0_I_99 (.A(
        \DWACT_ADD_CI_0_pog_array_1_7_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_4_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_8_0[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_3_1[0] ));
    OR2 \prescale_reg_RNIVT5S[10]  (.A(\prescale_reg[13]_net_1 ), .B(
        \prescale_reg[10]_net_1 ), .Y(prescale_reg46lt18_4));
    DFN1E0C0 m_axis_tvalid_reg (.D(frame_error_reg_2_sqmuxa), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(m_axis_tvalid_reg_1_sqmuxa), .Q(
        uart_0_m_axis_tvalid));
    DFN1E1C0 \m_axis_tdata_reg[2]  (.D(\data_reg[2]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[2]));
    MX2 \prescale_reg_RNO_0[15]  (.A(N_152), .B(N_173), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_194));
    XOR2 un1_prescale_reg_d0_I_74 (.A(\prescale_reg[3]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_12[0] ), .Y(
        \un1_prescale_reg_10_s0[3] ));
    XOR2 un1_prescale_reg_d0_I_54 (.A(\prescale_reg[4]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[4] ));
    NOR2A rxd_reg_RNI956B (.A(PRESETN_c), .B(rxd_reg_net_1), .Y(
        data_reg_0_sqmuxa_0));
    MX2 \prescale_reg_RNO_1[9]  (.A(\un1_prescale_reg_10_s0[9] ), .B(
        \un1_prescale_reg_11[9] ), .S(prescale_reg46), .Y(N_146));
    OR2 un1_prescale_reg_0_I_44 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[9] ), .Y(\DWACT_FDEC_E[10] ));
    XOR2 un1_bit_cnt_I_13 (.A(un12lto0), .B(rxd_reg_RNIRCOG6_net_1), 
        .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    AND2 un1_prescale_reg_d0_I_114 (.A(
        \DWACT_ADD_CI_0_pog_array_0_9[0] ), .B(
        \prescale_reg[11]_net_1 ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ));
    OR2 un1_prescale_reg_0_I_21 (.A(\prescale_reg[6]_net_1 ), .B(
        \prescale_reg[7]_net_1 ), .Y(\DWACT_FDEC_E[3] ));
    AOI1B \prescale_reg_RNO[13]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_192), .Y(\prescale_reg_9[13] ));
    OR2 un1_prescale_reg_d1_I_90 (.A(\DWACT_ADD_CI_0_g_array_2_3_0[0] )
        , .B(\DWACT_ADD_CI_0_pog_array_2_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_3_1[0] ));
    MX2 \prescale_reg_RNO_1[3]  (.A(\un1_prescale_reg_10_s0[3] ), .B(
        \un1_prescale_reg_11[3] ), .S(prescale_reg46), .Y(N_140));
    DFN1E1 \data_reg[3]  (.D(\data_reg_6[3] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[3]_net_1 ));
    OR3 un1_prescale_reg_0_I_22 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[2] ), .C(\DWACT_FDEC_E[3] ), .Y(N_12));
    NOR2B \data_reg_RNO[0]  (.A(\data_reg[1]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[0] ));
    AND2 un1_prescale_reg_d0_I_15 (.A(\prescale_reg[6]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_6[0] ));
    AND2 un1_prescale_reg_d0_I_120 (.A(
        \DWACT_ADD_CI_0_pog_array_0_13[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_0_14_0[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_1_6_1[0] ));
    AND2 un1_prescale_reg_d0_I_111 (.A(
        \DWACT_ADD_CI_0_pog_array_1_5_1[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_6_1[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_2_1[0] ));
    XOR2 un1_prescale_reg_d0_I_60 (.A(
        \DWACT_ADD_CI_0_partial_sum_0[1] ), .B(
        \DWACT_ADD_CI_0_TMP_2[0] ), .Y(\un1_prescale_reg_10_s0[1] ));
    DFN1E1C0 \m_axis_tdata_reg[6]  (.D(\data_reg[6]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[6]));
    AND2 un1_prescale_reg_d0_I_11 (.A(\prescale_reg[4]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_4[0] ));
    XOR2 un1_prescale_reg_d2_I_68 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_12_5_0[0] ), .Y(
        \un1_prescale_reg_10_s2[13] ));
    AO1 un1_prescale_reg_d0_I_94 (.A(
        \DWACT_ADD_CI_0_pog_array_1_5_1[0] ), .B(
        \DWACT_ADD_CI_0_g_array_10_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_1_6_1[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_11_2_1[0] ));
    OR2 \bit_cnt_RNIMCAS[0]  (.A(un11lt3_1), .B(un11lt3_0), .Y(
        un11lto3_0));
    AO1 \bit_cnt_RNIET8SD[3]  (.A(data_reg_1_sqmuxa_1), .B(
        prescale_reg47), .C(data_reg_0_sqmuxa), .Y(
        un1_data_reg_1_sqmuxa));
    OR2A un1_prescale_reg_d1_I_108 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_12_1[0] ));
    XNOR2 un1_prescale_reg_0_I_40 (.A(N_6), .B(
        \prescale_reg[14]_net_1 ), .Y(\un1_prescale_reg_11[14] ));
    DFN1C0 \bit_cnt[0]  (.D(\bit_cnt_8[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(un12lto0));
    MX2 \prescale_reg_RNO_0[12]  (.A(N_149), .B(N_170), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_191));
    MX2 \prescale_reg_RNO_0[17]  (.A(N_154), .B(N_175), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_196));
    DFN1C0 \prescale_reg[14]  (.D(\prescale_reg_9[14] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[14]_net_1 ));
    XOR2 un1_prescale_reg_d2_I_78 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_11_3[0] ), .Y(
        \un1_prescale_reg_10_s2[18] ));
    MX2 \prescale_reg_RNO_0[4]  (.A(N_141), .B(N_162), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_183));
    AOI1B \prescale_reg_RNO[18]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_197), .Y(\prescale_reg_9[18] ));
    MX2 \prescale_reg_RNO_0[10]  (.A(N_147), .B(N_168), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_189));
    AND2 un1_prescale_reg_d0_I_6 (.A(\prescale_reg[8]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_8[0] ));
    XOR2 un1_bit_cnt_I_18 (.A(\DWACT_ADD_CI_0_partial_sum[2] ), .B(
        \DWACT_ADD_CI_0_g_array_1_7[0] ), .Y(I_18_0));
    XOR2 un1_prescale_reg_d0_I_49 (.A(\prescale_reg[6]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[6] ));
    MX2 \prescale_reg_RNO_1[18]  (.A(\un1_prescale_reg_10_s0[18] ), .B(
        \un1_prescale_reg_11[18] ), .S(prescale_reg46), .Y(N_155));
    MX2 \prescale_reg_RNO_2[8]  (.A(\un1_prescale_reg_10_s1[8] ), .B(
        \un1_prescale_reg_10_s2[8] ), .S(un11lto3_0), .Y(N_166));
    XOR2 un1_prescale_reg_d0_I_27 (.A(\prescale_reg[8]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_0_7[0] )
        );
    MX2 \prescale_reg_RNO_2[11]  (.A(\DWACT_ADD_CI_0_g_array_12_4[0] ), 
        .B(\un1_prescale_reg_10_s2[11] ), .S(un11lto3_0), .Y(N_169));
    DFN1C0 \prescale_reg[17]  (.D(\prescale_reg_9[17] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[17]_net_1 ));
    DFN1C0 \bit_cnt[2]  (.D(\bit_cnt_8[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\bit_cnt[2]_net_1 ));
    AO1A un1_prescale_reg_d2_I_92 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_11[0] ), .C(prescale_reg_0_sqmuxa_0), 
        .Y(\DWACT_ADD_CI_0_g_array_12_2_0[0] ));
    NOR2A rxd_reg_RNIGHAM6 (.A(data_reg_0_sqmuxa_1), .B(prescale_reg46)
        , .Y(data_reg_0_sqmuxa));
    XNOR2 un1_prescale_reg_0_I_35 (.A(N_8), .B(
        \prescale_reg[12]_net_1 ), .Y(\un1_prescale_reg_11[12] ));
    OR2 un1_prescale_reg_d1_I_87 (.A(\DWACT_ADD_CI_0_g_array_1_3[0] ), 
        .B(\DWACT_ADD_CI_0_pog_array_1_2[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_2_1_0[0] ));
    OR3 \prescale_reg_RNIMCFS[16]  (.A(\prescale_reg[1]_net_1 ), .B(
        \prescale_reg[16]_net_1 ), .C(prescale_reg46lt18_6), .Y(
        prescale_reg46lt18_12));
    XNOR2 un1_prescale_reg_0_I_17 (.A(N_14), .B(
        \prescale_reg[6]_net_1 ), .Y(\un1_prescale_reg_11[6] ));
    AND2 un1_prescale_reg_d0_I_112 (.A(
        \DWACT_ADD_CI_0_pog_array_1_3[0] ), .B(
        \DWACT_ADD_CI_0_pog_array_1_4[0] ), .Y(
        \DWACT_ADD_CI_0_pog_array_2_1_0[0] ));
    AO1 un1_prescale_reg_d0_I_100 (.A(
        \DWACT_ADD_CI_0_pog_array_0_6_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_6[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_7[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_3_1[0] ));
    AO1A un1_prescale_reg_d2_I_85 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_10[0] ), .C(prescale_reg_0_sqmuxa_0), 
        .Y(\DWACT_ADD_CI_0_g_array_12_5_0[0] ));
    INV un1_prescale_reg_d1_I_31 (.A(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_16[0] ));
    MX2 \prescale_reg_RNO_0[3]  (.A(N_140), .B(N_161), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_182));
    AO1A un1_prescale_reg_d1_I_79 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_TMP_1[0] ), .C(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_1_1[0] ));
    XOR2 un1_prescale_reg_d0_I_73 (.A(\DWACT_ADD_CI_0_partial_sum[10] )
        , .B(\DWACT_ADD_CI_0_g_array_11_1_0[0] ), .Y(
        \un1_prescale_reg_10_s0[10] ));
    XOR2 un1_prescale_reg_d0_I_53 (.A(\prescale_reg[10]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_partial_sum[10] ));
    MX2 \prescale_reg_RNO_0[7]  (.A(N_144), .B(N_165), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_186));
    DFN1E1 \data_reg[5]  (.D(\data_reg_6[5] ), .CLK(PCLK_c), .E(
        un1_data_reg_1_sqmuxa), .Q(\data_reg[5]_net_1 ));
    AOI1B \prescale_reg_RNO[16]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_195), .Y(\prescale_reg_9[16] ));
    AOI1B \prescale_reg_RNO[15]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_194), .Y(\prescale_reg_9[15] ));
    AO1 un1_prescale_reg_d0_I_85 (.A(
        \DWACT_ADD_CI_0_pog_array_0_11[0] ), .B(
        \DWACT_ADD_CI_0_g_array_10_0[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_12[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_12_5_1[0] ));
    MX2 \prescale_reg_RNO_0[5]  (.A(N_142), .B(N_163), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_184));
    DFN1E1C0 \m_axis_tdata_reg[7]  (.D(\data_reg[7]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[7]));
    AO1A un1_prescale_reg_d1_I_98 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_11_2[0] ), .C(prescale_reg_0_sqmuxa_0), 
        .Y(\DWACT_ADD_CI_0_g_array_12_6_0[0] ));
    OR3 un1_prescale_reg_0_I_16 (.A(\DWACT_FDEC_E[0] ), .B(
        \DWACT_FDEC_E[1] ), .C(\prescale_reg[5]_net_1 ), .Y(N_14));
    MX2B \prescale_reg_RNO_1[0]  (.A(\DWACT_ADD_CI_0_partial_sum_2[0] )
        , .B(\prescale_reg[0]_net_1 ), .S(prescale_reg46), .Y(N_137));
    OR3 \prescale_reg_RNIRA822[5]  (.A(prescale_reg46lt18_4), .B(
        prescale_reg46lt18_3), .C(prescale_reg46lt18_12), .Y(
        prescale_reg46lt18_15));
    XOR2 un1_prescale_reg_d0_I_31 (.A(\prescale_reg[17]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_0_16_0[0] ));
    DFN1C0 \prescale_reg[18]  (.D(\prescale_reg_9[18] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[18]_net_1 ));
    XOR2 un1_prescale_reg_d0_I_68 (.A(\DWACT_ADD_CI_0_partial_sum[13] )
        , .B(\DWACT_ADD_CI_0_g_array_12_5_1[0] ), .Y(
        \un1_prescale_reg_10_s0[13] ));
    AND2 un1_prescale_reg_d0_I_20 (.A(\prescale_reg[14]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_14[0] ));
    NOR2B un1_prescale_reg_d0_I_105 (.A(
        \DWACT_ADD_CI_0_g_array_0_10[0] ), .B(\prescale_reg[11]_net_1 )
        , .Y(\DWACT_ADD_CI_0_g_array_1_5[0] ));
    MX2 \prescale_reg_RNO_0[8]  (.A(N_145), .B(N_166), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_187));
    OR3 un1_prescale_reg_0_I_48 (.A(\DWACT_FDEC_E[6] ), .B(
        \DWACT_FDEC_E[10] ), .C(\DWACT_FDEC_E[11] ), .Y(N_3));
    CLKINT \bit_cnt_RNIMRRQ_2[3]  (.A(\bit_cnt_RNIMRRQ_1[3]_net_1 ), 
        .Y(prescale_reg_0_sqmuxa_0));
    AO1 un1_prescale_reg_d0_I_93 (.A(
        \DWACT_ADD_CI_0_pog_array_0_16_0[0] ), .B(
        \DWACT_ADD_CI_0_g_array_0_16[0] ), .C(
        \DWACT_ADD_CI_0_g_array_0_17[0] ), .Y(
        \DWACT_ADD_CI_0_g_array_1_8_0[0] ));
    AO1 un1_prescale_reg_d2_I_90 (.A(
        \DWACT_ADD_CI_0_pog_array_2_2_0[0] ), .B(
        prescale_reg_0_sqmuxa_0), .C(\DWACT_ADD_CI_0_g_array_2_3[0] ), 
        .Y(\DWACT_ADD_CI_0_g_array_3_1_0[0] ));
    OR2 un1_prescale_reg_0_I_11 (.A(\prescale_reg[3]_net_1 ), .B(
        \DWACT_FDEC_E[0] ), .Y(N_16));
    AOI1B \prescale_reg_RNO[11]  (.A(bit_cnt_1_sqmuxa), .B(
        prescale_reg47), .C(N_190), .Y(\prescale_reg_9[11] ));
    XNOR2 un1_prescale_reg_0_I_12 (.A(N_16), .B(
        \prescale_reg[4]_net_1 ), .Y(\un1_prescale_reg_11[4] ));
    MX2 \prescale_reg_RNO_2[6]  (.A(prescale_reg_0_sqmuxa_0), .B(
        \un1_prescale_reg_10_s2[6] ), .S(un11lto3_0), .Y(N_164));
    DFN1C0 \prescale_reg[8]  (.D(\prescale_reg_9[8] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\prescale_reg[8]_net_1 ));
    DFN1E1C0 \m_axis_tdata_reg[5]  (.D(\data_reg[5]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(frame_error_reg_2_sqmuxa), .Q(
        uart_0_m_axis_tdata[5]));
    MX2 \prescale_reg_RNO_2[14]  (.A(\un1_prescale_reg_10_s1[14] ), .B(
        \un1_prescale_reg_10_s2[14] ), .S(un11lto3_0), .Y(N_172));
    NOR2A un1_prescale_reg_d2_I_118 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_1_5_0[0] ));
    AND2 un1_prescale_reg_d0_I_19 (.A(\prescale_reg[15]_net_1 ), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_g_array_0_15[0] ));
    XNOR2 un1_prescale_reg_0_I_49 (.A(N_3), .B(
        \prescale_reg[17]_net_1 ), .Y(\un1_prescale_reg_11[17] ));
    NOR2 un1_prescale_reg_d1_I_117 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_1_2[0] )
        );
    NOR2 un1_prescale_reg_d1_I_119 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_pog_array_1_7_0[0] ));
    AXO2 \bit_cnt_RNIMRRQ_1[3]  (.A(rxd_reg_net_1), .B(
        \bit_cnt[3]_net_1 ), .C(un11lt3_1), .Y(
        \bit_cnt_RNIMRRQ_1[3]_net_1 ));
    XNOR2 un1_prescale_reg_0_I_43 (.A(N_5), .B(
        \prescale_reg[15]_net_1 ), .Y(\un1_prescale_reg_11[15] ));
    AO1 un1_prescale_reg_d1_I_101 (.A(
        \DWACT_ADD_CI_0_pog_array_0_12[0] ), .B(
        prescale_reg_0_sqmuxa_0), .C(prescale_reg_0_sqmuxa_0), .Y(
        \DWACT_ADD_CI_0_g_array_1_6[0] ));
    MX2 \prescale_reg_RNO_0[11]  (.A(N_148), .B(N_169), .S(
        un1_prescale_reg_1_m_sn_N_3), .Y(N_190));
    NOR2A un1_prescale_reg_d2_I_112 (.A(prescale_reg_0_sqmuxa_0), .B(
        prescale_reg_0_sqmuxa_0), .Y(\DWACT_ADD_CI_0_pog_array_2_1[0] )
        );
    NOR2B \data_reg_RNO[3]  (.A(\data_reg[4]_net_1 ), .B(un11lto3), .Y(
        \data_reg_6[3] ));
    XOR2 un1_prescale_reg_d2_I_65 (.A(prescale_reg_0_sqmuxa_0), .B(
        \DWACT_ADD_CI_0_g_array_12_6[0] ), .Y(
        \un1_prescale_reg_10_s2[15] ));
    OR2 un1_prescale_reg_0_I_34 (.A(\DWACT_FDEC_E[7] ), .B(
        \DWACT_FDEC_E[6] ), .Y(N_8));
    
endmodule


module uart(
       uart_0_m_axis_tdata,
       UART_AD7606_0_m_axis_tdata,
       UART_AD7606_0_s_axis_tready,
       uart_0_m_axis_tvalid,
       rxd_c,
       PRESETN_c,
       UART_AD7606_0_m_axis_tvalid,
       uart_0_s_axis_tready,
       txd_c,
       PCLK_c,
       uart_0_tx_busy
    );
output [7:0] uart_0_m_axis_tdata;
input  [7:0] UART_AD7606_0_m_axis_tdata;
input  UART_AD7606_0_s_axis_tready;
output uart_0_m_axis_tvalid;
input  rxd_c;
input  PRESETN_c;
input  UART_AD7606_0_m_axis_tvalid;
output uart_0_s_axis_tready;
output txd_c;
input  PCLK_c;
output uart_0_tx_busy;

    wire GND, VCC;
    
    uart_tx_8s uart_tx_inst (.UART_AD7606_0_m_axis_tdata({
        UART_AD7606_0_m_axis_tdata[7], UART_AD7606_0_m_axis_tdata[6], 
        UART_AD7606_0_m_axis_tdata[5], UART_AD7606_0_m_axis_tdata[4], 
        UART_AD7606_0_m_axis_tdata[3], UART_AD7606_0_m_axis_tdata[2], 
        UART_AD7606_0_m_axis_tdata[1], UART_AD7606_0_m_axis_tdata[0]}), 
        .uart_0_tx_busy(uart_0_tx_busy), .PCLK_c(PCLK_c), .txd_c(txd_c)
        , .uart_0_s_axis_tready(uart_0_s_axis_tready), 
        .UART_AD7606_0_m_axis_tvalid(UART_AD7606_0_m_axis_tvalid), 
        .PRESETN_c(PRESETN_c));
    uart_rx_8s uart_rx_inst (.uart_0_m_axis_tdata({
        uart_0_m_axis_tdata[7], uart_0_m_axis_tdata[6], 
        uart_0_m_axis_tdata[5], uart_0_m_axis_tdata[4], 
        uart_0_m_axis_tdata[3], uart_0_m_axis_tdata[2], 
        uart_0_m_axis_tdata[1], uart_0_m_axis_tdata[0]}), .rxd_c(rxd_c)
        , .PCLK_c(PCLK_c), .uart_0_m_axis_tvalid(uart_0_m_axis_tvalid), 
        .UART_AD7606_0_s_axis_tready(UART_AD7606_0_s_axis_tready), 
        .PRESETN_c(PRESETN_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module CAPB3II(
       CoreAPB3_0_APBmslave0_PRDATA,
       SPI_master_0_BIF_1_PRDATA,
       rx_fifo_data_out,
       SPI_master_0_BIF_1_PSELx,
       un1_PADDR
    );
input  [7:0] CoreAPB3_0_APBmslave0_PRDATA;
output [15:0] SPI_master_0_BIF_1_PRDATA;
input  [15:8] rx_fifo_data_out;
input  SPI_master_0_BIF_1_PSELx;
input  un1_PADDR;

    wire GND, VCC;
    
    NOR2B PRDATA_6 (.A(CoreAPB3_0_APBmslave0_PRDATA[6]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[6]));
    NOR2B PRDATA_4 (.A(CoreAPB3_0_APBmslave0_PRDATA[4]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[4]));
    NOR2B PRDATA_0 (.A(CoreAPB3_0_APBmslave0_PRDATA[0]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[0]));
    NOR2B PRDATA_5 (.A(CoreAPB3_0_APBmslave0_PRDATA[5]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[5]));
    NOR3C PRDATA_14 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[14]), .Y(SPI_master_0_BIF_1_PRDATA[14]));
    NOR3C PRDATA_13 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[13]), .Y(SPI_master_0_BIF_1_PRDATA[13]));
    VCC VCC_i (.Y(VCC));
    NOR3C PRDATA_11 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[11]), .Y(SPI_master_0_BIF_1_PRDATA[11]));
    NOR2B PRDATA_3 (.A(CoreAPB3_0_APBmslave0_PRDATA[3]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[3]));
    GND GND_i (.Y(GND));
    NOR3C PRDATA_9 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[9]), .Y(SPI_master_0_BIF_1_PRDATA[9]));
    NOR3C PRDATA_10 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[10]), .Y(SPI_master_0_BIF_1_PRDATA[10]));
    NOR2B PRDATA_2 (.A(CoreAPB3_0_APBmslave0_PRDATA[2]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[2]));
    NOR2B PRDATA_1 (.A(CoreAPB3_0_APBmslave0_PRDATA[1]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[1]));
    NOR3C PRDATA_15 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[15]), .Y(SPI_master_0_BIF_1_PRDATA[15]));
    NOR3C PRDATA_12 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[12]), .Y(SPI_master_0_BIF_1_PRDATA[12]));
    NOR2B PRDATA_7 (.A(CoreAPB3_0_APBmslave0_PRDATA[7]), .B(
        SPI_master_0_BIF_1_PSELx), .Y(SPI_master_0_BIF_1_PRDATA[7]));
    NOR3C PRDATA_8 (.A(un1_PADDR), .B(SPI_master_0_BIF_1_PSELx), .C(
        rx_fifo_data_out[8]), .Y(SPI_master_0_BIF_1_PRDATA[8]));
    
endmodule


module CoreAPB3_Z1(
       rx_fifo_data_out,
       SPI_master_0_BIF_1_PRDATA,
       CoreAPB3_0_APBmslave0_PRDATA,
       un1_PADDR,
       SPI_master_0_BIF_1_PSELx
    );
input  [15:8] rx_fifo_data_out;
output [15:0] SPI_master_0_BIF_1_PRDATA;
input  [7:0] CoreAPB3_0_APBmslave0_PRDATA;
input  un1_PADDR;
input  SPI_master_0_BIF_1_PSELx;

    wire GND, VCC;
    
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    CAPB3II CAPB3IIII (.CoreAPB3_0_APBmslave0_PRDATA({
        CoreAPB3_0_APBmslave0_PRDATA[7], 
        CoreAPB3_0_APBmslave0_PRDATA[6], 
        CoreAPB3_0_APBmslave0_PRDATA[5], 
        CoreAPB3_0_APBmslave0_PRDATA[4], 
        CoreAPB3_0_APBmslave0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_PRDATA[0]}), .SPI_master_0_BIF_1_PRDATA({
        SPI_master_0_BIF_1_PRDATA[15], SPI_master_0_BIF_1_PRDATA[14], 
        SPI_master_0_BIF_1_PRDATA[13], SPI_master_0_BIF_1_PRDATA[12], 
        SPI_master_0_BIF_1_PRDATA[11], SPI_master_0_BIF_1_PRDATA[10], 
        SPI_master_0_BIF_1_PRDATA[9], SPI_master_0_BIF_1_PRDATA[8], 
        SPI_master_0_BIF_1_PRDATA[7], SPI_master_0_BIF_1_PRDATA[6], 
        SPI_master_0_BIF_1_PRDATA[5], SPI_master_0_BIF_1_PRDATA[4], 
        SPI_master_0_BIF_1_PRDATA[3], SPI_master_0_BIF_1_PRDATA[2], 
        SPI_master_0_BIF_1_PRDATA[1], SPI_master_0_BIF_1_PRDATA[0]}), 
        .rx_fifo_data_out({rx_fifo_data_out[15], rx_fifo_data_out[14], 
        rx_fifo_data_out[13], rx_fifo_data_out[12], 
        rx_fifo_data_out[11], rx_fifo_data_out[10], 
        rx_fifo_data_out[9], rx_fifo_data_out[8]}), 
        .SPI_master_0_BIF_1_PSELx(SPI_master_0_BIF_1_PSELx), 
        .un1_PADDR(un1_PADDR));
    
endmodule


module sp_fifo(
       sp_fifo_0_dout,
       SPI_data_c,
       WEP,
       RE_c,
       empty_c,
       PRESETN_c,
       PCLK_c
    );
output [15:0] sp_fifo_0_dout;
input  [15:0] SPI_data_c;
input  WEP;
input  RE_c;
output empty_c;
input  PRESETN_c;
input  PCLK_c;

    wire \MEM_WADDR[3] , \WBINNXTSHIFT[3] , AO1_8_Y, XOR2_23_Y, 
        AO1_4_Y, AND2_13_Y, AND2_21_Y, sp_fifo_GND, XNOR2_7_Y, 
        \RBINNXTSHIFT[3] , MEMRENEG, MEMORYRE, XOR2_11_Y, NAND2_0_Y, 
        REP, XNOR2_0_Y, \RBINNXTSHIFT[2] , \MEM_WADDR[2] , EMPTYINT, 
        AND2_15_Y, \MEM_RADDR[3] , XOR2_8_Y, \MEM_RADDR[0] , 
        \RBINNXTSHIFT[0] , XOR2_28_Y, \MEM_WADDR[1] , \QXI[0] , DVLDI, 
        AND2_14_Y, AND3_1_Y, XNOR2_8_Y, XOR2_20_Y, XOR2_25_Y, 
        \MEM_RADDR[1] , \WBINNXTSHIFT[2] , XOR2_14_Y, XOR2_2_Y, 
        \MEM_RADDR[2] , \QXI[1] , \WBINNXTSHIFT[1] , AND2_0_Y, 
        XNOR2_1_Y, XNOR2_6_Y, XNOR2_5_Y, \WBINNXTSHIFT[4] , XOR2_0_Y, 
        AO1_6_Y, XOR2_26_Y, \MEM_RADDR[4] , \RBINNXTSHIFT[4] , 
        AND2_10_Y, \MEM_WADDR[4] , \RBINNXTSHIFT[1] , \QXI[13] , 
        AO1_2_Y, AND2_11_Y, AO1_1_Y, AO1_3_Y, AND2_20_Y, XNOR2_2_Y, 
        \MEM_WADDR[0] , \QXI[4] , \QXI[2] , \QXI[3] , \QXI[5] , 
        \QXI[6] , \QXI[7] , \RAM512X18_QXI[15]_RD8 , \QXI[8] , 
        \QXI[9] , \QXI[10] , \QXI[11] , \QXI[12] , \QXI[14] , 
        \QXI[15] , \RAM512X18_QXI[15]_RD17 , sp_fifo_VCC, MEMWENEG, 
        NAND2_1_Y, full, AND2_6_Y, AND2_9_Y, \WBINNXTSHIFT[0] , 
        XNOR2_4_Y, AO1_7_Y, AO1_9_Y, XOR2_24_Y, FULLINT, AND3_0_Y, 
        XNOR2_3_Y, AND2_3_Y, AND2_8_Y, XOR2_18_Y, XOR2_7_Y, XOR2_16_Y, 
        AND2A_0_Y, MEMORYWE, XOR2_10_Y;
    
    AND2 AND2_9 (.A(\MEM_RADDR[2] ), .B(sp_fifo_GND), .Y(AND2_9_Y));
    AND2 AND2_11 (.A(XOR2_2_Y), .B(XOR2_8_Y), .Y(AND2_11_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[1] ), .Y(
        XNOR2_3_Y));
    AND2 AND2_EMPTYINT (.A(AND2_8_Y), .B(XNOR2_4_Y), .Y(EMPTYINT));
    XOR2 XOR2_16 (.A(\MEM_RADDR[4] ), .B(sp_fifo_GND), .Y(XOR2_16_Y));
    AND2 AND2_13 (.A(\MEM_WADDR[2] ), .B(sp_fifo_GND), .Y(AND2_13_Y));
    AND2 AND2_MEMORYWE (.A(NAND2_1_Y), .B(WEP), .Y(MEMORYWE));
    DFN1E1C0 \DFN1E1C0_dout[3]  (.D(\QXI[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[3]));
    AND2A AND2A_0 (.A(empty_c), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[1] ));
    XOR2 XOR2_10 (.A(\MEM_RADDR[3] ), .B(sp_fifo_GND), .Y(XOR2_10_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    XOR2 XOR2_18 (.A(\MEM_RADDR[2] ), .B(sp_fifo_GND), .Y(XOR2_18_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_10_Y), .B(AO1_7_Y), .Y(
        \RBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\MEM_RADDR[1] ), .B(sp_fifo_GND), .Y(XOR2_7_Y));
    AND2 AND2_0 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_0_Y));
    INV REBUBBLE (.A(RE_c), .Y(REP));
    DFN1E1C0 \DFN1E1C0_dout[2]  (.D(\QXI[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[2]));
    DFN1E1C0 \DFN1E1C0_dout[11]  (.D(\QXI[11] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[11]));
    DFN1E1C0 \DFN1E1C0_dout[10]  (.D(\QXI[10] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[10]));
    DFN1E1C0 \DFN1E1C0_dout[14]  (.D(\QXI[14] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[14]));
    AO1 AO1_6 (.A(AND2_3_Y), .B(AO1_4_Y), .C(AO1_9_Y), .Y(AO1_6_Y));
    VCC VCC_i (.Y(sp_fifo_VCC));
    DFN1C0 DFN1C0_full (.D(FULLINT), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        full));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(DVLDI));
    AO1 AO1_1 (.A(XOR2_25_Y), .B(AND2_20_Y), .C(AND2_10_Y), .Y(AO1_1_Y)
        );
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_16_Y), .B(AO1_2_Y), .Y(
        \RBINNXTSHIFT[4] ));
    DFN1E1C0 \DFN1E1C0_dout[9]  (.D(\QXI[9] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[9]));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[2] ));
    DFN1E1C0 \DFN1E1C0_dout[7]  (.D(\QXI[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[7]));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[2] ));
    AO1 AO1_4 (.A(XOR2_26_Y), .B(AND2_0_Y), .C(AND2_6_Y), .Y(AO1_4_Y));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_7_Y), .B(AND2_20_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_18_Y), .B(AO1_1_Y), .Y(
        \RBINNXTSHIFT[2] ));
    AND2 AND2_8 (.A(AND3_0_Y), .B(XNOR2_7_Y), .Y(AND2_8_Y));
    DFN1E1C0 \DFN1E1C0_dout[5]  (.D(\QXI[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[5]));
    DFN1E1C0 \DFN1E1C0_dout[15]  (.D(\QXI[15] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[15]));
    DFN1E1C0 \DFN1E1C0_dout[12]  (.D(\QXI[12] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[12]));
    AND2 AND2_3 (.A(XOR2_23_Y), .B(XOR2_20_Y), .Y(AND2_3_Y));
    XOR2 XOR2_23 (.A(\MEM_WADDR[2] ), .B(sp_fifo_GND), .Y(XOR2_23_Y));
    DFN1E1C0 \DFN1E1C0_dout[6]  (.D(\QXI[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[6]));
    AND3 AND3_0 (.A(XNOR2_2_Y), .B(XNOR2_3_Y), .C(XNOR2_0_Y), .Y(
        AND3_0_Y));
    AND2 AND2_FULLINT (.A(AND2_14_Y), .B(XOR2_24_Y), .Y(FULLINT));
    XOR2 XOR2_24 (.A(\MEM_RADDR[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_24_Y));
    AO1 AO1_9 (.A(XOR2_20_Y), .B(AND2_13_Y), .C(AND2_21_Y), .Y(AO1_9_Y)
        );
    NAND2 NAND2_0 (.A(empty_c), .B(sp_fifo_VCC), .Y(NAND2_0_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[0] ));
    AO1 AO1_7 (.A(XOR2_2_Y), .B(AO1_1_Y), .C(AND2_9_Y), .Y(AO1_7_Y));
    XNOR2 XNOR2_4 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_4_Y));
    XNOR2 XNOR2_1 (.A(\MEM_RADDR[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        XNOR2_1_Y));
    XNOR2 XNOR2_8 (.A(\MEM_RADDR[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_8_Y));
    XNOR2 XNOR2_5 (.A(\MEM_RADDR[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_3 (.A(XOR2_8_Y), .B(AND2_9_Y), .C(AND2_15_Y), .Y(AO1_3_Y));
    AND2 AND2_6 (.A(\MEM_WADDR[1] ), .B(sp_fifo_GND), .Y(AND2_6_Y));
    XNOR2 XNOR2_6 (.A(\MEM_RADDR[1] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XNOR2_6_Y));
    GND GND_i (.Y(sp_fifo_GND));
    RAM512X18 \RAM512X18_QXI[15]  (.RADDR8(sp_fifo_GND), .RADDR7(
        sp_fifo_GND), .RADDR6(sp_fifo_GND), .RADDR5(sp_fifo_GND), 
        .RADDR4(sp_fifo_GND), .RADDR3(\MEM_RADDR[3] ), .RADDR2(
        \MEM_RADDR[2] ), .RADDR1(\MEM_RADDR[1] ), .RADDR0(
        \MEM_RADDR[0] ), .WADDR8(sp_fifo_GND), .WADDR7(sp_fifo_GND), 
        .WADDR6(sp_fifo_GND), .WADDR5(sp_fifo_GND), .WADDR4(
        sp_fifo_GND), .WADDR3(\MEM_WADDR[3] ), .WADDR2(\MEM_WADDR[2] ), 
        .WADDR1(\MEM_WADDR[1] ), .WADDR0(\MEM_WADDR[0] ), .WD17(
        sp_fifo_GND), .WD16(SPI_data_c[15]), .WD15(SPI_data_c[14]), 
        .WD14(SPI_data_c[13]), .WD13(SPI_data_c[12]), .WD12(
        SPI_data_c[11]), .WD11(SPI_data_c[10]), .WD10(SPI_data_c[9]), 
        .WD9(SPI_data_c[8]), .WD8(sp_fifo_GND), .WD7(SPI_data_c[7]), 
        .WD6(SPI_data_c[6]), .WD5(SPI_data_c[5]), .WD4(SPI_data_c[4]), 
        .WD3(SPI_data_c[3]), .WD2(SPI_data_c[2]), .WD1(SPI_data_c[1]), 
        .WD0(SPI_data_c[0]), .RW0(sp_fifo_GND), .RW1(sp_fifo_VCC), 
        .WW0(sp_fifo_GND), .WW1(sp_fifo_VCC), .PIPE(sp_fifo_GND), .REN(
        MEMRENEG), .WEN(MEMWENEG), .RCLK(PCLK_c), .WCLK(PCLK_c), 
        .RESET(PRESETN_c), .RD17(\RAM512X18_QXI[15]_RD17 ), .RD16(
        \QXI[15] ), .RD15(\QXI[14] ), .RD14(\QXI[13] ), .RD13(
        \QXI[12] ), .RD12(\QXI[11] ), .RD11(\QXI[10] ), .RD10(\QXI[9] )
        , .RD9(\QXI[8] ), .RD8(\RAM512X18_QXI[15]_RD8 ), .RD7(\QXI[7] )
        , .RD6(\QXI[6] ), .RD5(\QXI[5] ), .RD4(\QXI[4] ), .RD3(
        \QXI[3] ), .RD2(\QXI[2] ), .RD1(\QXI[1] ), .RD0(\QXI[0] ));
    NAND2 NAND2_1 (.A(full), .B(sp_fifo_VCC), .Y(NAND2_1_Y));
    DFN1E1C0 \DFN1E1C0_dout[8]  (.D(\QXI[8] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[8]));
    DFN1E1C0 \DFN1E1C0_dout[4]  (.D(\QXI[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[4]));
    XNOR2 XNOR2_2 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[0] ), .Y(
        XNOR2_2_Y));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_11_Y), .B(AO1_8_Y), .Y(
        \WBINNXTSHIFT[3] ));
    AO1 AO1_2 (.A(AND2_11_Y), .B(AO1_1_Y), .C(AO1_3_Y), .Y(AO1_2_Y));
    AND2 AND2_20 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_20_Y));
    DFN1E1C0 \DFN1E1C0_dout[13]  (.D(\QXI[13] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[13]));
    XOR2 XOR2_0 (.A(\MEM_WADDR[4] ), .B(sp_fifo_GND), .Y(XOR2_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[1] ));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[4] ));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[4] ));
    AND2 AND2_10 (.A(\MEM_RADDR[1] ), .B(sp_fifo_GND), .Y(AND2_10_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_0_Y), .B(AO1_6_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    XOR2 XOR2_26 (.A(\MEM_WADDR[1] ), .B(sp_fifo_GND), .Y(XOR2_26_Y));
    AND3 AND3_1 (.A(XNOR2_1_Y), .B(XNOR2_6_Y), .C(XNOR2_5_Y), .Y(
        AND3_1_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[3] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_28_Y), .B(AND2_0_Y), .Y(
        \WBINNXTSHIFT[1] ));
    XOR2 XOR2_14 (.A(\MEM_WADDR[2] ), .B(sp_fifo_GND), .Y(XOR2_14_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_14_Y), .B(AO1_4_Y), .Y(
        \WBINNXTSHIFT[2] ));
    XOR2 XOR2_2 (.A(\MEM_RADDR[2] ), .B(sp_fifo_GND), .Y(XOR2_2_Y));
    DFN1E1C0 \DFN1E1C0_dout[1]  (.D(\QXI[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[1]));
    XOR2 XOR2_25 (.A(\MEM_RADDR[1] ), .B(sp_fifo_GND), .Y(XOR2_25_Y));
    XOR2 XOR2_20 (.A(\MEM_WADDR[3] ), .B(sp_fifo_GND), .Y(XOR2_20_Y));
    AND2 AND2_14 (.A(AND3_1_Y), .B(XNOR2_8_Y), .Y(AND2_14_Y));
    DFN1E1C0 \DFN1E1C0_dout[0]  (.D(\QXI[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(sp_fifo_0_dout[0]));
    XOR2 XOR2_8 (.A(\MEM_RADDR[3] ), .B(sp_fifo_GND), .Y(XOR2_8_Y));
    XOR2 XOR2_28 (.A(\MEM_WADDR[1] ), .B(sp_fifo_GND), .Y(XOR2_28_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[0] ));
    AND2 AND2_15 (.A(\MEM_RADDR[3] ), .B(sp_fifo_GND), .Y(AND2_15_Y));
    DFN1P0 DFN1P0_empty (.D(EMPTYINT), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(empty_c));
    XNOR2 XNOR2_0 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_0_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_0_Y), .B(REP), .Y(MEMORYRE));
    XOR2 XOR2_11 (.A(\MEM_WADDR[3] ), .B(sp_fifo_GND), .Y(XOR2_11_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_7_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    AND2 AND2_21 (.A(\MEM_WADDR[3] ), .B(sp_fifo_GND), .Y(AND2_21_Y));
    AO1 AO1_8 (.A(XOR2_23_Y), .B(AO1_4_Y), .C(AND2_13_Y), .Y(AO1_8_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[3] ));
    
endmodule


module spi_clockmux(
       SPISCLKO_c,
       SPIMODE,
       clock_rx_mux1
    );
input  SPISCLKO_c;
input  SPIMODE;
output clock_rx_mux1;

    wire GND, VCC;
    
    OR2A clkout (.A(SPIMODE), .B(SPISCLKO_c), .Y(clock_rx_mux1));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module spi_chanctrl_Z2(
       clk_div_val,
       rx_fifo_data_in,
       tx_fifo_data_out,
       rx_fifo_first_in,
       mtx_rxbusy,
       mtx_alldone_i_0,
       master_ssel_out,
       rx_done_i_0,
       tx_fifo_empty_i,
       SPISCLKO_c,
       PRESETN_c,
       PCLK_c,
       tx_fifo_last_out,
       tx_channel_underflow,
       N_793,
       rx_fifo_write,
       un1_tx_alldone,
       SPISDI_c,
       cfg_enable,
       mtx_busy,
       cfg_frameurun,
       SPISDO_c,
       tx_fifo_empty,
       stxs_state,
       SPIMODE,
       tx_fifo_read
    );
input  [7:0] clk_div_val;
output [15:0] rx_fifo_data_in;
input  [15:0] tx_fifo_data_out;
output rx_fifo_first_in;
output mtx_rxbusy;
output mtx_alldone_i_0;
output master_ssel_out;
output rx_done_i_0;
input  tx_fifo_empty_i;
output SPISCLKO_c;
input  PRESETN_c;
input  PCLK_c;
input  tx_fifo_last_out;
output tx_channel_underflow;
output N_793;
output rx_fifo_write;
output un1_tx_alldone;
input  SPISDI_c;
input  cfg_enable;
output mtx_busy;
input  cfg_frameurun;
output SPISDO_c;
input  tx_fifo_empty;
output stxs_state;
input  SPIMODE;
output tx_fifo_read;

    wire msrxs_datain_0_sqmuxa_1_0, msrxs_first5, clock_rx_re, 
        stxp_strobe, SYNC2_stxp_strobetx_net_1, 
        SYNC3_stxp_strobetx_i_0, mtx_fiforead_net_1, \mtx_state_i[3] , 
        \mtx_state[3]_net_1 , stxs_state_i, mtx_re_q1_i, 
        mtx_re_q1_net_1, txfifo_davailable_i, txfifo_davailable_net_1, 
        msrxp_alldone_i, msrxp_alldone_net_1, SYNC2_stxp_strobetx_i, 
        SYNC2_stxp_dataerr_i, SYNC2_stxp_dataerr_net_1, 
        \mtx_state_ns_0_0_a3_2[5]_net_1 , N_620_3, 
        \mtx_state_ns_0_0_a3_1[5]_net_1 , \mtx_state_ns_0_0_a3_0[5] , 
        N_49, \mtx_state_ns_0_i_a3_3[3]_net_1 , 
        \mtx_state_ns_0_i_a3_2[3] , \mtx_state_ns_0_i_a3_1[3] , N_73, 
        \mtx_bitsel[2]_net_1 , \mtx_bitsel[3]_net_1 , 
        mtx_bitsellde_0_tz_0, N_47, \mtx_state[4]_net_1 , N_100, 
        \mtx_bitsel[0]_net_1 , mtx_oen_0_sqmuxa_0_a3_0, 
        mtx_lastframe_net_1, N_50, mtx_consecutive_0_sqmuxa_0_a3_1, 
        N_94, \mtx_state_ns_0_i_0[3] , \mtx_state_ns_0_i_a3_1_0[3] , 
        spi_clk_tick_net_1, \mtx_state_ns_i_i_a3_0_0[2] , 
        \mtx_state[2]_net_1 , stxs_checkorun_i_m_0, 
        stxs_checkorun_net_1, \mtx_state_ns_i_0_a3_0[1] , 
        \mtx_state[5]_net_1 , spi_clk_nextd4_NE_5, spi_clk_nextd4_2, 
        spi_clk_nextd4_3, spi_clk_nextd4_NE_3, spi_clk_nextd4_NE_4, 
        spi_clk_nextd4_6, spi_clk_nextd4_7, spi_clk_nextd4_NE_1, 
        \spi_clk_count[1]_net_1 , \clk_div_val_reg[1]_net_1 , 
        spi_clk_nextd4_0, \spi_clk_count[5]_net_1 , 
        \clk_div_val_reg[5]_net_1 , spi_clk_nextd4_4, stxs_midbit_2_1, 
        \stxs_bitcnt[0]_net_1 , \stxs_bitcnt[1]_net_1 , 
        \stxs_bitcnt[4]_net_1 , stxs_strobetx_2_sqmuxa_2, 
        stxs_datareg4_3, stxs_strobetx_2_sqmuxa_1, stxs_datareg4_3_0, 
        stxs_datareg4_2, SYNC1_stxs_txready_i_0, stxs_lastbit_3_0, 
        \stxs_bitsel[0]_net_1 , \stxs_bitsel[1]_net_1 , 
        msrxs_strobe_1_sqmuxa_0, mtx_midbit_i_0, stxs_midbit_net_1, 
        stxs_datareg_1_sqmuxa_1, clock_rx_fe, N_653_i_0, 
        stxs_direct_net_1, stxs_datareg_1_sqmuxa, un1_stxs_bitsel_1, 
        \mtx_state_RNO[3]_net_1 , N_48, mtx_oen_0_sqmuxa, 
        \txfifo_dhold_dec[0] , N_88, N_72, N_791, N_89, 
        \mtx_state_ns[0] , N_78, N_79, \mtx_state_RNO[1]_net_1 , N_77, 
        N_76, \mtx_state[1]_net_1 , N_53, \mtx_state[0]_net_1 , 
        mtx_consecutive_0_sqmuxa, N_56, mtx_fiforead_0_sqmuxa, N_67, 
        N_786, stxs_lastbit_3, stxs_lastbit_3_2, stxs_checkorun_m, 
        stxs_checkorun_1_sqmuxa, spi_data_out_iv_0, 
        spi_data_out_iv_0_tz, stxs_txzeros_net_1, 
        \stxs_datareg[15]_net_1 , \txfifo_datadelay[15]_net_1 , 
        mtx_spi_data_out_net_1, stxs_bitcnt_n4, stxs_bitcnt_151_0, 
        N_783, \stxs_bitsel[3]_net_1 , stxs_bitsel_24_0, N_796, N_782, 
        \stxs_bitsel[2]_net_1 , stxs_bitsel_c1, mtx_bitsele, N_99, 
        stxs_bitcnt_n2, stxs_bitcnt_c1, \stxs_bitcnt[2]_net_1 , 
        stxs_bitcnt_n3, stxs_bitcnt_c2, \stxs_bitcnt[3]_net_1 , 
        spi_clk_count_n2, spi_clk_count_c1, \spi_clk_count[2]_net_1 , 
        spi_clk_count_1_sqmuxa, spi_clk_count_n7, spi_clk_count_40_0, 
        \spi_clk_count[7]_net_1 , spi_clk_count_n6, 
        \spi_clk_count[6]_net_1 , spi_clk_count_c5, spi_clk_count_n5, 
        spi_clk_count_c4, spi_clk_count_n4, \spi_clk_count[4]_net_1 , 
        spi_clk_count_c3, spi_clk_count_n3, \spi_clk_count[3]_net_1 , 
        spi_clk_count_c2, \msrxs_shiftreg_5[2] , 
        \msrxs_shiftreg[1]_net_1 , msrxs_datain_0_sqmuxa_1, 
        \msrxs_shiftreg_5[4] , \msrxs_shiftreg[3]_net_1 , 
        \msrxs_shiftreg_5[6] , \msrxs_shiftreg[5]_net_1 , 
        \msrxs_shiftreg_5[7] , \msrxs_shiftreg[6]_net_1 , 
        \msrxs_shiftreg_5[8] , \msrxs_shiftreg[7]_net_1 , 
        \msrxs_shiftreg_5[10] , \msrxs_shiftreg[9]_net_1 , 
        \msrxs_shiftreg_5[12] , \msrxs_shiftreg[11]_net_1 , N_388, 
        \txfifo_datadelay[6]_net_1 , \stxs_datareg[6]_net_1 , 
        \stxs_datareg_10[7] , un1_stxs_datareg_2_sqmuxa, 
        stxs_strobetx_0_sqmuxa, stxs_checkorun_0_sqmuxa, N_395, 
        \txfifo_datadelay[13]_net_1 , \stxs_datareg[13]_net_1 , N_396, 
        \txfifo_datadelay[14]_net_1 , \stxs_datareg[14]_net_1 , 
        \stxs_datareg_10[14] , \stxs_datareg_10[15] , 
        \mtx_bitsel[1]_net_1 , \mtx_bitsel[4]_net_1 , 
        \txfifo_dhold_dec[2] , N_3_0, mtx_lastframe_1_sqmuxa, N_36, 
        N_4_0, N_798, N_797, stxs_dataerr_0_sqmuxa, stxs_dataerr_5, 
        stxs_dataerr_net_1, stxs_midbit_3, stxs_strobetx5, 
        \msrxs_shiftreg_5[1] , \msrxs_shiftreg[0]_net_1 , 
        stxs_state_RNO_net_1, stxs_state4, stxs_bitsele, 
        \un1_stxs_state4[0] , stxs_checkorun_5_iv, cfg_frameurun_m, 
        clock_rx_q3_net_1, clock_rx_q2_net_1, N_781, N_780, 
        stxs_pktsel_RNO_net_1, stxs_pktsel_net_1, N_85, N_790, N_60, 
        N_778, N_66_mux, un1_sresetn_16, N_777, N_65_mux, N_776, N_775, 
        N_66, un1_sresetn_11, N_84, mtx_state_0_sqmuxa, N_42, 
        mtx_spi_data_out_2, N_39, N_23, N_38, N_30, N_37, N_15_0, N_22, 
        N_785, N_21, \mtx_datahold[1]_net_1 , N_11_0, N_14_0, 
        \mtx_datahold[0]_net_1 , N_101, N_96, N_62, N_61, N_46, N_44, 
        \mtx_state_RNO[4]_net_1 , \mtx_state_ns[5] , N_26, 
        \mtx_datahold[2]_net_1 , N_29, N_33, mtx_consecutive_net_1, 
        cfg_enable_P1_net_1, \stxs_datareg_10[13] , N_394, 
        \stxs_datareg_10[12] , N_393, \txfifo_datadelay[12]_net_1 , 
        \stxs_datareg[12]_net_1 , \txfifo_datadelay[11]_net_1 , 
        \stxs_datareg[11]_net_1 , \stxs_datareg_10[8] , N_389, 
        \stxs_datareg_10[5] , N_386, \txfifo_datadelay[7]_net_1 , 
        \stxs_datareg[7]_net_1 , \txfifo_datadelay[4]_net_1 , 
        \stxs_datareg[4]_net_1 , un1_stxs_strobetx14_2, mtx_re_d, 
        mtx_re_q2_i_0, clock_rx_re_slave, msrxs_pktsel, 
        mtx_pktsel_net_1, \mtx_state_RNO[2]_net_1 , mtx_lastbit_net_1, 
        stxs_lastbit_net_1, spi_di_mux, data_rx_q2_net_1, 
        un1_msrxs_datain_1_sqmuxa_1, \msrxs_shiftreg_5[0] , 
        stxs_datareg_1_sqmuxa_2, N_384, \txfifo_datadelay[2]_net_1 , 
        \stxs_datareg[2]_net_1 , \stxs_datareg_10[3] , stxs_bitcnt_n1, 
        N_784, \stxs_datareg_10[10] , N_391, \stxs_datareg_10[9] , 
        N_390, \stxs_datareg_10[6] , N_387, \stxs_datareg_10[4] , 
        N_385, \stxs_datareg_10[2] , N_383, \stxs_datareg_10[1] , 
        N_382, \txfifo_datadelay[9]_net_1 , \stxs_datareg[9]_net_1 , 
        \txfifo_datadelay[8]_net_1 , \stxs_datareg[8]_net_1 , 
        \txfifo_datadelay[5]_net_1 , \stxs_datareg[5]_net_1 , 
        \txfifo_datadelay[3]_net_1 , \stxs_datareg[3]_net_1 , 
        \txfifo_datadelay[1]_net_1 , \stxs_datareg[1]_net_1 , 
        \txfifo_datadelay[0]_net_1 , \stxs_datareg[0]_net_1 , 
        stxs_datareg_2_sqmuxa, msrxs_first_2, stxs_first_net_1, 
        mtx_firstrx_net_1, \msrxp_frames_4[2] , 
        \msrxp_frames[2]_net_1 , CO1, un1_sresetn_4_i, 
        \msrxp_frames_4[1] , \msrxp_frames[0]_net_1 , 
        \msrxp_frames[1]_net_1 , \msrxp_frames_4[0] , un1_msrxp_strobe, 
        SYNC3_stxp_dataerr_i_0, \stxs_datareg_10[11] , N_392, 
        \txfifo_datadelay[10]_net_1 , \stxs_datareg[10]_net_1 , 
        \msrxs_shiftreg_5[9] , \msrxs_shiftreg[8]_net_1 , 
        \msrxs_shiftreg_5[14] , \msrxs_shiftreg[13]_net_1 , 
        \msrxs_shiftreg_5[13] , \msrxs_shiftreg[12]_net_1 , 
        \msrxs_shiftreg_5[11] , \msrxs_shiftreg[10]_net_1 , 
        \msrxs_shiftreg_5[5] , \msrxs_shiftreg[4]_net_1 , 
        \msrxs_shiftreg_5[3] , \msrxs_shiftreg[2]_net_1 , 
        \spi_clk_count[0]_net_1 , spi_clk_count_n1, spi_clk_count_n0, 
        spi_clk_tick_4, \clk_div_val_reg[7]_net_1 , 
        \clk_div_val_reg[6]_net_1 , \clk_div_val_reg[4]_net_1 , 
        \clk_div_val_reg[3]_net_1 , \clk_div_val_reg[2]_net_1 , 
        \clk_div_val_reg[0]_net_1 , N_774, spi_clk_next_net_1, 
        stxp_lastframe_5, un1_txfifo_read, msrxp_alldone_0_sqmuxa, 
        SYNC2_msrxp_strobe_net_1, SYNC3_msrxp_strobe_net_1, 
        \stxs_datareg_10[0] , msrxp_alldone_4, stxp_lastframe_net_1, 
        mtx_re_net_1, mtx_first_net_1, SYNC1_stxp_dataerr_net_1, 
        SYNC1_stxp_strobetx_net_1, stxs_strobetx_net_1, 
        clock_rx_q1_net_1, clock_rx_mux1, data_rx_q1_net_1, 
        SYNC1_msrxp_pktsel_net_1, SYNC1_msrxp_strobe_net_1, 
        msrxs_strobe_net_1, \msrxs_shiftreg[14]_net_1 , GND, VCC;
    
    OR2A \mtx_bitsel_RNO[0]  (.A(\mtx_bitsel[0]_net_1 ), .B(
        un1_sresetn_16), .Y(N_775));
    DFN1E1C0 \msrxs_datain[13]  (.D(\msrxs_shiftreg[12]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[13]));
    DFN1E1C0 \msrxs_datain[9]  (.D(\msrxs_shiftreg[8]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[9]));
    XA1 \stxs_bitcnt_RNO[2]  (.A(stxs_bitcnt_c1), .B(
        \stxs_bitcnt[2]_net_1 ), .C(N_653_i_0), .Y(stxs_bitcnt_n2));
    NOR2A \mtx_state_RNO_2[1]  (.A(spi_clk_tick_net_1), .B(
        \mtx_state[5]_net_1 ), .Y(\mtx_state_ns_i_0_a3_0[1] ));
    DFN1E0C0 \stxs_datareg[10]  (.D(\stxs_datareg_10[10] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[10]_net_1 ));
    NOR2A stxs_dataerr_RNISQLI (.A(txfifo_davailable_net_1), .B(
        stxs_dataerr_net_1), .Y(stxs_strobetx5));
    DFN1P0 SYNC1_stxs_txready (.D(txfifo_davailable_i), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(SYNC1_stxs_txready_i_0));
    MX2 \stxs_datareg_RNO[11]  (.A(N_392), .B(tx_fifo_data_out[11]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[11] ));
    OR2A stxs_direct_RNIJVO21_0 (.A(clock_rx_fe), .B(
        stxs_datareg_1_sqmuxa), .Y(un1_stxs_strobetx14_2));
    DFN1P0 spi_ssel_pos (.D(N_47), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        master_ssel_out));
    DFN1E1C0 \msrxs_shiftreg[12]  (.D(\msrxs_shiftreg_5[12] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[12]_net_1 ));
    NOR2B \stxs_datareg_RNO[0]  (.A(tx_fifo_data_out[0]), .B(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[0] ));
    DFN1E1C0 \msrxp_frames[2]  (.D(\msrxp_frames_4[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_msrxp_strobe), .Q(
        \msrxp_frames[2]_net_1 ));
    XO1A \stxs_bitsel_RNO[1]  (.A(\stxs_bitsel[1]_net_1 ), .B(
        \stxs_bitsel[0]_net_1 ), .C(N_796), .Y(N_781));
    DFN1P0 spi_clk_out (.D(\mtx_state_i[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(SPISCLKO_c));
    XOR2 \clk_div_val_reg_RNICS2C[0]  (.A(\clk_div_val_reg[0]_net_1 ), 
        .B(\spi_clk_count[0]_net_1 ), .Y(spi_clk_nextd4_0));
    DFN1C0 \spi_clk_count[0]  (.D(spi_clk_count_n0), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[0]_net_1 ));
    DFN1E1C0 \msrxs_shiftreg[8]  (.D(\msrxs_shiftreg_5[8] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[8]_net_1 ));
    NOR2B \spi_clk_count_RNO_0[7]  (.A(\spi_clk_count[6]_net_1 ), .B(
        spi_clk_count_c5), .Y(spi_clk_count_40_0));
    MX2 \stxs_datareg_RNO_0[3]  (.A(\txfifo_datadelay[2]_net_1 ), .B(
        \stxs_datareg[2]_net_1 ), .S(N_653_i_0), .Y(N_384));
    DFN1E0C0 stxp_lastframe (.D(stxp_lastframe_5), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_txfifo_read), .Q(stxp_lastframe_net_1));
    NOR2A msrxs_strobe_RNO_0 (.A(mtx_midbit_i_0), .B(stxs_midbit_net_1)
        , .Y(msrxs_strobe_1_sqmuxa_0));
    NOR3B cfg_enable_P1_RNIDQUT (.A(cfg_enable), .B(
        cfg_enable_P1_net_1), .C(SPIMODE), .Y(stxs_state4));
    DFN1E1P0 \mtx_bitsel[3]  (.D(N_778), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(mtx_bitsele), .Q(\mtx_bitsel[3]_net_1 ));
    DFN1E1P0 \mtx_bitsel[0]  (.D(N_775), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(mtx_bitsele), .Q(\mtx_bitsel[0]_net_1 ));
    NOR3A stxs_strobetx_RNO_2 (.A(\stxs_bitcnt[1]_net_1 ), .B(
        \stxs_bitcnt[4]_net_1 ), .C(\stxs_bitcnt[0]_net_1 ), .Y(
        stxs_strobetx_2_sqmuxa_1));
    NOR3C mtx_consecutive_RNO_1 (.A(\mtx_state[3]_net_1 ), .B(N_56), 
        .C(N_101), .Y(N_84));
    NOR2A msrxp_alldone_RNIPSVJ (.A(msrxp_alldone_net_1), .B(SPIMODE), 
        .Y(un1_tx_alldone));
    DFN1E1C0 \stxs_bitcnt[3]  (.D(stxs_bitcnt_n3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(\stxs_bitcnt[3]_net_1 ));
    OR3C mtx_alldone_RNO (.A(\mtx_state[4]_net_1 ), .B(
        \txfifo_dhold_dec[0] ), .C(mtx_oen_0_sqmuxa_0_a3_0), .Y(
        mtx_oen_0_sqmuxa));
    DFN1E1C0 \msrxs_shiftreg[5]  (.D(\msrxs_shiftreg_5[5] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[5]_net_1 ));
    DFN1E1C0 \msrxs_datain[1]  (.D(\msrxs_shiftreg[0]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[1]));
    DFN1E1C0 stxs_dataerr (.D(stxs_dataerr_5), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(stxs_dataerr_net_1));
    MX2 mtx_spi_data_out_RNO_6 (.A(N_33), .B(N_36), .S(
        \mtx_bitsel[2]_net_1 ), .Y(N_37));
    NOR2A \msrxs_shiftreg_RNO[8]  (.A(\msrxs_shiftreg[7]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[8] ));
    DFN1C0 cfg_enable_P1 (.D(cfg_enable), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .Q(cfg_enable_P1_net_1));
    DFN1C0 \txfifo_datadelay[14]  (.D(tx_fifo_data_out[14]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[14]_net_1 ));
    NOR3C stxs_lastbit_RNO (.A(stxs_lastbit_3_2), .B(stxs_lastbit_3_0), 
        .C(stxs_state), .Y(stxs_lastbit_3));
    DFN1E1C0 \msrxs_datain[3]  (.D(\msrxs_shiftreg[2]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[3]));
    XO1 \clk_div_val_reg_RNIQQ5O[1]  (.A(\spi_clk_count[1]_net_1 ), .B(
        \clk_div_val_reg[1]_net_1 ), .C(spi_clk_nextd4_0), .Y(
        spi_clk_nextd4_NE_3));
    XO1A \mtx_bitsel_RNO[1]  (.A(\mtx_bitsel[0]_net_1 ), .B(
        \mtx_bitsel[1]_net_1 ), .C(un1_sresetn_16), .Y(N_776));
    DFN1E1C0 \msrxs_datain[2]  (.D(\msrxs_shiftreg[1]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[2]));
    MX2 \stxs_datareg_RNO_0[12]  (.A(\txfifo_datadelay[11]_net_1 ), .B(
        \stxs_datareg[11]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_393));
    NOR2A \msrxs_shiftreg_RNO[5]  (.A(\msrxs_shiftreg[4]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[5] ));
    DFN1E1C0 \stxs_bitcnt[1]  (.D(stxs_bitcnt_n1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(\stxs_bitcnt[1]_net_1 ));
    NOR3B \mtx_state_RNI59HC2[4]  (.A(\mtx_state[4]_net_1 ), .B(
        \txfifo_dhold_dec[0] ), .C(N_49), .Y(N_99));
    MX2 \stxs_datareg_RNO[2]  (.A(N_383), .B(tx_fifo_data_out[2]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[2] ));
    OA1B \clk_div_val_reg_RNI57QF3[1]  (.A(spi_clk_nextd4_NE_4), .B(
        spi_clk_nextd4_NE_5), .C(N_48), .Y(spi_clk_count_1_sqmuxa));
    MX2 \stxs_datareg_RNO_0[6]  (.A(\txfifo_datadelay[5]_net_1 ), .B(
        \stxs_datareg[5]_net_1 ), .S(N_653_i_0), .Y(N_387));
    NOR2A \msrxs_shiftreg_RNO[14]  (.A(\msrxs_shiftreg[13]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[14] ));
    MX2C mtx_spi_data_out_RNO_9 (.A(\mtx_datahold[1]_net_1 ), .B(
        tx_fifo_data_out[9]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_785));
    INV spi_clk_out_RNO (.A(\mtx_state[3]_net_1 ), .Y(\mtx_state_i[3] )
        );
    DFN1C0 \mtx_state[3]  (.D(\mtx_state_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\mtx_state[3]_net_1 ));
    OR3 \clk_div_val_reg_RNISTBG1[1]  (.A(spi_clk_nextd4_2), .B(
        spi_clk_nextd4_3), .C(spi_clk_nextd4_NE_3), .Y(
        spi_clk_nextd4_NE_5));
    NOR2B \spi_clk_count_RNI9NHI[5]  (.A(spi_clk_count_c4), .B(
        \spi_clk_count[5]_net_1 ), .Y(spi_clk_count_c5));
    DFN1C0 SYNC1_stxp_dataerr (.D(stxs_dataerr_net_1), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(SYNC1_stxp_dataerr_net_1));
    NOR2A stxs_state_RNI5QFT2 (.A(stxs_state), .B(
        stxs_checkorun_1_sqmuxa), .Y(stxs_dataerr_0_sqmuxa));
    AO1A mtx_consecutive_RNO_0 (.A(N_50), .B(N_99), .C(N_84), .Y(
        un1_sresetn_11));
    NOR2 \mtx_state_RNO_1[3]  (.A(\mtx_state[4]_net_1 ), .B(
        \mtx_state[2]_net_1 ), .Y(\mtx_state_ns_0_i_a3_1_0[3] ));
    DFN1E1P0 \clk_div_val_reg[4]  (.D(clk_div_val[4]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[4]_net_1 ));
    DFN1C0 \txfifo_datadelay[8]  (.D(tx_fifo_data_out[8]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[8]_net_1 ));
    AO1A \mtx_state_RNO[2]  (.A(N_48), .B(\mtx_state_ns_i_i_a3_0_0[2] )
        , .C(mtx_state_0_sqmuxa), .Y(\mtx_state_RNO[2]_net_1 ));
    AO1 \mtx_state_RNO[5]  (.A(\mtx_state_ns_0_0_a3_2[5]_net_1 ), .B(
        N_101), .C(N_72), .Y(\mtx_state_ns[5] ));
    DFN1E0C0 msrxs_strobe (.D(msrxs_first5), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(un1_msrxs_datain_1_sqmuxa_1), .Q(
        msrxs_strobe_net_1));
    MX2 \stxs_datareg_RNO_0[15]  (.A(\txfifo_datadelay[14]_net_1 ), .B(
        \stxs_datareg[14]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_396));
    NOR2A mtx_first_RNO (.A(N_47), .B(N_48), .Y(N_44));
    DFN1E1C0 \msrxs_shiftreg[7]  (.D(\msrxs_shiftreg_5[7] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[7]_net_1 ));
    XA1 \spi_clk_count_RNO[4]  (.A(\spi_clk_count[4]_net_1 ), .B(
        spi_clk_count_c3), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n4));
    OR3 \mtx_state_RNO[0]  (.A(N_78), .B(N_79), .C(N_48), .Y(
        \mtx_state_ns[0] ));
    OR2 mtx_rxbusy_RNO (.A(N_85), .B(N_60), .Y(N_790));
    DFN1P0 mtx_re_q2 (.D(mtx_re_q1_i), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(mtx_re_q2_i_0));
    DFN1C0 \txfifo_datadelay[4]  (.D(tx_fifo_data_out[4]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[4]_net_1 ));
    NOR2A clock_rx_q3_RNI3249 (.A(clock_rx_q3_net_1), .B(
        clock_rx_q2_net_1), .Y(clock_rx_fe));
    DFN1E1C0 \clk_div_val_reg[7]  (.D(clk_div_val[7]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[7]_net_1 ));
    XA1 \stxs_bitcnt_RNO[4]  (.A(\stxs_bitcnt[4]_net_1 ), .B(
        stxs_bitcnt_151_0), .C(N_653_i_0), .Y(stxs_bitcnt_n4));
    AO1A \mtx_state_RNIFPJ51[4]  (.A(N_47), .B(\mtx_state[4]_net_1 ), 
        .C(N_100), .Y(mtx_bitsellde_0_tz_0));
    DFN1E1C0 \clk_div_val_reg[6]  (.D(clk_div_val[6]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[6]_net_1 ));
    DFN1E1C0 \msrxs_shiftreg[10]  (.D(\msrxs_shiftreg_5[10] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[10]_net_1 ));
    DFN1C0 SYNC2_msrxp_pktsel (.D(SYNC1_msrxp_pktsel_net_1), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(un1_sresetn_4_i));
    DFN1E1C0 \stxs_bitcnt[0]  (.D(N_784), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(clock_rx_fe), .Q(\stxs_bitcnt[0]_net_1 ));
    NOR2A stxs_checkorun_RNO_1 (.A(cfg_frameurun), .B(stxs_state), .Y(
        cfg_frameurun_m));
    NOR2B \stxs_bitcnt_RNIFL6O[1]  (.A(\stxs_bitcnt[0]_net_1 ), .B(
        \stxs_bitcnt[1]_net_1 ), .Y(stxs_bitcnt_c1));
    DFN1E1C0 \msrxp_frames[1]  (.D(\msrxp_frames_4[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_msrxp_strobe), .Q(
        \msrxp_frames[1]_net_1 ));
    NOR2A stxs_lastbit_RNO_0 (.A(\stxs_bitsel[0]_net_1 ), .B(
        \stxs_bitsel[1]_net_1 ), .Y(stxs_lastbit_3_0));
    MX2 \stxs_datareg_RNO_0[10]  (.A(\txfifo_datadelay[9]_net_1 ), .B(
        \stxs_datareg[9]_net_1 ), .S(N_653_i_0), .Y(N_391));
    AND2 \mtx_state_ns_0_0_a3_2[5]  (.A(N_620_3), .B(
        \mtx_state_ns_0_0_a3_1[5]_net_1 ), .Y(
        \mtx_state_ns_0_0_a3_2[5]_net_1 ));
    OR2A mtx_consecutive_RNIBOPH (.A(mtx_consecutive_net_1), .B(
        mtx_lastframe_net_1), .Y(N_49));
    DFN1E0C0 \stxs_datareg[1]  (.D(\stxs_datareg_10[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[1]_net_1 ));
    NOR2B \spi_clk_count_RNI0N89[2]  (.A(spi_clk_count_c1), .B(
        \spi_clk_count[2]_net_1 ), .Y(spi_clk_count_c2));
    NOR3 \mtx_state_RNO[3]  (.A(N_48), .B(\mtx_state_ns_0_i_0[3] ), .C(
        N_73), .Y(\mtx_state_RNO[3]_net_1 ));
    OR2 mtx_lastbit_RNI34FG (.A(mtx_lastbit_net_1), .B(
        stxs_lastbit_net_1), .Y(msrxs_first5));
    MX2 \stxs_datareg_RNO[1]  (.A(N_382), .B(tx_fifo_data_out[1]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[1] ));
    MX2 \stxs_datareg_RNO[13]  (.A(N_394), .B(tx_fifo_data_out[13]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[13] ));
    OR2 \mtx_state_RNINJM1[1]  (.A(\mtx_state[1]_net_1 ), .B(
        \mtx_state[0]_net_1 ), .Y(N_47));
    NOR2A \stxs_bitcnt_RNO[0]  (.A(N_653_i_0), .B(
        \stxs_bitcnt[0]_net_1 ), .Y(N_784));
    NOR3B stxs_direct_RNIGTKP (.A(stxs_state), .B(stxs_direct_net_1), 
        .C(un1_stxs_bitsel_1), .Y(stxs_datareg_1_sqmuxa));
    AOI1B \stxs_bitcnt_RNI74BN3[4]  (.A(stxs_datareg4_3_0), .B(
        stxs_datareg4_3), .C(un1_stxs_strobetx14_2), .Y(
        stxs_datareg_1_sqmuxa_2));
    MX2 clock_rx_q3_RNIF9K21 (.A(clock_rx_re_slave), .B(mtx_re_d), .S(
        SPIMODE), .Y(clock_rx_re));
    INV SYNC3_stxp_dataerr_RNO (.A(SYNC2_stxp_dataerr_net_1), .Y(
        SYNC2_stxp_dataerr_i));
    NOR2A \msrxs_shiftreg_RNO[9]  (.A(\msrxs_shiftreg[8]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[9] ));
    MX2 \stxs_datareg_RNO_0[7]  (.A(\txfifo_datadelay[6]_net_1 ), .B(
        \stxs_datareg[6]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_388));
    MX2 \mtx_state_RNO_0[4]  (.A(\mtx_state[4]_net_1 ), .B(
        \mtx_state[3]_net_1 ), .S(spi_clk_tick_net_1), .Y(N_62));
    NOR3C mtx_first_RNO_2 (.A(\mtx_state[4]_net_1 ), .B(
        \txfifo_dhold_dec[0] ), .C(spi_clk_tick_net_1), .Y(N_89));
    DFN1C0 \txfifo_datadelay[3]  (.D(tx_fifo_data_out[3]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[3]_net_1 ));
    NOR2B \spi_clk_count_RNIVO56[1]  (.A(\spi_clk_count[0]_net_1 ), .B(
        \spi_clk_count[1]_net_1 ), .Y(spi_clk_count_c1));
    MX2 mtx_spi_data_out_RNO_2 (.A(N_30), .B(N_37), .S(
        \mtx_bitsel[0]_net_1 ), .Y(N_38));
    AX1D \mtx_bitsel_RNO_0[2]  (.A(\mtx_bitsel[0]_net_1 ), .B(
        \mtx_bitsel[1]_net_1 ), .C(\mtx_bitsel[2]_net_1 ), .Y(N_65_mux)
        );
    NOR2A stxs_state_RNIT2521 (.A(clock_rx_fe), .B(N_653_i_0), .Y(
        N_796));
    DFN1E1C0 stxs_lastbit (.D(stxs_lastbit_3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(stxs_lastbit_net_1));
    DFN1C0 mtx_re (.D(N_786), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        mtx_re_net_1));
    DFN1E1C0 \msrxs_datain[8]  (.D(\msrxs_shiftreg[7]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[8]));
    DFN1E1P0 \clk_div_val_reg[3]  (.D(clk_div_val[3]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[3]_net_1 ));
    DFN1C0 \spi_clk_count[6]  (.D(spi_clk_count_n6), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[6]_net_1 ));
    DFN1E0C0 mtx_rxbusy_inst_1 (.D(\mtx_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_790), .Q(mtx_rxbusy));
    NOR2A \msrxs_shiftreg_RNO[6]  (.A(\msrxs_shiftreg[5]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[6] ));
    GND GND_i (.Y(GND));
    INV mtx_re_q2_RNO (.A(mtx_re_q1_net_1), .Y(mtx_re_q1_i));
    NOR2A \msrxs_shiftreg_RNO[4]  (.A(\msrxs_shiftreg[3]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[4] ));
    OR2 stxs_state_RNID0QR1 (.A(stxs_datareg_2_sqmuxa), .B(
        un1_stxs_strobetx14_2), .Y(un1_stxs_datareg_2_sqmuxa));
    AO1 stxs_pktsel_RNO (.A(\un1_stxs_state4[0] ), .B(clock_rx_fe), .C(
        stxs_pktsel_net_1), .Y(stxs_pktsel_RNO_net_1));
    NOR2B \stxs_bitcnt_RNO_0[4]  (.A(\stxs_bitcnt[3]_net_1 ), .B(
        stxs_bitcnt_c2), .Y(stxs_bitcnt_151_0));
    NOR2A \msrxs_shiftreg_RNO[0]  (.A(spi_di_mux), .B(msrxs_first5), 
        .Y(\msrxs_shiftreg_5[0] ));
    NOR2A mtx_rxbusy_RNO_0 (.A(mtx_busy), .B(\mtx_state[2]_net_1 ), .Y(
        N_85));
    MX2 \stxs_datareg_RNO[10]  (.A(N_391), .B(tx_fifo_data_out[10]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[10] ));
    OR2 \mtx_state_RNIGRBQ1[0]  (.A(N_96), .B(N_50), .Y(N_60));
    DFN1C0 stxs_pktsel (.D(stxs_pktsel_RNO_net_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(stxs_pktsel_net_1));
    NOR2B stxs_strobetx_RNO (.A(stxs_checkorun_0_sqmuxa), .B(
        stxs_state), .Y(stxs_strobetx_0_sqmuxa));
    NOR2A stxs_state_RNIQ01P_0 (.A(stxs_state), .B(un1_stxs_bitsel_1), 
        .Y(N_653_i_0));
    NOR2A \msrxs_shiftreg_RNO[13]  (.A(\msrxs_shiftreg[12]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[13] ));
    XOR2 \clk_div_val_reg_RNIO83C[6]  (.A(\clk_div_val_reg[6]_net_1 ), 
        .B(\spi_clk_count[6]_net_1 ), .Y(spi_clk_nextd4_6));
    DFN1C0 \spi_clk_count[7]  (.D(spi_clk_count_n7), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[7]_net_1 ));
    XA1 \spi_clk_count_RNO[1]  (.A(\spi_clk_count[1]_net_1 ), .B(
        \spi_clk_count[0]_net_1 ), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n1));
    AO1 stxs_dataerr_RNO (.A(stxs_dataerr_0_sqmuxa), .B(
        stxs_dataerr_net_1), .C(stxs_checkorun_m), .Y(stxs_dataerr_5));
    OR2A msrxp_strobe_RNIMEIF (.A(un1_sresetn_4_i), .B(rx_fifo_write), 
        .Y(un1_msrxp_strobe));
    DFN1C0 \txfifo_datadelay[10]  (.D(tx_fifo_data_out[10]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[10]_net_1 ));
    NOR2 \mtx_state_RNO_0[1]  (.A(\mtx_state[1]_net_1 ), .B(
        spi_clk_tick_net_1), .Y(N_77));
    NOR2A clock_rx_q3_RNI3249_0 (.A(clock_rx_q2_net_1), .B(
        clock_rx_q3_net_1), .Y(clock_rx_re_slave));
    NOR3B mtx_first_RNO_1 (.A(spi_clk_tick_net_1), .B(N_47), .C(
        \mtx_state[4]_net_1 ), .Y(N_88));
    OA1C \mtx_bitsel_RNO_1[3]  (.A(\mtx_bitsel[2]_net_1 ), .B(
        \mtx_bitsel[0]_net_1 ), .C(\mtx_bitsel[1]_net_1 ), .Y(N_66));
    DFN1C0 SYNC1_msrxp_pktsel (.D(msrxs_pktsel), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SYNC1_msrxp_pktsel_net_1));
    DFN1E0C0 \stxs_datareg[4]  (.D(\stxs_datareg_10[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[4]_net_1 ));
    DFN1E0C0 \stxs_datareg[3]  (.D(\stxs_datareg_10[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[3]_net_1 ));
    DFN1P0 SYNC3_stxp_strobetx (.D(SYNC2_stxp_strobetx_i), .CLK(PCLK_c)
        , .PRE(PRESETN_c), .Q(SYNC3_stxp_strobetx_i_0));
    DFN1E1C0 \stxs_bitsel[3]  (.D(N_783), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(stxs_bitsele), .Q(\stxs_bitsel[3]_net_1 ));
    MX2C mtx_spi_data_out_RNO_7 (.A(\mtx_datahold[0]_net_1 ), .B(
        tx_fifo_data_out[8]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_11_0));
    NOR2A \msrxs_shiftreg_RNO[12]  (.A(\msrxs_shiftreg[11]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[12] ));
    NOR2A \mtx_state_RNO_0[2]  (.A(\mtx_state[2]_net_1 ), .B(
        spi_clk_tick_net_1), .Y(\mtx_state_ns_i_i_a3_0_0[2] ));
    NOR2A \msrxs_shiftreg_RNO[1]  (.A(\msrxs_shiftreg[0]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[1] ));
    DFN1E1C0 msrxs_first (.D(msrxs_first_2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(msrxs_datain_0_sqmuxa_1), .Q(rx_fifo_first_in));
    MX2 mtx_spi_data_out_RNO_0 (.A(N_23), .B(N_38), .S(
        \mtx_bitsel[1]_net_1 ), .Y(N_39));
    XO1A \stxs_bitsel_RNO[3]  (.A(\stxs_bitsel[3]_net_1 ), .B(
        stxs_bitsel_24_0), .C(N_796), .Y(N_783));
    DFN1E1C0 \msrxs_shiftreg[14]  (.D(\msrxs_shiftreg_5[14] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[14]_net_1 ));
    MX2 \stxs_datareg_RNO[7]  (.A(N_388), .B(tx_fifo_data_out[7]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[7] ));
    MX2 mtx_spi_data_out_RNO_5 (.A(N_26), .B(N_29), .S(
        \mtx_bitsel[2]_net_1 ), .Y(N_30));
    MX2 mtx_fiforead_RNIS4RD1 (.A(stxp_strobe), .B(mtx_fiforead_net_1), 
        .S(SPIMODE), .Y(tx_fifo_read));
    AND2 \mtx_state_ns_0_0_a3_1[5]  (.A(\mtx_state_ns_0_0_a3_0[5] ), 
        .B(N_49), .Y(\mtx_state_ns_0_0_a3_1[5]_net_1 ));
    DFN1E1C0 \msrxs_shiftreg[13]  (.D(\msrxs_shiftreg_5[13] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[13]_net_1 ));
    DFN1E1C0 stxs_first (.D(stxs_state_i), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_796), .Q(stxs_first_net_1));
    MX2 \stxs_datareg_RNO_0[14]  (.A(\txfifo_datadelay[13]_net_1 ), .B(
        \stxs_datareg[13]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_395));
    DFN1P0 SYNC3_msrxp_strobe (.D(SYNC2_msrxp_strobe_net_1), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(SYNC3_msrxp_strobe_net_1));
    DFN1E1C0 stxs_checkorun (.D(stxs_checkorun_5_iv), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(clock_rx_fe), .Q(stxs_checkorun_net_1));
    OR2B \mtx_bitsel_RNIB3SP1[2]  (.A(N_67), .B(N_3_0), .Y(
        \txfifo_dhold_dec[2] ));
    NOR2A \mtx_state_RNIKE5O[3]  (.A(\mtx_state[3]_net_1 ), .B(N_50), 
        .Y(N_786));
    NOR2B SYNC3_stxp_strobetx_RNI3G1P (.A(SYNC2_stxp_strobetx_net_1), 
        .B(SYNC3_stxp_strobetx_i_0), .Y(stxp_strobe));
    MX2 \stxs_datareg_RNO[6]  (.A(N_387), .B(tx_fifo_data_out[6]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[6] ));
    DFN1C0 \txfifo_datadelay[0]  (.D(tx_fifo_data_out[0]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[0]_net_1 ));
    DFN1C0 mtx_spi_data_out (.D(mtx_spi_data_out_2), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(mtx_spi_data_out_net_1));
    DFN1C0 \spi_clk_count[4]  (.D(spi_clk_count_n4), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[4]_net_1 ));
    DFN1E1C0 \mtx_datahold[1]  (.D(tx_fifo_data_out[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(mtx_fiforead_0_sqmuxa), .Q(
        \mtx_datahold[1]_net_1 ));
    DFN1E1C0 \msrxs_datain[11]  (.D(\msrxs_shiftreg[10]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[11]));
    spi_clockmux UCLKMUX1 (.SPISCLKO_c(SPISCLKO_c), .SPIMODE(SPIMODE), 
        .clock_rx_mux1(clock_rx_mux1));
    NOR2A SYNC3_msrxp_strobe_RNI1LDN (.A(SYNC2_msrxp_strobe_net_1), .B(
        SYNC3_msrxp_strobe_net_1), .Y(msrxp_alldone_0_sqmuxa));
    OR2 \stxs_bitsel_RNO_0[3]  (.A(\stxs_bitsel[2]_net_1 ), .B(
        stxs_bitsel_c1), .Y(stxs_bitsel_24_0));
    DFN1C0 \spi_clk_count[5]  (.D(spi_clk_count_n5), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[5]_net_1 ));
    DFN1E1C0 \msrxp_frames[0]  (.D(\msrxp_frames_4[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(un1_msrxp_strobe), .Q(
        \msrxp_frames[0]_net_1 ));
    DFN1E1C0 \msrxs_shiftreg[2]  (.D(\msrxs_shiftreg_5[2] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[2]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR2B mtx_lastbit_RNIID3J1 (.A(msrxs_first5), .B(clock_rx_re), .Y(
        msrxs_datain_0_sqmuxa_1_0));
    INV SYNC1_stxs_txready_RNO (.A(txfifo_davailable_net_1), .Y(
        txfifo_davailable_i));
    DFN1P0 SYNC1_msrxp_strobe (.D(msrxs_strobe_net_1), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(SYNC1_msrxp_strobe_net_1));
    XO1A \stxs_bitsel_RNO[2]  (.A(\stxs_bitsel[2]_net_1 ), .B(
        stxs_bitsel_c1), .C(N_796), .Y(N_782));
    NOR3C mtx_consecutive_RNO (.A(\mtx_state[3]_net_1 ), .B(N_56), .C(
        mtx_consecutive_0_sqmuxa_0_a3_1), .Y(mtx_consecutive_0_sqmuxa));
    DFN1E0C0 spi_clk_next (.D(N_774), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(N_48), .Q(spi_clk_next_net_1));
    DFN1C0 mtx_lastbit (.D(\txfifo_dhold_dec[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(mtx_lastbit_net_1));
    DFN1C0 \spi_clk_count[2]  (.D(spi_clk_count_n2), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[2]_net_1 ));
    NOR3A \mtx_state_ns_0_i_a3_3_RNO[3]  (.A(N_94), .B(
        \mtx_bitsel[0]_net_1 ), .C(\mtx_state[2]_net_1 ), .Y(
        \mtx_state_ns_0_i_a3_2[3] ));
    DFN1E1C0 \msrxs_datain[10]  (.D(\msrxs_shiftreg[9]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[10]));
    NOR2A \stxs_bitsel_RNIUUNA[3]  (.A(stxs_lastbit_3_2), .B(
        stxs_bitsel_c1), .Y(un1_stxs_bitsel_1));
    OR2A \mtx_bitsel_RNO[2]  (.A(N_65_mux), .B(un1_sresetn_16), .Y(
        N_777));
    DFN1C0 clock_rx_q3 (.D(clock_rx_q2_net_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(clock_rx_q3_net_1));
    XOR2 \clk_div_val_reg_RNII23C[3]  (.A(\clk_div_val_reg[3]_net_1 ), 
        .B(\spi_clk_count[3]_net_1 ), .Y(spi_clk_nextd4_3));
    XO1 \clk_div_val_reg_RNIAB6O[5]  (.A(\spi_clk_count[5]_net_1 ), .B(
        \clk_div_val_reg[5]_net_1 ), .C(spi_clk_nextd4_4), .Y(
        spi_clk_nextd4_NE_1));
    XOR2 \clk_div_val_reg_RNIG03C[2]  (.A(\clk_div_val_reg[2]_net_1 ), 
        .B(\spi_clk_count[2]_net_1 ), .Y(spi_clk_nextd4_2));
    AOI1 \mtx_state_RNIAP131[0]  (.A(\mtx_state[0]_net_1 ), .B(N_53), 
        .C(\mtx_state[2]_net_1 ), .Y(N_96));
    DFN1E0C0 \stxs_datareg[0]  (.D(\stxs_datareg_10[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[0]_net_1 ));
    DFN1C0 \txfifo_datadelay[5]  (.D(tx_fifo_data_out[5]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[5]_net_1 ));
    DFN1E1P0 \mtx_bitsel[2]  (.D(N_777), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(mtx_bitsele), .Q(\mtx_bitsel[2]_net_1 ));
    OA1C stxs_checkorun_RNO (.A(stxs_checkorun_i_m_0), .B(
        stxs_checkorun_0_sqmuxa), .C(cfg_frameurun_m), .Y(
        stxs_checkorun_5_iv));
    NOR2A \mtx_state_RNO[4]  (.A(N_62), .B(N_48), .Y(
        \mtx_state_RNO[4]_net_1 ));
    MX2C mtx_spi_data_out_RNO_11 (.A(\mtx_datahold[2]_net_1 ), .B(
        tx_fifo_data_out[10]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_26));
    DFN1E1C0 \msrxs_datain[12]  (.D(\msrxs_shiftreg[11]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[12]));
    NOR2A active_0_a3 (.A(SPIMODE), .B(tx_fifo_empty), .Y(N_793));
    MX2 \stxs_datareg_RNO_0[9]  (.A(\txfifo_datadelay[8]_net_1 ), .B(
        \stxs_datareg[8]_net_1 ), .S(N_653_i_0), .Y(N_390));
    DFN1C0 spi_clk_tick (.D(spi_clk_tick_4), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(spi_clk_tick_net_1));
    NOR2B stxs_state_RNIQ01P (.A(un1_stxs_bitsel_1), .B(stxs_state), 
        .Y(stxs_datareg_2_sqmuxa));
    DFN1E1C0 mtx_lastframe (.D(tx_fifo_last_out), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(mtx_lastframe_1_sqmuxa), .Q(mtx_lastframe_net_1)
        );
    NOR2A \mtx_state_ns_0_0_a3_1_RNO[5]  (.A(\mtx_state[4]_net_1 ), .B(
        \mtx_bitsel[0]_net_1 ), .Y(\mtx_state_ns_0_0_a3_0[5] ));
    MX2C mtx_spi_data_out_RNO_14 (.A(tx_fifo_data_out[7]), .B(
        tx_fifo_data_out[15]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_36));
    DFN1E1C0 \msrxs_datain[15]  (.D(\msrxs_shiftreg[14]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[15]));
    MX2 \stxs_datareg_RNO_0[11]  (.A(\txfifo_datadelay[10]_net_1 ), .B(
        \stxs_datareg[10]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_392));
    DFN1E1P0 mtx_first (.D(N_44), .CLK(PCLK_c), .PRE(PRESETN_c), .E(
        N_791), .Q(mtx_first_net_1));
    NOR3 \mtx_state_RNO[1]  (.A(N_48), .B(N_77), .C(N_76), .Y(
        \mtx_state_RNO[1]_net_1 ));
    DFN1E1C0 \msrxs_datain[4]  (.D(\msrxs_shiftreg[3]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[4]));
    AO1 \mtx_state_RNI39PT2[4]  (.A(\txfifo_dhold_dec[0] ), .B(
        \mtx_state[4]_net_1 ), .C(N_100), .Y(un1_sresetn_16));
    DFN1E1C0 \msrxs_shiftreg[9]  (.D(\msrxs_shiftreg_5[9] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[9]_net_1 ));
    NOR3C stxs_state_RNI9VPA2 (.A(stxs_datareg4_3), .B(stxs_midbit_2_1)
        , .C(stxs_state), .Y(stxs_midbit_3));
    DFN1E1C0 \msrxs_datain[7]  (.D(\msrxs_shiftreg[6]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[7]));
    DFN1C0 stxs_state_inst_1 (.D(stxs_state_RNO_net_1), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(stxs_state));
    MX2 \stxs_datareg_RNO[8]  (.A(N_389), .B(tx_fifo_data_out[8]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[8] ));
    NOR2A \mtx_bitsel_RNIB3SP1[4]  (.A(N_4_0), .B(
        \mtx_bitsel[4]_net_1 ), .Y(\txfifo_dhold_dec[0] ));
    DFN1P0 \mtx_state[0]  (.D(\mtx_state_ns[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\mtx_state[0]_net_1 ));
    NOR2B tmp_1_CO1 (.A(\msrxp_frames[1]_net_1 ), .B(
        \msrxp_frames[0]_net_1 ), .Y(CO1));
    NOR3A \stxs_bitcnt_RNI1BBS1[4]  (.A(stxs_datareg4_2), .B(
        \stxs_bitcnt[1]_net_1 ), .C(\stxs_bitcnt[4]_net_1 ), .Y(
        stxs_datareg4_3_0));
    DFN1E1P0 \mtx_bitsel[1]  (.D(N_776), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .E(mtx_bitsele), .Q(\mtx_bitsel[1]_net_1 ));
    MX2 mtx_spi_data_out_RNO_1 (.A(N_15_0), .B(N_22), .S(
        \mtx_bitsel[0]_net_1 ), .Y(N_23));
    DFN1E1C0 \msrxs_shiftreg[1]  (.D(\msrxs_shiftreg_5[1] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[1]_net_1 ));
    MX2C mtx_spi_data_out_RNO_12 (.A(tx_fifo_data_out[6]), .B(
        tx_fifo_data_out[14]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_29));
    DFN1C0 txfifo_davailable (.D(tx_fifo_empty_i), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(txfifo_davailable_net_1));
    NOR2 stxp_lastframe_RNO_0 (.A(stxp_strobe), .B(SPIMODE), .Y(
        un1_txfifo_read));
    DFN1E0C0 \stxs_datareg[5]  (.D(\stxs_datareg_10[5] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[5]_net_1 ));
    NOR2 \stxs_bitsel_RNIH1C5[3]  (.A(\stxs_bitsel[3]_net_1 ), .B(
        \stxs_bitsel[2]_net_1 ), .Y(stxs_lastbit_3_2));
    MX2C mtx_spi_data_out_RNO_13 (.A(tx_fifo_data_out[3]), .B(
        tx_fifo_data_out[11]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_33));
    DFN1E1C0 \stxs_bitsel[0]  (.D(N_780), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(stxs_bitsele), .Q(\stxs_bitsel[0]_net_1 ));
    NOR3A \mtx_bitsel_RNIC7N21[2]  (.A(\mtx_bitsel[0]_net_1 ), .B(
        \mtx_bitsel[3]_net_1 ), .C(\mtx_bitsel[2]_net_1 ), .Y(N_56));
    DFN1P0 rx_alldone (.D(msrxp_alldone_i), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(rx_done_i_0));
    DFN1C0 \mtx_state[2]  (.D(\mtx_state_RNO[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\mtx_state[2]_net_1 ));
    DFN1E0C0 \stxs_datareg[12]  (.D(\stxs_datareg_10[12] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[12]_net_1 ));
    NOR2 mtx_spi_data_out_RNO (.A(N_39), .B(\mtx_bitsel[4]_net_1 ), .Y(
        mtx_spi_data_out_2));
    OA1B \mtx_state_RNIQ4F94[4]  (.A(N_99), .B(mtx_bitsellde_0_tz_0), 
        .C(N_50), .Y(mtx_bitsele));
    AX1B spi_clk_next_RNO (.A(spi_clk_nextd4_NE_4), .B(
        spi_clk_nextd4_NE_5), .C(spi_clk_next_net_1), .Y(N_774));
    DFN1C0 \spi_clk_count[3]  (.D(spi_clk_count_n3), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[3]_net_1 ));
    NOR2A \msrxs_shiftreg_RNO[3]  (.A(\msrxs_shiftreg[2]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[3] ));
    DFN1E1C0 \msrxs_shiftreg[0]  (.D(\msrxs_shiftreg_5[0] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[0]_net_1 ));
    DFN1C0 data_rx_q1 (.D(SPISDI_c), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        data_rx_q1_net_1));
    DFN1E1C0 stxs_strobetx (.D(stxs_strobetx_0_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_798), .Q(stxs_strobetx_net_1));
    MX2A \mtx_state_RNO_0[3]  (.A(\mtx_state[3]_net_1 ), .B(
        \mtx_state_ns_0_i_a3_1_0[3] ), .S(spi_clk_tick_net_1), .Y(
        \mtx_state_ns_0_i_0[3] ));
    MX2 \stxs_datareg_RNO_0[8]  (.A(\txfifo_datadelay[7]_net_1 ), .B(
        \stxs_datareg[7]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_389));
    DFN1E1C0 \msrxs_datain[6]  (.D(\msrxs_shiftreg[5]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[6]));
    DFN1E1C0 \clk_div_val_reg[1]  (.D(clk_div_val[1]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[1]_net_1 ));
    NOR2A \mtx_bitsel_RNI5UEE1[4]  (.A(N_94), .B(N_50), .Y(N_101));
    DFN1P0 mtx_midbit (.D(\txfifo_dhold_dec[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(mtx_midbit_i_0));
    DFN1E1P0 \clk_div_val_reg[5]  (.D(clk_div_val[5]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[5]_net_1 ));
    MX2 \stxs_datareg_RNO[14]  (.A(N_395), .B(tx_fifo_data_out[14]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[14] ));
    NOR2B \spi_clk_count_RNI2MBC[3]  (.A(spi_clk_count_c2), .B(
        \spi_clk_count[3]_net_1 ), .Y(spi_clk_count_c3));
    NOR2B stxs_strobetx_RNO_1 (.A(stxs_state), .B(stxs_datareg4_3), .Y(
        stxs_strobetx_2_sqmuxa_2));
    MX2 \stxs_datareg_RNO[5]  (.A(N_386), .B(tx_fifo_data_out[5]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[5] ));
    MX2 data_rx_q2_RNI6R1S (.A(data_rx_q2_net_1), .B(SPISDI_c), .S(
        SPIMODE), .Y(spi_di_mux));
    NOR3B SYNC1_stxs_txready_RNIEH441 (.A(txfifo_davailable_net_1), .B(
        SYNC1_stxs_txready_i_0), .C(\stxs_bitcnt[0]_net_1 ), .Y(
        stxs_datareg4_2));
    XA1 \spi_clk_count_RNO[3]  (.A(\spi_clk_count[3]_net_1 ), .B(
        spi_clk_count_c2), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n3));
    DFN1E0C0 \stxs_datareg[11]  (.D(\stxs_datareg_10[11] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[11]_net_1 ));
    OA1 stxs_state_RNI6VCE2 (.A(stxs_state), .B(\un1_stxs_state4[0] ), 
        .C(clock_rx_fe), .Y(stxs_bitsele));
    OR2 \stxs_bitsel_RNIDTB5[1]  (.A(\stxs_bitsel[1]_net_1 ), .B(
        \stxs_bitsel[0]_net_1 ), .Y(stxs_bitsel_c1));
    NOR2B mtx_lastbit_RNIID3J1_0 (.A(msrxs_first5), .B(clock_rx_re), 
        .Y(msrxs_datain_0_sqmuxa_1));
    INV stxs_state_RNIS19E (.A(stxs_state), .Y(stxs_state_i));
    MX2C mtx_spi_data_out_RNO_10 (.A(tx_fifo_data_out[5]), .B(
        tx_fifo_data_out[13]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_21));
    NOR2B \mtx_state_ns_0_i_a3_3_RNO_0[3]  (.A(spi_clk_tick_net_1), .B(
        N_49), .Y(\mtx_state_ns_0_i_a3_1[3] ));
    AX1A \mtx_bitsel_RNO_0[3]  (.A(\mtx_bitsel[0]_net_1 ), .B(N_66), 
        .C(\mtx_bitsel[3]_net_1 ), .Y(N_66_mux));
    DFN1E1C0 \msrxs_shiftreg[4]  (.D(\msrxs_shiftreg_5[4] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[4]_net_1 ));
    NOR3A \mtx_state_RNO_0[5]  (.A(\mtx_state[5]_net_1 ), .B(
        spi_clk_tick_net_1), .C(N_48), .Y(N_72));
    MX2 \stxs_datareg_RNO[15]  (.A(N_396), .B(tx_fifo_data_out[15]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[15] ));
    DFN1C0 \txfifo_datadelay[11]  (.D(tx_fifo_data_out[11]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[11]_net_1 ));
    NOR3A mtx_consecutive_RNO_2 (.A(N_94), .B(tx_fifo_empty), .C(
        mtx_lastframe_net_1), .Y(mtx_consecutive_0_sqmuxa_0_a3_1));
    NOR2A \msrxs_shiftreg_RNO[2]  (.A(\msrxs_shiftreg[1]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[2] ));
    XA1 \stxs_bitcnt_RNO[1]  (.A(\stxs_bitcnt[1]_net_1 ), .B(
        \stxs_bitcnt[0]_net_1 ), .C(N_653_i_0), .Y(stxs_bitcnt_n1));
    NOR2A spi_clk_tick_RNIFQBQ1 (.A(N_100), .B(N_50), .Y(
        mtx_state_0_sqmuxa));
    OR2 mtx_pktsel_RNO_0 (.A(\mtx_state[5]_net_1 ), .B(N_47), .Y(N_61));
    XA1 \spi_clk_count_RNO[7]  (.A(spi_clk_count_40_0), .B(
        \spi_clk_count[7]_net_1 ), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n7));
    XA1 \msrxp_frames_RNO[1]  (.A(\msrxp_frames[0]_net_1 ), .B(
        \msrxp_frames[1]_net_1 ), .C(un1_sresetn_4_i), .Y(
        \msrxp_frames_4[1] ));
    OR2 SYNC1_msrxp_pktsel_RNO (.A(stxs_pktsel_net_1), .B(
        mtx_pktsel_net_1), .Y(msrxs_pktsel));
    MX2 \stxs_datareg_RNO_0[4]  (.A(\txfifo_datadelay[3]_net_1 ), .B(
        \stxs_datareg[3]_net_1 ), .S(N_653_i_0), .Y(N_385));
    MX2 \stxs_datareg_RNO_0[13]  (.A(\txfifo_datadelay[12]_net_1 ), .B(
        \stxs_datareg[12]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_394));
    NOR2A stxs_txzeros_RNO (.A(clock_rx_fe), .B(stxs_dataerr_0_sqmuxa), 
        .Y(N_797));
    DFN1E1C0 stxs_midbit (.D(stxs_midbit_3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(stxs_midbit_net_1));
    NOR3B stxs_direct_RNIJVO21 (.A(clock_rx_fe), .B(N_653_i_0), .C(
        stxs_direct_net_1), .Y(stxs_datareg_1_sqmuxa_1));
    MX2 \stxs_datareg_RNO[4]  (.A(N_385), .B(tx_fifo_data_out[4]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[4] ));
    AO1 mtx_pktsel_RNO (.A(N_61), .B(spi_clk_tick_net_1), .C(N_48), .Y(
        N_46));
    DFN1C0 \spi_clk_count[1]  (.D(spi_clk_count_n1), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\spi_clk_count[1]_net_1 ));
    OR3 mtx_first_RNO_0 (.A(N_48), .B(N_88), .C(N_89), .Y(N_791));
    DFN1E1C0 mtx_pktsel (.D(mtx_state_0_sqmuxa), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_46), .Q(mtx_pktsel_net_1));
    MX2 stxs_state_RNI7RVM1 (.A(stxs_state4), .B(un1_stxs_bitsel_1), 
        .S(stxs_state), .Y(\un1_stxs_state4[0] ));
    MX2 \stxs_datareg_RNO[12]  (.A(N_393), .B(tx_fifo_data_out[12]), 
        .S(un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[12] ));
    NOR2A \msrxp_frames_RNO[0]  (.A(un1_sresetn_4_i), .B(
        \msrxp_frames[0]_net_1 ), .Y(\msrxp_frames_4[0] ));
    NOR2A \msrxs_shiftreg_RNO[10]  (.A(\msrxs_shiftreg[9]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[10] ));
    AO1A msrxs_first_RNO (.A(SPIMODE), .B(stxs_first_net_1), .C(
        mtx_firstrx_net_1), .Y(msrxs_first_2));
    DFN1C0 \txfifo_datadelay[2]  (.D(tx_fifo_data_out[2]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[2]_net_1 ));
    MX2 \stxs_datareg_RNO_0[1]  (.A(\txfifo_datadelay[0]_net_1 ), .B(
        \stxs_datareg[0]_net_1 ), .S(N_653_i_0), .Y(N_382));
    DFN1C0 \mtx_state[1]  (.D(\mtx_state_RNO[1]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\mtx_state[1]_net_1 ));
    NOR2B \stxs_bitcnt_RNIO1A41[2]  (.A(stxs_bitcnt_c1), .B(
        \stxs_bitcnt[2]_net_1 ), .Y(stxs_bitcnt_c2));
    DFN1C0 mtx_fiforead (.D(mtx_lastframe_1_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(mtx_fiforead_net_1));
    XA1 \msrxp_frames_RNO[2]  (.A(\msrxp_frames[2]_net_1 ), .B(CO1), 
        .C(un1_sresetn_4_i), .Y(\msrxp_frames_4[2] ));
    AO1 stxs_state_RNO (.A(stxs_state4), .B(clock_rx_fe), .C(
        stxs_state), .Y(stxs_state_RNO_net_1));
    NOR2A \mtx_state_RNO_1[0]  (.A(\mtx_state[0]_net_1 ), .B(
        spi_clk_tick_net_1), .Y(N_79));
    DFN1C0 \txfifo_datadelay[1]  (.D(tx_fifo_data_out[1]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[1]_net_1 ));
    DFN1C0 \txfifo_datadelay[12]  (.D(tx_fifo_data_out[12]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[12]_net_1 ));
    OR2B mtx_state_tr14_5_3_i_o3 (.A(cfg_enable), .B(SPIMODE), .Y(N_48)
        );
    DFN1E1C0 \msrxs_datain[0]  (.D(spi_di_mux), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[0]));
    DFN1C0 \txfifo_datadelay[7]  (.D(tx_fifo_data_out[7]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[7]_net_1 ));
    DFN1C0 msrxp_alldone (.D(msrxp_alldone_4), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(msrxp_alldone_net_1));
    DFN1C0 \txfifo_datadelay[13]  (.D(tx_fifo_data_out[13]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[13]_net_1 ));
    DFN1C0 \txfifo_datadelay[15]  (.D(tx_fifo_data_out[15]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\txfifo_datadelay[15]_net_1 ));
    DFN1P0 SYNC3_stxp_dataerr (.D(SYNC2_stxp_dataerr_i), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(SYNC3_stxp_dataerr_i_0));
    AND2 \mtx_state_ns_0_i_a3[3]  (.A(N_620_3), .B(
        \mtx_state_ns_0_i_a3_3[3]_net_1 ), .Y(N_73));
    OR2A \mtx_bitsel_RNO[3]  (.A(N_66_mux), .B(un1_sresetn_16), .Y(
        N_778));
    XOR2 \clk_div_val_reg_RNIQA3C[7]  (.A(\spi_clk_count[7]_net_1 ), 
        .B(\clk_div_val_reg[7]_net_1 ), .Y(spi_clk_nextd4_7));
    NOR2B \spi_clk_count_RNI5MEF[4]  (.A(spi_clk_count_c3), .B(
        \spi_clk_count[4]_net_1 ), .Y(spi_clk_count_c4));
    NOR2A mtx_alldone_RNO_0 (.A(mtx_lastframe_net_1), .B(N_50), .Y(
        mtx_oen_0_sqmuxa_0_a3_0));
    NOR3A \stxs_bitcnt_RNIQ3A41[4]  (.A(\stxs_bitcnt[0]_net_1 ), .B(
        \stxs_bitcnt[1]_net_1 ), .C(\stxs_bitcnt[4]_net_1 ), .Y(
        stxs_midbit_2_1));
    NOR2A \msrxs_shiftreg_RNO[7]  (.A(\msrxs_shiftreg[6]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[7] ));
    DFN1C0 clock_rx_q2 (.D(clock_rx_q1_net_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(clock_rx_q2_net_1));
    DFN1E0C0 \stxs_datareg[6]  (.D(\stxs_datareg_10[6] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[6]_net_1 ));
    DFN1E1C0 \mtx_datahold[2]  (.D(tx_fifo_data_out[2]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(mtx_fiforead_0_sqmuxa), .Q(
        \mtx_datahold[2]_net_1 ));
    DFN1E1C0 \msrxs_shiftreg[11]  (.D(\msrxs_shiftreg_5[11] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[11]_net_1 ));
    DFN1C0 \txfifo_datadelay[6]  (.D(tx_fifo_data_out[6]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[6]_net_1 ));
    NOR2 \mtx_bitsel_RNIVR4N[2]  (.A(\mtx_bitsel[2]_net_1 ), .B(
        \mtx_bitsel[3]_net_1 ), .Y(N_620_3));
    NOR2A \msrxs_shiftreg_RNO[11]  (.A(\msrxs_shiftreg[10]_net_1 ), .B(
        msrxs_datain_0_sqmuxa_1), .Y(\msrxs_shiftreg_5[11] ));
    DFN1E1C0 stxs_txzeros (.D(stxs_midbit_3), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(N_797), .Q(stxs_txzeros_net_1));
    DFN1E0C0 \stxs_datareg[14]  (.D(\stxs_datareg_10[14] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[14]_net_1 ));
    DFN1C0 SYNC2_stxp_dataerr (.D(SYNC1_stxp_dataerr_net_1), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(SYNC2_stxp_dataerr_net_1));
    NOR2 \stxs_bitcnt_RNIJP6O[2]  (.A(\stxs_bitcnt[3]_net_1 ), .B(
        \stxs_bitcnt[2]_net_1 ), .Y(stxs_datareg4_3));
    DFN1E0C0 \stxs_datareg[9]  (.D(\stxs_datareg_10[9] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[9]_net_1 ));
    OR3B cfg_enable_P1_RNII4B11 (.A(cfg_enable), .B(
        cfg_enable_P1_net_1), .C(tx_fifo_empty), .Y(N_53));
    AND2 \mtx_state_ns_0_i_a3_3[3]  (.A(\mtx_state_ns_0_i_a3_2[3] ), 
        .B(\mtx_state_ns_0_i_a3_1[3] ), .Y(
        \mtx_state_ns_0_i_a3_3[3]_net_1 ));
    NOR2A \spi_clk_count_RNO[0]  (.A(spi_clk_count_1_sqmuxa), .B(
        \spi_clk_count[0]_net_1 ), .Y(spi_clk_count_n0));
    NOR3 spi_clk_tick_RNO (.A(spi_clk_nextd4_NE_4), .B(
        spi_clk_nextd4_NE_5), .C(N_48), .Y(spi_clk_tick_4));
    AOI1B \mtx_state_RNO_1[1]  (.A(\mtx_state[0]_net_1 ), .B(N_53), .C(
        \mtx_state_ns_i_0_a3_0[1] ), .Y(N_76));
    NOR3B stxs_dataerr_RNI9O6F2_0 (.A(stxs_datareg4_3), .B(
        stxs_midbit_2_1), .C(stxs_strobetx5), .Y(
        stxs_checkorun_1_sqmuxa));
    DFN1E1C0 \mtx_bitsel[4]  (.D(N_42), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .E(mtx_bitsele), .Q(\mtx_bitsel[4]_net_1 ));
    NOR3C \mtx_bitsel_RNIVH1I2[4]  (.A(N_56), .B(N_67), .C(N_786), .Y(
        mtx_fiforead_0_sqmuxa));
    OA1 msrxp_alldone_RNO (.A(mtx_lastframe_net_1), .B(
        stxp_lastframe_net_1), .C(msrxp_alldone_0_sqmuxa), .Y(
        msrxp_alldone_4));
    DFN1E1C0 \stxs_bitsel[1]  (.D(N_781), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(stxs_bitsele), .Q(\stxs_bitsel[1]_net_1 ));
    NOR2A \mtx_bitsel_RNIVR4N[4]  (.A(\mtx_bitsel[1]_net_1 ), .B(
        \mtx_bitsel[4]_net_1 ), .Y(N_67));
    INV SYNC3_stxp_strobetx_RNO (.A(SYNC2_stxp_strobetx_net_1), .Y(
        SYNC2_stxp_strobetx_i));
    DFN1E0C0 \stxs_datareg[13]  (.D(\stxs_datareg_10[13] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[13]_net_1 ));
    NOR3C stxs_dataerr_RNI9O6F2 (.A(stxs_datareg4_3), .B(
        stxs_midbit_2_1), .C(stxs_strobetx5), .Y(
        stxs_checkorun_0_sqmuxa));
    INV rx_alldone_RNO (.A(msrxp_alldone_net_1), .Y(msrxp_alldone_i));
    NOR2A \mtx_bitsel_RNIQJ9E1[1]  (.A(N_3_0), .B(
        \mtx_bitsel[1]_net_1 ), .Y(N_4_0));
    MX2 mtx_spi_data_out_RNO_4 (.A(N_785), .B(N_21), .S(
        \mtx_bitsel[2]_net_1 ), .Y(N_22));
    DFN1C0 mtx_firstrx (.D(mtx_first_net_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(mtx_firstrx_net_1));
    DFN1E0C0 \stxs_datareg[15]  (.D(\stxs_datareg_10[15] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[15]_net_1 ));
    AO1C msrxs_strobe_RNO (.A(msrxs_first5), .B(
        msrxs_strobe_1_sqmuxa_0), .C(clock_rx_re), .Y(
        un1_msrxs_datain_1_sqmuxa_1));
    NOR2A stxp_lastframe_RNO (.A(tx_fifo_last_out), .B(SPIMODE), .Y(
        stxp_lastframe_5));
    DFN1E1C0 \stxs_bitcnt[4]  (.D(stxs_bitcnt_n4), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(\stxs_bitcnt[4]_net_1 ));
    NOR3C \mtx_state_RNO_0[0]  (.A(spi_clk_tick_net_1), .B(
        \mtx_state[1]_net_1 ), .C(N_53), .Y(N_78));
    AO1 mtx_spi_data_out_RNIDJMB1 (.A(mtx_spi_data_out_net_1), .B(
        SPIMODE), .C(spi_data_out_iv_0), .Y(SPISDO_c));
    DFN1E1C0 \stxs_bitsel[2]  (.D(N_782), .CLK(PCLK_c), .CLR(PRESETN_c)
        , .E(stxs_bitsele), .Q(\stxs_bitsel[2]_net_1 ));
    NOR3A stxs_txzeros_RNIOFMN (.A(spi_data_out_iv_0_tz), .B(SPIMODE), 
        .C(stxs_txzeros_net_1), .Y(spi_data_out_iv_0));
    DFN1E1C0 \msrxs_shiftreg[3]  (.D(\msrxs_shiftreg_5[3] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[3]_net_1 ));
    DFN1E1C0 \mtx_datahold[0]  (.D(tx_fifo_data_out[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(mtx_fiforead_0_sqmuxa), .Q(
        \mtx_datahold[0]_net_1 ));
    MX2 \stxs_datareg_RNO_0[5]  (.A(\txfifo_datadelay[4]_net_1 ), .B(
        \stxs_datareg[4]_net_1 ), .S(stxs_datareg_1_sqmuxa_1), .Y(
        N_386));
    MX2 mtx_spi_data_out_RNO_3 (.A(N_11_0), .B(N_14_0), .S(
        \mtx_bitsel[2]_net_1 ), .Y(N_15_0));
    DFN1E0C0 mtx_busy_inst_1 (.D(\mtx_state[2]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_60), .Q(mtx_busy));
    DFN1E1C0 mtx_consecutive (.D(mtx_consecutive_0_sqmuxa), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(un1_sresetn_11), .Q(
        mtx_consecutive_net_1));
    DFN1C0 \mtx_state[4]  (.D(\mtx_state_RNO[4]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\mtx_state[4]_net_1 ));
    NOR2B mtx_re_q2_RNILHVH (.A(mtx_re_q1_net_1), .B(mtx_re_q2_i_0), 
        .Y(mtx_re_d));
    XA1 \spi_clk_count_RNO[2]  (.A(spi_clk_count_c1), .B(
        \spi_clk_count[2]_net_1 ), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n2));
    DFN1E1C0 \msrxs_datain[14]  (.D(\msrxs_shiftreg[13]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[14]));
    DFN1E1C0 \clk_div_val_reg[0]  (.D(clk_div_val[0]), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[0]_net_1 ));
    DFN1C0 SYNC2_stxp_strobetx (.D(SYNC1_stxp_strobetx_net_1), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(SYNC2_stxp_strobetx_net_1));
    XA1 \stxs_bitcnt_RNO[3]  (.A(stxs_bitcnt_c2), .B(
        \stxs_bitcnt[3]_net_1 ), .C(N_653_i_0), .Y(stxs_bitcnt_n3));
    MX2 \txfifo_datadelay_RNI7U87[15]  (.A(\stxs_datareg[15]_net_1 ), 
        .B(\txfifo_datadelay[15]_net_1 ), .S(stxs_direct_net_1), .Y(
        spi_data_out_iv_0_tz));
    DFN1E0C0 \stxs_datareg[2]  (.D(\stxs_datareg_10[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[2]_net_1 ));
    XOR2 \clk_div_val_reg_RNIK43C[4]  (.A(\clk_div_val_reg[4]_net_1 ), 
        .B(\spi_clk_count[4]_net_1 ), .Y(spi_clk_nextd4_4));
    DFN1E1P0 \clk_div_val_reg[2]  (.D(clk_div_val[2]), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .E(N_47), .Q(\clk_div_val_reg[2]_net_1 ));
    AOI1B stxs_strobetx_RNO_0 (.A(stxs_strobetx_2_sqmuxa_2), .B(
        stxs_strobetx_2_sqmuxa_1), .C(clock_rx_fe), .Y(N_798));
    OR2A spi_clk_tick_RNI62AN (.A(spi_clk_tick_net_1), .B(N_48), .Y(
        N_50));
    DFN1C0 \txfifo_datadelay[9]  (.D(tx_fifo_data_out[9]), .CLK(PCLK_c)
        , .CLR(PRESETN_c), .Q(\txfifo_datadelay[9]_net_1 ));
    DFN1P0 SYNC2_msrxp_strobe (.D(SYNC1_msrxp_strobe_net_1), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(SYNC2_msrxp_strobe_net_1));
    DFN1E0C0 \stxs_datareg[7]  (.D(\stxs_datareg_10[7] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[7]_net_1 ));
    OR2A \stxs_bitsel_RNO[0]  (.A(\stxs_bitsel[0]_net_1 ), .B(N_796), 
        .Y(N_780));
    DFN1C0 \mtx_state[5]  (.D(\mtx_state_ns[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\mtx_state[5]_net_1 ));
    NOR3 \mtx_bitsel_RNIC7N21_0[2]  (.A(\mtx_bitsel[3]_net_1 ), .B(
        \mtx_bitsel[2]_net_1 ), .C(\mtx_bitsel[0]_net_1 ), .Y(N_3_0));
    DFN1E1C0 \msrxs_datain[5]  (.D(\msrxs_shiftreg[4]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(msrxs_datain_0_sqmuxa_1_0), .Q(
        rx_fifo_data_in[5]));
    DFN1C0 data_rx_q2 (.D(data_rx_q1_net_1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(data_rx_q2_net_1));
    NOR2A stxs_checkorun_RNO_0 (.A(stxs_state), .B(
        stxs_checkorun_net_1), .Y(stxs_checkorun_i_m_0));
    NOR2 \mtx_bitsel_RNIVR4N_0[4]  (.A(\mtx_bitsel[4]_net_1 ), .B(
        \mtx_bitsel[1]_net_1 ), .Y(N_94));
    DFN1E0C0 \stxs_datareg[8]  (.D(\stxs_datareg_10[8] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .E(stxs_datareg_1_sqmuxa_2), .Q(
        \stxs_datareg[8]_net_1 ));
    NOR2B SYNC3_stxp_dataerr_RNIJ3B1 (.A(SYNC2_stxp_dataerr_net_1), .B(
        SYNC3_stxp_dataerr_i_0), .Y(tx_channel_underflow));
    DFN1C0 mtx_re_q1 (.D(mtx_re_net_1), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(mtx_re_q1_net_1));
    DFN1C0 clock_rx_q1 (.D(clock_rx_mux1), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(clock_rx_q1_net_1));
    OR3 \clk_div_val_reg_RNISUCG1[5]  (.A(spi_clk_nextd4_6), .B(
        spi_clk_nextd4_7), .C(spi_clk_nextd4_NE_1), .Y(
        spi_clk_nextd4_NE_4));
    MX2 \stxs_datareg_RNO_0[2]  (.A(\txfifo_datadelay[1]_net_1 ), .B(
        \stxs_datareg[1]_net_1 ), .S(N_653_i_0), .Y(N_383));
    MX2 \stxs_datareg_RNO[3]  (.A(N_384), .B(tx_fifo_data_out[3]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[3] ));
    DFN1E1C0 \stxs_bitcnt[2]  (.D(stxs_bitcnt_n2), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(clock_rx_fe), .Q(\stxs_bitcnt[2]_net_1 ));
    DFN1P0 mtx_alldone (.D(mtx_oen_0_sqmuxa), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(mtx_alldone_i_0));
    DFN1C0 SYNC1_stxp_strobetx (.D(stxs_strobetx_net_1), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(SYNC1_stxp_strobetx_net_1));
    MX2C mtx_spi_data_out_RNO_8 (.A(tx_fifo_data_out[4]), .B(
        tx_fifo_data_out[12]), .S(\mtx_bitsel[3]_net_1 ), .Y(N_14_0));
    XA1B \mtx_bitsel_RNO[4]  (.A(\mtx_bitsel[4]_net_1 ), .B(N_4_0), .C(
        un1_sresetn_16), .Y(N_42));
    DFN1C0 msrxp_strobe (.D(msrxp_alldone_0_sqmuxa), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(rx_fifo_write));
    NOR2A cfg_enable_P1_RNI9O131 (.A(N_47), .B(N_53), .Y(N_100));
    XA1 \spi_clk_count_RNO[6]  (.A(\spi_clk_count[6]_net_1 ), .B(
        spi_clk_count_c5), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n6));
    MX2 \stxs_datareg_RNO[9]  (.A(N_390), .B(tx_fifo_data_out[9]), .S(
        un1_stxs_datareg_2_sqmuxa), .Y(\stxs_datareg_10[9] ));
    NOR2A \mtx_state_RNIVH1I2[3]  (.A(N_786), .B(\txfifo_dhold_dec[2] )
        , .Y(mtx_lastframe_1_sqmuxa));
    DFN1E1P0 stxs_direct (.D(stxs_state_i), .CLK(PCLK_c), .PRE(
        PRESETN_c), .E(clock_rx_fe), .Q(stxs_direct_net_1));
    XA1 \spi_clk_count_RNO[5]  (.A(\spi_clk_count[5]_net_1 ), .B(
        spi_clk_count_c4), .C(spi_clk_count_1_sqmuxa), .Y(
        spi_clk_count_n5));
    DFN1E1C0 \msrxs_shiftreg[6]  (.D(\msrxs_shiftreg_5[6] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(clock_rx_re), .Q(
        \msrxs_shiftreg[6]_net_1 ));
    NOR3C stxs_dataerr_RNO_0 (.A(stxs_state), .B(stxs_checkorun_net_1), 
        .C(stxs_checkorun_1_sqmuxa), .Y(stxs_checkorun_m));
    
endmodule


module spi_fifo_16s_8s_3_1(
       SPI_master_0_BIF_1_PWDATA,
       tx_fifo_data_out,
       tx_fifo_last_in,
       tx_fifo_last_out,
       tx_fifo_empty_i,
       tx_fifo_full_i_0,
       tx_fifo_write,
       tx_fifo_empty,
       tx_fifo_read,
       PRESETN_c,
       PCLK_c
    );
input  [15:0] SPI_master_0_BIF_1_PWDATA;
output [15:0] tx_fifo_data_out;
input  tx_fifo_last_in;
output tx_fifo_last_out;
output tx_fifo_empty_i;
output tx_fifo_full_i_0;
input  tx_fifo_write;
output tx_fifo_empty;
input  tx_fifo_read;
input  PRESETN_c;
input  PCLK_c;

    wire \rd_pointer_q_0[1]_net_1 , \rd_pointer_q_3[1] , 
        \rd_pointer_q[0]_net_1 , \rd_pointer_q_0[0] , m3_e_2_net_1, 
        m3_e_1_net_1, \counter_d_i_1_i[4] , m3_e_0_net_1, 
        \counter_d_i_1_i[2] , \counter_d[0] , \counter_d_i_1_i[1] , 
        N_27, \counter_q[4]_net_1 , \un1_counter_d_0_sqmuxa[1] , N_25, 
        \counter_q[2]_net_1 , N_24, \counter_q[1]_net_1 , 
        counter_d_0_sqmuxa_1, \counter_d[5] , \counter_q[5]_net_1 , 
        i8_mux, i6_mux, \counter_d_i_1_i[3] , \counter_q[3]_net_1 , 
        i4_mux, i2_mux, N_2_i, \counter_q[0]_net_1 , empty_out_2, 
        full_out_2, \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , \rd_pointer_q[1]_net_1 , 
        \DWACT_ADD_CI_0_g_array_1_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \wr_pointer_q[1]_net_1 , un1_rd_pointer_d_1_sqmuxa_0, 
        wr_pointer_d_1_sqmuxa_1, \un10_fifo_mem_d[7] , 
        \un1_data_out_dx[7] , \rd_pointer_q[2]_net_1 , 
        rd_pointer_d_1_sqmuxa_2, N_160, ram0_5, ram1_5, N_163, ram0_8, 
        ram1_8, N_171, ram0_16, ram1_16, N_177, ram2_5, ram3_5, N_180, 
        ram2_8, ram3_8, N_188, ram2_16, ram3_16, N_194, N_197, N_205, 
        N_211, ram4_5, ram5_5, N_214, ram4_8, ram5_8, N_221, ram4_15, 
        ram5_15, N_222, ram4_16, ram5_16, N_228, ram6_5, ram7_5, N_231, 
        ram6_8, ram7_8, N_238, ram6_15, ram7_15, N_239, ram6_16, 
        ram7_16, N_245, N_248, N_255, N_256, N_204, N_202, N_253, 
        N_200, N_251, N_219, N_236, N_217, N_234, ram6_13, ram7_13, 
        ram6_11, ram7_11, ram4_13, ram5_13, ram4_11, ram5_11, N_170, 
        N_187, N_168, N_185, N_166, N_183, ram2_15, ram3_15, ram2_13, 
        ram3_13, ram2_11, ram3_11, ram0_15, ram1_15, ram0_13, ram1_13, 
        ram0_11, ram1_11, N_164, ram0_9, ram1_9, N_181, ram2_9, ram3_9, 
        N_198, N_215, ram4_9, ram5_9, N_232, ram6_9, ram7_9, N_249, 
        N_203, N_254, N_195, N_246, N_220, N_237, N_212, N_229, 
        ram6_14, ram7_14, ram6_6, ram7_6, ram4_14, ram5_14, ram4_6, 
        ram5_6, N_169, N_186, N_161, N_178, ram2_14, ram3_14, ram2_6, 
        ram3_6, ram0_14, ram1_14, ram0_6, ram1_6, N_157, ram0_2, 
        ram1_2, N_174, ram2_2, ram3_2, N_191, N_208, ram4_2, ram5_2, 
        N_225, ram6_2, ram7_2, N_242, N_196, N_247, N_213, N_230, 
        ram6_7, ram7_7, ram4_7, ram5_7, N_162, N_179, ram2_7, ram3_7, 
        ram0_7, ram1_7, \wr_pointer_q_3[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , awe7, \wr_pointer_q_3[1] , 
        I_12, \wr_pointer_q_3[2] , I_14, \rd_pointer_q_3[2] , I_14_0, 
        I_12_0, \rd_pointer_q_3[0] , \DWACT_ADD_CI_0_partial_sum_0[0] , 
        N_167, ram0_12, ram1_12, N_184, ram2_12, ram3_12, N_201, N_218, 
        ram4_12, ram5_12, N_235, ram6_12, ram7_12, N_252, 
        \fifo_mem_q[16] , N_189, N_240, N_206, N_223, ram6_0, ram7_0, 
        ram4_0, ram5_0, N_155, N_172, ram2_0, ram3_0, ram0_0, ram1_0, 
        N_156, ram0_1, ram1_1, N_158, ram0_3, ram1_3, N_173, ram2_1, 
        ram3_1, N_175, ram2_3, ram3_3, N_190, N_192, N_207, ram4_1, 
        ram5_1, N_209, ram4_3, ram5_3, N_224, ram6_1, ram7_1, N_226, 
        ram6_3, ram7_3, N_241, N_243, \wr_pointer_q[2]_net_1 , awe3_1, 
        N_159, ram0_4, ram1_4, N_165, ram0_10, ram1_10, N_176, ram2_4, 
        ram3_4, N_182, ram2_10, ram3_10, N_193, N_199, N_210, ram4_4, 
        ram5_4, N_216, ram4_10, ram5_10, N_227, ram6_4, ram7_4, N_233, 
        ram6_10, ram7_10, N_244, N_250, \fifo_mem_d[0]_0_sqmuxa , awe6, 
        awe2_1, awe5, awe1_1, awe4, awe0_1, awe3, 
        \wr_pointer_q[0]_net_1 , awe2, awe1, awe0, GND, VCC;
    
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI3L0J[10]  (.A(ram0_10), .B(
        ram1_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_165));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_5));
    DFN1P0 empty_out (.D(empty_out_2), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(tx_fifo_empty));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIVDTR[9]  (.A(ram6_9), .B(
        ram7_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_232));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIBLJ9[5]  (.A(ram0_5), .B(
        ram1_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_160));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIFPRB1[5]  (.A(N_211), .B(N_228)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_245));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI3DJ9[1]  (.A(ram0_1), .B(
        ram1_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_156));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI799S[10]  (.A(ram2_10), .B(
        ram3_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_182));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIBTHL[10]  (.A(ram4_10), .B(
        ram5_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_216));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIRKP81[4]  (.A(N_159), .B(N_176)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_193));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_7));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIHJ4B[4]  (.A(ram4_4), .B(
        ram5_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_210));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_4));
    XNOR3 un1_counter_q_ADD_6x6_fast_I29_Y (.A(
        \un1_counter_d_0_sqmuxa[1] ), .B(\counter_q[5]_net_1 ), .C(
        i8_mux), .Y(\counter_d[5] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIRT4B[9]  (.A(ram4_9), .B(
        ram5_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_215));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNICAGP2[8]  (.A(N_197), .B(N_248)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[7]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_13));
    NOR3A empty_out_RNIM7S82 (.A(tx_fifo_read), .B(tx_fifo_empty), .C(
        \un1_data_out_dx[7] ), .Y(rd_pointer_d_1_sqmuxa_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI2LFA1[2]  (.A(N_157), .B(N_174)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_191));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_4));
    XOR2 un1_rd_pointer_q_I_9 (.A(\rd_pointer_q[0]_net_1 ), .B(
        rd_pointer_d_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_partial_sum_0[0] )
        );
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe3), .Q(ram3_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_8));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNILN4B[6]  (.A(ram4_6), .B(
        ram5_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_212));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIMTSA1[12]  (.A(N_218), .B(
        N_235), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_252));
    NOR3B fifo_mem_q_awe1 (.A(\fifo_mem_d[0]_0_sqmuxa ), .B(awe1_1), 
        .C(\wr_pointer_q[2]_net_1 ), .Y(awe1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe4), .Q(ram4_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIB5Q81[8]  (.A(N_163), .B(N_180)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_197));
    CLKINT \rd_pointer_q_RNI4TP4[0]  (.A(\rd_pointer_q_0[0] ), .Y(
        \rd_pointer_q[0]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_15));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_10));
    DFN1C0 \counter_q[4]  (.D(\counter_d_i_1_i[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[4]_net_1 ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIHJQE[11]  (.A(ram6_11), .B(
        ram7_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_234));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe6), .Q(ram6_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIJ95R2[3]  (.A(N_192), .B(N_243)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[2]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIL3TR[4]  (.A(ram6_4), .B(
        ram7_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_227));
    NOR2B fifo_mem_q_awe3_1 (.A(\wr_pointer_q[0]_net_1 ), .B(
        \wr_pointer_q[1]_net_1 ), .Y(awe3_1));
    DFN1C0 \counter_q[2]  (.D(\counter_d_i_1_i[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[2]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe1), .Q(ram1_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIELQL1[14]  (.A(N_169), .B(
        N_186), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_203));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIBD4B[1]  (.A(ram4_1), .B(
        ram5_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_207));
    NOR3B fifo_mem_q_awe2 (.A(\fifo_mem_d[0]_0_sqmuxa ), .B(awe2_1), 
        .C(\wr_pointer_q[2]_net_1 ), .Y(awe2));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIJ1TR[3]  (.A(ram6_3), .B(
        ram7_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_226));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_14));
    NOR2A fifo_mem_q_awe2_1 (.A(\wr_pointer_q[1]_net_1 ), .B(
        \wr_pointer_q[0]_net_1 ), .Y(awe2_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIAIH53[13]  (.A(N_202), .B(
        N_253), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[12]));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIUGFA1[1]  (.A(N_156), .B(N_173)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_190));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNI2ATA1[15]  (.A(N_221), .B(
        N_238), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_255));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI9R0J[13]  (.A(ram0_13), .B(
        ram1_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_168));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe7), .Q(ram7_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_11));
    DFN1C0 \wr_pointer_q[1]  (.D(\wr_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[1]_net_1 ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNINPQE[14]  (.A(ram6_14), .B(
        ram7_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_237));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe2), .Q(ram2_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIFH4B[3]  (.A(ram4_3), .B(
        ram5_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_209));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI9B4B[0]  (.A(ram4_0), .B(
        ram5_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_206));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIJ5IL[14]  (.A(ram4_14), .B(
        ram5_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_220));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_15));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_13));
    DFN1C0 \counter_q[1]  (.D(\counter_d_i_1_i[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[1]_net_1 ));
    AO18 un1_counter_q_m10 (.A(\counter_q[3]_net_1 ), .B(i4_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i6_mux));
    DFN1C0 \wr_pointer_q[0]  (.D(\wr_pointer_q_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[0]_net_1 ));
    XOR2 un1_rd_pointer_q_I_12 (.A(\rd_pointer_q[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_12_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIDF9S[13]  (.A(ram2_13), .B(
        ram3_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_185));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIQ1TA1[13]  (.A(N_219), .B(
        N_236), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_253));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIU4QL1[10]  (.A(N_165), .B(
        N_182), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_199));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIU5TA1[14]  (.A(N_220), .B(
        N_237), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_254));
    GND GND_i (.Y(GND));
    XOR2 un1_wr_pointer_q_I_14 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(I_14));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIMTQL1[16]  (.A(N_171), .B(
        N_188), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_205));
    NOR2 m3_e_0 (.A(\counter_d[0] ), .B(\counter_d_i_1_i[1] ), .Y(
        m3_e_0_net_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNI2BI53[16]  (.A(N_205), .B(
        N_256), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[15]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNISPFP2[6]  (.A(N_195), .B(N_246)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[5]));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNITBTR[8]  (.A(ram6_8), .B(
        ram7_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_231));
    OA1A \rd_pointer_q_RNO[2]  (.A(\un1_data_out_dx[7] ), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(I_14_0), .Y(
        \rd_pointer_q_3[2] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI7HRB1[3]  (.A(N_209), .B(N_226)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_243));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIKHFP2[5]  (.A(N_194), .B(N_245)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[4]));
    XOR2 un1_rd_pointer_q_I_14 (.A(\rd_pointer_q[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_14_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIFH9S[14]  (.A(ram2_14), .B(
        ram3_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_186));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_6));
    NOR2A \wr_pointer_q_RNO[2]  (.A(I_14), .B(awe7), .Y(
        \wr_pointer_q_3[2] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_3));
    MIN3 un1_counter_q_m4 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(N_2_i), 
        .C(\counter_q[1]_net_1 ), .Y(i2_mux));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIQCFA1[0]  (.A(N_155), .B(N_172)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_189));
    AX1D un1_counter_q_m19 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        counter_d_0_sqmuxa_1), .C(\counter_q[0]_net_1 ), .Y(
        \counter_d[0] ));
    OR3B full_out_RNO (.A(m3_e_2_net_1), .B(\counter_d_i_1_i[3] ), .C(
        \counter_d[5] ), .Y(full_out_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIAHQL1[13]  (.A(N_168), .B(
        N_185), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_202));
    NOR3A empty_out_RNO (.A(m3_e_2_net_1), .B(\counter_d[5] ), .C(
        \counter_d_i_1_i[3] ), .Y(empty_out_2));
    AO18 un1_counter_q_m22 (.A(\counter_q[4]_net_1 ), .B(i6_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i8_mux));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI5N0J[11]  (.A(ram0_11), .B(
        ram1_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_166));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_3));
    XNOR3 un1_counter_q_m14 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        \counter_q[3]_net_1 ), .C(i4_mux), .Y(\counter_d_i_1_i[3] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIN1SB1[7]  (.A(N_213), .B(N_230)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_247));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_12));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI3TP81[6]  (.A(N_161), .B(N_178)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_195));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_11));
    NOR3C fifo_mem_q_awe7 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \fifo_mem_d[0]_0_sqmuxa ), .C(awe3_1), .Y(awe7));
    DFN1C0 \rd_pointer_q_0[1]  (.D(\rd_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q_0[1]_net_1 ));
    DFN1C0 \counter_q[5]  (.D(\counter_d[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\counter_q[5]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_3));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIHVSR[2]  (.A(ram6_2), .B(
        ram7_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_225));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIN9IL[16]  (.A(ram4_16), .B(
        ram5_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_222));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIH7CQ[6]  (.A(ram2_6), .B(
        ram3_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_178));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIR9TR[7]  (.A(ram6_7), .B(
        ram7_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_230));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_16));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI9VBQ[2]  (.A(ram2_2), .B(
        ram3_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_174));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_9));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_14));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIDV0J[15]  (.A(ram0_15), .B(
        ram1_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_170));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_16));
    NOR2A m3_e_2 (.A(m3_e_1_net_1), .B(\counter_d_i_1_i[4] ), .Y(
        m3_e_2_net_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIPR4B[8]  (.A(ram4_8), .B(
        ram5_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_214));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_15));
    NOR3B full_out_RNIDNQA2 (.A(tx_fifo_full_i_0), .B(tx_fifo_write), 
        .C(tx_fifo_read), .Y(counter_d_0_sqmuxa_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIJLQE[12]  (.A(ram6_12), .B(
        ram7_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_235));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_15));
    NOR2A m3_e_1 (.A(m3_e_0_net_1), .B(\counter_d_i_1_i[2] ), .Y(
        m3_e_1_net_1));
    NOR2A \wr_pointer_q_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum[0] ), 
        .B(awe7), .Y(\wr_pointer_q_3[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIELSA1[10]  (.A(N_216), .B(
        N_233), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_250));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIR5SB1[8]  (.A(N_214), .B(N_231)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_248));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_13));
    XOR2 un1_wr_pointer_q_I_9 (.A(\wr_pointer_q[0]_net_1 ), .B(
        wr_pointer_d_1_sqmuxa_1), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_12));
    NOR3C \rd_pointer_q_RNIU24G[2]  (.A(\rd_pointer_q_0[1]_net_1 ), .B(
        \rd_pointer_q[2]_net_1 ), .C(\rd_pointer_q[0]_net_1 ), .Y(
        \un1_data_out_dx[7] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_2));
    DFN1P0 full_out (.D(full_out_2), .CLK(PCLK_c), .PRE(PRESETN_c), .Q(
        tx_fifo_full_i_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_14));
    NOR2B un1_rd_pointer_q_I_15 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \rd_pointer_q[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    OA1A empty_out_RNILACR4 (.A(\un1_data_out_dx[7] ), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(I_12_0), .Y(
        \rd_pointer_q_3[1] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_16));
    XNOR2 un1_counter_q_m12 (.A(N_27), .B(i6_mux), .Y(
        \counter_d_i_1_i[4] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI3DRB1[2]  (.A(N_208), .B(N_225)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_242));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_15));
    XOR2 un1_counter_q_m12_0 (.A(\counter_q[4]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_27));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIFTSR[1]  (.A(ram6_1), .B(
        ram7_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_224));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_8));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIF5CQ[5]  (.A(ram2_5), .B(
        ram3_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_177));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI5RBQ[0]  (.A(ram2_0), .B(
        ram3_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_172));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_8));
    DFN1C0 \counter_q[3]  (.D(\counter_d_i_1_i[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[3]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI9B9S[11]  (.A(ram2_11), .B(
        ram3_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_183));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIRG4R2[0]  (.A(N_189), .B(N_240)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\fifo_mem_q[16] ));
    NOR2B un1_wr_pointer_q_I_15 (.A(\DWACT_ADD_CI_0_TMP_0[0] ), .B(
        \wr_pointer_q[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1_0[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIV8RB1[1]  (.A(N_207), .B(N_224)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_241));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_9));
    NOR2A empty_out_RNING163 (.A(\fifo_mem_q[16] ), .B(tx_fifo_empty), 
        .Y(tx_fifo_last_out));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIDRSR[0]  (.A(ram6_0), .B(
        ram7_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_223));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIKIGP2[9]  (.A(N_198), .B(N_249)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[8]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI7TBQ[1]  (.A(ram2_1), .B(
        ram3_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_173));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_6));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIR4RB1[0]  (.A(N_206), .B(N_223)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_240));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIIPQL1[15]  (.A(N_170), .B(
        N_187), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_204));
    NOR3C fifo_mem_q_awe5 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \fifo_mem_d[0]_0_sqmuxa ), .C(awe1_1), .Y(awe5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDVHL[11]  (.A(ram4_11), .B(
        ram5_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_217));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI7HJ9[3]  (.A(ram0_3), .B(
        ram1_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_158));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI6PFA1[3]  (.A(N_158), .B(N_175)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_192));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_10));
    NOR2 fifo_mem_q_awe0_1 (.A(\wr_pointer_q[0]_net_1 ), .B(
        \wr_pointer_q[1]_net_1 ), .Y(awe0_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe5), .Q(ram5_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_8));
    NOR2A \wr_pointer_q_RNO[1]  (.A(I_12), .B(awe7), .Y(
        \wr_pointer_q_3[1] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNINP4B[7]  (.A(ram4_7), .B(
        ram5_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_213));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI9JJ9[4]  (.A(ram0_4), .B(
        ram1_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_159));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIRTQE[16]  (.A(ram6_16), .B(
        ram7_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_239));
    NOR2B \wr_pointer_q_RNI8G6G[2]  (.A(\wr_pointer_q[2]_net_1 ), .B(
        awe3_1), .Y(\un10_fifo_mem_d[7] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNI2AH53[12]  (.A(N_201), .B(
        N_252), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[11]));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIBD9S[12]  (.A(ram2_12), .B(
        ram3_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_184));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[8]  (.D(
        SPI_master_0_BIF_1_PWDATA[7]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_8));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDF4B[2]  (.A(ram4_2), .B(
        ram5_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_208));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI1BJ9[0]  (.A(ram0_0), .B(
        ram1_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_155));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIQ2I53[15]  (.A(N_204), .B(
        N_255), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[14]));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIF1IL[12]  (.A(ram4_12), .B(
        ram5_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_218));
    NOR3A empty_out_RNI98PI2 (.A(tx_fifo_read), .B(tx_fifo_empty), .C(
        tx_fifo_write), .Y(\un1_counter_d_0_sqmuxa[1] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIVOP81[5]  (.A(N_160), .B(N_177)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_194));
    INV empty_out_RNISVSA (.A(tx_fifo_empty), .Y(tx_fifo_empty_i));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[9]  (.D(
        SPI_master_0_BIF_1_PWDATA[8]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_9));
    NOR2A fifo_mem_q_awe1_1 (.A(\wr_pointer_q[0]_net_1 ), .B(
        \wr_pointer_q[1]_net_1 ), .Y(awe1_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNILBCQ[8]  (.A(ram2_8), .B(
        ram3_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_180));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIDNJ9[6]  (.A(ram0_6), .B(
        ram1_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_161));
    AND2 un1_wr_pointer_q_I_1 (.A(\wr_pointer_q[0]_net_1 ), .B(
        wr_pointer_d_1_sqmuxa_1), .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIFHQE[10]  (.A(ram6_10), .B(
        ram7_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_233));
    NOR3B full_out_RNIP26D1 (.A(tx_fifo_full_i_0), .B(tx_fifo_write), 
        .C(\un10_fifo_mem_d[7] ), .Y(wr_pointer_d_1_sqmuxa_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_12));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIIQH53[14]  (.A(N_203), .B(
        N_254), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[13]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_5));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI29QL1[11]  (.A(N_166), .B(
        N_183), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_200));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_1));
    OR2A empty_out_RNIO4OO1 (.A(tx_fifo_read), .B(tx_fifo_empty), .Y(
        un1_rd_pointer_d_1_sqmuxa_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIN5TR[5]  (.A(ram6_5), .B(
        ram7_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_228));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIL7IL[15]  (.A(ram4_15), .B(
        ram5_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_221));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIF9Q81[9]  (.A(N_164), .B(N_181)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_198));
    DFN1C0 \counter_q[0]  (.D(\counter_d[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\counter_q[0]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_6));
    OA1A \rd_pointer_q_RNO[0]  (.A(\un1_data_out_dx[7] ), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(
        \DWACT_ADD_CI_0_partial_sum_0[0] ), .Y(\rd_pointer_q_3[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_10));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNI6ETA1[16]  (.A(N_222), .B(
        N_239), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_256));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_6));
    NOR3B fifo_mem_q_awe3 (.A(\fifo_mem_d[0]_0_sqmuxa ), .B(awe3_1), 
        .C(\wr_pointer_q[2]_net_1 ), .Y(awe3));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNILNQE[13]  (.A(ram6_13), .B(
        ram7_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_236));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIBLRB1[4]  (.A(N_210), .B(N_227)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_244));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_14));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI71Q81[7]  (.A(N_162), .B(N_179)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_196));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_6));
    AO18 un1_counter_q_m7 (.A(\counter_q[2]_net_1 ), .B(i2_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i4_mux));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI5FJ9[2]  (.A(ram0_2), .B(
        ram1_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_157));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_11));
    AND2 un1_rd_pointer_q_I_1 (.A(\rd_pointer_q[0]_net_1 ), .B(
        rd_pointer_d_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_16));
    NOR3C fifo_mem_q_awe4 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \fifo_mem_d[0]_0_sqmuxa ), .C(awe0_1), .Y(awe4));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIIPG53[10]  (.A(N_199), .B(
        N_250), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[9]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_6));
    DFN1C0 \rd_pointer_q[0]  (.D(\rd_pointer_q_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q_0[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_13));
    XOR2 un1_counter_q_m18 (.A(N_24), .B(N_2_i), .Y(
        \counter_d_i_1_i[1] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIPRQE[15]  (.A(ram6_15), .B(
        ram7_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_238));
    DFN1C0 \rd_pointer_q[2]  (.D(\rd_pointer_q_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q[2]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[3]  (.D(
        SPI_master_0_BIF_1_PWDATA[2]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_3));
    DFN1C0 \wr_pointer_q[2]  (.D(\wr_pointer_q_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[2]_net_1 ));
    OA1 un1_counter_q_m1 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        counter_d_0_sqmuxa_1), .C(\counter_q[0]_net_1 ), .Y(N_2_i));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIJ9CQ[7]  (.A(ram2_7), .B(
        ram3_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_179));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIB1CQ[3]  (.A(ram2_3), .B(
        ram3_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_175));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIC9FP2[4]  (.A(N_193), .B(N_244)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[3]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_6));
    XOR2 un1_wr_pointer_q_I_12 (.A(\wr_pointer_q[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_12));
    NOR3B fifo_mem_q_awe0 (.A(\fifo_mem_d[0]_0_sqmuxa ), .B(awe0_1), 
        .C(\wr_pointer_q[2]_net_1 ), .Y(awe0));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIFPJ9[7]  (.A(ram0_7), .B(
        ram1_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_162));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIJTJ9[9]  (.A(ram0_9), .B(
        ram1_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_164));
    XOR2 un1_counter_q_m18_0 (.A(\counter_q[1]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_24));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI7P0J[12]  (.A(ram0_12), .B(
        ram1_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_167));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIH3IL[13]  (.A(ram4_13), .B(
        ram5_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_219));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIHJ9S[15]  (.A(ram2_15), .B(
        ram3_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_187));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[6]  (.D(
        SPI_master_0_BIF_1_PWDATA[5]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_6));
    XNOR2 un1_counter_q_m16 (.A(N_25), .B(i2_mux), .Y(
        \counter_d_i_1_i[2] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_10));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIV9SB1[9]  (.A(N_215), .B(N_232)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_249));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI6DQL1[12]  (.A(N_167), .B(
        N_184), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_201));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNID3CQ[4]  (.A(ram2_4), .B(
        ram3_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_176));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[13]  (.D(
        SPI_master_0_BIF_1_PWDATA[12]), .CLK(PCLK_c), .E(awe2), .Q(
        ram2_13));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[4]  (.D(
        SPI_master_0_BIF_1_PWDATA[3]), .CLK(PCLK_c), .E(awe0), .Q(
        ram0_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[12]  (.D(
        SPI_master_0_BIF_1_PWDATA[11]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_5));
    DFN1C0 \rd_pointer_q[1]  (.D(\rd_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q[1]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIIPSA1[11]  (.A(N_217), .B(
        N_234), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_251));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_11));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[0]  (.D(tx_fifo_last_in), .CLK(
        PCLK_c), .E(awe0), .Q(ram0_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[2]  (.D(
        SPI_master_0_BIF_1_PWDATA[1]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_7));
    XOR2 un1_counter_q_m16_0 (.A(\counter_q[2]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_25));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIJL9S[16]  (.A(ram2_16), .B(
        ram3_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_188));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram7__RNIQ1H53[11]  (.A(N_200), .B(
        N_251), .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[10]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[16]  (.D(
        SPI_master_0_BIF_1_PWDATA[15]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_16));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe4), .Q(
        ram4_7));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI3P4R2[1]  (.A(N_190), .B(N_241)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[0]));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIBT0J[14]  (.A(ram0_14), .B(
        ram1_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_169));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[14]  (.D(
        SPI_master_0_BIF_1_PWDATA[13]), .CLK(PCLK_c), .E(awe3), .Q(
        ram3_14));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIP7TR[6]  (.A(ram6_6), .B(
        ram7_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_229));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe6), .Q(
        ram6_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_1));
    NOR2B full_out_RNIHIVS (.A(tx_fifo_full_i_0), .B(tx_fifo_write), 
        .Y(\fifo_mem_d[0]_0_sqmuxa ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIJTRB1[6]  (.A(N_212), .B(N_229)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_246));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[15]  (.D(
        SPI_master_0_BIF_1_PWDATA[14]), .CLK(PCLK_c), .E(awe5), .Q(
        ram5_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIF11J[16]  (.A(ram0_16), .B(
        ram1_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_171));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIJL4B[5]  (.A(ram4_5), .B(
        ram5_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_211));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[10]  (.D(
        SPI_master_0_BIF_1_PWDATA[9]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[7]  (.D(
        SPI_master_0_BIF_1_PWDATA[6]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_7));
    NOR3C fifo_mem_q_awe6 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \fifo_mem_d[0]_0_sqmuxa ), .C(awe2_1), .Y(awe6));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[5]  (.D(
        SPI_master_0_BIF_1_PWDATA[4]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_5));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNINDCQ[9]  (.A(ram2_9), .B(
        ram3_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_181));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIB15R2[2]  (.A(N_191), .B(N_242)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[1]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[11]  (.D(
        SPI_master_0_BIF_1_PWDATA[10]), .CLK(PCLK_c), .E(awe1), .Q(
        ram1_11));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[1]  (.D(
        SPI_master_0_BIF_1_PWDATA[0]), .CLK(PCLK_c), .E(awe7), .Q(
        ram7_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNIHRJ9[8]  (.A(ram0_8), .B(
        ram1_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_163));
    MX2 \fifo_mem_q_fifo_mem_q_ram0__RNI42GP2[7]  (.A(N_196), .B(N_247)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(tx_fifo_data_out[6]));
    
endmodule


module spi_fifo_16s_8s_3_0(
       rx_fifo_data_in,
       rx_fifo_data_out,
       CoreAPB3_0_APBmslave0_PRDATA_3,
       CoreAPB3_0_APBmslave0_PRDATA_2,
       CoreAPB3_0_APBmslave0_PRDATA_7,
       CoreAPB3_0_APBmslave0_PRDATA_0,
       rx_fifo_first_in,
       first_frame_out,
       rx_channel_overflow,
       N_26,
       N_221_0,
       N_22,
       un1_PADDR,
       N_20,
       SPIRXAVAIL_i_1_i,
       rx_fifo_read,
       SPIRXAVAIL_i_1,
       rx_fifo_write,
       PRESETN_c,
       PCLK_c
    );
input  [15:0] rx_fifo_data_in;
output [15:1] rx_fifo_data_out;
output CoreAPB3_0_APBmslave0_PRDATA_3;
output CoreAPB3_0_APBmslave0_PRDATA_2;
output CoreAPB3_0_APBmslave0_PRDATA_7;
output CoreAPB3_0_APBmslave0_PRDATA_0;
input  rx_fifo_first_in;
output first_frame_out;
output rx_channel_overflow;
input  N_26;
input  N_221_0;
input  N_22;
input  un1_PADDR;
input  N_20;
output SPIRXAVAIL_i_1_i;
input  rx_fifo_read;
output SPIRXAVAIL_i_1;
input  rx_fifo_write;
input  PRESETN_c;
input  PCLK_c;

    wire \rd_pointer_q_0[1]_net_1 , \rd_pointer_q_3[1] , 
        \rd_pointer_q[0]_net_1 , \rd_pointer_q_0[0] , m3_e_2_net_1, 
        m3_e_1_net_1, \counter_d_i_1_i[4] , m3_e_0_net_1, 
        \counter_d_i_1_i[2] , \counter_d[0] , \counter_d_i_1_i[1] , 
        N_27, \counter_q[4]_net_1 , \un1_counter_d_0_sqmuxa[1] , N_25, 
        \counter_q[2]_net_1 , N_24, \counter_q[1]_net_1 , 
        counter_d_0_sqmuxa_0, counter_d_0_sqmuxa_1, 
        counter_d_0_sqmuxa_1_0, N_2_i, i2_mux, \counter_d_i_1_i[3] , 
        \counter_q[3]_net_1 , i4_mux, i6_mux, \counter_d[5] , 
        \counter_q[5]_net_1 , i8_mux, \counter_q[0]_net_1 , 
        empty_out_2, full_out_2, \DWACT_ADD_CI_0_g_array_1[0] , 
        \DWACT_ADD_CI_0_TMP[0] , \rd_pointer_q[1]_net_1 , 
        \DWACT_ADD_CI_0_g_array_1_0[0] , \DWACT_ADD_CI_0_TMP_0[0] , 
        \wr_pointer_q[1]_net_1 , un1_rd_pointer_d_1_sqmuxa_0, 
        \un1_data_out_dx[7] , full_out_net_1, wr_pointer_d_1_sqmuxa_1, 
        \wr_pointer_q[2]_net_1 , awe3_1, \rd_pointer_q[2]_net_1 , 
        N_155, ram0_0, ram1_0, N_159, ram0_4, ram1_4, N_162, ram0_7, 
        ram1_7, N_164, ram0_9, ram1_9, N_165, ram0_10, ram1_10, N_166, 
        ram0_11, ram1_11, N_167, ram0_12, ram1_12, N_168, ram0_13, 
        ram1_13, N_170, ram0_15, ram1_15, N_172, ram2_0, ram3_0, N_176, 
        ram2_4, ram3_4, N_179, ram2_7, ram3_7, N_181, ram2_9, ram3_9, 
        N_182, ram2_10, ram3_10, N_183, ram2_11, ram3_11, N_184, 
        ram2_12, ram3_12, N_185, ram2_13, ram3_13, N_187, ram2_15, 
        ram3_15, N_189, N_193, N_196, N_198, N_199, N_200, N_201, 
        N_202, N_204, N_210, ram4_4, ram5_4, N_213, ram4_7, ram5_7, 
        N_215, ram4_9, ram5_9, N_216, ram4_10, ram5_10, N_217, ram4_11, 
        ram5_11, N_218, ram4_12, ram5_12, N_219, ram4_13, ram5_13, 
        N_221, ram4_15, ram5_15, N_223, ram6_0, ram7_0, N_227, ram6_4, 
        ram7_4, N_230, ram6_7, ram7_7, N_232, ram6_9, ram7_9, N_233, 
        ram6_10, ram7_10, N_234, ram6_11, ram7_11, N_235, ram6_12, 
        ram7_12, N_236, ram6_13, ram7_13, N_238, ram6_15, ram7_15, 
        N_244, N_247, N_249, N_250, N_251, N_252, N_253, N_255, 
        \rx_fifo_data_out[3] , \rx_fifo_data_out[2] , N_192, N_243, 
        N_209, N_226, ram6_3, ram7_3, ram4_3, ram5_3, N_158, N_175, 
        ram2_3, ram3_3, ram0_3, ram1_3, \rd_pointer_q_3[0] , 
        \DWACT_ADD_CI_0_partial_sum[0] , I_12_2, \rd_pointer_q_3[2] , 
        I_14_2, N_157, ram0_2, ram1_2, N_174, ram2_2, ram3_2, N_191, 
        N_208, ram4_2, ram5_2, N_225, ram6_2, ram7_2, N_242, 
        rd_pointer_d_1_sqmuxa_2, \rx_fifo_data_out[7] , 
        \rx_fifo_data_out[0] , N_203, N_254, N_197, N_248, N_190, 
        N_241, \fifo_mem_q[16] , N_240, N_220, N_237, N_214, N_231, 
        N_207, N_224, N_206, ram6_14, ram7_14, ram6_8, ram7_8, ram6_1, 
        ram7_1, ram4_14, ram5_14, ram4_8, ram5_8, ram4_1, ram5_1, 
        ram4_0, ram5_0, N_169, N_186, N_163, N_180, N_156, N_173, 
        ram2_14, ram3_14, ram2_8, ram3_8, ram2_1, ram3_1, ram0_14, 
        ram1_14, ram0_8, ram1_8, ram0_1, ram1_1, awe7, awe4_2, awe6, 
        \wr_pointer_q[0]_net_1 , awe5, awe4, awe3, awe0_2, awe2, awe1, 
        awe0, N_205, N_256, N_195, N_246, N_222, N_239, N_212, N_229, 
        ram6_16, ram7_16, ram6_6, ram7_6, ram4_16, ram5_16, ram4_6, 
        ram5_6, N_171, N_188, N_161, N_178, ram2_16, ram3_16, ram2_6, 
        ram3_6, ram0_16, ram1_16, ram0_6, ram1_6, N_194, N_245, N_211, 
        N_228, ram6_5, ram7_5, ram4_5, ram5_5, N_160, N_177, ram2_5, 
        ram3_5, ram0_5, ram1_5, \wr_pointer_q_3[2] , I_14_1, 
        \wr_pointer_q_3[1] , I_12_1, \wr_pointer_q_3[0] , 
        \DWACT_ADD_CI_0_partial_sum_0[0] , GND, VCC;
    
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_5));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIV6ST[2]  (.A(ram0_2), .B(
        ram1_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_157));
    DFN1P0 empty_out (.D(empty_out_2), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(SPIRXAVAIL_i_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI8T8N1[12]  (.A(N_218), .B(
        N_235), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_252));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_7));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI4T5I1[2]  (.A(N_208), .B(N_225)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_242));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIG59N1[14]  (.A(N_220), .B(
        N_237), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_254));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI1TDS[10]  (.A(ram2_10), .B(
        ram3_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_182));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIH4O72[5]  (.A(N_160), .B(N_177)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_194));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIN3601[8]  (.A(ram6_8), .B(
        ram7_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_231));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_7));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIHHDF[7]  (.A(ram4_7), .B(
        ram5_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_213));
    MX2A \fifo_mem_q_fifo_mem_q_ram4__RNITUS78[8]  (.A(N_221_0), .B(
        \rx_fifo_data_out[7] ), .S(un1_PADDR), .Y(
        CoreAPB3_0_APBmslave0_PRDATA_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_4));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIT4ST[1]  (.A(ram0_1), .B(
        ram1_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_156));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI9HST[7]  (.A(ram0_7), .B(
        ram1_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_162));
    XNOR3 un1_counter_q_ADD_6x6_fast_I29_Y (.A(
        \un1_counter_d_0_sqmuxa[1] ), .B(\counter_q[5]_net_1 ), .C(
        i8_mux), .Y(\counter_d[5] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNI95VU[10]  (.A(ram6_10), .B(
        ram7_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_233));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_13));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIB7VU[11]  (.A(ram6_11), .B(
        ram7_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_234));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIFR501[4]  (.A(ram6_4), .B(
        ram7_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_227));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_4));
    XOR2 un1_rd_pointer_q_I_9 (.A(\rd_pointer_q[0]_net_1 ), .B(
        rd_pointer_d_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_partial_sum[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_8));
    NOR3B fifo_mem_q_awe1 (.A(\wr_pointer_q[0]_net_1 ), .B(awe0_2), .C(
        \wr_pointer_q[1]_net_1 ), .Y(awe1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_0));
    NOR2A empty_out_RNIN7SJ4 (.A(\fifo_mem_q[16] ), .B(SPIRXAVAIL_i_1), 
        .Y(first_frame_out));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIL1601[7]  (.A(ram6_7), .B(
        ram7_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_230));
    MX2A \fifo_mem_q_fifo_mem_q_ram4__RNITAE37[3]  (.A(N_22), .B(
        \rx_fifo_data_out[2] ), .S(un1_PADDR), .Y(
        CoreAPB3_0_APBmslave0_PRDATA_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIFRML[15]  (.A(ram4_15), .B(
        ram5_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_221));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_10));
    DFN1C0 \counter_q[4]  (.D(\counter_d_i_1_i[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[4]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_9));
    NOR2B fifo_mem_q_awe3_1 (.A(\wr_pointer_q[1]_net_1 ), .B(
        \wr_pointer_q[0]_net_1 ), .Y(awe3_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNID1LU[7]  (.A(ram2_7), .B(
        ram3_7), .S(\rd_pointer_q[0]_net_1 ), .Y(N_179));
    DFN1C0 \counter_q[2]  (.D(\counter_d_i_1_i[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[2]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_3));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNITV354[0]  (.A(N_189), .B(N_240)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\fifo_mem_q[16] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI1KN72[1]  (.A(N_156), .B(N_173)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_190));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIC19N1[13]  (.A(N_219), .B(
        N_236), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_253));
    NOR3B fifo_mem_q_awe2 (.A(\wr_pointer_q[1]_net_1 ), .B(awe0_2), .C(
        \wr_pointer_q[0]_net_1 ), .Y(awe2));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDDDF[5]  (.A(ram4_5), .B(
        ram5_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_211));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_14));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDG454[2]  (.A(N_191), .B(N_242)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[1]));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIBVKU[6]  (.A(ram2_6), .B(
        ram3_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_178));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIL8O72[6]  (.A(N_161), .B(N_178)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_195));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_4));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI5ON72[2]  (.A(N_157), .B(N_174)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_191));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI59554[5]  (.A(N_194), .B(N_245)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[4]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_16));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_11));
    DFN1C0 \wr_pointer_q[1]  (.D(\wr_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[1]_net_1 ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI4P8N1[11]  (.A(N_217), .B(
        N_234), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_251));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI51ES[12]  (.A(ram2_12), .B(
        ram3_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_184));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIT85J[10]  (.A(ram0_10), .B(
        ram1_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_165));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI1LO72[9]  (.A(N_164), .B(N_181)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_198));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIH5LU[9]  (.A(ram2_9), .B(
        ram3_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_181));
    OA1A empty_out_RNIBF1Q4 (.A(rx_fifo_read), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(I_12_2), .Y(
        \rd_pointer_q_3[1] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIFFDF[6]  (.A(ram4_6), .B(
        ram5_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_212));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIPOQQ1[16]  (.A(N_171), .B(
        N_188), .S(\rd_pointer_q[1]_net_1 ), .Y(N_205));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNISK5I1[0]  (.A(N_206), .B(N_223)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_240));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_13));
    DFN1C0 \counter_q[1]  (.D(\counter_d_i_1_i[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[1]_net_1 ));
    AO18 un1_counter_q_m10 (.A(\counter_q[3]_net_1 ), .B(i4_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i6_mux));
    DFN1C0 \wr_pointer_q[0]  (.D(\wr_pointer_q_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[0]_net_1 ));
    XOR2 un1_rd_pointer_q_I_12 (.A(\rd_pointer_q[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP[0] ), .Y(I_12_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNIB7ES[15]  (.A(ram2_15), .B(
        ram3_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_187));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_11));
    GND GND_i (.Y(GND));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI3VDS[11]  (.A(ram2_11), .B(
        ram3_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_183));
    XOR2 un1_wr_pointer_q_I_14 (.A(\wr_pointer_q[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1_0[0] ), .Y(I_14_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIHGQQ1[14]  (.A(N_169), .B(
        N_186), .S(\rd_pointer_q[1]_net_1 ), .Y(N_203));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI1D5J[12]  (.A(ram0_12), .B(
        ram1_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_167));
    NOR2 m3_e_0 (.A(\counter_d[0] ), .B(\counter_d_i_1_i[1] ), .Y(
        m3_e_0_net_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI9L5J[16]  (.A(ram0_16), .B(
        ram1_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_171));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI816I1[3]  (.A(N_209), .B(N_226)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_243));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNILHVU[16]  (.A(ram6_16), .B(
        ram7_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_239));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_16));
    OA1A \rd_pointer_q_RNO[2]  (.A(rx_fifo_read), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(I_14_2), .Y(
        \rd_pointer_q_3[2] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI19ST[3]  (.A(ram0_3), .B(
        ram1_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_158));
    XOR2 un1_rd_pointer_q_I_14 (.A(\rd_pointer_q[2]_net_1 ), .B(
        \DWACT_ADD_CI_0_g_array_1[0] ), .Y(I_14_2));
    NOR2B full_out_RNIGLTB (.A(full_out_net_1), .B(rx_fifo_write), .Y(
        rx_channel_overflow));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_3));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIK99N1[15]  (.A(N_221), .B(
        N_238), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_255));
    OR2A empty_out_RNIIQO71 (.A(\un1_data_out_dx[7] ), .B(
        SPIRXAVAIL_i_1), .Y(un1_rd_pointer_d_1_sqmuxa_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_6));
    NOR2A full_out_RNIGLTB_0 (.A(rx_fifo_write), .B(full_out_net_1), 
        .Y(counter_d_0_sqmuxa_1_0));
    NOR2A \wr_pointer_q_RNO[2]  (.A(I_14_1), .B(awe7), .Y(
        \wr_pointer_q_3[2] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_3));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIHT501[5]  (.A(ram6_5), .B(
        ram7_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_228));
    NOR2B empty_out_RNIT77F1 (.A(counter_d_0_sqmuxa_0), .B(
        rx_fifo_read), .Y(\un1_counter_d_0_sqmuxa[1] ));
    MIN3 un1_counter_q_m4 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(N_2_i), 
        .C(\counter_q[1]_net_1 ), .Y(i2_mux));
    AX1D un1_counter_q_m19 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        counter_d_0_sqmuxa_1), .C(\counter_q[0]_net_1 ), .Y(
        \counter_d[0] ));
    NOR3B full_out_RNO (.A(m3_e_2_net_1), .B(\counter_d_i_1_i[3] ), .C(
        \counter_d[5] ), .Y(full_out_2));
    NOR3A empty_out_RNO (.A(m3_e_2_net_1), .B(\counter_d[5] ), .C(
        \counter_d_i_1_i[3] ), .Y(empty_out_2));
    NOR3A empty_out_RNI3UP12 (.A(rx_fifo_read), .B(SPIRXAVAIL_i_1), .C(
        \un1_data_out_dx[7] ), .Y(rd_pointer_d_1_sqmuxa_2));
    AO18 un1_counter_q_m22 (.A(\counter_q[4]_net_1 ), .B(i6_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i8_mux));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNISL6I1[8]  (.A(N_214), .B(N_231)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_248));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIR2ST[0]  (.A(ram0_0), .B(
        ram1_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_155));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI7J5J[15]  (.A(ram0_15), .B(
        ram1_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_170));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_3));
    XNOR3 un1_counter_q_m14 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        \counter_q[3]_net_1 ), .C(i4_mux), .Y(\counter_d_i_1_i[3] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIT8AT3[13]  (.A(N_202), .B(
        N_253), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[12]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_12));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNITGO72[8]  (.A(N_163), .B(N_180)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_197));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_11));
    NOR2B fifo_mem_q_awe7 (.A(awe3_1), .B(awe4_2), .Y(awe7));
    DFN1C0 \rd_pointer_q_0[1]  (.D(\rd_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q_0[1]_net_1 ));
    AOI1B \wr_pointer_q_RNIIPAF1[2]  (.A(\wr_pointer_q[2]_net_1 ), .B(
        awe3_1), .C(counter_d_0_sqmuxa_1_0), .Y(
        wr_pointer_d_1_sqmuxa_1));
    DFN1C0 \counter_q[5]  (.D(\counter_d[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\counter_q[5]_net_1 ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIOD9N1[16]  (.A(N_222), .B(
        N_239), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_256));
    VCC VCC_i (.Y(VCC));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIHTML[16]  (.A(ram4_16), .B(
        ram5_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_222));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIT1654[8]  (.A(N_197), .B(N_248)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\rx_fifo_data_out[7] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI0L8N1[10]  (.A(N_216), .B(
        N_233), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_250));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIVIKU[0]  (.A(ram2_0), .B(
        ram3_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_172));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDPAT3[15]  (.A(N_204), .B(
        N_255), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[14]));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIKKLK3[10]  (.A(N_199), .B(
        N_250), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[9]));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIBJST[8]  (.A(ram0_8), .B(
        ram1_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_163));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_2));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI77DF[2]  (.A(ram4_2), .B(
        ram5_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_208));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_9));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_2));
    NOR2B fifo_mem_q_awe4_2 (.A(counter_d_0_sqmuxa_1_0), .B(
        \wr_pointer_q[2]_net_1 ), .Y(awe4_2));
    NOR3C \rd_pointer_q_0_RNIOI0P[1]  (.A(\rd_pointer_q_0[1]_net_1 ), 
        .B(\rd_pointer_q[2]_net_1 ), .C(\rd_pointer_q[0]_net_1 ), .Y(
        \un1_data_out_dx[7] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI5HML[10]  (.A(ram4_10), .B(
        ram5_10), .S(\rd_pointer_q[0]_net_1 ), .Y(N_216));
    NOR2A m3_e_2 (.A(m3_e_1_net_1), .B(\counter_d_i_1_i[4] ), .Y(
        m3_e_2_net_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_15));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_15));
    NOR2A m3_e_1 (.A(m3_e_0_net_1), .B(\counter_d_i_1_i[2] ), .Y(
        m3_e_1_net_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIL0AT3[12]  (.A(N_201), .B(
        N_252), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[11]));
    NOR2A \wr_pointer_q_RNO[0]  (.A(\DWACT_ADD_CI_0_partial_sum_0[0] ), 
        .B(awe7), .Y(\wr_pointer_q_3[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI55DF[1]  (.A(ram4_1), .B(
        ram5_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_207));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_13));
    XOR2 un1_wr_pointer_q_I_9 (.A(\wr_pointer_q[0]_net_1 ), .B(
        wr_pointer_d_1_sqmuxa_1), .Y(\DWACT_ADD_CI_0_partial_sum_0[0] )
        );
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNIF3LU[8]  (.A(ram2_8), .B(
        ram3_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_180));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_10));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNITFN72[0]  (.A(N_155), .B(N_172)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_189));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_2));
    DFN1C0 full_out (.D(full_out_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        full_out_net_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_14));
    NOR2B un1_rd_pointer_q_I_15 (.A(\DWACT_ADD_CI_0_TMP[0] ), .B(
        \rd_pointer_q[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNILO454[3]  (.A(N_192), .B(N_243)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\rx_fifo_data_out[2] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIBBDF[4]  (.A(ram4_4), .B(
        ram5_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_210));
    XNOR2 un1_counter_q_m12 (.A(N_27), .B(i6_mux), .Y(
        \counter_d_i_1_i[4] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_15));
    XOR2 un1_counter_q_m12_0 (.A(\counter_q[4]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_27));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI7JML[11]  (.A(ram4_11), .B(
        ram5_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_217));
    NOR2A full_out_RNI1PU51 (.A(counter_d_0_sqmuxa_1_0), .B(
        rx_fifo_read), .Y(counter_d_0_sqmuxa_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_8));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNID9ES[16]  (.A(ram2_16), .B(
        ram3_16), .S(\rd_pointer_q[0]_net_1 ), .Y(N_188));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI33DF[0]  (.A(ram4_0), .B(
        ram5_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_206));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_8));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIL1BT3[16]  (.A(N_205), .B(
        N_256), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[15]));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI9LML[12]  (.A(ram4_12), .B(
        ram5_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_218));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI3F5J[13]  (.A(ram0_13), .B(
        ram1_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_168));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI5A654[9]  (.A(N_198), .B(N_249)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[8]));
    DFN1C0 \counter_q[3]  (.D(\counter_d_i_1_i[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\counter_q[3]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_10));
    NOR2A fifo_mem_q_awe0_2 (.A(counter_d_0_sqmuxa_1_0), .B(
        \wr_pointer_q[2]_net_1 ), .Y(awe0_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI5DST[5]  (.A(ram0_5), .B(
        ram1_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_160));
    INV empty_out_RNIQ7OE (.A(SPIRXAVAIL_i_1), .Y(SPIRXAVAIL_i_1_i));
    NOR2B un1_wr_pointer_q_I_15 (.A(\DWACT_ADD_CI_0_TMP_0[0] ), .B(
        \wr_pointer_q[1]_net_1 ), .Y(\DWACT_ADD_CI_0_g_array_1_0[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI9TKU[5]  (.A(ram2_5), .B(
        ram3_5), .S(\rd_pointer_q[0]_net_1 ), .Y(N_177));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_4));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_13));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_6));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_9));
    MX2A \fifo_mem_q_fifo_mem_q_ram4__RNI4KH8B[1]  (.A(N_26), .B(
        \rx_fifo_data_out[0] ), .S(un1_PADDR), .Y(
        CoreAPB3_0_APBmslave0_PRDATA_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNILLDF[9]  (.A(ram4_9), .B(
        ram5_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_215));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI0P5I1[1]  (.A(N_207), .B(N_224)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_241));
    NOR3B fifo_mem_q_awe5 (.A(\wr_pointer_q[0]_net_1 ), .B(awe4_2), .C(
        \wr_pointer_q[1]_net_1 ), .Y(awe5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_16));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI73ES[13]  (.A(ram2_13), .B(
        ram3_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_185));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_9));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_10));
    NOR2 empty_out_RNIC46L (.A(rx_fifo_write), .B(SPIRXAVAIL_i_1), .Y(
        counter_d_0_sqmuxa_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_0));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNID0O72[4]  (.A(N_159), .B(N_176)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_193));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_8));
    NOR2A \wr_pointer_q_RNO[1]  (.A(I_12_1), .B(awe7), .Y(
        \wr_pointer_q_3[1] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIPCO72[7]  (.A(N_162), .B(N_179)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_196));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI58454[1]  (.A(N_190), .B(N_241)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\rx_fifo_data_out[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[8]  (.D(rx_fifo_data_in[7]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_8));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNILKQQ1[15]  (.A(N_170), .B(
        N_187), .S(\rd_pointer_q[1]_net_1 ), .Y(N_204));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[9]  (.D(rx_fifo_data_in[8]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_9));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDO9T3[11]  (.A(N_200), .B(
        N_251), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[10]));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_15));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI3NKU[2]  (.A(ram2_2), .B(
        ram3_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_174));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI54QQ1[11]  (.A(N_166), .B(
        N_183), .S(\rd_pointer_q[1]_net_1 ), .Y(N_200));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIOH6I1[7]  (.A(N_213), .B(N_230)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_247));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI5PKU[3]  (.A(ram2_3), .B(
        ram3_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_175));
    AND2 un1_wr_pointer_q_I_1 (.A(\wr_pointer_q[0]_net_1 ), .B(
        wr_pointer_d_1_sqmuxa_1), .Y(\DWACT_ADD_CI_0_TMP_0[0] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNI7J501[0]  (.A(ram6_0), .B(
        ram7_0), .S(\rd_pointer_q[0]_net_1 ), .Y(N_223));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIVA5J[11]  (.A(ram0_11), .B(
        ram1_11), .S(\rd_pointer_q[0]_net_1 ), .Y(N_166));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_12));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI98QQ1[12]  (.A(N_167), .B(
        N_184), .S(\rd_pointer_q[1]_net_1 ), .Y(N_201));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_5));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIDP501[3]  (.A(ram6_3), .B(
        ram7_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_226));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIG46I1[10]  (.A(N_165), .B(
        N_182), .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_199));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIJJDF[8]  (.A(ram4_8), .B(
        ram5_8), .S(\rd_pointer_q[0]_net_1 ), .Y(N_214));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIG96I1[5]  (.A(N_211), .B(N_228)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_245));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDPML[14]  (.A(ram4_14), .B(
        ram5_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_220));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_1));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_15));
    DFN1C0 \counter_q[0]  (.D(\counter_d[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\counter_q[0]_net_1 ));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIC56I1[4]  (.A(N_210), .B(N_227)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_244));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_6));
    OA1A \rd_pointer_q_RNO[0]  (.A(rx_fifo_read), .B(
        un1_rd_pointer_d_1_sqmuxa_0), .C(
        \DWACT_ADD_CI_0_partial_sum[0] ), .Y(\rd_pointer_q_3[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_6));
    NOR2B fifo_mem_q_awe3 (.A(awe3_1), .B(awe0_2), .Y(awe3));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI5HAT3[14]  (.A(N_203), .B(
        N_254), .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[13]));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI0Q6I1[9]  (.A(N_215), .B(N_232)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_249));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_6));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIT0554[4]  (.A(N_193), .B(N_244)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(\rx_fifo_data_out[3] ));
    AO18 un1_counter_q_m7 (.A(\counter_q[2]_net_1 ), .B(i2_mux), .C(
        \un1_counter_d_0_sqmuxa[1] ), .Y(i4_mux));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI7RKU[4]  (.A(ram2_4), .B(
        ram3_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_176));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_11));
    AND2 un1_rd_pointer_q_I_1 (.A(\rd_pointer_q[0]_net_1 ), .B(
        rd_pointer_d_1_sqmuxa_2), .Y(\DWACT_ADD_CI_0_TMP[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_16));
    NOR3A fifo_mem_q_awe4 (.A(awe4_2), .B(\wr_pointer_q[0]_net_1 ), .C(
        \wr_pointer_q[1]_net_1 ), .Y(awe4));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNI99DF[3]  (.A(ram4_3), .B(
        ram5_3), .S(\rd_pointer_q[0]_net_1 ), .Y(N_209));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_6));
    DFN1C0 \rd_pointer_q[0]  (.D(\rd_pointer_q_3[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q_0[0] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_13));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNILP554[7]  (.A(N_196), .B(N_247)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[6]));
    XOR2 un1_counter_q_m18 (.A(N_24), .B(N_2_i), .Y(
        \counter_d_i_1_i[1] ));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIJV501[6]  (.A(ram6_6), .B(
        ram7_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_229));
    DFN1C0 \rd_pointer_q[2]  (.D(\rd_pointer_q_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q[2]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[3]  (.D(rx_fifo_data_in[2]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_3));
    DFN1C0 \wr_pointer_q[2]  (.D(\wr_pointer_q_3[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\wr_pointer_q[2]_net_1 ));
    OA1 un1_counter_q_m1 (.A(\un1_counter_d_0_sqmuxa[1] ), .B(
        counter_d_0_sqmuxa_1), .C(\counter_q[0]_net_1 ), .Y(N_2_i));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIP5601[9]  (.A(ram6_9), .B(
        ram7_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_232));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_6));
    XOR2 un1_wr_pointer_q_I_12 (.A(\wr_pointer_q[1]_net_1 ), .B(
        \DWACT_ADD_CI_0_TMP_0[0] ), .Y(I_12_1));
    NOR3A fifo_mem_q_awe0 (.A(awe0_2), .B(\wr_pointer_q[0]_net_1 ), .C(
        \wr_pointer_q[1]_net_1 ), .Y(awe0));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNID9VU[12]  (.A(ram6_12), .B(
        ram7_12), .S(\rd_pointer_q[0]_net_1 ), .Y(N_235));
    XOR2 un1_counter_q_m18_0 (.A(\counter_q[1]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_24));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIDLST[9]  (.A(ram0_9), .B(
        ram1_9), .S(\rd_pointer_q[0]_net_1 ), .Y(N_164));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIBN501[2]  (.A(ram6_2), .B(
        ram7_2), .S(\rd_pointer_q[0]_net_1 ), .Y(N_225));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[6]  (.D(rx_fifo_data_in[5]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_6));
    XNOR2 un1_counter_q_m16 (.A(N_25), .B(i2_mux), .Y(
        \counter_d_i_1_i[2] ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_10));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI9SN72[3]  (.A(N_158), .B(N_175)
        , .S(\rd_pointer_q[1]_net_1 ), .Y(N_192));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIFBVU[13]  (.A(ram6_13), .B(
        ram7_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_236));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIJFVU[15]  (.A(ram6_15), .B(
        ram7_15), .S(\rd_pointer_q[0]_net_1 ), .Y(N_238));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram2_[13]  (.D(rx_fifo_data_in[12]), 
        .CLK(PCLK_c), .E(awe2), .Q(ram2_13));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[4]  (.D(rx_fifo_data_in[3]), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_4));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNI9L501[1]  (.A(ram6_1), .B(
        ram7_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_224));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[12]  (.D(rx_fifo_data_in[11]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_12));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_5));
    DFN1C0 \rd_pointer_q[1]  (.D(\rd_pointer_q_3[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\rd_pointer_q[1]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNIDCQQ1[13]  (.A(N_168), .B(
        N_185), .S(\rd_pointer_q[1]_net_1 ), .Y(N_202));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_1));
    MX2A \fifo_mem_q_fifo_mem_q_ram4__RNIETKN6[4]  (.A(N_20), .B(
        \rx_fifo_data_out[3] ), .S(un1_PADDR), .Y(
        CoreAPB3_0_APBmslave0_PRDATA_3));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_11));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram0_[0]  (.D(rx_fifo_first_in), 
        .CLK(PCLK_c), .E(awe0), .Q(ram0_0));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[2]  (.D(rx_fifo_data_in[1]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_2));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_7));
    XOR2 un1_counter_q_m16_0 (.A(\counter_q[2]_net_1 ), .B(
        \un1_counter_d_0_sqmuxa[1] ), .Y(N_25));
    CLKINT \rd_pointer_q_RNI2P6B[0]  (.A(\rd_pointer_q_0[0] ), .Y(
        \rd_pointer_q[0]_net_1 ));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram2__RNI1LKU[1]  (.A(ram2_1), .B(
        ram3_1), .S(\rd_pointer_q[0]_net_1 ), .Y(N_173));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[16]  (.D(rx_fifo_data_in[15]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_16));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram4_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe4), .Q(ram4_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_5));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram3_[14]  (.D(rx_fifo_data_in[13]), 
        .CLK(PCLK_c), .E(awe3), .Q(ram3_14));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram6_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe6), .Q(ram6_7));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram3__RNI95ES[14]  (.A(ram2_14), .B(
        ram3_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_186));
    MX2 \fifo_mem_q_fifo_mem_q_ram6__RNIHDVU[14]  (.A(ram6_14), .B(
        ram7_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_237));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram5_[15]  (.D(rx_fifo_data_in[14]), 
        .CLK(PCLK_c), .E(awe5), .Q(ram5_15));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[10]  (.D(rx_fifo_data_in[9]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_10));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[7]  (.D(rx_fifo_data_in[6]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_7));
    NOR3B fifo_mem_q_awe6 (.A(\wr_pointer_q[1]_net_1 ), .B(awe4_2), .C(
        \wr_pointer_q[0]_net_1 ), .Y(awe6));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI7FST[6]  (.A(ram0_6), .B(
        ram1_6), .S(\rd_pointer_q[0]_net_1 ), .Y(N_161));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[5]  (.D(rx_fifo_data_in[4]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_5));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIDH554[6]  (.A(N_195), .B(N_246)
        , .S(\rd_pointer_q[2]_net_1 ), .Y(rx_fifo_data_out[5]));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI5H5J[14]  (.A(ram0_14), .B(
        ram1_14), .S(\rd_pointer_q[0]_net_1 ), .Y(N_169));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram1_[11]  (.D(rx_fifo_data_in[10]), 
        .CLK(PCLK_c), .E(awe1), .Q(ram1_11));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIBNML[13]  (.A(ram4_13), .B(
        ram5_13), .S(\rd_pointer_q[0]_net_1 ), .Y(N_219));
    MX2 \fifo_mem_q_fifo_mem_q_ram1__RNI3BST[4]  (.A(ram0_4), .B(
        ram1_4), .S(\rd_pointer_q[0]_net_1 ), .Y(N_159));
    DFN1E1 \fifo_mem_q_fifo_mem_q_ram7_[1]  (.D(rx_fifo_data_in[0]), 
        .CLK(PCLK_c), .E(awe7), .Q(ram7_1));
    MX2 \fifo_mem_q_fifo_mem_q_ram4__RNIKD6I1[6]  (.A(N_212), .B(N_229)
        , .S(\rd_pointer_q_0[1]_net_1 ), .Y(N_246));
    
endmodule


module spi_rf_16s_60s_0(
       SPI_master_0_BIF_1_PWDATA,
       SPI_master_0_BIF_1_PADDR_1,
       SPI_master_0_BIF_1_PADDR_3,
       SPI_master_0_BIF_1_PADDR_0,
       clk_div_val,
       rx_fifo_data_out_5,
       rx_fifo_data_out_0,
       rx_fifo_data_out_4,
       rx_fifo_data_out_3,
       CoreAPB3_0_APBmslave0_PRDATA_5,
       CoreAPB3_0_APBmslave0_PRDATA_0,
       CoreAPB3_0_APBmslave0_PRDATA_4,
       CoreAPB3_0_APBmslave0_PRDATA_3,
       PRESETN_c,
       PCLK_c,
       cfg_enable,
       SPI_master_0_BIF_1_PWRITE,
       tx_channel_underflow,
       rx_channel_overflow,
       tx_fifo_write,
       un1_tx_alldone,
       rx_fifo_read,
       rx_done_i_0,
       SPIRXAVAIL_i_1,
       un1_PADDR,
       tx_fifo_full_i_0,
       SPIMODE,
       master_ssel_out,
       cfg_frameurun,
       N_20,
       N_22,
       N_221,
       first_frame_out,
       N_26,
       N_793,
       tx_fifo_last_in_1,
       N_84,
       mtx_alldone_i_0,
       stxs_state,
       mtx_rxbusy,
       mtx_busy,
       SPI_master_0_BIF_1_PENABLE_i_0,
       SPI_master_0_BIF_1_PSELx,
       N_34
    );
input  [7:0] SPI_master_0_BIF_1_PWDATA;
input  SPI_master_0_BIF_1_PADDR_1;
input  SPI_master_0_BIF_1_PADDR_3;
input  SPI_master_0_BIF_1_PADDR_0;
output [7:0] clk_div_val;
input  rx_fifo_data_out_5;
input  rx_fifo_data_out_0;
input  rx_fifo_data_out_4;
input  rx_fifo_data_out_3;
output CoreAPB3_0_APBmslave0_PRDATA_5;
output CoreAPB3_0_APBmslave0_PRDATA_0;
output CoreAPB3_0_APBmslave0_PRDATA_4;
output CoreAPB3_0_APBmslave0_PRDATA_3;
input  PRESETN_c;
input  PCLK_c;
output cfg_enable;
input  SPI_master_0_BIF_1_PWRITE;
input  tx_channel_underflow;
input  rx_channel_overflow;
input  tx_fifo_write;
input  un1_tx_alldone;
input  rx_fifo_read;
input  rx_done_i_0;
input  SPIRXAVAIL_i_1;
input  un1_PADDR;
input  tx_fifo_full_i_0;
output SPIMODE;
input  master_ssel_out;
output cfg_frameurun;
output N_20;
output N_22;
output N_221;
input  first_frame_out;
output N_26;
input  N_793;
input  tx_fifo_last_in_1;
output N_84;
input  mtx_alldone_i_0;
input  stxs_state;
input  mtx_rxbusy;
input  mtx_busy;
input  SPI_master_0_BIF_1_PENABLE_i_0;
input  SPI_master_0_BIF_1_PSELx;
output N_34;

    wire \prdata_2_i_2[0] , N_77, \prdata_2_i_0[0] , N_37, N_76, 
        \prdata_2_i_1[2] , N_68, N_67, N_69, \prdata_2_i_1[3] , N_64, 
        N_63, N_65, \prdata_2_i_1[6] , N_52, N_51, N_53, 
        \prdata_2_i_1[7] , N_48, N_47, N_49, \prdata_2_i_1[1] , N_73, 
        N_72, N_74, \prdata_2_i_1[4] , N_60, N_59, N_61, 
        \prdata_2_i_1[5] , N_56, N_55, N_57, \int_raw_27_i_a2_0[3] , 
        \int_raw_27_i_a2_0[2] , \prdata_2_i_a2_2_1[7]_net_1 , 
        \sticky_10_i_a2_0[0] , \sticky_i_0[0] , N_79, N_87, N_224, 
        N_62, N_223, N_58, N_43, N_82, N_50, N_44, N_24, N_71, N_70, 
        N_222, N_54, N_66, \cfg_ssel[6]_net_1 , \control1[3]_net_1 , 
        \control1[2]_net_1 , \cfg_ssel[2]_net_1 , N_80, N_46, 
        \sticky_i_0[1] , \sticky_RNO[1]_net_1 , \sticky_RNO[0]_net_1 , 
        \cfg_ssel[1]_net_1 , \cfg_ssel[7]_net_1 , \control1[7]_net_1 , 
        \int_raw_36[2] , \int_raw_i_0[2] , \int_raw_39[3] , 
        \int_raw_i_0[3] , \cfg_ssel[5]_net_1 , \control1[5]_net_1 , 
        \cfg_ssel[4]_net_1 , \control1[4]_net_1 , N_81, N_86, 
        \cfg_ssel[0]_net_1 , \cfg_ssel[3]_net_1 , \cfg_cmdsize[0] , 
        \cfg_cmdsize[1] , \cfg_cmdsize[2] , GND, VCC;
    
    MX2A \int_raw_RNIJ14L6[2]  (.A(N_224), .B(rx_fifo_data_out_3), .S(
        un1_PADDR), .Y(CoreAPB3_0_APBmslave0_PRDATA_3));
    OR3 \int_raw_RNIVBG72[2]  (.A(\prdata_2_i_1[4] ), .B(N_62), .C(
        N_37), .Y(N_224));
    OR3 \CLK_DIV_RNIODR71[5]  (.A(N_56), .B(N_55), .C(N_57), .Y(
        \prdata_2_i_1[5] ));
    DFN1E1C0 \cfg_ssel[6]  (.D(SPI_master_0_BIF_1_PWDATA[6]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[6]_net_1 ));
    DFN1E1C0 \control1[3]  (.D(SPI_master_0_BIF_1_PWDATA[3]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(\control1[3]_net_1 ));
    DFN1P0 \int_raw[2]  (.D(\int_raw_36[2] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\int_raw_i_0[2] ));
    NOR2A \CLK_DIV_RNIVPH8[5]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[5]), .Y(N_55));
    NOR2 \control1_RNIJRAA[1]  (.A(SPIMODE), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_73));
    NOR3B un1_CLK_DIV_1_sqmuxa_2_i_a2 (.A(N_87), .B(N_84), .C(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_79));
    DFN1E1C0 \control1[0]  (.D(SPI_master_0_BIF_1_PWDATA[0]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(cfg_enable));
    DFN1E1C0 \cfg_ssel[4]  (.D(SPI_master_0_BIF_1_PWDATA[4]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[4]_net_1 ));
    NOR2A \prdata_2_i_a2_2[2]  (.A(tx_fifo_last_in_1), .B(
        SPIRXAVAIL_i_1), .Y(N_70));
    NOR2A \cfg_ssel_RNIUFUK[1]  (.A(N_82), .B(\cfg_ssel[1]_net_1 ), .Y(
        N_74));
    VCC VCC_i (.Y(VCC));
    OR2A \prdata_2_i_o3[7]  (.A(SPI_master_0_BIF_1_PSELx), .B(
        SPI_master_0_BIF_1_PENABLE_i_0), .Y(N_34));
    DFN1E1C0 \control1[1]  (.D(SPI_master_0_BIF_1_PWDATA[1]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(SPIMODE));
    OR3 \CLK_DIV_RNIHG8Q3[7]  (.A(\prdata_2_i_1[7] ), .B(N_50), .C(
        N_37), .Y(N_221));
    NOR3 \prdata_2_i_a2_2_1[7]  (.A(mtx_busy), .B(mtx_rxbusy), .C(
        stxs_state), .Y(\prdata_2_i_a2_2_1[7]_net_1 ));
    DFN1E1P0 \CLK_DIV[5]  (.D(SPI_master_0_BIF_1_PWDATA[5]), .CLK(
        PCLK_c), .PRE(PRESETN_c), .E(N_81), .Q(clk_div_val[5]));
    DFN1E1C0 \cfg_ssel[5]  (.D(SPI_master_0_BIF_1_PWDATA[5]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[5]_net_1 ));
    DFN1C0 \control2[3]  (.D(\cfg_cmdsize[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\cfg_cmdsize[2] ));
    NOR2 \control1_RNIMUAA[4]  (.A(\control1[4]_net_1 ), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_60));
    DFN1E1C0 \cfg_ssel[2]  (.D(SPI_master_0_BIF_1_PWDATA[2]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[2]_net_1 ));
    DFN1P0 \sticky[1]  (.D(\sticky_RNO[1]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sticky_i_0[1] ));
    NOR3C un1_CLK_DIV_1_sqmuxa_1_i_a2 (.A(N_82), .B(N_84), .C(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_80));
    DFN1C0 \control2[1]  (.D(\cfg_cmdsize[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\cfg_cmdsize[0] ));
    MX2A \control1_RNI3A807[1]  (.A(N_222), .B(rx_fifo_data_out_5), .S(
        un1_PADDR), .Y(CoreAPB3_0_APBmslave0_PRDATA_5));
    DFN1E1C0 \control1[5]  (.D(SPI_master_0_BIF_1_PWDATA[5]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(\control1[5]_net_1 ));
    AO1A \CLK_DIV_RNIGVUQ6[0]  (.A(first_frame_out), .B(
        tx_fifo_last_in_1), .C(\prdata_2_i_2[0] ), .Y(N_26));
    DFN1E1C0 \CLK_DIV[0]  (.D(SPI_master_0_BIF_1_PWDATA[0]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_81), .Q(clk_div_val[0]));
    DFN1E1C0 \CLK_DIV[7]  (.D(SPI_master_0_BIF_1_PWDATA[7]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_81), .Q(clk_div_val[7]));
    DFN1E1C0 \CLK_DIV[6]  (.D(SPI_master_0_BIF_1_PWDATA[6]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_81), .Q(clk_div_val[6]));
    NOR2A \CLK_DIV_RNIUOH8[4]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[4]), .Y(N_59));
    NOR2 un1_CLK_DIV_1_sqmuxa_2_i_a2_1 (.A(SPI_master_0_BIF_1_PADDR_0), 
        .B(SPI_master_0_BIF_1_PADDR_1), .Y(N_87));
    NOR2A \CLK_DIV_RNITNH8[3]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[3]), .Y(N_63));
    NOR2A \CLK_DIV_RNI1SH8[7]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[7]), .Y(N_47));
    NOR2A \cfg_ssel_RNI0IUK[3]  (.A(N_82), .B(\cfg_ssel[3]_net_1 ), .Y(
        N_65));
    OA1 \sticky_RNIC3M11[0]  (.A(\sticky_i_0[1] ), .B(\sticky_i_0[0] ), 
        .C(tx_fifo_last_in_1), .Y(N_71));
    OA1B \int_raw_RNO[3]  (.A(\int_raw_i_0[3] ), .B(N_43), .C(
        tx_channel_underflow), .Y(\int_raw_39[3] ));
    NOR2B \int_raw_RNIGH16[3]  (.A(\int_raw_i_0[3] ), .B(
        tx_fifo_last_in_1), .Y(N_58));
    NOR2 \control1_RNILTAA[3]  (.A(\control1[3]_net_1 ), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_64));
    DFN1E1C0 \control1[6]  (.D(SPI_master_0_BIF_1_PWDATA[6]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(cfg_frameurun));
    NOR2A un1_CLK_DIV_1_sqmuxa_2_i_a2_0 (.A(SPI_master_0_BIF_1_PWRITE), 
        .B(N_34), .Y(N_84));
    NOR2 \control1_RNIP1BA[7]  (.A(\control1[7]_net_1 ), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_48));
    OR3 \CLK_DIV_RNIC1R71[1]  (.A(N_73), .B(N_72), .C(N_74), .Y(
        \prdata_2_i_1[1] ));
    NOR2A \int_raw_RNO_1[3]  (.A(SPI_master_0_BIF_1_PWDATA[3]), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(\int_raw_27_i_a2_0[3] ));
    DFN1E1C0 \CLK_DIV[1]  (.D(SPI_master_0_BIF_1_PWDATA[1]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_81), .Q(clk_div_val[1]));
    NOR2A \int_raw_RNO_1[2]  (.A(SPI_master_0_BIF_1_PWDATA[2]), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(\int_raw_27_i_a2_0[2] ));
    NOR2A \cfg_ssel_RNI3LUK[6]  (.A(N_82), .B(\cfg_ssel[6]_net_1 ), .Y(
        N_53));
    GND GND_i (.Y(GND));
    NOR3C \int_raw_RNO_0[3]  (.A(N_82), .B(N_84), .C(
        \int_raw_27_i_a2_0[3] ), .Y(N_43));
    DFN1E1C0 \control1[4]  (.D(SPI_master_0_BIF_1_PWDATA[4]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(\control1[4]_net_1 ));
    OR3 \CLK_DIV_RNI4FE12[0]  (.A(N_77), .B(\prdata_2_i_0[0] ), .C(
        N_37), .Y(\prdata_2_i_2[0] ));
    DFN1E1C0 \cfg_ssel[0]  (.D(SPI_master_0_BIF_1_PWDATA[0]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[0]_net_1 ));
    AO1D \prdata_2_i_o2[7]  (.A(N_86), .B(N_87), .C(N_34), .Y(N_37));
    NOR2A \cfg_ssel_RNI2KUK[5]  (.A(N_82), .B(\cfg_ssel[5]_net_1 ), .Y(
        N_57));
    OR3 \CLK_DIV_RNIF4R71[2]  (.A(N_68), .B(N_67), .C(N_69), .Y(
        \prdata_2_i_1[2] ));
    NOR2A \CLK_DIV_RNIRLH8[1]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[1]), .Y(N_72));
    DFN1E1C0 \control1[7]  (.D(SPI_master_0_BIF_1_PWDATA[7]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(\control1[7]_net_1 ));
    DFN1E1C0 \control1[2]  (.D(SPI_master_0_BIF_1_PWDATA[2]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_79), .Q(\control1[2]_net_1 ));
    NOR2A \CLK_DIV_RNISMH8[2]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[2]), .Y(N_67));
    DFN1E1P0 \CLK_DIV[2]  (.D(SPI_master_0_BIF_1_PWDATA[2]), .CLK(
        PCLK_c), .PRE(PRESETN_c), .E(N_81), .Q(clk_div_val[2]));
    NOR2A \cfg_ssel_RNIVGUK[2]  (.A(N_82), .B(\cfg_ssel[2]_net_1 ), .Y(
        N_69));
    NOR2B \sticky_RNO_0[1]  (.A(rx_done_i_0), .B(\sticky_i_0[1] ), .Y(
        N_46));
    OA1B \int_raw_RNO[2]  (.A(\int_raw_i_0[2] ), .B(N_44), .C(
        rx_channel_overflow), .Y(\int_raw_36[2] ));
    NOR2B \sticky_RNO_0[0]  (.A(mtx_alldone_i_0), .B(\sticky_i_0[0] ), 
        .Y(\sticky_10_i_a2_0[0] ));
    MX2A \sticky_RNIFING7[0]  (.A(N_24), .B(rx_fifo_data_out_0), .S(
        un1_PADDR), .Y(CoreAPB3_0_APBmslave0_PRDATA_0));
    NOR2B un1_CLK_DIV_1_sqmuxa_i_a2_0 (.A(SPI_master_0_BIF_1_PADDR_0), 
        .B(SPI_master_0_BIF_1_PADDR_3), .Y(N_86));
    OR3 \CLK_DIV_RNII7R71[3]  (.A(N_64), .B(N_63), .C(N_65), .Y(
        \prdata_2_i_1[3] ));
    NOR2 \control1_RNIKSAA[2]  (.A(\control1[2]_net_1 ), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_68));
    NOR2 \control1_RNINVAA[5]  (.A(\control1[5]_net_1 ), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_56));
    NOR2B \prdata_2_i_a2_2[3]  (.A(tx_fifo_full_i_0), .B(
        tx_fifo_last_in_1), .Y(N_66));
    NOR2A \cfg_ssel_RNI1JUK[4]  (.A(N_82), .B(\cfg_ssel[4]_net_1 ), .Y(
        N_61));
    DFN1E1P0 \CLK_DIV[3]  (.D(SPI_master_0_BIF_1_PWDATA[3]), .CLK(
        PCLK_c), .PRE(PRESETN_c), .E(N_81), .Q(clk_div_val[3]));
    DFN1E1C0 \cfg_ssel[1]  (.D(SPI_master_0_BIF_1_PWDATA[1]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[1]_net_1 ));
    OR3 \int_raw_RNI3GG72[3]  (.A(\prdata_2_i_1[5] ), .B(N_58), .C(
        N_37), .Y(N_223));
    MX2A \int_raw_RNIVD4L6[3]  (.A(N_223), .B(rx_fifo_data_out_4), .S(
        un1_PADDR), .Y(CoreAPB3_0_APBmslave0_PRDATA_4));
    OR3 \CLK_DIV_RNIUJR71[7]  (.A(N_48), .B(N_47), .C(N_49), .Y(
        \prdata_2_i_1[7] ));
    OR3 \CLK_DIV_RNILAR71[4]  (.A(N_60), .B(N_59), .C(N_61), .Y(
        \prdata_2_i_1[4] ));
    OR3 \CLK_DIV_RNI2G1A2[3]  (.A(\prdata_2_i_1[3] ), .B(N_66), .C(
        N_37), .Y(N_20));
    AOI1B \control1_RNI925H[1]  (.A(master_ssel_out), .B(SPIMODE), .C(
        tx_fifo_last_in_1), .Y(N_54));
    NOR2 \control1_RNIO0BA[6]  (.A(cfg_frameurun), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_52));
    NOR2A \cfg_ssel_RNI4MUK[7]  (.A(N_82), .B(\cfg_ssel[7]_net_1 ), .Y(
        N_49));
    OR2 \sticky_RNO[1]  (.A(N_46), .B(rx_fifo_read), .Y(
        \sticky_RNO[1]_net_1 ));
    NOR3C \int_raw_RNO_0[2]  (.A(N_82), .B(N_84), .C(
        \int_raw_27_i_a2_0[2] ), .Y(N_44));
    DFN1C0 \control2[2]  (.D(\cfg_cmdsize[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(\cfg_cmdsize[1] ));
    DFN1E1C0 \cfg_ssel[7]  (.D(SPI_master_0_BIF_1_PWDATA[7]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[7]_net_1 ));
    NOR2A \prdata_2_i_a2_3[7]  (.A(SPI_master_0_BIF_1_PADDR_0), .B(
        SPI_master_0_BIF_1_PADDR_1), .Y(N_82));
    AO1A \sticky_RNO[0]  (.A(un1_tx_alldone), .B(\sticky_10_i_a2_0[0] )
        , .C(tx_fifo_write), .Y(\sticky_RNO[0]_net_1 ));
    NOR3B \prdata_2_i_a2_2[7]  (.A(\prdata_2_i_a2_2_1[7]_net_1 ), .B(
        tx_fifo_last_in_1), .C(N_793), .Y(N_50));
    NOR2A \cfg_ssel_RNITEUK[0]  (.A(N_82), .B(\cfg_ssel[0]_net_1 ), .Y(
        N_77));
    OR3 \CLK_DIV_RNIRGR71[6]  (.A(N_52), .B(N_51), .C(N_53), .Y(
        \prdata_2_i_1[6] ));
    OR3 \control1_RNIV3KI2[1]  (.A(\prdata_2_i_1[6] ), .B(N_54), .C(
        N_37), .Y(N_222));
    AO1A \CLK_DIV_RNICFSI[0]  (.A(clk_div_val[0]), .B(
        SPI_master_0_BIF_1_PADDR_1), .C(N_76), .Y(\prdata_2_i_0[0] ));
    NOR2 \control1_RNIIQAA[0]  (.A(cfg_enable), .B(
        SPI_master_0_BIF_1_PADDR_3), .Y(N_76));
    DFN1E1C0 \cfg_ssel[3]  (.D(SPI_master_0_BIF_1_PWDATA[3]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(N_80), .Q(\cfg_ssel[3]_net_1 ));
    DFN1E1P0 \CLK_DIV[4]  (.D(SPI_master_0_BIF_1_PWDATA[4]), .CLK(
        PCLK_c), .PRE(PRESETN_c), .E(N_81), .Q(clk_div_val[4]));
    NOR3C un1_CLK_DIV_1_sqmuxa_i_a2 (.A(SPI_master_0_BIF_1_PADDR_1), 
        .B(N_84), .C(N_86), .Y(N_81));
    NOR2A \CLK_DIV_RNI0RH8[6]  (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        clk_div_val[6]), .Y(N_51));
    DFN1P0 \sticky[0]  (.D(\sticky_RNO[0]_net_1 ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\sticky_i_0[0] ));
    DFN1P0 \int_raw[3]  (.D(\int_raw_39[3] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(\int_raw_i_0[3] ));
    OR3 \CLK_DIV_RNIP5RL2[2]  (.A(\prdata_2_i_1[2] ), .B(N_70), .C(
        N_37), .Y(N_22));
    OR3 \sticky_RNIJL433[0]  (.A(\prdata_2_i_1[1] ), .B(N_71), .C(N_37)
        , .Y(N_24));
    NOR2B \int_raw_RNIFG16[2]  (.A(\int_raw_i_0[2] ), .B(
        tx_fifo_last_in_1), .Y(N_62));
    
endmodule


module spi_control_16s(
       SPI_master_0_BIF_1_PADDR_3,
       SPI_master_0_BIF_1_PADDR_0,
       SPI_master_0_BIF_1_PADDR_1,
       N_84,
       tx_fifo_last_in,
       un1_PADDR,
       tx_fifo_last_in_1,
       N_34,
       rx_fifo_read,
       tx_fifo_write,
       SPI_master_0_BIF_1_PWRITE
    );
input  SPI_master_0_BIF_1_PADDR_3;
input  SPI_master_0_BIF_1_PADDR_0;
input  SPI_master_0_BIF_1_PADDR_1;
input  N_84;
output tx_fifo_last_in;
output un1_PADDR;
output tx_fifo_last_in_1;
input  N_34;
output rx_fifo_read;
output tx_fifo_write;
input  SPI_master_0_BIF_1_PWRITE;

    wire rx_fifo_read_0_a2_0, tx_fifo_write_0_a2_0_net_1, N_62, GND, 
        VCC;
    
    NOR2B tx_fifo_write_0_a2 (.A(tx_fifo_write_0_a2_0_net_1), .B(N_62), 
        .Y(tx_fifo_write));
    NOR3A un1_PADDR_0_a2 (.A(SPI_master_0_BIF_1_PADDR_1), .B(
        SPI_master_0_BIF_1_PADDR_3), .C(SPI_master_0_BIF_1_PADDR_0), 
        .Y(un1_PADDR));
    NOR3 rx_fifo_read_0_a2_0_0 (.A(SPI_master_0_BIF_1_PADDR_3), .B(
        SPI_master_0_BIF_1_PADDR_0), .C(SPI_master_0_BIF_1_PWRITE), .Y(
        rx_fifo_read_0_a2_0));
    NOR2B rx_fifo_read_0_a2 (.A(rx_fifo_read_0_a2_0), .B(N_62), .Y(
        rx_fifo_read));
    VCC VCC_i (.Y(VCC));
    NOR3C tx_fifo_last_0_a2 (.A(SPI_master_0_BIF_1_PADDR_1), .B(N_84), 
        .C(tx_fifo_last_in_1), .Y(tx_fifo_last_in));
    NOR2A rx_fifo_read_0_a2_1 (.A(SPI_master_0_BIF_1_PADDR_1), .B(N_34)
        , .Y(N_62));
    XA1 tx_fifo_write_0_a2_0 (.A(SPI_master_0_BIF_1_PADDR_3), .B(
        SPI_master_0_BIF_1_PADDR_0), .C(SPI_master_0_BIF_1_PWRITE), .Y(
        tx_fifo_write_0_a2_0_net_1));
    NOR2A tx_fifo_last_0_a2_1 (.A(SPI_master_0_BIF_1_PADDR_3), .B(
        SPI_master_0_BIF_1_PADDR_0), .Y(tx_fifo_last_in_1));
    GND GND_i (.Y(GND));
    
endmodule


module spi_16s_16s_8s_60s_1_1_0_0s(
       CoreAPB3_0_APBmslave0_PRDATA,
       rx_fifo_data_out,
       SPI_master_0_BIF_1_PWDATA,
       SPI_master_0_BIF_1_PADDR_1,
       SPI_master_0_BIF_1_PADDR_3,
       SPI_master_0_BIF_1_PADDR_0,
       SPISDO_c,
       SPISDI_c,
       SPISCLKO_c,
       SPIRXAVAIL_i_1_i,
       SPI_master_0_BIF_1_PSELx,
       SPI_master_0_BIF_1_PENABLE_i_0,
       un1_PADDR,
       SPIRXAVAIL_i_1,
       SPI_master_0_BIF_1_PWRITE,
       PCLK_c,
       PRESETN_c
    );
output [7:0] CoreAPB3_0_APBmslave0_PRDATA;
output [15:8] rx_fifo_data_out;
input  [15:0] SPI_master_0_BIF_1_PWDATA;
input  SPI_master_0_BIF_1_PADDR_1;
input  SPI_master_0_BIF_1_PADDR_3;
input  SPI_master_0_BIF_1_PADDR_0;
output SPISDO_c;
input  SPISDI_c;
output SPISCLKO_c;
output SPIRXAVAIL_i_1_i;
input  SPI_master_0_BIF_1_PSELx;
input  SPI_master_0_BIF_1_PENABLE_i_0;
output un1_PADDR;
output SPIRXAVAIL_i_1;
input  SPI_master_0_BIF_1_PWRITE;
input  PCLK_c;
input  PRESETN_c;

    wire \clk_div_val[0] , \clk_div_val[1] , \clk_div_val[2] , 
        \clk_div_val[3] , \clk_div_val[4] , \clk_div_val[5] , 
        \clk_div_val[6] , \clk_div_val[7] , \rx_fifo_data_out[6] , 
        \rx_fifo_data_out[1] , \rx_fifo_data_out[5] , 
        \rx_fifo_data_out[4] , cfg_enable, tx_channel_underflow, 
        rx_channel_overflow, tx_fifo_write, un1_tx_alldone, 
        rx_fifo_read, rx_done_i_0, tx_fifo_full_i_0, SPIMODE, 
        master_ssel_out, cfg_frameurun, N_20, N_22, N_221, 
        first_frame_out, N_26, N_793, tx_fifo_last_in_1, N_84, 
        mtx_alldone_i_0, stxs_state, mtx_rxbusy, mtx_busy, N_34, 
        tx_fifo_last_in, \tx_fifo_data_out[0] , \tx_fifo_data_out[1] , 
        \tx_fifo_data_out[2] , \tx_fifo_data_out[3] , 
        \tx_fifo_data_out[4] , \tx_fifo_data_out[5] , 
        \tx_fifo_data_out[6] , \tx_fifo_data_out[7] , 
        \tx_fifo_data_out[8] , \tx_fifo_data_out[9] , 
        \tx_fifo_data_out[10] , \tx_fifo_data_out[11] , 
        \tx_fifo_data_out[12] , \tx_fifo_data_out[13] , 
        \tx_fifo_data_out[14] , \tx_fifo_data_out[15] , 
        tx_fifo_last_out, tx_fifo_empty_i, tx_fifo_empty, tx_fifo_read, 
        \rx_fifo_data_in[0] , \rx_fifo_data_in[1] , 
        \rx_fifo_data_in[2] , \rx_fifo_data_in[3] , 
        \rx_fifo_data_in[4] , \rx_fifo_data_in[5] , 
        \rx_fifo_data_in[6] , \rx_fifo_data_in[7] , 
        \rx_fifo_data_in[8] , \rx_fifo_data_in[9] , 
        \rx_fifo_data_in[10] , \rx_fifo_data_in[11] , 
        \rx_fifo_data_in[12] , \rx_fifo_data_in[13] , 
        \rx_fifo_data_in[14] , \rx_fifo_data_in[15] , rx_fifo_first_in, 
        rx_fifo_write, GND, VCC;
    
    spi_chanctrl_Z2 UCC (.clk_div_val({\clk_div_val[7] , 
        \clk_div_val[6] , \clk_div_val[5] , \clk_div_val[4] , 
        \clk_div_val[3] , \clk_div_val[2] , \clk_div_val[1] , 
        \clk_div_val[0] }), .rx_fifo_data_in({\rx_fifo_data_in[15] , 
        \rx_fifo_data_in[14] , \rx_fifo_data_in[13] , 
        \rx_fifo_data_in[12] , \rx_fifo_data_in[11] , 
        \rx_fifo_data_in[10] , \rx_fifo_data_in[9] , 
        \rx_fifo_data_in[8] , \rx_fifo_data_in[7] , 
        \rx_fifo_data_in[6] , \rx_fifo_data_in[5] , 
        \rx_fifo_data_in[4] , \rx_fifo_data_in[3] , 
        \rx_fifo_data_in[2] , \rx_fifo_data_in[1] , 
        \rx_fifo_data_in[0] }), .tx_fifo_data_out({
        \tx_fifo_data_out[15] , \tx_fifo_data_out[14] , 
        \tx_fifo_data_out[13] , \tx_fifo_data_out[12] , 
        \tx_fifo_data_out[11] , \tx_fifo_data_out[10] , 
        \tx_fifo_data_out[9] , \tx_fifo_data_out[8] , 
        \tx_fifo_data_out[7] , \tx_fifo_data_out[6] , 
        \tx_fifo_data_out[5] , \tx_fifo_data_out[4] , 
        \tx_fifo_data_out[3] , \tx_fifo_data_out[2] , 
        \tx_fifo_data_out[1] , \tx_fifo_data_out[0] }), 
        .rx_fifo_first_in(rx_fifo_first_in), .mtx_rxbusy(mtx_rxbusy), 
        .mtx_alldone_i_0(mtx_alldone_i_0), .master_ssel_out(
        master_ssel_out), .rx_done_i_0(rx_done_i_0), .tx_fifo_empty_i(
        tx_fifo_empty_i), .SPISCLKO_c(SPISCLKO_c), .PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .tx_fifo_last_out(
        tx_fifo_last_out), .tx_channel_underflow(tx_channel_underflow), 
        .N_793(N_793), .rx_fifo_write(rx_fifo_write), .un1_tx_alldone(
        un1_tx_alldone), .SPISDI_c(SPISDI_c), .cfg_enable(cfg_enable), 
        .mtx_busy(mtx_busy), .cfg_frameurun(cfg_frameurun), .SPISDO_c(
        SPISDO_c), .tx_fifo_empty(tx_fifo_empty), .stxs_state(
        stxs_state), .SPIMODE(SPIMODE), .tx_fifo_read(tx_fifo_read));
    VCC VCC_i (.Y(VCC));
    spi_fifo_16s_8s_3_1 UTXF (.SPI_master_0_BIF_1_PWDATA({
        SPI_master_0_BIF_1_PWDATA[15], SPI_master_0_BIF_1_PWDATA[14], 
        SPI_master_0_BIF_1_PWDATA[13], SPI_master_0_BIF_1_PWDATA[12], 
        SPI_master_0_BIF_1_PWDATA[11], SPI_master_0_BIF_1_PWDATA[10], 
        SPI_master_0_BIF_1_PWDATA[9], SPI_master_0_BIF_1_PWDATA[8], 
        SPI_master_0_BIF_1_PWDATA[7], SPI_master_0_BIF_1_PWDATA[6], 
        SPI_master_0_BIF_1_PWDATA[5], SPI_master_0_BIF_1_PWDATA[4], 
        SPI_master_0_BIF_1_PWDATA[3], SPI_master_0_BIF_1_PWDATA[2], 
        SPI_master_0_BIF_1_PWDATA[1], SPI_master_0_BIF_1_PWDATA[0]}), 
        .tx_fifo_data_out({\tx_fifo_data_out[15] , 
        \tx_fifo_data_out[14] , \tx_fifo_data_out[13] , 
        \tx_fifo_data_out[12] , \tx_fifo_data_out[11] , 
        \tx_fifo_data_out[10] , \tx_fifo_data_out[9] , 
        \tx_fifo_data_out[8] , \tx_fifo_data_out[7] , 
        \tx_fifo_data_out[6] , \tx_fifo_data_out[5] , 
        \tx_fifo_data_out[4] , \tx_fifo_data_out[3] , 
        \tx_fifo_data_out[2] , \tx_fifo_data_out[1] , 
        \tx_fifo_data_out[0] }), .tx_fifo_last_in(tx_fifo_last_in), 
        .tx_fifo_last_out(tx_fifo_last_out), .tx_fifo_empty_i(
        tx_fifo_empty_i), .tx_fifo_full_i_0(tx_fifo_full_i_0), 
        .tx_fifo_write(tx_fifo_write), .tx_fifo_empty(tx_fifo_empty), 
        .tx_fifo_read(tx_fifo_read), .PRESETN_c(PRESETN_c), .PCLK_c(
        PCLK_c));
    spi_fifo_16s_8s_3_0 URXF (.rx_fifo_data_in({\rx_fifo_data_in[15] , 
        \rx_fifo_data_in[14] , \rx_fifo_data_in[13] , 
        \rx_fifo_data_in[12] , \rx_fifo_data_in[11] , 
        \rx_fifo_data_in[10] , \rx_fifo_data_in[9] , 
        \rx_fifo_data_in[8] , \rx_fifo_data_in[7] , 
        \rx_fifo_data_in[6] , \rx_fifo_data_in[5] , 
        \rx_fifo_data_in[4] , \rx_fifo_data_in[3] , 
        \rx_fifo_data_in[2] , \rx_fifo_data_in[1] , 
        \rx_fifo_data_in[0] }), .rx_fifo_data_out({
        rx_fifo_data_out[15], rx_fifo_data_out[14], 
        rx_fifo_data_out[13], rx_fifo_data_out[12], 
        rx_fifo_data_out[11], rx_fifo_data_out[10], 
        rx_fifo_data_out[9], rx_fifo_data_out[8], nc0, 
        \rx_fifo_data_out[6] , \rx_fifo_data_out[5] , 
        \rx_fifo_data_out[4] , nc1, nc2, \rx_fifo_data_out[1] }), 
        .CoreAPB3_0_APBmslave0_PRDATA_3(
        CoreAPB3_0_APBmslave0_PRDATA[3]), 
        .CoreAPB3_0_APBmslave0_PRDATA_2(
        CoreAPB3_0_APBmslave0_PRDATA[2]), 
        .CoreAPB3_0_APBmslave0_PRDATA_7(
        CoreAPB3_0_APBmslave0_PRDATA[7]), 
        .CoreAPB3_0_APBmslave0_PRDATA_0(
        CoreAPB3_0_APBmslave0_PRDATA[0]), .rx_fifo_first_in(
        rx_fifo_first_in), .first_frame_out(first_frame_out), 
        .rx_channel_overflow(rx_channel_overflow), .N_26(N_26), 
        .N_221_0(N_221), .N_22(N_22), .un1_PADDR(un1_PADDR), .N_20(
        N_20), .SPIRXAVAIL_i_1_i(SPIRXAVAIL_i_1_i), .rx_fifo_read(
        rx_fifo_read), .SPIRXAVAIL_i_1(SPIRXAVAIL_i_1), .rx_fifo_write(
        rx_fifo_write), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    spi_rf_16s_60s_0 URF (.SPI_master_0_BIF_1_PWDATA({
        SPI_master_0_BIF_1_PWDATA[7], SPI_master_0_BIF_1_PWDATA[6], 
        SPI_master_0_BIF_1_PWDATA[5], SPI_master_0_BIF_1_PWDATA[4], 
        SPI_master_0_BIF_1_PWDATA[3], SPI_master_0_BIF_1_PWDATA[2], 
        SPI_master_0_BIF_1_PWDATA[1], SPI_master_0_BIF_1_PWDATA[0]}), 
        .SPI_master_0_BIF_1_PADDR_1(SPI_master_0_BIF_1_PADDR_1), 
        .SPI_master_0_BIF_1_PADDR_3(SPI_master_0_BIF_1_PADDR_3), 
        .SPI_master_0_BIF_1_PADDR_0(SPI_master_0_BIF_1_PADDR_0), 
        .clk_div_val({\clk_div_val[7] , \clk_div_val[6] , 
        \clk_div_val[5] , \clk_div_val[4] , \clk_div_val[3] , 
        \clk_div_val[2] , \clk_div_val[1] , \clk_div_val[0] }), 
        .rx_fifo_data_out_5(\rx_fifo_data_out[6] ), 
        .rx_fifo_data_out_0(\rx_fifo_data_out[1] ), 
        .rx_fifo_data_out_4(\rx_fifo_data_out[5] ), 
        .rx_fifo_data_out_3(\rx_fifo_data_out[4] ), 
        .CoreAPB3_0_APBmslave0_PRDATA_5(
        CoreAPB3_0_APBmslave0_PRDATA[6]), 
        .CoreAPB3_0_APBmslave0_PRDATA_0(
        CoreAPB3_0_APBmslave0_PRDATA[1]), 
        .CoreAPB3_0_APBmslave0_PRDATA_4(
        CoreAPB3_0_APBmslave0_PRDATA[5]), 
        .CoreAPB3_0_APBmslave0_PRDATA_3(
        CoreAPB3_0_APBmslave0_PRDATA[4]), .PRESETN_c(PRESETN_c), 
        .PCLK_c(PCLK_c), .cfg_enable(cfg_enable), 
        .SPI_master_0_BIF_1_PWRITE(SPI_master_0_BIF_1_PWRITE), 
        .tx_channel_underflow(tx_channel_underflow), 
        .rx_channel_overflow(rx_channel_overflow), .tx_fifo_write(
        tx_fifo_write), .un1_tx_alldone(un1_tx_alldone), .rx_fifo_read(
        rx_fifo_read), .rx_done_i_0(rx_done_i_0), .SPIRXAVAIL_i_1(
        SPIRXAVAIL_i_1), .un1_PADDR(un1_PADDR), .tx_fifo_full_i_0(
        tx_fifo_full_i_0), .SPIMODE(SPIMODE), .master_ssel_out(
        master_ssel_out), .cfg_frameurun(cfg_frameurun), .N_20(N_20), 
        .N_22(N_22), .N_221(N_221), .first_frame_out(first_frame_out), 
        .N_26(N_26), .N_793(N_793), .tx_fifo_last_in_1(
        tx_fifo_last_in_1), .N_84(N_84), .mtx_alldone_i_0(
        mtx_alldone_i_0), .stxs_state(stxs_state), .mtx_rxbusy(
        mtx_rxbusy), .mtx_busy(mtx_busy), 
        .SPI_master_0_BIF_1_PENABLE_i_0(SPI_master_0_BIF_1_PENABLE_i_0)
        , .SPI_master_0_BIF_1_PSELx(SPI_master_0_BIF_1_PSELx), .N_34(
        N_34));
    spi_control_16s UCON (.SPI_master_0_BIF_1_PADDR_3(
        SPI_master_0_BIF_1_PADDR_3), .SPI_master_0_BIF_1_PADDR_0(
        SPI_master_0_BIF_1_PADDR_0), .SPI_master_0_BIF_1_PADDR_1(
        SPI_master_0_BIF_1_PADDR_1), .N_84(N_84), .tx_fifo_last_in(
        tx_fifo_last_in), .un1_PADDR(un1_PADDR), .tx_fifo_last_in_1(
        tx_fifo_last_in_1), .N_34(N_34), .rx_fifo_read(rx_fifo_read), 
        .tx_fifo_write(tx_fifo_write), .SPI_master_0_BIF_1_PWRITE(
        SPI_master_0_BIF_1_PWRITE));
    GND GND_i (.Y(GND));
    
endmodule


module CORESPI_Z3(
       SPI_master_0_BIF_1_PADDR_1,
       SPI_master_0_BIF_1_PADDR_3,
       SPI_master_0_BIF_1_PADDR_0,
       SPI_master_0_BIF_1_PWDATA,
       rx_fifo_data_out,
       CoreAPB3_0_APBmslave0_PRDATA,
       PRESETN_c,
       PCLK_c,
       SPI_master_0_BIF_1_PWRITE,
       SPIRXAVAIL_i_1,
       un1_PADDR,
       SPI_master_0_BIF_1_PENABLE_i_0,
       SPI_master_0_BIF_1_PSELx,
       SPIRXAVAIL_i_1_i,
       SPISCLKO_c,
       SPISDI_c,
       SPISDO_c
    );
input  SPI_master_0_BIF_1_PADDR_1;
input  SPI_master_0_BIF_1_PADDR_3;
input  SPI_master_0_BIF_1_PADDR_0;
input  [15:0] SPI_master_0_BIF_1_PWDATA;
output [15:8] rx_fifo_data_out;
output [7:0] CoreAPB3_0_APBmslave0_PRDATA;
input  PRESETN_c;
input  PCLK_c;
input  SPI_master_0_BIF_1_PWRITE;
output SPIRXAVAIL_i_1;
output un1_PADDR;
input  SPI_master_0_BIF_1_PENABLE_i_0;
input  SPI_master_0_BIF_1_PSELx;
output SPIRXAVAIL_i_1_i;
output SPISCLKO_c;
input  SPISDI_c;
output SPISDO_c;

    wire GND, VCC;
    
    spi_16s_16s_8s_60s_1_1_0_0s USPI (.CoreAPB3_0_APBmslave0_PRDATA({
        CoreAPB3_0_APBmslave0_PRDATA[7], 
        CoreAPB3_0_APBmslave0_PRDATA[6], 
        CoreAPB3_0_APBmslave0_PRDATA[5], 
        CoreAPB3_0_APBmslave0_PRDATA[4], 
        CoreAPB3_0_APBmslave0_PRDATA[3], 
        CoreAPB3_0_APBmslave0_PRDATA[2], 
        CoreAPB3_0_APBmslave0_PRDATA[1], 
        CoreAPB3_0_APBmslave0_PRDATA[0]}), .rx_fifo_data_out({
        rx_fifo_data_out[15], rx_fifo_data_out[14], 
        rx_fifo_data_out[13], rx_fifo_data_out[12], 
        rx_fifo_data_out[11], rx_fifo_data_out[10], 
        rx_fifo_data_out[9], rx_fifo_data_out[8]}), 
        .SPI_master_0_BIF_1_PWDATA({SPI_master_0_BIF_1_PWDATA[15], 
        SPI_master_0_BIF_1_PWDATA[14], SPI_master_0_BIF_1_PWDATA[13], 
        SPI_master_0_BIF_1_PWDATA[12], SPI_master_0_BIF_1_PWDATA[11], 
        SPI_master_0_BIF_1_PWDATA[10], SPI_master_0_BIF_1_PWDATA[9], 
        SPI_master_0_BIF_1_PWDATA[8], SPI_master_0_BIF_1_PWDATA[7], 
        SPI_master_0_BIF_1_PWDATA[6], SPI_master_0_BIF_1_PWDATA[5], 
        SPI_master_0_BIF_1_PWDATA[4], SPI_master_0_BIF_1_PWDATA[3], 
        SPI_master_0_BIF_1_PWDATA[2], SPI_master_0_BIF_1_PWDATA[1], 
        SPI_master_0_BIF_1_PWDATA[0]}), .SPI_master_0_BIF_1_PADDR_1(
        SPI_master_0_BIF_1_PADDR_1), .SPI_master_0_BIF_1_PADDR_3(
        SPI_master_0_BIF_1_PADDR_3), .SPI_master_0_BIF_1_PADDR_0(
        SPI_master_0_BIF_1_PADDR_0), .SPISDO_c(SPISDO_c), .SPISDI_c(
        SPISDI_c), .SPISCLKO_c(SPISCLKO_c), .SPIRXAVAIL_i_1_i(
        SPIRXAVAIL_i_1_i), .SPI_master_0_BIF_1_PSELx(
        SPI_master_0_BIF_1_PSELx), .SPI_master_0_BIF_1_PENABLE_i_0(
        SPI_master_0_BIF_1_PENABLE_i_0), .un1_PADDR(un1_PADDR), 
        .SPIRXAVAIL_i_1(SPIRXAVAIL_i_1), .SPI_master_0_BIF_1_PWRITE(
        SPI_master_0_BIF_1_PWRITE), .PCLK_c(PCLK_c), .PRESETN_c(
        PRESETN_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    
endmodule


module UART_fifo(
       dout_c,
       WEP,
       UART_fifo_0_empty,
       REP,
       PRESETN_c,
       PCLK_c
    );
output [15:0] dout_c;
input  WEP;
output UART_fifo_0_empty;
input  REP;
input  PRESETN_c;
input  PCLK_c;

    wire \MEM_WADDR[3] , \WBINNXTSHIFT[3] , AO1_8_Y, XOR2_23_Y, 
        AO1_4_Y, AND2_13_Y, AND2_21_Y, UART_fifo_GND, XNOR2_7_Y, 
        \RBINNXTSHIFT[3] , MEMRENEG, MEMORYRE, XOR2_11_Y, NAND2_0_Y, 
        XNOR2_0_Y, \RBINNXTSHIFT[2] , \MEM_WADDR[2] , EMPTYINT, 
        AND2_15_Y, \MEM_RADDR[3] , XOR2_8_Y, \MEM_RADDR[0] , 
        \RBINNXTSHIFT[0] , XOR2_28_Y, \MEM_WADDR[1] , \QXI[0] , DVLDI, 
        AND2_14_Y, AND3_1_Y, XNOR2_8_Y, XOR2_20_Y, XOR2_25_Y, 
        \MEM_RADDR[1] , \WBINNXTSHIFT[2] , XOR2_14_Y, XOR2_2_Y, 
        \MEM_RADDR[2] , \QXI[1] , \WBINNXTSHIFT[1] , AND2_0_Y, 
        XNOR2_1_Y, XNOR2_6_Y, XNOR2_5_Y, \WBINNXTSHIFT[4] , XOR2_0_Y, 
        AO1_6_Y, XOR2_26_Y, \MEM_RADDR[4] , \RBINNXTSHIFT[4] , 
        AND2_10_Y, \MEM_WADDR[4] , \RBINNXTSHIFT[1] , \QXI[13] , 
        AO1_2_Y, AND2_11_Y, AO1_1_Y, AO1_3_Y, AND2_20_Y, XNOR2_2_Y, 
        \MEM_WADDR[0] , \QXI[4] , \QXI[8] , \QXI[2] , \QXI[3] , 
        \QXI[5] , \QXI[6] , \QXI[7] , \RAM512X18_QXI[15]_RD8_0 , 
        \QXI[9] , \QXI[10] , \QXI[11] , \QXI[12] , \QXI[14] , 
        \QXI[15] , \RAM512X18_QXI[15]_RD17_0 , UART_fifo_VCC, MEMWENEG, 
        NAND2_1_Y, full, AND2_6_Y, AND2_9_Y, \WBINNXTSHIFT[0] , 
        XNOR2_4_Y, AO1_7_Y, AO1_9_Y, XOR2_24_Y, FULLINT, AND3_0_Y, 
        XNOR2_3_Y, AND2_3_Y, AND2_8_Y, XOR2_18_Y, XOR2_7_Y, XOR2_16_Y, 
        AND2A_0_Y, MEMORYWE, XOR2_10_Y;
    
    AND2 AND2_9 (.A(\MEM_RADDR[2] ), .B(UART_fifo_GND), .Y(AND2_9_Y));
    AND2 AND2_11 (.A(XOR2_2_Y), .B(XOR2_8_Y), .Y(AND2_11_Y));
    XNOR2 XNOR2_3 (.A(\RBINNXTSHIFT[1] ), .B(\MEM_WADDR[1] ), .Y(
        XNOR2_3_Y));
    AND2 AND2_EMPTYINT (.A(AND2_8_Y), .B(XNOR2_4_Y), .Y(EMPTYINT));
    XOR2 XOR2_16 (.A(\MEM_RADDR[4] ), .B(UART_fifo_GND), .Y(XOR2_16_Y));
    AND2 AND2_13 (.A(\MEM_WADDR[2] ), .B(UART_fifo_GND), .Y(AND2_13_Y));
    AND2 AND2_MEMORYWE (.A(NAND2_1_Y), .B(WEP), .Y(MEMORYWE));
    DFN1E1C0 \DFN1E1C0_dout[3]  (.D(\QXI[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[3]));
    AND2A AND2A_0 (.A(UART_fifo_0_empty), .B(REP), .Y(AND2A_0_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[1]  (.D(\WBINNXTSHIFT[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[1] ));
    XOR2 XOR2_10 (.A(\MEM_RADDR[3] ), .B(UART_fifo_GND), .Y(XOR2_10_Y));
    INV MEMWEBUBBLE (.A(MEMORYWE), .Y(MEMWENEG));
    XOR2 XOR2_18 (.A(\MEM_RADDR[2] ), .B(UART_fifo_GND), .Y(XOR2_18_Y));
    XOR2 \XOR2_WBINNXTSHIFT[0]  (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(
        \WBINNXTSHIFT[0] ));
    XOR2 \XOR2_RBINNXTSHIFT[3]  (.A(XOR2_10_Y), .B(AO1_7_Y), .Y(
        \RBINNXTSHIFT[3] ));
    XOR2 XOR2_7 (.A(\MEM_RADDR[1] ), .B(UART_fifo_GND), .Y(XOR2_7_Y));
    AND2 AND2_0 (.A(\MEM_WADDR[0] ), .B(MEMORYWE), .Y(AND2_0_Y));
    DFN1E1C0 \DFN1E1C0_dout[2]  (.D(\QXI[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[2]));
    DFN1E1C0 \DFN1E1C0_dout[11]  (.D(\QXI[11] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[11]));
    DFN1E1C0 \DFN1E1C0_dout[10]  (.D(\QXI[10] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[10]));
    DFN1E1C0 \DFN1E1C0_dout[14]  (.D(\QXI[14] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[14]));
    AO1 AO1_6 (.A(AND2_3_Y), .B(AO1_4_Y), .C(AO1_9_Y), .Y(AO1_6_Y));
    VCC VCC_i (.Y(UART_fifo_VCC));
    DFN1C0 DFN1C0_full (.D(FULLINT), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        full));
    DFN1C0 DFN1C0_DVLDI (.D(AND2A_0_Y), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(DVLDI));
    AO1 AO1_1 (.A(XOR2_25_Y), .B(AND2_20_Y), .C(AND2_10_Y), .Y(AO1_1_Y)
        );
    XOR2 \XOR2_RBINNXTSHIFT[4]  (.A(XOR2_16_Y), .B(AO1_2_Y), .Y(
        \RBINNXTSHIFT[4] ));
    DFN1E1C0 \DFN1E1C0_dout[9]  (.D(\QXI[9] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[9]));
    DFN1C0 \DFN1C0_MEM_WADDR[2]  (.D(\WBINNXTSHIFT[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[2] ));
    DFN1E1C0 \DFN1E1C0_dout[7]  (.D(\QXI[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[7]));
    DFN1C0 \DFN1C0_MEM_RADDR[2]  (.D(\RBINNXTSHIFT[2] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[2] ));
    AO1 AO1_4 (.A(XOR2_26_Y), .B(AND2_0_Y), .C(AND2_6_Y), .Y(AO1_4_Y));
    XOR2 \XOR2_RBINNXTSHIFT[1]  (.A(XOR2_7_Y), .B(AND2_20_Y), .Y(
        \RBINNXTSHIFT[1] ));
    XOR2 \XOR2_RBINNXTSHIFT[2]  (.A(XOR2_18_Y), .B(AO1_1_Y), .Y(
        \RBINNXTSHIFT[2] ));
    AND2 AND2_8 (.A(AND3_0_Y), .B(XNOR2_7_Y), .Y(AND2_8_Y));
    DFN1E1C0 \DFN1E1C0_dout[5]  (.D(\QXI[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[5]));
    DFN1E1C0 \DFN1E1C0_dout[15]  (.D(\QXI[15] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[15]));
    DFN1E1C0 \DFN1E1C0_dout[12]  (.D(\QXI[12] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[12]));
    AND2 AND2_3 (.A(XOR2_23_Y), .B(XOR2_20_Y), .Y(AND2_3_Y));
    XOR2 XOR2_23 (.A(\MEM_WADDR[2] ), .B(UART_fifo_GND), .Y(XOR2_23_Y));
    DFN1E1C0 \DFN1E1C0_dout[6]  (.D(\QXI[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[6]));
    AND3 AND3_0 (.A(XNOR2_2_Y), .B(XNOR2_3_Y), .C(XNOR2_0_Y), .Y(
        AND3_0_Y));
    AND2 AND2_FULLINT (.A(AND2_14_Y), .B(XOR2_24_Y), .Y(FULLINT));
    XOR2 XOR2_24 (.A(\MEM_RADDR[4] ), .B(\WBINNXTSHIFT[4] ), .Y(
        XOR2_24_Y));
    AO1 AO1_9 (.A(XOR2_20_Y), .B(AND2_13_Y), .C(AND2_21_Y), .Y(AO1_9_Y)
        );
    NAND2 NAND2_0 (.A(UART_fifo_0_empty), .B(UART_fifo_VCC), .Y(
        NAND2_0_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[0]  (.D(\WBINNXTSHIFT[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[0] ));
    AO1 AO1_7 (.A(XOR2_2_Y), .B(AO1_1_Y), .C(AND2_9_Y), .Y(AO1_7_Y));
    XNOR2 XNOR2_4 (.A(\RBINNXTSHIFT[4] ), .B(\MEM_WADDR[4] ), .Y(
        XNOR2_4_Y));
    XNOR2 XNOR2_1 (.A(\MEM_RADDR[0] ), .B(\WBINNXTSHIFT[0] ), .Y(
        XNOR2_1_Y));
    XNOR2 XNOR2_8 (.A(\MEM_RADDR[3] ), .B(\WBINNXTSHIFT[3] ), .Y(
        XNOR2_8_Y));
    XNOR2 XNOR2_5 (.A(\MEM_RADDR[2] ), .B(\WBINNXTSHIFT[2] ), .Y(
        XNOR2_5_Y));
    AO1 AO1_3 (.A(XOR2_8_Y), .B(AND2_9_Y), .C(AND2_15_Y), .Y(AO1_3_Y));
    AND2 AND2_6 (.A(\MEM_WADDR[1] ), .B(UART_fifo_GND), .Y(AND2_6_Y));
    XNOR2 XNOR2_6 (.A(\MEM_RADDR[1] ), .B(\WBINNXTSHIFT[1] ), .Y(
        XNOR2_6_Y));
    GND GND_i (.Y(UART_fifo_GND));
    RAM512X18 \RAM512X18_QXI[15]  (.RADDR8(UART_fifo_GND), .RADDR7(
        UART_fifo_GND), .RADDR6(UART_fifo_GND), .RADDR5(UART_fifo_GND), 
        .RADDR4(UART_fifo_GND), .RADDR3(\MEM_RADDR[3] ), .RADDR2(
        \MEM_RADDR[2] ), .RADDR1(\MEM_RADDR[1] ), .RADDR0(
        \MEM_RADDR[0] ), .WADDR8(UART_fifo_GND), .WADDR7(UART_fifo_GND)
        , .WADDR6(UART_fifo_GND), .WADDR5(UART_fifo_GND), .WADDR4(
        UART_fifo_GND), .WADDR3(\MEM_WADDR[3] ), .WADDR2(
        \MEM_WADDR[2] ), .WADDR1(\MEM_WADDR[1] ), .WADDR0(
        \MEM_WADDR[0] ), .WD17(UART_fifo_GND), .WD16(UART_fifo_GND), 
        .WD15(UART_fifo_GND), .WD14(UART_fifo_GND), .WD13(
        UART_fifo_GND), .WD12(UART_fifo_GND), .WD11(UART_fifo_GND), 
        .WD10(UART_fifo_GND), .WD9(UART_fifo_GND), .WD8(UART_fifo_GND), 
        .WD7(UART_fifo_GND), .WD6(UART_fifo_GND), .WD5(UART_fifo_GND), 
        .WD4(UART_fifo_GND), .WD3(UART_fifo_GND), .WD2(UART_fifo_GND), 
        .WD1(UART_fifo_GND), .WD0(UART_fifo_GND), .RW0(UART_fifo_GND), 
        .RW1(UART_fifo_VCC), .WW0(UART_fifo_GND), .WW1(UART_fifo_VCC), 
        .PIPE(UART_fifo_GND), .REN(MEMRENEG), .WEN(MEMWENEG), .RCLK(
        PCLK_c), .WCLK(PCLK_c), .RESET(PRESETN_c), .RD17(
        \RAM512X18_QXI[15]_RD17_0 ), .RD16(\QXI[15] ), .RD15(\QXI[14] )
        , .RD14(\QXI[13] ), .RD13(\QXI[12] ), .RD12(\QXI[11] ), .RD11(
        \QXI[10] ), .RD10(\QXI[9] ), .RD9(\QXI[8] ), .RD8(
        \RAM512X18_QXI[15]_RD8_0 ), .RD7(\QXI[7] ), .RD6(\QXI[6] ), 
        .RD5(\QXI[5] ), .RD4(\QXI[4] ), .RD3(\QXI[3] ), .RD2(\QXI[2] ), 
        .RD1(\QXI[1] ), .RD0(\QXI[0] ));
    NAND2 NAND2_1 (.A(full), .B(UART_fifo_VCC), .Y(NAND2_1_Y));
    DFN1E1C0 \DFN1E1C0_dout[8]  (.D(\QXI[8] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[8]));
    DFN1E1C0 \DFN1E1C0_dout[4]  (.D(\QXI[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[4]));
    XNOR2 XNOR2_2 (.A(\RBINNXTSHIFT[0] ), .B(\MEM_WADDR[0] ), .Y(
        XNOR2_2_Y));
    XOR2 \XOR2_WBINNXTSHIFT[3]  (.A(XOR2_11_Y), .B(AO1_8_Y), .Y(
        \WBINNXTSHIFT[3] ));
    AO1 AO1_2 (.A(AND2_11_Y), .B(AO1_1_Y), .C(AO1_3_Y), .Y(AO1_2_Y));
    AND2 AND2_20 (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(AND2_20_Y));
    DFN1E1C0 \DFN1E1C0_dout[13]  (.D(\QXI[13] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[13]));
    XOR2 XOR2_0 (.A(\MEM_WADDR[4] ), .B(UART_fifo_GND), .Y(XOR2_0_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[1]  (.D(\RBINNXTSHIFT[1] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[1] ));
    DFN1C0 \DFN1C0_MEM_WADDR[4]  (.D(\WBINNXTSHIFT[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[4] ));
    DFN1C0 \DFN1C0_MEM_RADDR[4]  (.D(\RBINNXTSHIFT[4] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[4] ));
    AND2 AND2_10 (.A(\MEM_RADDR[1] ), .B(UART_fifo_GND), .Y(AND2_10_Y));
    XOR2 \XOR2_WBINNXTSHIFT[4]  (.A(XOR2_0_Y), .B(AO1_6_Y), .Y(
        \WBINNXTSHIFT[4] ));
    XOR2 \XOR2_RBINNXTSHIFT[0]  (.A(\MEM_RADDR[0] ), .B(MEMORYRE), .Y(
        \RBINNXTSHIFT[0] ));
    XOR2 XOR2_26 (.A(\MEM_WADDR[1] ), .B(UART_fifo_GND), .Y(XOR2_26_Y));
    AND3 AND3_1 (.A(XNOR2_1_Y), .B(XNOR2_6_Y), .C(XNOR2_5_Y), .Y(
        AND3_1_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[3]  (.D(\RBINNXTSHIFT[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[3] ));
    XOR2 \XOR2_WBINNXTSHIFT[1]  (.A(XOR2_28_Y), .B(AND2_0_Y), .Y(
        \WBINNXTSHIFT[1] ));
    XOR2 XOR2_14 (.A(\MEM_WADDR[2] ), .B(UART_fifo_GND), .Y(XOR2_14_Y));
    XOR2 \XOR2_WBINNXTSHIFT[2]  (.A(XOR2_14_Y), .B(AO1_4_Y), .Y(
        \WBINNXTSHIFT[2] ));
    XOR2 XOR2_2 (.A(\MEM_RADDR[2] ), .B(UART_fifo_GND), .Y(XOR2_2_Y));
    DFN1E1C0 \DFN1E1C0_dout[1]  (.D(\QXI[1] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[1]));
    XOR2 XOR2_25 (.A(\MEM_RADDR[1] ), .B(UART_fifo_GND), .Y(XOR2_25_Y));
    XOR2 XOR2_20 (.A(\MEM_WADDR[3] ), .B(UART_fifo_GND), .Y(XOR2_20_Y));
    AND2 AND2_14 (.A(AND3_1_Y), .B(XNOR2_8_Y), .Y(AND2_14_Y));
    DFN1E1C0 \DFN1E1C0_dout[0]  (.D(\QXI[0] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .E(DVLDI), .Q(dout_c[0]));
    XOR2 XOR2_8 (.A(\MEM_RADDR[3] ), .B(UART_fifo_GND), .Y(XOR2_8_Y));
    XOR2 XOR2_28 (.A(\MEM_WADDR[1] ), .B(UART_fifo_GND), .Y(XOR2_28_Y));
    DFN1C0 \DFN1C0_MEM_RADDR[0]  (.D(\RBINNXTSHIFT[0] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_RADDR[0] ));
    AND2 AND2_15 (.A(\MEM_RADDR[3] ), .B(UART_fifo_GND), .Y(AND2_15_Y));
    DFN1P0 DFN1P0_empty (.D(EMPTYINT), .CLK(PCLK_c), .PRE(PRESETN_c), 
        .Q(UART_fifo_0_empty));
    XNOR2 XNOR2_0 (.A(\RBINNXTSHIFT[2] ), .B(\MEM_WADDR[2] ), .Y(
        XNOR2_0_Y));
    AND2 AND2_MEMORYRE (.A(NAND2_0_Y), .B(REP), .Y(MEMORYRE));
    XOR2 XOR2_11 (.A(\MEM_WADDR[3] ), .B(UART_fifo_GND), .Y(XOR2_11_Y));
    XNOR2 XNOR2_7 (.A(\RBINNXTSHIFT[3] ), .B(\MEM_WADDR[3] ), .Y(
        XNOR2_7_Y));
    INV MEMREBUBBLE (.A(MEMORYRE), .Y(MEMRENEG));
    AND2 AND2_21 (.A(\MEM_WADDR[3] ), .B(UART_fifo_GND), .Y(AND2_21_Y));
    AO1 AO1_8 (.A(XOR2_23_Y), .B(AO1_4_Y), .C(AND2_13_Y), .Y(AO1_8_Y));
    DFN1C0 \DFN1C0_MEM_WADDR[3]  (.D(\WBINNXTSHIFT[3] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\MEM_WADDR[3] ));
    
endmodule


module SPI_master_Z4(
       SPI_master_0_BIF_1_PWDATA,
       SPI_master_0_BIF_1_PADDR_3,
       SPI_master_0_BIF_1_PADDR_0,
       SPI_master_0_BIF_1_PADDR_1,
       SPI_master_0_BIF_1_PRDATA,
       SPI_data_c,
       dout_c,
       SPI_master_0_BIF_1_PSELx,
       SPI_master_0_BIF_1_PENABLE_i_0,
       SPI_master_0_BIF_1_PWRITE,
       PCLK_c,
       WEP,
       UART_fifo_0_empty,
       REP,
       SPIRXAVAIL_i_1,
       PRESETN_c
    );
output [15:0] SPI_master_0_BIF_1_PWDATA;
output SPI_master_0_BIF_1_PADDR_3;
output SPI_master_0_BIF_1_PADDR_0;
output SPI_master_0_BIF_1_PADDR_1;
input  [15:0] SPI_master_0_BIF_1_PRDATA;
output [15:0] SPI_data_c;
input  [15:0] dout_c;
output SPI_master_0_BIF_1_PSELx;
output SPI_master_0_BIF_1_PENABLE_i_0;
output SPI_master_0_BIF_1_PWRITE;
input  PCLK_c;
output WEP;
input  UART_fifo_0_empty;
output REP;
input  SPIRXAVAIL_i_1;
input  PRESETN_c;

    wire N_216_i, \current_state_RNIODDL[4]_net_1 , PSEL4_0_0, N_236, 
        PSEL4_2, \PADDR_2_0_i_a3_0[3] , N_244_1, N_237, 
        PENABLE_2_i_a3_1, \current_state[0]_net_1 , 
        \current_state[7]_net_1 , N_234, PSEL_2_0_a3_0, 
        \current_state_i_0[1] , \current_state_i_0[4] , 
        \current_state_RNO[3]_net_1 , \current_state_i_0[11] , N_246, 
        PSEL4, N_231, \PWDATA_3[2] , 
        \current_state_RNIU7872[11]_net_1 , \PWDATA_3[3] , 
        \PWDATA_3[4] , \PWDATA_3[5] , \PWDATA_3[6] , \PWDATA_3[7] , 
        \PWDATA_3[8] , \PWDATA_3[9] , \PWDATA_3[10] , \PWDATA_3[11] , 
        \PWDATA_3[12] , \PWDATA_3[13] , \PWDATA_3[14] , \PWDATA_3[15] , 
        \current_state_ns[9] , N_248, \current_state[2]_net_1 , 
        \current_state_ns[10] , \current_state[9]_net_1 , 
        \current_state_ns[11] , \current_state[10]_net_1 , PADDR17, 
        N_235, \current_state_ns[0] , \current_state_RNO[1]_net_1 , 
        \current_state_RNO[2]_net_1 , \current_state_RNO[4]_net_1 , 
        \current_state_i_0[3] , \current_state_RNO[7]_net_1 , 
        \current_state[6]_net_1 , \current_state_RNO[8]_net_1 , 
        \PADDR_1_RNO[3]_net_1 , N_233, PENABLE_RNO_net_1, PSEL_2, 
        \current_state[8]_net_1 , \PWDATA_3[0] , \PWDATA_3[1] , GND, 
        VCC;
    
    DFN1C0 \PWDATA[15]  (.D(\PWDATA_3[15] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[15]));
    OR2 PWRITE_RNO_0 (.A(N_236), .B(PSEL4_2), .Y(PSEL4_0_0));
    DFN1E0C0 \SPI_data[6]  (.D(SPI_master_0_BIF_1_PRDATA[6]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[6]));
    DFN1C0 \PWDATA[8]  (.D(\PWDATA_3[8] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[8]));
    DFN1C0 \PWDATA[3]  (.D(\PWDATA_3[3] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[3]));
    NOR2B \PWDATA_RNO[6]  (.A(dout_c[6]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[6] ));
    DFN1C0 \PWDATA[5]  (.D(\PWDATA_3[5] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[5]));
    DFN1P0 \current_state[3]  (.D(\current_state_RNO[3]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\current_state_i_0[3] ));
    DFN1E0C0 \SPI_data[11]  (.D(SPI_master_0_BIF_1_PRDATA[11]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[11]));
    NOR2B \PWDATA_RNO[2]  (.A(dout_c[2]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[2] ));
    NOR2B \PWDATA_RNO[8]  (.A(dout_c[8]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[8] ));
    MX2A \PWDATA_RNO[1]  (.A(N_246), .B(dout_c[1]), .S(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[1] ));
    DFN1E0C0 \SPI_data[12]  (.D(SPI_master_0_BIF_1_PRDATA[12]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[12]));
    OR3A \current_state_RNIUBV11[11]  (.A(SPIRXAVAIL_i_1), .B(
        \current_state_i_0[11] ), .C(UART_fifo_0_empty), .Y(N_231));
    DFN1E0C0 \SPI_data[0]  (.D(SPI_master_0_BIF_1_PRDATA[0]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[0]));
    NOR2B \PWDATA_RNO[15]  (.A(dout_c[15]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[15] ));
    NOR2B \PWDATA_RNO[3]  (.A(dout_c[3]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[3] ));
    DFN1C0 \PWDATA[9]  (.D(\PWDATA_3[9] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[9]));
    DFN1E0C0 \SPI_data[10]  (.D(SPI_master_0_BIF_1_PRDATA[10]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[10]));
    NOR2B \PWDATA_RNO[11]  (.A(dout_c[11]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[11] ));
    OR2B \current_state_RNO[11]  (.A(\current_state[10]_net_1 ), .B(
        PRESETN_c), .Y(\current_state_ns[11] ));
    DFN1C0 \PWDATA[7]  (.D(\PWDATA_3[7] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[7]));
    MX2A \PWDATA_RNO[0]  (.A(N_246), .B(dout_c[0]), .S(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[0] ));
    OR3A \current_state_RNO[3]  (.A(PRESETN_c), .B(
        \current_state_i_0[11] ), .C(SPIRXAVAIL_i_1), .Y(
        \current_state_RNO[3]_net_1 ));
    VCC VCC_i (.Y(VCC));
    OR3A PWRITE_RNO (.A(N_231), .B(PSEL4_0_0), .C(N_237), .Y(PSEL4));
    DFN1C0 \PADDR_1[3]  (.D(\PADDR_1_RNO[3]_net_1 ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(SPI_master_0_BIF_1_PADDR_1));
    DFN1P0 \PWDATA[1]  (.D(\PWDATA_3[1] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[1]));
    DFN1C0 \PWDATA[13]  (.D(\PWDATA_3[13] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[13]));
    DFN1C0 \PADDR_1[2]  (.D(\current_state_RNIU7872[11]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(SPI_master_0_BIF_1_PADDR_0));
    DFN1E0C0 \SPI_data[8]  (.D(SPI_master_0_BIF_1_PRDATA[8]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[8]));
    DFN1C0 PSEL (.D(PSEL_2), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        SPI_master_0_BIF_1_PSELx));
    NOR2B \current_state_RNO[10]  (.A(\current_state[9]_net_1 ), .B(
        PRESETN_c), .Y(\current_state_ns[10] ));
    DFN1C0 \current_state[8]  (.D(\current_state_RNO[8]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\current_state[8]_net_1 ));
    DFN1E0C0 \SPI_data[15]  (.D(SPI_master_0_BIF_1_PRDATA[15]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[15]));
    DFN1C0 PWRITE (.D(PSEL4), .CLK(PCLK_c), .CLR(PRESETN_c), .Q(
        SPI_master_0_BIF_1_PWRITE));
    DFN1C0 \PWDATA[6]  (.D(\PWDATA_3[6] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[6]));
    OR2A \current_state_RNISHDL[8]  (.A(PRESETN_c), .B(
        \current_state[8]_net_1 ), .Y(N_236));
    NOR2B \PWDATA_RNO[10]  (.A(dout_c[10]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[10] ));
    NOR2B \PWDATA_RNO[12]  (.A(dout_c[12]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[12] ));
    DFN1P0 \current_state[1]  (.D(\current_state_RNO[1]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\current_state_i_0[1] ));
    OA1A \current_state_RNIU7872[11]  (.A(N_231), .B(N_237), .C(
        PRESETN_c), .Y(\current_state_RNIU7872[11]_net_1 ));
    NOR2A \current_state_RNIJGH71[11]  (.A(PRESETN_c), .B(N_231), .Y(
        REP));
    DFN1E0C0 \SPI_data[1]  (.D(SPI_master_0_BIF_1_PRDATA[1]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[1]));
    DFN1C0 \PWDATA[2]  (.D(\PWDATA_3[2] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[2]));
    DFN1C0 \current_state[2]  (.D(\current_state_RNO[2]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\current_state[2]_net_1 ));
    NOR2B \PWDATA_RNO[13]  (.A(dout_c[13]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[13] ));
    OR2A \current_state_RNIODDL[4]  (.A(PRESETN_c), .B(
        \current_state_i_0[4] ), .Y(\current_state_RNIODDL[4]_net_1 ));
    NOR2B \current_state_RNO[8]  (.A(\current_state[7]_net_1 ), .B(
        PRESETN_c), .Y(\current_state_RNO[8]_net_1 ));
    DFN1E0C0 \SPI_data[5]  (.D(SPI_master_0_BIF_1_PRDATA[5]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[5]));
    DFN1P0 \current_state[4]  (.D(\current_state_RNO[4]_net_1 ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\current_state_i_0[4] ));
    AO1 \PADDR_1_RNO_1[3]  (.A(UART_fifo_0_empty), .B(SPIRXAVAIL_i_1), 
        .C(\current_state_i_0[11] ), .Y(N_233));
    OR2B \current_state_RNO[1]  (.A(\current_state[0]_net_1 ), .B(
        PRESETN_c), .Y(\current_state_RNO[1]_net_1 ));
    DFN1P0 \current_state[11]  (.D(\current_state_ns[11] ), .CLK(
        PCLK_c), .PRE(PRESETN_c), .Q(\current_state_i_0[11] ));
    NOR2A \current_state_RNO[2]  (.A(PRESETN_c), .B(
        \current_state_i_0[1] ), .Y(\current_state_RNO[2]_net_1 ));
    DFN1C0 \PWDATA[11]  (.D(\PWDATA_3[11] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[11]));
    DFN1P0 PENABLE (.D(PENABLE_RNO_net_1), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PENABLE_i_0));
    NOR2B \PWDATA_RNO[7]  (.A(dout_c[7]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[7] ));
    AO1B PENABLE_RNO (.A(PENABLE_2_i_a3_1), .B(N_244_1), .C(PRESETN_c), 
        .Y(PENABLE_RNO_net_1));
    DFN1E0C0 \SPI_data[13]  (.D(SPI_master_0_BIF_1_PRDATA[13]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[13]));
    DFN1P0 \current_state[0]  (.D(\current_state_ns[0] ), .CLK(PCLK_c), 
        .PRE(PRESETN_c), .Q(\current_state[0]_net_1 ));
    NOR2B \PADDR_1_RNO[5]  (.A(N_235), .B(PRESETN_c), .Y(PADDR17));
    OR2A \current_state_RNO[4]  (.A(PRESETN_c), .B(
        \current_state_i_0[3] ), .Y(\current_state_RNO[4]_net_1 ));
    NOR2B \current_state_RNI5HMV[3]  (.A(\current_state_i_0[3] ), .B(
        \current_state_i_0[4] ), .Y(N_244_1));
    OR2 \current_state_RNIBNMV[6]  (.A(\current_state[6]_net_1 ), .B(
        \current_state[7]_net_1 ), .Y(N_237));
    DFN1C0 \PWDATA[14]  (.D(\PWDATA_3[14] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[14]));
    GND GND_i (.Y(GND));
    NOR2B \PWDATA_RNO[14]  (.A(dout_c[14]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[14] ));
    NOR2A \PADDR_1_RNO_0[3]  (.A(N_244_1), .B(N_237), .Y(
        \PADDR_2_0_i_a3_0[3] ));
    OR2 \current_state_RNO[0]  (.A(WEP), .B(N_236), .Y(
        \current_state_ns[0] ));
    DFN1E0C0 \SPI_data[3]  (.D(SPI_master_0_BIF_1_PRDATA[3]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[3]));
    DFN1C0 \PADDR_1[5]  (.D(PADDR17), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(SPI_master_0_BIF_1_PADDR_3));
    DFN1C0 \current_state[5]  (.D(N_216_i), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(WEP));
    DFN1C0 \PWDATA[10]  (.D(\PWDATA_3[10] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[10]));
    AOI1B \PADDR_1_RNO[3]  (.A(\PADDR_2_0_i_a3_0[3] ), .B(N_233), .C(
        PRESETN_c), .Y(\PADDR_1_RNO[3]_net_1 ));
    DFN1C0 \current_state[6]  (.D(REP), .CLK(PCLK_c), .CLR(PRESETN_c), 
        .Q(\current_state[6]_net_1 ));
    OR2 \current_state_RNIO8RQ[9]  (.A(\current_state[9]_net_1 ), .B(
        \current_state[10]_net_1 ), .Y(N_234));
    OR3 \PADDR_1_RNO_0[5]  (.A(N_248), .B(\current_state[2]_net_1 ), 
        .C(N_234), .Y(N_235));
    NOR3B \current_state_RNIUBV11_0[11]  (.A(SPIRXAVAIL_i_1), .B(
        UART_fifo_0_empty), .C(\current_state_i_0[11] ), .Y(N_248));
    INV \current_state_RNO[5]  (.A(\current_state_RNIODDL[4]_net_1 ), 
        .Y(N_216_i));
    DFN1C0 \current_state[10]  (.D(\current_state_ns[10] ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\current_state[10]_net_1 ));
    DFN1E0C0 \SPI_data[9]  (.D(SPI_master_0_BIF_1_PRDATA[9]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[9]));
    DFN1C0 \PWDATA[12]  (.D(\PWDATA_3[12] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[12]));
    NOR2B \PWDATA_RNO[4]  (.A(dout_c[4]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[4] ));
    NOR3 PENABLE_RNO_0 (.A(\current_state[0]_net_1 ), .B(
        \current_state[7]_net_1 ), .C(N_234), .Y(PENABLE_2_i_a3_1));
    DFN1C0 \current_state[7]  (.D(\current_state_RNO[7]_net_1 ), .CLK(
        PCLK_c), .CLR(PRESETN_c), .Q(\current_state[7]_net_1 ));
    DFN1P0 \PWDATA[0]  (.D(\PWDATA_3[0] ), .CLK(PCLK_c), .PRE(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[0]));
    NOR2B \PWDATA_RNO[5]  (.A(dout_c[5]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[5] ));
    DFN1C0 \PWDATA[4]  (.D(\PWDATA_3[4] ), .CLK(PCLK_c), .CLR(
        PRESETN_c), .Q(SPI_master_0_BIF_1_PWDATA[4]));
    NOR2B PSEL_RNO_0 (.A(\current_state_i_0[1] ), .B(
        \current_state_i_0[4] ), .Y(PSEL_2_0_a3_0));
    NOR3A \current_state_RNIV6V42[1]  (.A(\current_state_i_0[1] ), .B(
        N_236), .C(PSEL4_2), .Y(N_246));
    DFN1E0C0 \SPI_data[14]  (.D(SPI_master_0_BIF_1_PRDATA[14]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[14]));
    DFN1C0 \current_state[9]  (.D(\current_state_ns[9] ), .CLK(PCLK_c), 
        .CLR(PRESETN_c), .Q(\current_state[9]_net_1 ));
    OR2 \current_state_RNI3FMV[0]  (.A(WEP), .B(
        \current_state[0]_net_1 ), .Y(PSEL4_2));
    AO1C PSEL_RNO (.A(\current_state[10]_net_1 ), .B(PSEL_2_0_a3_0), 
        .C(PRESETN_c), .Y(PSEL_2));
    NOR2B \PWDATA_RNO[9]  (.A(dout_c[9]), .B(
        \current_state_RNIU7872[11]_net_1 ), .Y(\PWDATA_3[9] ));
    NOR2B \current_state_RNO[7]  (.A(\current_state[6]_net_1 ), .B(
        PRESETN_c), .Y(\current_state_RNO[7]_net_1 ));
    DFN1E0C0 \SPI_data[2]  (.D(SPI_master_0_BIF_1_PRDATA[2]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[2]));
    DFN1E0C0 \SPI_data[7]  (.D(SPI_master_0_BIF_1_PRDATA[7]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[7]));
    OA1 \current_state_RNO[9]  (.A(N_248), .B(\current_state[2]_net_1 )
        , .C(PRESETN_c), .Y(\current_state_ns[9] ));
    DFN1E0C0 \SPI_data[4]  (.D(SPI_master_0_BIF_1_PRDATA[4]), .CLK(
        PCLK_c), .CLR(PRESETN_c), .E(\current_state_RNIODDL[4]_net_1 ), 
        .Q(SPI_data_c[4]));
    
endmodule


module top_0(
       PCLK,
       PRESETN,
       SPISDI,
       rxd,
       GD,
       RE,
       RT,
       SPIRXAVAIL,
       SPISCLKO,
       SPISDO,
       SPI_data,
       dout,
       empty,
       txd
    );
input  PCLK;
input  PRESETN;
input  SPISDI;
input  rxd;
output GD;
output RE;
output RT;
output SPIRXAVAIL;
output SPISCLKO;
output SPISDO;
output [15:0] SPI_data;
output [15:0] dout;
output empty;
output txd;

    wire \SPI_master_0_BIF_1_PADDR[2] , \SPI_master_0_BIF_1_PADDR[3] , 
        \SPI_master_0_BIF_1_PADDR[5] , SPI_master_0_BIF_1_PWRITE, 
        SPI_master_0_BIF_1_PSELx, \SPI_master_0_BIF_1_PWDATA[0] , 
        \SPI_master_0_BIF_1_PWDATA[1] , \SPI_master_0_BIF_1_PWDATA[2] , 
        \SPI_master_0_BIF_1_PWDATA[3] , \SPI_master_0_BIF_1_PWDATA[4] , 
        \SPI_master_0_BIF_1_PWDATA[5] , \SPI_master_0_BIF_1_PWDATA[6] , 
        \SPI_master_0_BIF_1_PWDATA[7] , \SPI_master_0_BIF_1_PWDATA[8] , 
        \SPI_master_0_BIF_1_PWDATA[9] , 
        \SPI_master_0_BIF_1_PWDATA[10] , 
        \SPI_master_0_BIF_1_PWDATA[11] , 
        \SPI_master_0_BIF_1_PWDATA[12] , 
        \SPI_master_0_BIF_1_PWDATA[13] , 
        \SPI_master_0_BIF_1_PWDATA[14] , 
        \SPI_master_0_BIF_1_PWDATA[15] , \sp_fifo_0_dout[0] , 
        \sp_fifo_0_dout[1] , \sp_fifo_0_dout[2] , \sp_fifo_0_dout[3] , 
        \sp_fifo_0_dout[4] , \sp_fifo_0_dout[5] , \sp_fifo_0_dout[6] , 
        \sp_fifo_0_dout[7] , \sp_fifo_0_dout[8] , \sp_fifo_0_dout[9] , 
        \sp_fifo_0_dout[10] , \sp_fifo_0_dout[11] , 
        \sp_fifo_0_dout[12] , \sp_fifo_0_dout[13] , 
        \sp_fifo_0_dout[14] , \sp_fifo_0_dout[15] , UART_fifo_0_empty, 
        \UART_AD7606_0_m_axis_tdata[0] , 
        \UART_AD7606_0_m_axis_tdata[1] , 
        \UART_AD7606_0_m_axis_tdata[2] , 
        \UART_AD7606_0_m_axis_tdata[3] , 
        \UART_AD7606_0_m_axis_tdata[4] , 
        \UART_AD7606_0_m_axis_tdata[5] , 
        \UART_AD7606_0_m_axis_tdata[6] , 
        \UART_AD7606_0_m_axis_tdata[7] , UART_AD7606_0_m_axis_tvalid, 
        uart_0_s_axis_tready, \uart_0_m_axis_tdata[0] , 
        \uart_0_m_axis_tdata[1] , \uart_0_m_axis_tdata[2] , 
        \uart_0_m_axis_tdata[3] , \uart_0_m_axis_tdata[4] , 
        \uart_0_m_axis_tdata[5] , \uart_0_m_axis_tdata[6] , 
        \uart_0_m_axis_tdata[7] , uart_0_m_axis_tvalid, 
        UART_AD7606_0_s_axis_tready, uart_0_tx_busy, \UART_fifo_0.WEP , 
        \UART_fifo_0.REP , \sp_fifo_0.WEP , 
        \SPI_master_0.SPIRXAVAIL_i_1 , PCLK_c, PRESETN_c, SPISDI_c, 
        rxd_c, GND, RE_c, VCC, SPISCLKO_c, SPISDO_c, \SPI_data_c[0] , 
        \SPI_data_c[1] , \SPI_data_c[2] , \SPI_data_c[3] , 
        \SPI_data_c[4] , \SPI_data_c[5] , \SPI_data_c[6] , 
        \SPI_data_c[7] , \SPI_data_c[8] , \SPI_data_c[9] , 
        \SPI_data_c[10] , \SPI_data_c[11] , \SPI_data_c[12] , 
        \SPI_data_c[13] , \SPI_data_c[14] , \SPI_data_c[15] , 
        \dout_c[0] , \dout_c[1] , \dout_c[2] , \dout_c[3] , 
        \dout_c[4] , \dout_c[5] , \dout_c[6] , \dout_c[7] , 
        \dout_c[8] , \dout_c[9] , \dout_c[10] , \dout_c[11] , 
        \dout_c[12] , \dout_c[13] , \dout_c[14] , \dout_c[15] , 
        empty_c, txd_c, \CORESPI_0.USPI.un1_PADDR , 
        \SPI_master_0_BIF_1_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \SPI_master_0_BIF_1_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \SPI_master_0_BIF_1_PRDATA[15] , 
        \CORESPI_0.USPI.rx_fifo_data_out[15] , 
        \SPI_master_0_BIF_1_PRDATA[0] , 
        \CoreAPB3_0_APBmslave0_PRDATA[0] , 
        \SPI_master_0_BIF_1_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \SPI_master_0_BIF_1_PRDATA[13] , 
        \CORESPI_0.USPI.rx_fifo_data_out[13] , 
        \SPI_master_0_BIF_1_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \SPI_master_0_BIF_1_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \SPI_master_0_BIF_1_PRDATA[14] , 
        \SPI_master_0_BIF_1_PRDATA[12] , 
        \SPI_master_0_BIF_1_PRDATA[11] , 
        \SPI_master_0_BIF_1_PRDATA[10] , 
        \SPI_master_0_BIF_1_PRDATA[9] , \SPI_master_0_BIF_1_PRDATA[8] , 
        \SPI_master_0_BIF_1_PRDATA[6] , \SPI_master_0_BIF_1_PRDATA[3] , 
        \CORESPI_0.USPI.rx_fifo_data_out[14] , 
        \CORESPI_0.USPI.rx_fifo_data_out[12] , 
        \CORESPI_0.USPI.rx_fifo_data_out[11] , 
        \CORESPI_0.USPI.rx_fifo_data_out[10] , 
        \CORESPI_0.USPI.rx_fifo_data_out[9] , 
        \CORESPI_0.USPI.rx_fifo_data_out[8] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        SPI_master_0_BIF_1_PENABLE_i_0, 
        \SPI_master_0.SPIRXAVAIL_i_1_i ;
    
    OUTBUF SPISCLKO_pad (.D(SPISCLKO_c), .PAD(SPISCLKO));
    OUTBUF \SPI_data_pad[2]  (.D(\SPI_data_c[2] ), .PAD(SPI_data[2]));
    OUTBUF \dout_pad[14]  (.D(\dout_c[14] ), .PAD(dout[14]));
    OUTBUF \SPI_data_pad[9]  (.D(\SPI_data_c[9] ), .PAD(SPI_data[9]));
    OUTBUF \dout_pad[8]  (.D(\dout_c[8] ), .PAD(dout[8]));
    INBUF SPISDI_pad (.PAD(SPISDI), .Y(SPISDI_c));
    OUTBUF RE_pad (.D(RE_c), .PAD(RE));
    VCC VCC_i (.Y(VCC));
    UART_AD7606 UART_AD7606_0 (.UART_AD7606_0_m_axis_tdata({
        \UART_AD7606_0_m_axis_tdata[7] , 
        \UART_AD7606_0_m_axis_tdata[6] , 
        \UART_AD7606_0_m_axis_tdata[5] , 
        \UART_AD7606_0_m_axis_tdata[4] , 
        \UART_AD7606_0_m_axis_tdata[3] , 
        \UART_AD7606_0_m_axis_tdata[2] , 
        \UART_AD7606_0_m_axis_tdata[1] , 
        \UART_AD7606_0_m_axis_tdata[0] }), .sp_fifo_0_dout({
        \sp_fifo_0_dout[15] , \sp_fifo_0_dout[14] , 
        \sp_fifo_0_dout[13] , \sp_fifo_0_dout[12] , 
        \sp_fifo_0_dout[11] , \sp_fifo_0_dout[10] , 
        \sp_fifo_0_dout[9] , \sp_fifo_0_dout[8] , \sp_fifo_0_dout[7] , 
        \sp_fifo_0_dout[6] , \sp_fifo_0_dout[5] , \sp_fifo_0_dout[4] , 
        \sp_fifo_0_dout[3] , \sp_fifo_0_dout[2] , \sp_fifo_0_dout[1] , 
        \sp_fifo_0_dout[0] }), .uart_0_m_axis_tdata({
        \uart_0_m_axis_tdata[7] , \uart_0_m_axis_tdata[6] , 
        \uart_0_m_axis_tdata[5] , \uart_0_m_axis_tdata[4] , 
        \uart_0_m_axis_tdata[3] , \uart_0_m_axis_tdata[2] , 
        \uart_0_m_axis_tdata[1] , \uart_0_m_axis_tdata[0] }), 
        .UART_AD7606_0_s_axis_tready(UART_AD7606_0_s_axis_tready), 
        .RE_c(RE_c), .uart_0_m_axis_tvalid(uart_0_m_axis_tvalid), 
        .uart_0_tx_busy(uart_0_tx_busy), .empty_c(empty_c), .PRESETN_c(
        PRESETN_c), .PCLK_c(PCLK_c), .WEP(\UART_fifo_0.WEP ), 
        .UART_AD7606_0_m_axis_tvalid(UART_AD7606_0_m_axis_tvalid), 
        .uart_0_s_axis_tready(uart_0_s_axis_tready));
    uart uart_0 (.uart_0_m_axis_tdata({\uart_0_m_axis_tdata[7] , 
        \uart_0_m_axis_tdata[6] , \uart_0_m_axis_tdata[5] , 
        \uart_0_m_axis_tdata[4] , \uart_0_m_axis_tdata[3] , 
        \uart_0_m_axis_tdata[2] , \uart_0_m_axis_tdata[1] , 
        \uart_0_m_axis_tdata[0] }), .UART_AD7606_0_m_axis_tdata({
        \UART_AD7606_0_m_axis_tdata[7] , 
        \UART_AD7606_0_m_axis_tdata[6] , 
        \UART_AD7606_0_m_axis_tdata[5] , 
        \UART_AD7606_0_m_axis_tdata[4] , 
        \UART_AD7606_0_m_axis_tdata[3] , 
        \UART_AD7606_0_m_axis_tdata[2] , 
        \UART_AD7606_0_m_axis_tdata[1] , 
        \UART_AD7606_0_m_axis_tdata[0] }), 
        .UART_AD7606_0_s_axis_tready(UART_AD7606_0_s_axis_tready), 
        .uart_0_m_axis_tvalid(uart_0_m_axis_tvalid), .rxd_c(rxd_c), 
        .PRESETN_c(PRESETN_c), .UART_AD7606_0_m_axis_tvalid(
        UART_AD7606_0_m_axis_tvalid), .uart_0_s_axis_tready(
        uart_0_s_axis_tready), .txd_c(txd_c), .PCLK_c(PCLK_c), 
        .uart_0_tx_busy(uart_0_tx_busy));
    OUTBUF \dout_pad[6]  (.D(\dout_c[6] ), .PAD(dout[6]));
    CoreAPB3_Z1 CoreAPB3_0 (.rx_fifo_data_out({
        \CORESPI_0.USPI.rx_fifo_data_out[15] , 
        \CORESPI_0.USPI.rx_fifo_data_out[14] , 
        \CORESPI_0.USPI.rx_fifo_data_out[13] , 
        \CORESPI_0.USPI.rx_fifo_data_out[12] , 
        \CORESPI_0.USPI.rx_fifo_data_out[11] , 
        \CORESPI_0.USPI.rx_fifo_data_out[10] , 
        \CORESPI_0.USPI.rx_fifo_data_out[9] , 
        \CORESPI_0.USPI.rx_fifo_data_out[8] }), 
        .SPI_master_0_BIF_1_PRDATA({\SPI_master_0_BIF_1_PRDATA[15] , 
        \SPI_master_0_BIF_1_PRDATA[14] , 
        \SPI_master_0_BIF_1_PRDATA[13] , 
        \SPI_master_0_BIF_1_PRDATA[12] , 
        \SPI_master_0_BIF_1_PRDATA[11] , 
        \SPI_master_0_BIF_1_PRDATA[10] , 
        \SPI_master_0_BIF_1_PRDATA[9] , \SPI_master_0_BIF_1_PRDATA[8] , 
        \SPI_master_0_BIF_1_PRDATA[7] , \SPI_master_0_BIF_1_PRDATA[6] , 
        \SPI_master_0_BIF_1_PRDATA[5] , \SPI_master_0_BIF_1_PRDATA[4] , 
        \SPI_master_0_BIF_1_PRDATA[3] , \SPI_master_0_BIF_1_PRDATA[2] , 
        \SPI_master_0_BIF_1_PRDATA[1] , \SPI_master_0_BIF_1_PRDATA[0] })
        , .CoreAPB3_0_APBmslave0_PRDATA({
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[0] }), .un1_PADDR(
        \CORESPI_0.USPI.un1_PADDR ), .SPI_master_0_BIF_1_PSELx(
        SPI_master_0_BIF_1_PSELx));
    OUTBUF \SPI_data_pad[7]  (.D(\SPI_data_c[7] ), .PAD(SPI_data[7]));
    OUTBUF \dout_pad[3]  (.D(\dout_c[3] ), .PAD(dout[3]));
    OUTBUF \SPI_data_pad[11]  (.D(\SPI_data_c[11] ), .PAD(SPI_data[11])
        );
    OUTBUF \dout_pad[15]  (.D(\dout_c[15] ), .PAD(dout[15]));
    OUTBUF \SPI_data_pad[10]  (.D(\SPI_data_c[10] ), .PAD(SPI_data[10])
        );
    OUTBUF \SPI_data_pad[12]  (.D(\SPI_data_c[12] ), .PAD(SPI_data[12])
        );
    OUTBUF \dout_pad[13]  (.D(\dout_c[13] ), .PAD(dout[13]));
    OUTBUF \SPI_data_pad[15]  (.D(\SPI_data_c[15] ), .PAD(SPI_data[15])
        );
    INBUF rxd_pad (.PAD(rxd), .Y(rxd_c));
    OUTBUF \SPI_data_pad[6]  (.D(\SPI_data_c[6] ), .PAD(SPI_data[6]));
    OUTBUF \dout_pad[1]  (.D(\dout_c[1] ), .PAD(dout[1]));
    sp_fifo sp_fifo_0 (.sp_fifo_0_dout({\sp_fifo_0_dout[15] , 
        \sp_fifo_0_dout[14] , \sp_fifo_0_dout[13] , 
        \sp_fifo_0_dout[12] , \sp_fifo_0_dout[11] , 
        \sp_fifo_0_dout[10] , \sp_fifo_0_dout[9] , \sp_fifo_0_dout[8] , 
        \sp_fifo_0_dout[7] , \sp_fifo_0_dout[6] , \sp_fifo_0_dout[5] , 
        \sp_fifo_0_dout[4] , \sp_fifo_0_dout[3] , \sp_fifo_0_dout[2] , 
        \sp_fifo_0_dout[1] , \sp_fifo_0_dout[0] }), .SPI_data_c({
        \SPI_data_c[15] , \SPI_data_c[14] , \SPI_data_c[13] , 
        \SPI_data_c[12] , \SPI_data_c[11] , \SPI_data_c[10] , 
        \SPI_data_c[9] , \SPI_data_c[8] , \SPI_data_c[7] , 
        \SPI_data_c[6] , \SPI_data_c[5] , \SPI_data_c[4] , 
        \SPI_data_c[3] , \SPI_data_c[2] , \SPI_data_c[1] , 
        \SPI_data_c[0] }), .WEP(\sp_fifo_0.WEP ), .RE_c(RE_c), 
        .empty_c(empty_c), .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    CORESPI_Z3 CORESPI_0 (.SPI_master_0_BIF_1_PADDR_1(
        \SPI_master_0_BIF_1_PADDR[3] ), .SPI_master_0_BIF_1_PADDR_3(
        \SPI_master_0_BIF_1_PADDR[5] ), .SPI_master_0_BIF_1_PADDR_0(
        \SPI_master_0_BIF_1_PADDR[2] ), .SPI_master_0_BIF_1_PWDATA({
        \SPI_master_0_BIF_1_PWDATA[15] , 
        \SPI_master_0_BIF_1_PWDATA[14] , 
        \SPI_master_0_BIF_1_PWDATA[13] , 
        \SPI_master_0_BIF_1_PWDATA[12] , 
        \SPI_master_0_BIF_1_PWDATA[11] , 
        \SPI_master_0_BIF_1_PWDATA[10] , 
        \SPI_master_0_BIF_1_PWDATA[9] , \SPI_master_0_BIF_1_PWDATA[8] , 
        \SPI_master_0_BIF_1_PWDATA[7] , \SPI_master_0_BIF_1_PWDATA[6] , 
        \SPI_master_0_BIF_1_PWDATA[5] , \SPI_master_0_BIF_1_PWDATA[4] , 
        \SPI_master_0_BIF_1_PWDATA[3] , \SPI_master_0_BIF_1_PWDATA[2] , 
        \SPI_master_0_BIF_1_PWDATA[1] , \SPI_master_0_BIF_1_PWDATA[0] })
        , .rx_fifo_data_out({\CORESPI_0.USPI.rx_fifo_data_out[15] , 
        \CORESPI_0.USPI.rx_fifo_data_out[14] , 
        \CORESPI_0.USPI.rx_fifo_data_out[13] , 
        \CORESPI_0.USPI.rx_fifo_data_out[12] , 
        \CORESPI_0.USPI.rx_fifo_data_out[11] , 
        \CORESPI_0.USPI.rx_fifo_data_out[10] , 
        \CORESPI_0.USPI.rx_fifo_data_out[9] , 
        \CORESPI_0.USPI.rx_fifo_data_out[8] }), 
        .CoreAPB3_0_APBmslave0_PRDATA({
        \CoreAPB3_0_APBmslave0_PRDATA[7] , 
        \CoreAPB3_0_APBmslave0_PRDATA[6] , 
        \CoreAPB3_0_APBmslave0_PRDATA[5] , 
        \CoreAPB3_0_APBmslave0_PRDATA[4] , 
        \CoreAPB3_0_APBmslave0_PRDATA[3] , 
        \CoreAPB3_0_APBmslave0_PRDATA[2] , 
        \CoreAPB3_0_APBmslave0_PRDATA[1] , 
        \CoreAPB3_0_APBmslave0_PRDATA[0] }), .PRESETN_c(PRESETN_c), 
        .PCLK_c(PCLK_c), .SPI_master_0_BIF_1_PWRITE(
        SPI_master_0_BIF_1_PWRITE), .SPIRXAVAIL_i_1(
        \SPI_master_0.SPIRXAVAIL_i_1 ), .un1_PADDR(
        \CORESPI_0.USPI.un1_PADDR ), .SPI_master_0_BIF_1_PENABLE_i_0(
        SPI_master_0_BIF_1_PENABLE_i_0), .SPI_master_0_BIF_1_PSELx(
        SPI_master_0_BIF_1_PSELx), .SPIRXAVAIL_i_1_i(
        \SPI_master_0.SPIRXAVAIL_i_1_i ), .SPISCLKO_c(SPISCLKO_c), 
        .SPISDI_c(SPISDI_c), .SPISDO_c(SPISDO_c));
    OUTBUF \dout_pad[5]  (.D(\dout_c[5] ), .PAD(dout[5]));
    GND GND_i (.Y(GND));
    OUTBUF empty_pad (.D(empty_c), .PAD(empty));
    OUTBUF \SPI_data_pad[5]  (.D(\SPI_data_c[5] ), .PAD(SPI_data[5]));
    OUTBUF \dout_pad[7]  (.D(\dout_c[7] ), .PAD(dout[7]));
    OUTBUF \SPI_data_pad[1]  (.D(\SPI_data_c[1] ), .PAD(SPI_data[1]));
    OUTBUF \SPI_data_pad[4]  (.D(\SPI_data_c[4] ), .PAD(SPI_data[4]));
    OUTBUF \dout_pad[9]  (.D(\dout_c[9] ), .PAD(dout[9]));
    OUTBUF \SPI_data_pad[13]  (.D(\SPI_data_c[13] ), .PAD(SPI_data[13])
        );
    OUTBUF \dout_pad[4]  (.D(\dout_c[4] ), .PAD(dout[4]));
    OUTBUF RT_pad (.D(VCC), .PAD(RT));
    OUTBUF \dout_pad[2]  (.D(\dout_c[2] ), .PAD(dout[2]));
    CLKBUF PRESETN_pad (.PAD(PRESETN), .Y(PRESETN_c));
    OUTBUF \dout_pad[12]  (.D(\dout_c[12] ), .PAD(dout[12]));
    OUTBUF txd_pad (.D(txd_c), .PAD(txd));
    OUTBUF \SPI_data_pad[0]  (.D(\SPI_data_c[0] ), .PAD(SPI_data[0]));
    OUTBUF \SPI_data_pad[8]  (.D(\SPI_data_c[8] ), .PAD(SPI_data[8]));
    UART_fifo UART_fifo_0 (.dout_c({\dout_c[15] , \dout_c[14] , 
        \dout_c[13] , \dout_c[12] , \dout_c[11] , \dout_c[10] , 
        \dout_c[9] , \dout_c[8] , \dout_c[7] , \dout_c[6] , 
        \dout_c[5] , \dout_c[4] , \dout_c[3] , \dout_c[2] , 
        \dout_c[1] , \dout_c[0] }), .WEP(\UART_fifo_0.WEP ), 
        .UART_fifo_0_empty(UART_fifo_0_empty), .REP(\UART_fifo_0.REP ), 
        .PRESETN_c(PRESETN_c), .PCLK_c(PCLK_c));
    OUTBUF SPISDO_pad (.D(SPISDO_c), .PAD(SPISDO));
    OUTBUF SPIRXAVAIL_pad (.D(\SPI_master_0.SPIRXAVAIL_i_1_i ), .PAD(
        SPIRXAVAIL));
    OUTBUF GD_pad (.D(GND), .PAD(GD));
    OUTBUF \SPI_data_pad[3]  (.D(\SPI_data_c[3] ), .PAD(SPI_data[3]));
    OUTBUF \dout_pad[10]  (.D(\dout_c[10] ), .PAD(dout[10]));
    CLKBUF PCLK_pad (.PAD(PCLK), .Y(PCLK_c));
    OUTBUF \SPI_data_pad[14]  (.D(\SPI_data_c[14] ), .PAD(SPI_data[14])
        );
    OUTBUF \dout_pad[0]  (.D(\dout_c[0] ), .PAD(dout[0]));
    SPI_master_Z4 SPI_master_0 (.SPI_master_0_BIF_1_PWDATA({
        \SPI_master_0_BIF_1_PWDATA[15] , 
        \SPI_master_0_BIF_1_PWDATA[14] , 
        \SPI_master_0_BIF_1_PWDATA[13] , 
        \SPI_master_0_BIF_1_PWDATA[12] , 
        \SPI_master_0_BIF_1_PWDATA[11] , 
        \SPI_master_0_BIF_1_PWDATA[10] , 
        \SPI_master_0_BIF_1_PWDATA[9] , \SPI_master_0_BIF_1_PWDATA[8] , 
        \SPI_master_0_BIF_1_PWDATA[7] , \SPI_master_0_BIF_1_PWDATA[6] , 
        \SPI_master_0_BIF_1_PWDATA[5] , \SPI_master_0_BIF_1_PWDATA[4] , 
        \SPI_master_0_BIF_1_PWDATA[3] , \SPI_master_0_BIF_1_PWDATA[2] , 
        \SPI_master_0_BIF_1_PWDATA[1] , \SPI_master_0_BIF_1_PWDATA[0] })
        , .SPI_master_0_BIF_1_PADDR_3(\SPI_master_0_BIF_1_PADDR[5] ), 
        .SPI_master_0_BIF_1_PADDR_0(\SPI_master_0_BIF_1_PADDR[2] ), 
        .SPI_master_0_BIF_1_PADDR_1(\SPI_master_0_BIF_1_PADDR[3] ), 
        .SPI_master_0_BIF_1_PRDATA({\SPI_master_0_BIF_1_PRDATA[15] , 
        \SPI_master_0_BIF_1_PRDATA[14] , 
        \SPI_master_0_BIF_1_PRDATA[13] , 
        \SPI_master_0_BIF_1_PRDATA[12] , 
        \SPI_master_0_BIF_1_PRDATA[11] , 
        \SPI_master_0_BIF_1_PRDATA[10] , 
        \SPI_master_0_BIF_1_PRDATA[9] , \SPI_master_0_BIF_1_PRDATA[8] , 
        \SPI_master_0_BIF_1_PRDATA[7] , \SPI_master_0_BIF_1_PRDATA[6] , 
        \SPI_master_0_BIF_1_PRDATA[5] , \SPI_master_0_BIF_1_PRDATA[4] , 
        \SPI_master_0_BIF_1_PRDATA[3] , \SPI_master_0_BIF_1_PRDATA[2] , 
        \SPI_master_0_BIF_1_PRDATA[1] , \SPI_master_0_BIF_1_PRDATA[0] })
        , .SPI_data_c({\SPI_data_c[15] , \SPI_data_c[14] , 
        \SPI_data_c[13] , \SPI_data_c[12] , \SPI_data_c[11] , 
        \SPI_data_c[10] , \SPI_data_c[9] , \SPI_data_c[8] , 
        \SPI_data_c[7] , \SPI_data_c[6] , \SPI_data_c[5] , 
        \SPI_data_c[4] , \SPI_data_c[3] , \SPI_data_c[2] , 
        \SPI_data_c[1] , \SPI_data_c[0] }), .dout_c({\dout_c[15] , 
        \dout_c[14] , \dout_c[13] , \dout_c[12] , \dout_c[11] , 
        \dout_c[10] , \dout_c[9] , \dout_c[8] , \dout_c[7] , 
        \dout_c[6] , \dout_c[5] , \dout_c[4] , \dout_c[3] , 
        \dout_c[2] , \dout_c[1] , \dout_c[0] }), 
        .SPI_master_0_BIF_1_PSELx(SPI_master_0_BIF_1_PSELx), 
        .SPI_master_0_BIF_1_PENABLE_i_0(SPI_master_0_BIF_1_PENABLE_i_0)
        , .SPI_master_0_BIF_1_PWRITE(SPI_master_0_BIF_1_PWRITE), 
        .PCLK_c(PCLK_c), .WEP(\sp_fifo_0.WEP ), .UART_fifo_0_empty(
        UART_fifo_0_empty), .REP(\UART_fifo_0.REP ), .SPIRXAVAIL_i_1(
        \SPI_master_0.SPIRXAVAIL_i_1 ), .PRESETN_c(PRESETN_c));
    OUTBUF \dout_pad[11]  (.D(\dout_c[11] ), .PAD(dout[11]));
    
endmodule
