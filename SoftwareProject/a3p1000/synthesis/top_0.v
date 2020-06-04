`timescale 1 ns/100 ps
// Version: v11.9 SP2 11.9.2.1


module top_0_COREUART_1_Rx_async_0s_1s_0s_1s_2s_3s(
       rx_byte,
       TX_0_c,
       RESETN_c,
       CLK_c,
       fifo_write,
       baud_clock
    );
output [7:0] rx_byte;
input  TX_0_c;
input  RESETN_c;
input  CLK_c;
output fifo_write;
input  baud_clock;

    wire receive_count_e2_i_0, \receive_count[2]_net_1 , N_41, 
        receive_count_e1_i_0, \receive_count[0]_net_1 , 
        \receive_count[1]_net_1 , rx_byte_1_sqmuxa_0_a4_0_a2_0, 
        \rx_state[0]_net_1 , rx_byte_1_sqmuxa_1, 
        \last_bit_0_i_a2_1[0] , \last_bit_0_i_a2_0[0] , 
        \receive_count[3]_net_1 , receive_count8_i_i_0_a2_0_0, 
        \rx_state[1]_net_1 , clear_parity_en_9_0_a2_0, 
        \rx_bit_cnt[3]_net_1 , \rx_bit_cnt[2]_net_1 , rx_state19_NE_0, 
        \rx_bit_cnt[1]_net_1 , receive_count8_i_i_0_a2_0_4_1, 
        receive_count8_i_i_0_a2_0_4_0, m11_0, m13_0, rx_m3_e_0, N_14, 
        N_40, N_163_1, N_16, \rx_bit_cnt[0]_net_1 , N_56, i8_mux, 
        N_31_mux, N_22, N_218, N_24, clear_parity_en_9, N_67, 
        rx_byte_1_sqmuxa, rx_state19_i, N_58, N_57, N_26, N_46_i, 
        rx_N_7_mux, rx_bit_cnte, N_19, \samples[0]_net_1 , N_25, 
        i5_mux, i6_mux, \samples[1]_net_1 , N_287, \samples[2]_net_1 , 
        N_289, \rx_shift_11[0] , \rx_shift[1]_net_1 , \rx_shift_11[1] , 
        \rx_shift[2]_net_1 , \rx_shift_11[2] , \rx_shift[3]_net_1 , 
        \rx_shift_11[3] , \rx_shift[4]_net_1 , \rx_shift_11[4] , 
        \rx_shift[5]_net_1 , \rx_shift_11[5] , \rx_shift[6]_net_1 , 
        \rx_shift_11[6] , \rx_shift[7]_net_1 , N_51, N_12, N_42, N_216, 
        N_36, N_23, N_277, i3_mux, N_20, N_48_i, \last_bit_RNO_0[0] , 
        \last_bit[0]_net_1 , \rx_shift[0]_net_1 , GND, VCC;
    
    MX2A \rx_state_RNO_1[0]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_23));
    NOR2A \rx_shift_RNO[5]  (.A(\rx_shift[6]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[5] ));
    DFN1E1P0 \samples[0]  (.D(\samples[1]_net_1 ), .CLK(CLK_c), .PRE(
        RESETN_c), .E(baud_clock), .Q(\samples[0]_net_1 ));
    NOR3A \rx_state_RNO_2[0]  (.A(m11_0), .B(\rx_state[1]_net_1 ), .C(
        \receive_count[1]_net_1 ), .Y(i8_mux));
    DFN1E1C0 \rx_shift[2]  (.D(\rx_shift_11[2] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[2]_net_1 ));
    NOR2A \samples_RNINO5E1[0]  (.A(N_163_1), .B(N_36), .Y(N_57));
    OR3 \rx_state_RNI5RU62[0]  (.A(N_57), .B(N_58), .C(N_56), .Y(N_218)
        );
    NOR2A \rx_shift_RNO[3]  (.A(\rx_shift[4]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[3] ));
    DFN1E1C0 \rx_byte[0]  (.D(\rx_shift[0]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[0]));
    DFN1C0 \receive_count[1]  (.D(N_24), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[1]_net_1 ));
    NOR2B \rx_state_RNO_0[1]  (.A(\rx_state[0]_net_1 ), .B(baud_clock), 
        .Y(N_289));
    NOR2A \rx_state_RNI16JC[1]  (.A(baud_clock), .B(
        \rx_state[1]_net_1 ), .Y(rx_byte_1_sqmuxa_1));
    DFN1E1C0 \rx_shift[7]  (.D(N_216), .CLK(CLK_c), .CLR(RESETN_c), .E(
        rx_bit_cnte), .Q(\rx_shift[7]_net_1 ));
    NOR3C \receive_count_RNI7HCC[1]  (.A(\last_bit_0_i_a2_1[0] ), .B(
        \last_bit_0_i_a2_0[0] ), .C(N_163_1), .Y(N_56));
    OR3C fifo_write_RNO (.A(clear_parity_en_9_0_a2_0), .B(N_67), .C(
        rx_byte_1_sqmuxa_1), .Y(clear_parity_en_9));
    DFN1E1C0 \rx_shift[0]  (.D(\rx_shift_11[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[0]_net_1 ));
    NOR3B fifo_write_RNO_0 (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_state[0]_net_1 ), .C(\rx_bit_cnt[2]_net_1 ), .Y(
        clear_parity_en_9_0_a2_0));
    VCC VCC_i (.Y(VCC));
    NOR2A \rx_shift_RNO[1]  (.A(\rx_shift[2]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[1] ));
    DFN1C0 \receive_count[3]  (.D(N_20), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[3]_net_1 ));
    DFN1P0 fifo_write_inst_1 (.D(clear_parity_en_9), .CLK(CLK_c), .PRE(
        RESETN_c), .Q(fifo_write));
    DFN1E1C0 \rx_byte[4]  (.D(\rx_shift[4]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[4]));
    OR2B \rx_bit_cnt_RNIPL7Q[1]  (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_40));
    NOR2A \rx_shift_RNO[2]  (.A(\rx_shift[3]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[2] ));
    DFN1E1C0 \rx_bit_cnt[2]  (.D(N_14), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[2]_net_1 ));
    XOR2 \receive_count_RNO_0[2]  (.A(\receive_count[2]_net_1 ), .B(
        N_41), .Y(receive_count_e2_i_0));
    OA1 \receive_count_RNIT5DL[1]  (.A(rx_N_7_mux), .B(N_163_1), .C(
        baud_clock), .Y(rx_bit_cnte));
    DFN1E1C0 \rx_bit_cnt[1]  (.D(N_16), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[1]_net_1 ));
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
    DFN1E1P0 \samples[1]  (.D(\samples[2]_net_1 ), .CLK(CLK_c), .PRE(
        RESETN_c), .E(baud_clock), .Q(\samples[1]_net_1 ));
    NOR2A \rx_shift_RNO[6]  (.A(\rx_shift[7]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[6] ));
    XOR2 \last_bit_RNIUD4M[0]  (.A(\rx_bit_cnt[0]_net_1 ), .B(
        \last_bit[0]_net_1 ), .Y(N_46_i));
    MX2C \rx_state_RNO[1]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_25));
    NOR2A \rx_shift_RNO[0]  (.A(\rx_shift[1]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[0] ));
    XA1C \rx_bit_cnt_RNO[2]  (.A(N_40), .B(\rx_bit_cnt[2]_net_1 ), .C(
        N_163_1), .Y(N_14));
    DFN1E1C0 \rx_byte[1]  (.D(\rx_shift[1]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[1]));
    DFN1C0 \receive_count[2]  (.D(N_22), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[2]_net_1 ));
    DFN1E1C0 \rx_state[1]  (.D(N_25), .CLK(CLK_c), .CLR(RESETN_c), .E(
        N_289), .Q(\rx_state[1]_net_1 ));
    NOR2 \rx_shift_RNO[7]  (.A(N_36), .B(N_163_1), .Y(N_216));
    DFN1E1C0 \rx_byte[6]  (.D(\rx_shift[6]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[6]));
    AOI1 \receive_count_RNO[1]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e1_i_0), .Y(N_24));
    DFN1E1C0 \rx_shift[4]  (.D(\rx_shift_11[4] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[4]_net_1 ));
    NOR2A \last_bit_RNO[0]  (.A(\last_bit[0]_net_1 ), .B(N_56), .Y(
        \last_bit_RNO_0[0] ));
    NOR2 fifo_write_RNO_1 (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_67));
    NOR2A \receive_count_RNINLJ2[1]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_1));
    DFN1E1C0 \rx_byte[7]  (.D(\rx_shift[7]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[7]));
    DFN1E1C0 \rx_byte[3]  (.D(\rx_shift[3]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[3]));
    GND GND_i (.Y(GND));
    NOR2B \rx_state_RNIBM5G[0]  (.A(\rx_state[0]_net_1 ), .B(
        rx_byte_1_sqmuxa_1), .Y(rx_byte_1_sqmuxa_0_a4_0_a2_0));
    AOI1 \receive_count_RNO[3]  (.A(N_218), .B(baud_clock), .C(N_48_i), 
        .Y(N_20));
    AOI1 \samples_RNI8N7I[1]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[1]_net_1 ), .Y(
        i6_mux));
    DFN1E1C0 \rx_byte[2]  (.D(\rx_shift[2]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[2]));
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
    DFN1E1C0 \rx_shift[6]  (.D(\rx_shift_11[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[6]_net_1 ));
    MX2C \rx_state_RNO[0]  (.A(i3_mux), .B(N_23), .S(
        \rx_state[0]_net_1 ), .Y(N_277));
    NOR2A \rx_shift_RNO[4]  (.A(\rx_shift[5]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[4] ));
    DFN1E1C0 \rx_shift[1]  (.D(\rx_shift_11[1] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[1]_net_1 ));
    NOR2A \receive_count_RNIRPJ2_1[2]  (.A(\receive_count[3]_net_1 ), 
        .B(\receive_count[2]_net_1 ), .Y(\last_bit_0_i_a2_0[0] ));
    OR2 \last_bit_RNI83GT1[0]  (.A(rx_state19_NE_0), .B(N_46_i), .Y(
        rx_state19_i));
    DFN1E1C0 \rx_shift[3]  (.D(\rx_shift_11[3] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[3]_net_1 ));
    DFN1E1C0 \rx_state[0]  (.D(N_277), .CLK(CLK_c), .CLR(RESETN_c), .E(
        baud_clock), .Q(\rx_state[0]_net_1 ));
    DFN1E1P0 \samples[2]  (.D(TX_0_c), .CLK(CLK_c), .PRE(RESETN_c), .E(
        baud_clock), .Q(\samples[2]_net_1 ));
    NOR2B \rx_state_RNIL157[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(receive_count8_i_i_0_a2_0_0));
    DFN1C0 \receive_count[0]  (.D(N_26), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[0]_net_1 ));
    DFN1E1C0 \rx_byte[5]  (.D(\rx_shift[5]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[5]));
    DFN1E1C0 \rx_shift[5]  (.D(\rx_shift_11[5] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[5]_net_1 ));
    NOR2 \rx_state_RNIL157_0[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_163_1));
    DFN1E1C0 \rx_bit_cnt[0]  (.D(N_51), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[0]_net_1 ));
    MX2C \samples_RNISTFU1[0]  (.A(i6_mux), .B(N_19), .S(N_287), .Y(
        i5_mux));
    OR2A \rx_bit_cnt_RNO_0[3]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), 
        .Y(N_42));
    NOR3C \receive_count_RNIIF75[1]  (.A(\receive_count[0]_net_1 ), .B(
        \receive_count[1]_net_1 ), .C(rx_m3_e_0), .Y(rx_N_7_mux));
    NOR2A \rx_state_RNIJPLD2[0]  (.A(rx_byte_1_sqmuxa_0_a4_0_a2_0), .B(
        rx_state19_i), .Y(rx_byte_1_sqmuxa));
    DFN1P0 \last_bit[0]  (.D(\last_bit_RNO_0[0] ), .CLK(CLK_c), .PRE(
        RESETN_c), .Q(\last_bit[0]_net_1 ));
    NOR2A \rx_state_RNO_4[0]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(m11_0));
    NOR2B \rx_state_RNO_5[0]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(m13_0));
    NOR3C \rx_state_RNO_3[0]  (.A(\rx_state[1]_net_1 ), .B(
        \receive_count[1]_net_1 ), .C(m13_0), .Y(N_31_mux));
    NOR2B \receive_count_RNIRPJ2[2]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[2]_net_1 ), .Y(rx_m3_e_0));
    OR3A \rx_bit_cnt_RNIALB71[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_bit_cnt[2]_net_1 ), .C(\rx_bit_cnt[1]_net_1 ), .Y(
        rx_state19_NE_0));
    XA1C \rx_bit_cnt_RNO[3]  (.A(N_42), .B(\rx_bit_cnt[3]_net_1 ), .C(
        N_163_1), .Y(N_12));
    AOI1 \samples_RNI7M7I[0]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[0]_net_1 ), .Y(
        N_19));
    DFN1E1C0 \rx_bit_cnt[3]  (.D(N_12), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[3]_net_1 ));
    MX2C \rx_state_RNO_0[0]  (.A(i8_mux), .B(N_31_mux), .S(
        \receive_count[2]_net_1 ), .Y(i3_mux));
    XA1B \rx_bit_cnt_RNO[1]  (.A(\rx_bit_cnt[0]_net_1 ), .B(
        \rx_bit_cnt[1]_net_1 ), .C(N_163_1), .Y(N_16));
    NOR2A \receive_count_RNIRPJ2_0[2]  (.A(\receive_count[2]_net_1 ), 
        .B(\receive_count[3]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_0)
        );
    
endmodule


module top_0_COREUART_1_fifo_256x8_pa3(
       tx_hold_reg,
       DO_0,
       fifo_write_tx,
       RESETN_c,
       WEAP,
       CLK_c,
       fifo_empty_tx,
       fifo_full_tx_i
    );
input  [7:0] tx_hold_reg;
output [7:0] DO_0;
input  fifo_write_tx;
input  RESETN_c;
input  WEAP;
input  CLK_c;
output fifo_empty_tx;
output fifo_full_tx_i;

    wire fifo_full_tx, AEMPTY, FIFOBLOCK0_FULL_1, FIFOBLOCK0_RD8_1, 
        FIFOBLOCK0_RD9_1, FIFOBLOCK0_RD10_1, FIFOBLOCK0_RD11_1, 
        FIFOBLOCK0_RD12_1, FIFOBLOCK0_RD13_1, FIFOBLOCK0_RD14_1, 
        FIFOBLOCK0_RD15_1, FIFOBLOCK0_RD16_1, FIFOBLOCK0_RD17_1, 
        top_0_COREUART_1_fifo_256x8_pa3_GND, 
        top_0_COREUART_1_fifo_256x8_pa3_VCC;
    
    INV FIFOBLOCK0_RNI8HV9 (.A(fifo_full_tx), .Y(fifo_full_tx_i));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(top_0_COREUART_1_fifo_256x8_pa3_GND), 
        .AEVAL10(top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL9(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL8(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL7(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL6(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL5(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL4(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL3(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AEVAL2(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL1(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AEVAL0(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AFVAL11(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AFVAL10(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL9(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL8(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL7(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL6(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL5(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL4(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL3(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .AFVAL2(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AFVAL1(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .AFVAL0(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD17(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD16(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD15(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD14(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD13(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD12(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD11(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD10(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD9(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD8(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WD7(tx_hold_reg[7]), 
        .WD6(tx_hold_reg[6]), .WD5(tx_hold_reg[5]), .WD4(
        tx_hold_reg[4]), .WD3(tx_hold_reg[3]), .WD2(tx_hold_reg[2]), 
        .WD1(tx_hold_reg[1]), .WD0(tx_hold_reg[0]), .WW0(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .WW1(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .WW2(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .RW0(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .RW1(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .RW2(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .RPIPE(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WEN(fifo_write_tx), 
        .REN(WEAP), .WBLK(top_0_COREUART_1_fifo_256x8_pa3_GND), .RBLK(
        top_0_COREUART_1_fifo_256x8_pa3_GND), .WCLK(CLK_c), .RCLK(
        CLK_c), .RESET(RESETN_c), .ESTOP(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .FSTOP(
        top_0_COREUART_1_fifo_256x8_pa3_VCC), .RD17(FIFOBLOCK0_RD17_1), 
        .RD16(FIFOBLOCK0_RD16_1), .RD15(FIFOBLOCK0_RD15_1), .RD14(
        FIFOBLOCK0_RD14_1), .RD13(FIFOBLOCK0_RD13_1), .RD12(
        FIFOBLOCK0_RD12_1), .RD11(FIFOBLOCK0_RD11_1), .RD10(
        FIFOBLOCK0_RD10_1), .RD9(FIFOBLOCK0_RD9_1), .RD8(
        FIFOBLOCK0_RD8_1), .RD7(DO_0[7]), .RD6(DO_0[6]), .RD5(DO_0[5]), 
        .RD4(DO_0[4]), .RD3(DO_0[3]), .RD2(DO_0[2]), .RD1(DO_0[1]), 
        .RD0(DO_0[0]), .FULL(FIFOBLOCK0_FULL_1), .AFULL(fifo_full_tx), 
        .EMPTY(fifo_empty_tx), .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(top_0_COREUART_1_fifo_256x8_pa3_VCC));
    GND GND_i (.Y(top_0_COREUART_1_fifo_256x8_pa3_GND));
    
endmodule


module top_0_COREUART_1_fifo_256x8_0s_4294967295s(
       tx_hold_reg,
       tx_dout_reg,
       fifo_full_tx_i,
       fifo_empty_tx,
       WEAP,
       RESETN_c,
       fifo_write_tx,
       CLK_c
    );
input  [7:0] tx_hold_reg;
output [7:0] tx_dout_reg;
output fifo_full_tx_i;
output fifo_empty_tx;
input  WEAP;
input  RESETN_c;
input  fifo_write_tx;
input  CLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(CLK_c), .Q(tx_dout_reg[2]));
    top_0_COREUART_1_fifo_256x8_pa3 top_0_COREUART_1_fifo_256x8_pa3 (
        .tx_hold_reg({tx_hold_reg[7], tx_hold_reg[6], tx_hold_reg[5], 
        tx_hold_reg[4], tx_hold_reg[3], tx_hold_reg[2], tx_hold_reg[1], 
        tx_hold_reg[0]}), .DO_0({\DO_0[7] , \DO_0[6] , \DO_0[5] , 
        \DO_0[4] , \DO_0[3] , \DO_0[2] , \DO_0[1] , \DO_0[0] }), 
        .fifo_write_tx(fifo_write_tx), .RESETN_c(RESETN_c), .WEAP(WEAP)
        , .CLK_c(CLK_c), .fifo_empty_tx(fifo_empty_tx), 
        .fifo_full_tx_i(fifo_full_tx_i));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(CLK_c), .Q(tx_dout_reg[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(CLK_c), .Q(tx_dout_reg[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(CLK_c), .Q(tx_dout_reg[1]));
    VCC VCC_i (.Y(VCC));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(CLK_c), .Q(tx_dout_reg[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(CLK_c), .Q(tx_dout_reg[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(CLK_c), .Q(tx_dout_reg[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(CLK_c), .Q(tx_dout_reg[6]));
    
endmodule


module top_0_COREUART_1_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s(
       tx_dout_reg,
       TX_1_c,
       fifo_full_tx_i,
       COREUART_1_TXRDY,
       fifo_empty_tx,
       xmit_pulse,
       RESETN_c,
       CLK_c,
       WEAP
    );
input  [7:0] tx_dout_reg;
output TX_1_c;
input  fifo_full_tx_i;
output COREUART_1_TXRDY;
input  fifo_empty_tx;
input  xmit_pulse;
input  RESETN_c;
input  CLK_c;
output WEAP;

    wire \xmit_state_ns_i[6] , N_149, \xmit_state_i[6] , 
        \xmit_state[6]_net_1 , \xmit_state_ns[6] , N_55, 
        \xmit_state[0]_net_1 , N_8_0, \xmit_bit_sel[1]_net_1 , 
        \xmit_bit_sel[0]_net_1 , N_9_0, \xmit_bit_sel[2]_net_1 , 
        N_11_0, \xmit_bit_sel[3]_net_1 , \xmit_state[3]_net_1 , N_15_0, 
        N_19, N_24, N_25, N_28, \xmit_state[2]_net_1 , N_30, 
        \xmit_state_RNO_0[3]_net_1 , N_40, \tx_byte[0]_net_1 , 
        \tx_byte[1]_net_1 , N_43, \tx_byte[2]_net_1 , 
        \tx_byte[3]_net_1 , N_44, N_47, \tx_byte[4]_net_1 , 
        \tx_byte[5]_net_1 , N_50, \tx_byte[6]_net_1 , 
        \tx_byte[7]_net_1 , N_51, N_52, N_53, tx_4, xmit_bit_sel_e0, 
        \xmit_state_i_0[1] , N_57_mux, N_59, \xmit_state[5]_net_1 , 
        N_59_mux, GND, VCC;
    
    NOR2B \xmit_bit_sel_RNIBH2P[1]  (.A(\xmit_bit_sel[1]_net_1 ), .B(
        \xmit_bit_sel[0]_net_1 ), .Y(N_8_0));
    DFN1P0 txrdy_int (.D(fifo_full_tx_i), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(COREUART_1_TXRDY));
    NOR2A \xmit_state_RNIC77M[0]  (.A(\xmit_state[0]_net_1 ), .B(
        fifo_empty_tx), .Y(\xmit_state_ns[6] ));
    DFN1C0 \xmit_state[3]  (.D(\xmit_state_RNO_0[3]_net_1 ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\xmit_state[3]_net_1 ));
    DFN1E1C0 \tx_byte[0]  (.D(tx_dout_reg[0]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[0]_net_1 ));
    DFN1P0 \xmit_state[0]  (.D(N_59_mux), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(\xmit_state[0]_net_1 ));
    DFN1E1C0 \tx_byte[4]  (.D(tx_dout_reg[4]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[4]_net_1 ));
    INV \xmit_state_RNO[1]  (.A(\xmit_state[6]_net_1 ), .Y(
        \xmit_state_i[6] ));
    XA1 \xmit_bit_sel_RNO[1]  (.A(\xmit_bit_sel[0]_net_1 ), .B(
        \xmit_bit_sel[1]_net_1 ), .C(\xmit_state[3]_net_1 ), .Y(N_19));
    VCC VCC_i (.Y(VCC));
    DFN1E1C0 \tx_byte[5]  (.D(tx_dout_reg[5]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[5]_net_1 ));
    NOR2 tx_RNO_0 (.A(N_52), .B(\xmit_bit_sel[3]_net_1 ), .Y(N_53));
    MX2C tx_RNO_7 (.A(\tx_byte[6]_net_1 ), .B(\tx_byte[7]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_50));
    DFN1E1C0 \xmit_state[5]  (.D(N_25), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(xmit_pulse), .Q(\xmit_state[5]_net_1 ));
    MX2A tx_RNO (.A(\xmit_state[2]_net_1 ), .B(N_53), .S(
        \xmit_state[3]_net_1 ), .Y(tx_4));
    NOR2A \xmit_state_RNIRI821[1]  (.A(\xmit_state_i_0[1] ), .B(
        xmit_pulse), .Y(N_55));
    DFN1C0 \xmit_state[2]  (.D(N_57_mux), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\xmit_state[2]_net_1 ));
    DFN1E1C0 \xmit_bit_sel[3]  (.D(N_11_0), .CLK(CLK_c), .CLR(RESETN_c)
        , .E(xmit_pulse), .Q(\xmit_bit_sel[3]_net_1 ));
    MX2C tx_RNO_5 (.A(\tx_byte[2]_net_1 ), .B(\tx_byte[3]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_43));
    NOR2B \xmit_state_RNO_0[0]  (.A(\xmit_state[5]_net_1 ), .B(
        xmit_pulse), .Y(N_59));
    MX2 tx_RNO_2 (.A(N_40), .B(N_43), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_44));
    MX2C tx_RNO_6 (.A(\tx_byte[4]_net_1 ), .B(\tx_byte[5]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_47));
    DFN1E1C0 \xmit_bit_sel[2]  (.D(N_15_0), .CLK(CLK_c), .CLR(RESETN_c)
        , .E(xmit_pulse), .Q(\xmit_bit_sel[2]_net_1 ));
    DFN1E0P0 tx (.D(tx_4), .CLK(CLK_c), .PRE(RESETN_c), .E(N_149), .Q(
        TX_1_c));
    INV fifo_read_en0_RNO (.A(\xmit_state_ns[6] ), .Y(
        \xmit_state_ns_i[6] ));
    DFN1E1C0 \tx_byte[3]  (.D(tx_dout_reg[3]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[3]_net_1 ));
    NOR2B \xmit_state_RNISJ821[2]  (.A(\xmit_state[2]_net_1 ), .B(
        xmit_pulse), .Y(N_28));
    DFN1E1C0 \tx_byte[7]  (.D(tx_dout_reg[7]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[7]_net_1 ));
    MX2B \xmit_state_RNO[3]  (.A(\xmit_state[3]_net_1 ), .B(N_30), .S(
        xmit_pulse), .Y(\xmit_state_RNO_0[3]_net_1 ));
    GND GND_i (.Y(GND));
    XA1 \xmit_bit_sel_RNO[2]  (.A(\xmit_bit_sel[2]_net_1 ), .B(N_8_0), 
        .C(\xmit_state[3]_net_1 ), .Y(N_15_0));
    NOR3A \xmit_state_RNI95OQ1[6]  (.A(N_55), .B(\xmit_state[0]_net_1 )
        , .C(\xmit_state[6]_net_1 ), .Y(N_149));
    AO1 \xmit_state_RNO[0]  (.A(fifo_empty_tx), .B(
        \xmit_state[0]_net_1 ), .C(N_59), .Y(N_59_mux));
    AXOI5 \xmit_bit_sel_RNO[0]  (.A(\xmit_state[3]_net_1 ), .B(
        xmit_pulse), .C(\xmit_bit_sel[0]_net_1 ), .Y(xmit_bit_sel_e0));
    NOR2B \xmit_bit_sel_RNIIRJ51[2]  (.A(N_8_0), .B(
        \xmit_bit_sel[2]_net_1 ), .Y(N_9_0));
    NOR2A \xmit_bit_sel_RNIQ65I1[3]  (.A(N_9_0), .B(
        \xmit_bit_sel[3]_net_1 ), .Y(N_24));
    NOR2B \xmit_state_RNO[5]  (.A(N_24), .B(\xmit_state[3]_net_1 ), .Y(
        N_25));
    DFN1E1C0 \tx_byte[6]  (.D(tx_dout_reg[6]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[6]_net_1 ));
    DFN1E1C0 \xmit_bit_sel[1]  (.D(N_19), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(xmit_pulse), .Q(\xmit_bit_sel[1]_net_1 ));
    MX2 tx_RNO_3 (.A(N_47), .B(N_50), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_51));
    DFN1P0 \xmit_state[1]  (.D(\xmit_state_i[6] ), .CLK(CLK_c), .PRE(
        RESETN_c), .Q(\xmit_state_i_0[1] ));
    DFN1C0 \xmit_bit_sel[0]  (.D(xmit_bit_sel_e0), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_bit_sel[0]_net_1 ));
    AO1C \xmit_state_RNO[2]  (.A(xmit_pulse), .B(\xmit_state[2]_net_1 )
        , .C(\xmit_state_i_0[1] ), .Y(N_57_mux));
    MX2C tx_RNO_4 (.A(\tx_byte[0]_net_1 ), .B(\tx_byte[1]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_40));
    DFN1E1C0 \tx_byte[2]  (.D(tx_dout_reg[2]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[2]_net_1 ));
    DFI1E0P0 fifo_read_en0 (.D(\xmit_state_ns_i[6] ), .CLK(CLK_c), .E(
        N_149), .PRE(RESETN_c), .QN(WEAP));
    OA1C \xmit_state_RNO_0[3]  (.A(\xmit_state[3]_net_1 ), .B(N_24), 
        .C(\xmit_state[2]_net_1 ), .Y(N_30));
    MX2 tx_RNO_1 (.A(N_44), .B(N_51), .S(\xmit_bit_sel[2]_net_1 ), .Y(
        N_52));
    DFN1E1C0 \tx_byte[1]  (.D(tx_dout_reg[1]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[1]_net_1 ));
    XA1 \xmit_bit_sel_RNO[3]  (.A(\xmit_bit_sel[3]_net_1 ), .B(N_9_0), 
        .C(\xmit_state[3]_net_1 ), .Y(N_11_0));
    DFN1C0 \xmit_state[6]  (.D(\xmit_state_ns[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_state[6]_net_1 ));
    
endmodule


module top_0_COREUART_1_Clock_gen_0s_0s(
       RESETN_c,
       CLK_c,
       baud_clock,
       xmit_pulse
    );
input  RESETN_c;
input  CLK_c;
output baud_clock;
output xmit_pulse;

    wire baud_cntr_25_0, \baud_cntr[11] , baud_cntr_c10, 
        \baud_cntr_RNO_0[12] , baud_cntr8, \baud_cntr[12] , 
        \baud_cntr[9] , baud_cntr_c8, \baud_cntr[10] , baud_cntr8_10_2, 
        baud_cntr_c3, \baud_cntr[8] , baud_cntr_c2, \baud_cntr[3] , 
        \baud_cntr[1] , \baud_cntr[0] , \baud_cntr[2] , 
        \baud_cntr_i[0] , baud_cntr_15_0, \baud_cntr[6] , baud_cntr_c5, 
        baud_cntr8_3, baud_cntr8_2, baud_cntr8_10_1, \baud_cntr[7] , 
        \baud_cntr[5] , \baud_cntr[4] , xmit_clock5, 
        \xmit_cntr[2]_net_1 , \xmit_cntr[3]_net_1 , xmit_cntr_c1, 
        \baud_cntr_RNO_0[8] , N_105_tz, \baud_cntr_RNO_0[6] , 
        \baud_cntr_RNO_0[2] , N_99_tz, xmit_clock_net_1, 
        \baud_cntr_RNO_0[11] , \baud_cntr_RNO_0[10] , N_86, 
        \baud_cntr_RNO_0[9] , \baud_cntr_RNO_0[7] , 
        \baud_cntr_RNO_0[5] , baud_cntr_c4, \baud_cntr_RNO_0[4] , 
        \baud_cntr_RNO_0[3] , \baud_cntr_RNO_0[1] , 
        \xmit_cntr[1]_net_1 , \xmit_cntr[0]_net_1 , xmit_cntr_n3, 
        xmit_cntr_n2, xmit_cntr_n1, xmit_cntr_e0, GND, VCC;
    
    DFN1C0 \genblk1.baud_cntr[4]  (.D(\baud_cntr_RNO_0[4] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[4] ));
    AX1C \xmit_cntr_RNO[3]  (.A(\xmit_cntr[2]_net_1 ), .B(xmit_cntr_c1)
        , .C(\xmit_cntr[3]_net_1 ), .Y(xmit_cntr_n3));
    DFN1C0 \genblk1.baud_cntr[1]  (.D(\baud_cntr_RNO_0[1] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[1] ));
    DFN1C0 \genblk1.baud_cntr[3]  (.D(\baud_cntr_RNO_0[3] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[3] ));
    DFN1E1C0 \xmit_cntr[3]  (.D(xmit_cntr_n3), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[3]_net_1 ));
    AX1D \genblk1.baud_cntr_RNO_0[2]  (.A(\baud_cntr[1] ), .B(
        \baud_cntr[0] ), .C(\baud_cntr[2] ), .Y(N_99_tz));
    OR3A \genblk1.baud_cntr_RNIR6E12[8]  (.A(baud_cntr8_10_2), .B(
        baud_cntr_c3), .C(\baud_cntr[8] ), .Y(baud_cntr_c8));
    OR3 \genblk1.baud_cntr_RNIJ9HO2[10]  (.A(\baud_cntr[9] ), .B(
        baud_cntr_c8), .C(\baud_cntr[10] ), .Y(baud_cntr_c10));
    XOR2 \xmit_cntr_RNO[2]  (.A(xmit_cntr_c1), .B(\xmit_cntr[2]_net_1 )
        , .Y(xmit_cntr_n2));
    AX1B \genblk1.baud_cntr_RNO[3]  (.A(baud_cntr_c2), .B(baud_cntr8), 
        .C(\baud_cntr[3] ), .Y(\baud_cntr_RNO_0[3] ));
    DFN1C0 \genblk1.baud_cntr[9]  (.D(\baud_cntr_RNO_0[9] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[9] ));
    DFN1C0 \genblk1.baud_clock_int  (.D(baud_cntr8), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(baud_clock));
    OR2A \genblk1.baud_cntr_RNO[2]  (.A(N_99_tz), .B(baud_cntr8), .Y(
        \baud_cntr_RNO_0[2] ));
    VCC VCC_i (.Y(VCC));
    NOR2 \genblk1.baud_cntr_RNI7DHE[4]  (.A(\baud_cntr[5] ), .B(
        \baud_cntr[4] ), .Y(baud_cntr8_10_1));
    NOR3C xmit_clock_RNO (.A(\xmit_cntr[2]_net_1 ), .B(
        \xmit_cntr[3]_net_1 ), .C(xmit_cntr_c1), .Y(xmit_clock5));
    AX1B \genblk1.baud_cntr_RNO[9]  (.A(baud_cntr_c8), .B(baud_cntr8), 
        .C(\baud_cntr[9] ), .Y(\baud_cntr_RNO_0[9] ));
    NOR2B xmit_clock_RNIMR0M (.A(xmit_clock_net_1), .B(baud_clock), .Y(
        xmit_pulse));
    INV \genblk1.baud_cntr_RNO[0]  (.A(\baud_cntr[0] ), .Y(
        \baud_cntr_i[0] ));
    NOR3A \genblk1.baud_cntr_RNI2F0U1[10]  (.A(baud_cntr8_2), .B(
        \baud_cntr[10] ), .C(\baud_cntr[11] ), .Y(baud_cntr8_3));
    XOR2 \xmit_cntr_RNO[1]  (.A(\xmit_cntr[0]_net_1 ), .B(
        \xmit_cntr[1]_net_1 ), .Y(xmit_cntr_n1));
    AX1B \genblk1.baud_cntr_RNO[5]  (.A(baud_cntr_c4), .B(baud_cntr8), 
        .C(\baud_cntr[5] ), .Y(\baud_cntr_RNO_0[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[7]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .Y(baud_cntr_15_0));
    DFN1C0 \genblk1.baud_cntr[7]  (.D(\baud_cntr_RNO_0[7] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[7] ));
    NOR3 \genblk1.baud_cntr_RNI1VBU[12]  (.A(\baud_cntr[8] ), .B(
        \baud_cntr[12] ), .C(\baud_cntr[9] ), .Y(baud_cntr8_2));
    DFN1C0 \genblk1.baud_cntr[5]  (.D(\baud_cntr_RNO_0[5] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[12]  (.A(\baud_cntr[11] ), .B(
        baud_cntr_c10), .Y(baud_cntr_25_0));
    NOR3A \genblk1.baud_cntr_RNIIU2T[7]  (.A(baud_cntr8_10_1), .B(
        \baud_cntr[6] ), .C(\baud_cntr[7] ), .Y(baud_cntr8_10_2));
    DFN1C0 \genblk1.baud_cntr[8]  (.D(\baud_cntr_RNO_0[8] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[8] ));
    GND GND_i (.Y(GND));
    DFN1C0 \genblk1.baud_cntr[0]  (.D(\baud_cntr_i[0] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[0] ));
    AX1A \genblk1.baud_cntr_RNO_0[8]  (.A(baud_cntr_c3), .B(
        baud_cntr8_10_2), .C(\baud_cntr[8] ), .Y(N_105_tz));
    OR3 \genblk1.baud_cntr_RNO_0[10]  (.A(\baud_cntr[9] ), .B(
        baud_cntr_c8), .C(baud_cntr8), .Y(N_86));
    NOR2B \xmit_cntr_RNI7E0S[1]  (.A(\xmit_cntr[1]_net_1 ), .B(
        \xmit_cntr[0]_net_1 ), .Y(xmit_cntr_c1));
    OR2A \genblk1.baud_cntr_RNO[8]  (.A(N_105_tz), .B(baud_cntr8), .Y(
        \baud_cntr_RNO_0[8] ));
    XOR2 \xmit_cntr_RNO[0]  (.A(\xmit_cntr[0]_net_1 ), .B(baud_clock), 
        .Y(xmit_cntr_e0));
    NOR3B \genblk1.baud_cntr_RNIMR5O3[10]  (.A(baud_cntr8_10_2), .B(
        baud_cntr8_3), .C(baud_cntr_c3), .Y(baud_cntr8));
    AX1B \genblk1.baud_cntr_RNO[7]  (.A(baud_cntr8), .B(baud_cntr_15_0)
        , .C(\baud_cntr[7] ), .Y(\baud_cntr_RNO_0[7] ));
    XO1A \genblk1.baud_cntr_RNO[6]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .C(baud_cntr8), .Y(\baud_cntr_RNO_0[6] ));
    DFN1E1C0 \xmit_cntr[2]  (.D(xmit_cntr_n2), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[2]_net_1 ));
    DFN1C0 \genblk1.baud_cntr[10]  (.D(\baud_cntr_RNO_0[10] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[10] ));
    OR3 \genblk1.baud_cntr_RNI0PPL[2]  (.A(\baud_cntr[1] ), .B(
        \baud_cntr[0] ), .C(\baud_cntr[2] ), .Y(baud_cntr_c2));
    OR2 \genblk1.baud_cntr_RNI2E2T[3]  (.A(baud_cntr_c2), .B(
        \baud_cntr[3] ), .Y(baud_cntr_c3));
    DFN1C0 \genblk1.baud_cntr[6]  (.D(\baud_cntr_RNO_0[6] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[6] ));
    OR2 \genblk1.baud_cntr_RNI54B41[4]  (.A(baud_cntr_c3), .B(
        \baud_cntr[4] ), .Y(baud_cntr_c4));
    DFN1E1C0 xmit_clock (.D(xmit_clock5), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(baud_clock), .Q(xmit_clock_net_1));
    AX1B \genblk1.baud_cntr_RNO[12]  (.A(baud_cntr8), .B(
        baud_cntr_25_0), .C(\baud_cntr[12] ), .Y(\baud_cntr_RNO_0[12] )
        );
    DFN1C0 \genblk1.baud_cntr[12]  (.D(\baud_cntr_RNO_0[12] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[12] ));
    DFN1E1C0 \xmit_cntr[1]  (.D(xmit_cntr_n1), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[1]_net_1 ));
    AX1B \genblk1.baud_cntr_RNO[4]  (.A(baud_cntr_c3), .B(baud_cntr8), 
        .C(\baud_cntr[4] ), .Y(\baud_cntr_RNO_0[4] ));
    OR2 \genblk1.baud_cntr_RNI9RJB1[5]  (.A(baud_cntr_c4), .B(
        \baud_cntr[5] ), .Y(baud_cntr_c5));
    DFN1C0 \genblk1.baud_cntr[2]  (.D(\baud_cntr_RNO_0[2] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[2] ));
    XNOR2 \genblk1.baud_cntr_RNO[10]  (.A(N_86), .B(\baud_cntr[10] ), 
        .Y(\baud_cntr_RNO_0[10] ));
    DFN1C0 \xmit_cntr[0]  (.D(xmit_cntr_e0), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_cntr[0]_net_1 ));
    DFN1C0 \genblk1.baud_cntr[11]  (.D(\baud_cntr_RNO_0[11] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[11] ));
    AX1B \genblk1.baud_cntr_RNO[11]  (.A(baud_cntr_c10), .B(baud_cntr8)
        , .C(\baud_cntr[11] ), .Y(\baud_cntr_RNO_0[11] ));
    AX1B \genblk1.baud_cntr_RNO[1]  (.A(\baud_cntr[0] ), .B(baud_cntr8)
        , .C(\baud_cntr[1] ), .Y(\baud_cntr_RNO_0[1] ));
    
endmodule


module top_0_COREUART_1_fifo_256x8_pa3_0(
       rx_byte,
       DO_0,
       rx_state,
       RESETN_c,
       CLK_c,
       rx_dout_reg_empty,
       fifo_write,
       next_rx_state4
    );
input  [7:0] rx_byte;
output [7:0] DO_0;
input  [1:0] rx_state;
input  RESETN_c;
input  CLK_c;
input  rx_dout_reg_empty;
input  fifo_write;
output next_rx_state4;

    wire WEAP, fifo_write_rx_1, fifo_full_rx, fifo_empty_rx, AEMPTY, 
        FIFOBLOCK0_FULL_2, FIFOBLOCK0_RD8_2, FIFOBLOCK0_RD9_2, 
        FIFOBLOCK0_RD10_2, FIFOBLOCK0_RD11_2, FIFOBLOCK0_RD12_2, 
        FIFOBLOCK0_RD13_2, FIFOBLOCK0_RD14_2, FIFOBLOCK0_RD15_2, 
        FIFOBLOCK0_RD16_2, FIFOBLOCK0_RD17_2, 
        top_0_COREUART_1_fifo_256x8_pa3_0_GND, 
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC;
    
    OR2 FIFOBLOCK0_RNO_0 (.A(fifo_full_rx), .B(fifo_write), .Y(
        fifo_write_rx_1));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL10(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL9(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL8(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL7(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL6(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL5(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL4(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL3(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AEVAL2(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL1(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AEVAL0(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AFVAL11(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AFVAL10(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL9(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL8(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL7(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL6(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL5(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL4(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL3(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .AFVAL2(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AFVAL1(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .AFVAL0(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD17(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD16(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD15(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD14(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD13(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD12(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD11(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD10(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD9(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD8(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WD7(rx_byte[7]), .WD6(
        rx_byte[6]), .WD5(rx_byte[5]), .WD4(rx_byte[4]), .WD3(
        rx_byte[3]), .WD2(rx_byte[2]), .WD1(rx_byte[1]), .WD0(
        rx_byte[0]), .WW0(top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .WW1(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .WW2(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .RW0(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .RW1(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .RW2(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .RPIPE(
        top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WEN(fifo_write_rx_1), 
        .REN(WEAP), .WBLK(top_0_COREUART_1_fifo_256x8_pa3_0_GND), 
        .RBLK(top_0_COREUART_1_fifo_256x8_pa3_0_GND), .WCLK(CLK_c), 
        .RCLK(CLK_c), .RESET(RESETN_c), .ESTOP(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .FSTOP(
        top_0_COREUART_1_fifo_256x8_pa3_0_VCC), .RD17(
        FIFOBLOCK0_RD17_2), .RD16(FIFOBLOCK0_RD16_2), .RD15(
        FIFOBLOCK0_RD15_2), .RD14(FIFOBLOCK0_RD14_2), .RD13(
        FIFOBLOCK0_RD13_2), .RD12(FIFOBLOCK0_RD12_2), .RD11(
        FIFOBLOCK0_RD11_2), .RD10(FIFOBLOCK0_RD10_2), .RD9(
        FIFOBLOCK0_RD9_2), .RD8(FIFOBLOCK0_RD8_2), .RD7(DO_0[7]), .RD6(
        DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), .RD3(DO_0[3]), .RD2(
        DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), .FULL(
        FIFOBLOCK0_FULL_2), .AFULL(fifo_full_rx), .EMPTY(fifo_empty_rx)
        , .AEMPTY(AEMPTY));
    NOR2A FIFOBLOCK0_RNIQ4KD (.A(rx_dout_reg_empty), .B(fifo_empty_rx), 
        .Y(next_rx_state4));
    VCC VCC_i (.Y(top_0_COREUART_1_fifo_256x8_pa3_0_VCC));
    NOR3A FIFOBLOCK0_RNO (.A(next_rx_state4), .B(rx_state[1]), .C(
        rx_state[0]), .Y(WEAP));
    GND GND_i (.Y(top_0_COREUART_1_fifo_256x8_pa3_0_GND));
    
endmodule


module top_0_COREUART_1_fifo_256x8_0s_4294967295s_0(
       rx_state,
       rx_byte,
       rx_dout,
       next_rx_state4,
       fifo_write,
       rx_dout_reg_empty,
       RESETN_c,
       CLK_c
    );
input  [1:0] rx_state;
input  [7:0] rx_byte;
output [7:0] rx_dout;
output next_rx_state4;
input  fifo_write;
input  rx_dout_reg_empty;
input  RESETN_c;
input  CLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(CLK_c), .Q(rx_dout[2]));
    top_0_COREUART_1_fifo_256x8_pa3_0 top_0_COREUART_1_fifo_256x8_pa3 
        (.rx_byte({rx_byte[7], rx_byte[6], rx_byte[5], rx_byte[4], 
        rx_byte[3], rx_byte[2], rx_byte[1], rx_byte[0]}), .DO_0({
        \DO_0[7] , \DO_0[6] , \DO_0[5] , \DO_0[4] , \DO_0[3] , 
        \DO_0[2] , \DO_0[1] , \DO_0[0] }), .rx_state({rx_state[1], 
        rx_state[0]}), .RESETN_c(RESETN_c), .CLK_c(CLK_c), 
        .rx_dout_reg_empty(rx_dout_reg_empty), .fifo_write(fifo_write), 
        .next_rx_state4(next_rx_state4));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(CLK_c), .Q(rx_dout[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(CLK_c), .Q(rx_dout[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(CLK_c), .Q(rx_dout[1]));
    VCC VCC_i (.Y(VCC));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(CLK_c), .Q(rx_dout[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(CLK_c), .Q(rx_dout[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(CLK_c), .Q(rx_dout[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(CLK_c), .Q(rx_dout[6]));
    
endmodule


module top_0_COREUART_1_COREUART_1s_1s_0s_15s_0s_0s(
       rx_dout_reg,
       UART_control_0_TX,
       TX_0_c,
       COREUART_1_TXRDY,
       TX_1_c,
       TX_state_RNI441M,
       un1_wen_i,
       RESETN_c,
       CLK_c,
       RX_state,
       COREUART_1_RXRDY
    );
output [7:0] rx_dout_reg;
input  [7:0] UART_control_0_TX;
input  TX_0_c;
output COREUART_1_TXRDY;
output TX_1_c;
input  TX_state_RNI441M;
input  un1_wen_i;
input  RESETN_c;
input  CLK_c;
input  RX_state;
output COREUART_1_RXRDY;

    wire rx_dout_reg_empty_i, rx_dout_reg_empty_net_1, N_131_i, 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , \rx_state_ns[0] , 
        next_rx_state4, rx_dout_reg4, rx_dout_reg_empty_1_sqmuxa, 
        fifo_write_tx_net_1, \tx_hold_reg[0]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[7]_net_1 , \rx_dout[0] , \rx_dout[1] , 
        \rx_dout[2] , \rx_dout[3] , \rx_dout[4] , \rx_dout[5] , 
        \rx_dout[6] , \rx_dout[7] , baud_clock, xmit_pulse, 
        \tx_dout_reg[0] , \tx_dout_reg[1] , \tx_dout_reg[2] , 
        \tx_dout_reg[3] , \tx_dout_reg[4] , \tx_dout_reg[5] , 
        \tx_dout_reg[6] , \tx_dout_reg[7] , fifo_full_tx_i, 
        fifo_empty_tx, WEAP, \rx_byte[0] , \rx_byte[1] , \rx_byte[2] , 
        \rx_byte[3] , \rx_byte[4] , \rx_byte[5] , \rx_byte[6] , 
        \rx_byte[7] , fifo_write, GND, VCC;
    
    DFN1E1C0 \tx_hold_reg[5]  (.D(UART_control_0_TX[5]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[5]_net_1 ));
    DFN1E0C0 \rx_dout_reg[0]  (.D(\rx_dout[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[0]));
    top_0_COREUART_1_Rx_async_0s_1s_0s_1s_2s_3s make_RX (.rx_byte({
        \rx_byte[7] , \rx_byte[6] , \rx_byte[5] , \rx_byte[4] , 
        \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , \rx_byte[0] }), 
        .TX_0_c(TX_0_c), .RESETN_c(RESETN_c), .CLK_c(CLK_c), 
        .fifo_write(fifo_write), .baud_clock(baud_clock));
    DFN1E1C0 \tx_hold_reg[0]  (.D(UART_control_0_TX[0]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[0]_net_1 ));
    DFN1E0C0 \rx_dout_reg[3]  (.D(\rx_dout[3] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[3]));
    top_0_COREUART_1_fifo_256x8_0s_4294967295s \genblk2.tx_fifo  (
        .tx_hold_reg({\tx_hold_reg[7]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[0]_net_1 }), .tx_dout_reg({
        \tx_dout_reg[7] , \tx_dout_reg[6] , \tx_dout_reg[5] , 
        \tx_dout_reg[4] , \tx_dout_reg[3] , \tx_dout_reg[2] , 
        \tx_dout_reg[1] , \tx_dout_reg[0] }), .fifo_full_tx_i(
        fifo_full_tx_i), .fifo_empty_tx(fifo_empty_tx), .WEAP(WEAP), 
        .RESETN_c(RESETN_c), .fifo_write_tx(fifo_write_tx_net_1), 
        .CLK_c(CLK_c));
    DFN1E1C0 \tx_hold_reg[2]  (.D(UART_control_0_TX[2]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[2]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1E0P0 rx_dout_reg_empty (.D(rx_dout_reg4), .CLK(CLK_c), .PRE(
        RESETN_c), .E(rx_dout_reg_empty_1_sqmuxa), .Q(
        rx_dout_reg_empty_net_1));
    AOI1B rx_dout_reg_empty_RNO (.A(COREUART_1_RXRDY), .B(RX_state), 
        .C(rx_dout_reg4), .Y(rx_dout_reg_empty_1_sqmuxa));
    top_0_COREUART_1_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s make_TX (
        .tx_dout_reg({\tx_dout_reg[7] , \tx_dout_reg[6] , 
        \tx_dout_reg[5] , \tx_dout_reg[4] , \tx_dout_reg[3] , 
        \tx_dout_reg[2] , \tx_dout_reg[1] , \tx_dout_reg[0] }), 
        .TX_1_c(TX_1_c), .fifo_full_tx_i(fifo_full_tx_i), 
        .COREUART_1_TXRDY(COREUART_1_TXRDY), .fifo_empty_tx(
        fifo_empty_tx), .xmit_pulse(xmit_pulse), .RESETN_c(RESETN_c), 
        .CLK_c(CLK_c), .WEAP(WEAP));
    DFN1E1C0 \tx_hold_reg[6]  (.D(UART_control_0_TX[6]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[6]_net_1 ));
    XOR2 \rx_state_RNO[1]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_131_i));
    DFN1E0C0 \rx_dout_reg[4]  (.D(\rx_dout[4] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[4]));
    top_0_COREUART_1_Clock_gen_0s_0s make_CLOCK_GEN (.RESETN_c(
        RESETN_c), .CLK_c(CLK_c), .baud_clock(baud_clock), .xmit_pulse(
        xmit_pulse));
    DFN1C0 \rx_state[1]  (.D(N_131_i), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        \rx_state[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[7]  (.D(\rx_dout[7] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[7]));
    DFN1E0C0 \rx_dout_reg[1]  (.D(\rx_dout[1] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[1]));
    DFN1E0C0 \rx_dout_reg[5]  (.D(\rx_dout[5] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[5]));
    GND GND_i (.Y(GND));
    INV \genblk1.RXRDY_RNO  (.A(rx_dout_reg_empty_net_1), .Y(
        rx_dout_reg_empty_i));
    OR2B \rx_state_RNIBCDT[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(rx_dout_reg4));
    DFN1E0C0 \rx_dout_reg[6]  (.D(\rx_dout[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[6]));
    OA1B \rx_state_RNO[0]  (.A(\rx_state[1]_net_1 ), .B(next_rx_state4)
        , .C(\rx_state[0]_net_1 ), .Y(\rx_state_ns[0] ));
    DFN1C0 \rx_state[0]  (.D(\rx_state_ns[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\rx_state[0]_net_1 ));
    DFN1E1C0 \tx_hold_reg[7]  (.D(UART_control_0_TX[7]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[7]_net_1 ));
    DFN1C0 \genblk1.RXRDY  (.D(rx_dout_reg_empty_i), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(COREUART_1_RXRDY));
    top_0_COREUART_1_fifo_256x8_0s_4294967295s_0 \genblk3.rx_fifo  (
        .rx_state({\rx_state[1]_net_1 , \rx_state[0]_net_1 }), 
        .rx_byte({\rx_byte[7] , \rx_byte[6] , \rx_byte[5] , 
        \rx_byte[4] , \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , 
        \rx_byte[0] }), .rx_dout({\rx_dout[7] , \rx_dout[6] , 
        \rx_dout[5] , \rx_dout[4] , \rx_dout[3] , \rx_dout[2] , 
        \rx_dout[1] , \rx_dout[0] }), .next_rx_state4(next_rx_state4), 
        .fifo_write(fifo_write), .rx_dout_reg_empty(
        rx_dout_reg_empty_net_1), .RESETN_c(RESETN_c), .CLK_c(CLK_c));
    DFN1E1C0 \tx_hold_reg[3]  (.D(UART_control_0_TX[3]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[3]_net_1 ));
    DFN1P0 fifo_write_tx (.D(un1_wen_i), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(fifo_write_tx_net_1));
    DFN1E1C0 \tx_hold_reg[1]  (.D(UART_control_0_TX[1]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[2]  (.D(\rx_dout[2] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[2]));
    DFN1E1C0 \tx_hold_reg[4]  (.D(UART_control_0_TX[4]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNI441M), .Q(
        \tx_hold_reg[4]_net_1 ));
    
endmodule


module top_0_COREUART_0_Rx_async_0s_1s_0s_1s_2s_3s(
       rx_byte,
       TX_1_c,
       RESETN_c,
       CLK_c,
       fifo_write,
       baud_clock
    );
output [7:0] rx_byte;
input  TX_1_c;
input  RESETN_c;
input  CLK_c;
output fifo_write;
input  baud_clock;

    wire N_26, N_218, \receive_count[0]_net_1 , N_57, N_58, N_56, 
        \last_bit_0_i_a2_1[0] , \last_bit_0_i_a2_0[0] , N_163_1, 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , receive_count_e1_i_0, 
        \receive_count[1]_net_1 , receive_count_e2_i_0, 
        \receive_count[2]_net_1 , N_41, rx_byte_1_sqmuxa_0_a4_0_a2_0, 
        rx_byte_1_sqmuxa_1, \receive_count[3]_net_1 , 
        receive_count8_i_i_0_a2_0_0, clear_parity_en_9_0_a2_0, 
        \rx_bit_cnt[3]_net_1 , \rx_bit_cnt[2]_net_1 , rx_state19_NE_0, 
        \rx_bit_cnt[1]_net_1 , receive_count8_i_i_0_a2_0_4_1, 
        receive_count8_i_i_0_a2_0_4_0, m13_0, rx_m3_e_0, N_24, N_22, 
        N_31_mux, rx_state19_i, N_46_i, rx_byte_1_sqmuxa, 
        clear_parity_en_9, N_67, N_16, \rx_bit_cnt[0]_net_1 , N_14, 
        N_40, rx_N_7_mux, rx_bit_cnte, N_289, N_48_i, 
        \last_bit_RNO[0]_net_1 , \last_bit[0]_net_1 , N_20, N_36, 
        N_287, \samples[2]_net_1 , \samples[1]_net_1 , i5_mux, i6_mux, 
        N_19, i3_mux, N_25, N_277, N_23, \samples[0]_net_1 , N_42, 
        N_216, N_12, N_51, \rx_shift_11[6] , \rx_shift[7]_net_1 , 
        \rx_shift_11[5] , \rx_shift[6]_net_1 , \rx_shift_11[4] , 
        \rx_shift[5]_net_1 , \rx_shift_11[3] , \rx_shift[4]_net_1 , 
        \rx_shift_11[2] , \rx_shift[3]_net_1 , \rx_shift_11[1] , 
        \rx_shift[2]_net_1 , \rx_shift_11[0] , \rx_shift[1]_net_1 , 
        \rx_shift[0]_net_1 , GND, VCC;
    
    MX2A \rx_state_RNO_1[0]  (.A(rx_state19_i), .B(i5_mux), .S(
        \rx_state[1]_net_1 ), .Y(N_23));
    NOR2A \rx_shift_RNO[5]  (.A(\rx_shift[6]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[5] ));
    DFN1E1P0 \samples[0]  (.D(\samples[1]_net_1 ), .CLK(CLK_c), .PRE(
        RESETN_c), .E(baud_clock), .Q(\samples[0]_net_1 ));
    NOR3C \rx_state_RNO_2[0]  (.A(\rx_state[1]_net_1 ), .B(
        \receive_count[1]_net_1 ), .C(m13_0), .Y(N_31_mux));
    DFN1E1C0 \rx_shift[2]  (.D(\rx_shift_11[2] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[2]_net_1 ));
    NOR2A \rx_shift_RNO[3]  (.A(\rx_shift[4]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[3] ));
    DFN1E1C0 \rx_byte[0]  (.D(\rx_shift[0]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[0]));
    DFN1C0 \receive_count[1]  (.D(N_24), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[1]_net_1 ));
    NOR2B \rx_state_RNO_0[1]  (.A(baud_clock), .B(\rx_state[0]_net_1 ), 
        .Y(N_289));
    XOR2 \samples_RNIBA9T[2]  (.A(\samples[2]_net_1 ), .B(
        \samples[1]_net_1 ), .Y(N_287));
    DFN1E1C0 \rx_shift[7]  (.D(N_216), .CLK(CLK_c), .CLR(RESETN_c), .E(
        rx_bit_cnte), .Q(\rx_shift[7]_net_1 ));
    OR2B \rx_bit_cnt_RNIN9O3[1]  (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_40));
    NOR2A \receive_count_RNIL3QN[1]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_1));
    NOR3C \receive_count_RNI15S22[1]  (.A(\last_bit_0_i_a2_1[0] ), .B(
        \last_bit_0_i_a2_0[0] ), .C(N_163_1), .Y(N_56));
    NOR2B \receive_count_RNIP7QN[3]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[2]_net_1 ), .Y(rx_m3_e_0));
    OR3C fifo_write_RNO (.A(clear_parity_en_9_0_a2_0), .B(N_67), .C(
        rx_byte_1_sqmuxa_1), .Y(clear_parity_en_9));
    OR3 \rx_state_RNIK1U46[0]  (.A(N_57), .B(N_58), .C(N_56), .Y(N_218)
        );
    DFN1E1C0 \rx_shift[0]  (.D(\rx_shift_11[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[0]_net_1 ));
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
    DFN1C0 \receive_count[3]  (.D(N_20), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[3]_net_1 ));
    NOR2B \rx_state_RNI88821[0]  (.A(\rx_state[0]_net_1 ), .B(
        rx_byte_1_sqmuxa_1), .Y(rx_byte_1_sqmuxa_0_a4_0_a2_0));
    DFN1P0 fifo_write_inst_1 (.D(clear_parity_en_9), .CLK(CLK_c), .PRE(
        RESETN_c), .Q(fifo_write));
    DFN1E1C0 \rx_byte[4]  (.D(\rx_shift[4]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[4]));
    NOR2A \rx_shift_RNO[2]  (.A(\rx_shift[3]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[2] ));
    DFN1E1C0 \rx_bit_cnt[2]  (.D(N_14), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[2]_net_1 ));
    XOR2 \receive_count_RNO_0[2]  (.A(\receive_count[2]_net_1 ), .B(
        N_41), .Y(receive_count_e2_i_0));
    DFN1E1C0 \rx_bit_cnt[1]  (.D(N_16), .CLK(CLK_c), .CLR(RESETN_c), 
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
    DFN1E1P0 \samples[1]  (.D(\samples[2]_net_1 ), .CLK(CLK_c), .PRE(
        RESETN_c), .E(baud_clock), .Q(\samples[1]_net_1 ));
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
    DFN1E1C0 \rx_byte[1]  (.D(\rx_shift[1]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[1]));
    DFN1C0 \receive_count[2]  (.D(N_22), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[2]_net_1 ));
    NOR2A \receive_count_RNIN5QN[3]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(\last_bit_0_i_a2_0[0] ));
    NOR3C \rx_state_RNI15S22[0]  (.A(receive_count8_i_i_0_a2_0_4_0), 
        .B(receive_count8_i_i_0_a2_0_4_1), .C(
        receive_count8_i_i_0_a2_0_0), .Y(N_58));
    DFN1E1C0 \rx_state[1]  (.D(N_25), .CLK(CLK_c), .CLR(RESETN_c), .E(
        N_289), .Q(\rx_state[1]_net_1 ));
    NOR2 \rx_shift_RNO[7]  (.A(N_36), .B(N_163_1), .Y(N_216));
    DFN1E1C0 \rx_byte[6]  (.D(\rx_shift[6]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[6]));
    AOI1 \receive_count_RNO[1]  (.A(N_218), .B(baud_clock), .C(
        receive_count_e1_i_0), .Y(N_24));
    DFN1E1C0 \rx_shift[4]  (.D(\rx_shift_11[4] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[4]_net_1 ));
    OR3A \rx_bit_cnt_RNI7JK5[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(
        \rx_bit_cnt[2]_net_1 ), .C(\rx_bit_cnt[1]_net_1 ), .Y(
        rx_state19_NE_0));
    NOR2A \receive_count_RNIP7QN_0[3]  (.A(\receive_count[2]_net_1 ), 
        .B(\receive_count[3]_net_1 ), .Y(receive_count8_i_i_0_a2_0_4_0)
        );
    OA1 \receive_count_RNIMJSH2[1]  (.A(rx_N_7_mux), .B(N_163_1), .C(
        baud_clock), .Y(rx_bit_cnte));
    NOR2A \last_bit_RNO[0]  (.A(\last_bit[0]_net_1 ), .B(N_56), .Y(
        \last_bit_RNO[0]_net_1 ));
    NOR2 fifo_write_RNO_1 (.A(\rx_bit_cnt[1]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_67));
    DFN1E1C0 \rx_byte[7]  (.D(\rx_shift[7]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[7]));
    AOI1 \samples_RNI309U1[1]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[1]_net_1 ), .Y(
        i6_mux));
    DFN1E1C0 \rx_byte[3]  (.D(\rx_shift[3]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[3]));
    GND GND_i (.Y(GND));
    AOI1 \receive_count_RNO[3]  (.A(N_218), .B(baud_clock), .C(N_48_i), 
        .Y(N_20));
    DFN1E1C0 \rx_byte[2]  (.D(\rx_shift[2]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[2]));
    MX2C \samples_RNIG9RP4[0]  (.A(i6_mux), .B(N_19), .S(N_287), .Y(
        i5_mux));
    NOR2 \receive_count_RNIN5QN[1]  (.A(\receive_count[1]_net_1 ), .B(
        \receive_count[2]_net_1 ), .Y(\last_bit_0_i_a2_1[0] ));
    AX1E \receive_count_RNO_0[1]  (.A(baud_clock), .B(
        \receive_count[0]_net_1 ), .C(\receive_count[1]_net_1 ), .Y(
        receive_count_e1_i_0));
    AXOI4 \receive_count_RNO[0]  (.A(N_218), .B(baud_clock), .C(
        \receive_count[0]_net_1 ), .Y(N_26));
    DFN1E1C0 \rx_shift[6]  (.D(\rx_shift_11[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[6]_net_1 ));
    MX2C \rx_state_RNO[0]  (.A(i3_mux), .B(N_23), .S(
        \rx_state[0]_net_1 ), .Y(N_277));
    NOR2A \rx_shift_RNO[4]  (.A(\rx_shift[5]_net_1 ), .B(N_163_1), .Y(
        \rx_shift_11[4] ));
    DFN1E1C0 \rx_shift[1]  (.D(\rx_shift_11[1] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[1]_net_1 ));
    DFN1E1C0 \rx_shift[3]  (.D(\rx_shift_11[3] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[3]_net_1 ));
    DFN1E1C0 \rx_state[0]  (.D(N_277), .CLK(CLK_c), .CLR(RESETN_c), .E(
        baud_clock), .Q(\rx_state[0]_net_1 ));
    AOI1 \samples_RNI2V8U1[0]  (.A(receive_count8_i_i_0_a2_0_4_1), .B(
        receive_count8_i_i_0_a2_0_4_0), .C(\samples[0]_net_1 ), .Y(
        N_19));
    DFN1E1P0 \samples[2]  (.D(TX_1_c), .CLK(CLK_c), .PRE(RESETN_c), .E(
        baud_clock), .Q(\samples[2]_net_1 ));
    DFN1C0 \receive_count[0]  (.D(N_26), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\receive_count[0]_net_1 ));
    NOR2B \rx_state_RNIJP7J[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(receive_count8_i_i_0_a2_0_0));
    DFN1E1C0 \rx_byte[5]  (.D(\rx_shift[5]_net_1 ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_byte_1_sqmuxa), .Q(rx_byte[5]));
    NOR3C \receive_count_RNIEBKF1[1]  (.A(\receive_count[0]_net_1 ), 
        .B(\receive_count[1]_net_1 ), .C(rx_m3_e_0), .Y(rx_N_7_mux));
    DFN1E1C0 \rx_shift[5]  (.D(\rx_shift_11[5] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_bit_cnte), .Q(\rx_shift[5]_net_1 ));
    NOR2 \rx_state_RNIJP7J_0[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_163_1));
    DFN1E1C0 \rx_bit_cnt[0]  (.D(N_51), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[0]_net_1 ));
    XOR2 \last_bit_RNIS3UG[0]  (.A(\last_bit[0]_net_1 ), .B(
        \rx_bit_cnt[0]_net_1 ), .Y(N_46_i));
    OR2A \rx_bit_cnt_RNO_0[3]  (.A(\rx_bit_cnt[2]_net_1 ), .B(N_40), 
        .Y(N_42));
    NOR2A \samples_RNIIN5V1[0]  (.A(N_163_1), .B(N_36), .Y(N_57));
    DFN1P0 \last_bit[0]  (.D(\last_bit_RNO[0]_net_1 ), .CLK(CLK_c), 
        .PRE(RESETN_c), .Q(\last_bit[0]_net_1 ));
    NOR2B \rx_state_RNO_3[0]  (.A(\receive_count[3]_net_1 ), .B(
        \receive_count[0]_net_1 ), .Y(m13_0));
    XA1C \rx_bit_cnt_RNO[3]  (.A(\rx_bit_cnt[3]_net_1 ), .B(N_42), .C(
        N_163_1), .Y(N_12));
    DFN1E1C0 \rx_bit_cnt[3]  (.D(N_12), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(rx_bit_cnte), .Q(\rx_bit_cnt[3]_net_1 ));
    MX2C \rx_state_RNO_0[0]  (.A(N_56), .B(N_31_mux), .S(
        \receive_count[2]_net_1 ), .Y(i3_mux));
    XA1B \rx_bit_cnt_RNO[1]  (.A(\rx_bit_cnt[0]_net_1 ), .B(
        \rx_bit_cnt[1]_net_1 ), .C(N_163_1), .Y(N_16));
    
endmodule


module top_0_COREUART_0_fifo_256x8_pa3(
       tx_hold_reg,
       DO_0,
       fifo_write_tx,
       RESETN_c,
       WEAP,
       CLK_c,
       fifo_empty_tx,
       fifo_full_tx_i
    );
input  [7:0] tx_hold_reg;
output [7:0] DO_0;
input  fifo_write_tx;
input  RESETN_c;
input  WEAP;
input  CLK_c;
output fifo_empty_tx;
output fifo_full_tx_i;

    wire fifo_full_tx, AEMPTY, FIFOBLOCK0_FULL, FIFOBLOCK0_RD8, 
        FIFOBLOCK0_RD9, FIFOBLOCK0_RD10, FIFOBLOCK0_RD11, 
        FIFOBLOCK0_RD12, FIFOBLOCK0_RD13, FIFOBLOCK0_RD14, 
        FIFOBLOCK0_RD15, FIFOBLOCK0_RD16, FIFOBLOCK0_RD17, 
        top_0_COREUART_0_fifo_256x8_pa3_GND, 
        top_0_COREUART_0_fifo_256x8_pa3_VCC;
    
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(top_0_COREUART_0_fifo_256x8_pa3_GND), 
        .AEVAL10(top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL9(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL8(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL7(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL6(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL5(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL4(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL3(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AEVAL2(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL1(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AEVAL0(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL11(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL10(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL9(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL8(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL7(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL6(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL5(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL4(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL3(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .AFVAL2(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL1(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .AFVAL0(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD17(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD16(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD15(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD14(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD13(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD12(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD11(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD10(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD9(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD8(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WD7(tx_hold_reg[7]), 
        .WD6(tx_hold_reg[6]), .WD5(tx_hold_reg[5]), .WD4(
        tx_hold_reg[4]), .WD3(tx_hold_reg[3]), .WD2(tx_hold_reg[2]), 
        .WD1(tx_hold_reg[1]), .WD0(tx_hold_reg[0]), .WW0(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .WW1(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .WW2(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .RW0(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .RW1(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .RW2(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .RPIPE(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WEN(fifo_write_tx), 
        .REN(WEAP), .WBLK(top_0_COREUART_0_fifo_256x8_pa3_GND), .RBLK(
        top_0_COREUART_0_fifo_256x8_pa3_GND), .WCLK(CLK_c), .RCLK(
        CLK_c), .RESET(RESETN_c), .ESTOP(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .FSTOP(
        top_0_COREUART_0_fifo_256x8_pa3_VCC), .RD17(FIFOBLOCK0_RD17), 
        .RD16(FIFOBLOCK0_RD16), .RD15(FIFOBLOCK0_RD15), .RD14(
        FIFOBLOCK0_RD14), .RD13(FIFOBLOCK0_RD13), .RD12(
        FIFOBLOCK0_RD12), .RD11(FIFOBLOCK0_RD11), .RD10(
        FIFOBLOCK0_RD10), .RD9(FIFOBLOCK0_RD9), .RD8(FIFOBLOCK0_RD8), 
        .RD7(DO_0[7]), .RD6(DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), 
        .RD3(DO_0[3]), .RD2(DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), 
        .FULL(FIFOBLOCK0_FULL), .AFULL(fifo_full_tx), .EMPTY(
        fifo_empty_tx), .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(top_0_COREUART_0_fifo_256x8_pa3_VCC));
    GND GND_i (.Y(top_0_COREUART_0_fifo_256x8_pa3_GND));
    INV FIFOBLOCK0_RNI6S85 (.A(fifo_full_tx), .Y(fifo_full_tx_i));
    
endmodule


module top_0_COREUART_0_fifo_256x8_0s_4294967295s(
       tx_hold_reg,
       tx_dout_reg,
       fifo_full_tx_i,
       fifo_empty_tx,
       WEAP,
       RESETN_c,
       fifo_write_tx,
       CLK_c
    );
input  [7:0] tx_hold_reg;
output [7:0] tx_dout_reg;
output fifo_full_tx_i;
output fifo_empty_tx;
input  WEAP;
input  RESETN_c;
input  fifo_write_tx;
input  CLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(CLK_c), .Q(tx_dout_reg[2]));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(CLK_c), .Q(tx_dout_reg[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(CLK_c), .Q(tx_dout_reg[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(CLK_c), .Q(tx_dout_reg[1]));
    VCC VCC_i (.Y(VCC));
    top_0_COREUART_0_fifo_256x8_pa3 top_0_COREUART_0_fifo_256x8_pa3 (
        .tx_hold_reg({tx_hold_reg[7], tx_hold_reg[6], tx_hold_reg[5], 
        tx_hold_reg[4], tx_hold_reg[3], tx_hold_reg[2], tx_hold_reg[1], 
        tx_hold_reg[0]}), .DO_0({\DO_0[7] , \DO_0[6] , \DO_0[5] , 
        \DO_0[4] , \DO_0[3] , \DO_0[2] , \DO_0[1] , \DO_0[0] }), 
        .fifo_write_tx(fifo_write_tx), .RESETN_c(RESETN_c), .WEAP(WEAP)
        , .CLK_c(CLK_c), .fifo_empty_tx(fifo_empty_tx), 
        .fifo_full_tx_i(fifo_full_tx_i));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(CLK_c), .Q(tx_dout_reg[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(CLK_c), .Q(tx_dout_reg[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(CLK_c), .Q(tx_dout_reg[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(CLK_c), .Q(tx_dout_reg[6]));
    
endmodule


module top_0_COREUART_0_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s(
       tx_dout_reg,
       TX_0_c,
       fifo_full_tx_i,
       COREUART_0_TXRDY,
       fifo_empty_tx,
       xmit_pulse,
       RESETN_c,
       CLK_c,
       WEAP
    );
input  [7:0] tx_dout_reg;
output TX_0_c;
input  fifo_full_tx_i;
output COREUART_0_TXRDY;
input  fifo_empty_tx;
input  xmit_pulse;
input  RESETN_c;
input  CLK_c;
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
    DFN1P0 txrdy_int (.D(fifo_full_tx_i), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(COREUART_0_TXRDY));
    DFN1C0 \xmit_state[3]  (.D(\xmit_state_RNO[3]_net_1 ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\xmit_state[3]_net_1 ));
    DFN1E1C0 \tx_byte[0]  (.D(tx_dout_reg[0]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[0]_net_1 ));
    DFN1P0 \xmit_state[0]  (.D(N_59_mux), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(\xmit_state[0]_net_1 ));
    DFN1E1C0 \tx_byte[4]  (.D(tx_dout_reg[4]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[4]_net_1 ));
    INV \xmit_state_RNO[1]  (.A(\xmit_state[6]_net_1 ), .Y(
        \xmit_state_i[6] ));
    XA1 \xmit_bit_sel_RNO[1]  (.A(\xmit_bit_sel[0]_net_1 ), .B(
        \xmit_bit_sel[1]_net_1 ), .C(\xmit_state[3]_net_1 ), .Y(N_19));
    VCC VCC_i (.Y(VCC));
    NOR2B \xmit_bit_sel_RNI91PN[1]  (.A(\xmit_bit_sel[1]_net_1 ), .B(
        \xmit_bit_sel[0]_net_1 ), .Y(N_8_0));
    DFN1E1C0 \tx_byte[5]  (.D(tx_dout_reg[5]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[5]_net_1 ));
    NOR2 tx_RNO_0 (.A(N_52), .B(\xmit_bit_sel[3]_net_1 ), .Y(N_53));
    MX2C tx_RNO_7 (.A(\tx_byte[6]_net_1 ), .B(\tx_byte[7]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_50));
    DFN1E1C0 \xmit_state[5]  (.D(N_25), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(xmit_pulse), .Q(\xmit_state[5]_net_1 ));
    MX2A tx_RNO (.A(\xmit_state[2]_net_1 ), .B(N_53), .S(
        \xmit_state[3]_net_1 ), .Y(tx_4));
    NOR2B \xmit_bit_sel_RNIFJL31[2]  (.A(N_8_0), .B(
        \xmit_bit_sel[2]_net_1 ), .Y(N_9_0));
    DFN1C0 \xmit_state[2]  (.D(N_57_mux), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(\xmit_state[2]_net_1 ));
    NOR2A \xmit_bit_sel_RNIM6IF1[3]  (.A(N_9_0), .B(
        \xmit_bit_sel[3]_net_1 ), .Y(N_24));
    DFN1E1C0 \xmit_bit_sel[3]  (.D(N_11_0), .CLK(CLK_c), .CLR(RESETN_c)
        , .E(xmit_pulse), .Q(\xmit_bit_sel[3]_net_1 ));
    MX2C tx_RNO_5 (.A(\tx_byte[2]_net_1 ), .B(\tx_byte[3]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_43));
    NOR2B \xmit_state_RNO_0[0]  (.A(\xmit_state[5]_net_1 ), .B(
        xmit_pulse), .Y(N_59));
    MX2 tx_RNO_2 (.A(N_40), .B(N_43), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_44));
    MX2C tx_RNO_6 (.A(\tx_byte[4]_net_1 ), .B(\tx_byte[5]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_47));
    DFN1E1C0 \xmit_bit_sel[2]  (.D(N_15_0), .CLK(CLK_c), .CLR(RESETN_c)
        , .E(xmit_pulse), .Q(\xmit_bit_sel[2]_net_1 ));
    DFN1E0P0 tx (.D(tx_4), .CLK(CLK_c), .PRE(RESETN_c), .E(N_149), .Q(
        TX_0_c));
    INV fifo_read_en0_RNO (.A(\xmit_state_ns[6] ), .Y(
        \xmit_state_ns_i[6] ));
    DFN1E1C0 \tx_byte[3]  (.D(tx_dout_reg[3]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[3]_net_1 ));
    DFN1E1C0 \tx_byte[7]  (.D(tx_dout_reg[7]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[7]_net_1 ));
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
    DFN1E1C0 \tx_byte[6]  (.D(tx_dout_reg[6]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[6]_net_1 ));
    DFN1E1C0 \xmit_bit_sel[1]  (.D(N_19), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(xmit_pulse), .Q(\xmit_bit_sel[1]_net_1 ));
    MX2 tx_RNO_3 (.A(N_47), .B(N_50), .S(\xmit_bit_sel[1]_net_1 ), .Y(
        N_51));
    DFN1P0 \xmit_state[1]  (.D(\xmit_state_i[6] ), .CLK(CLK_c), .PRE(
        RESETN_c), .Q(\xmit_state_i_0[1] ));
    DFN1C0 \xmit_bit_sel[0]  (.D(xmit_bit_sel_e0), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_bit_sel[0]_net_1 ));
    AO1C \xmit_state_RNO[2]  (.A(xmit_pulse), .B(\xmit_state[2]_net_1 )
        , .C(\xmit_state_i_0[1] ), .Y(N_57_mux));
    MX2C tx_RNO_4 (.A(\tx_byte[0]_net_1 ), .B(\tx_byte[1]_net_1 ), .S(
        \xmit_bit_sel[0]_net_1 ), .Y(N_40));
    DFN1E1C0 \tx_byte[2]  (.D(tx_dout_reg[2]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[2]_net_1 ));
    NOR2A \xmit_state_RNI9S86[0]  (.A(\xmit_state[0]_net_1 ), .B(
        fifo_empty_tx), .Y(\xmit_state_ns[6] ));
    NOR3A \xmit_state_RNI43RS[6]  (.A(N_55), .B(\xmit_state[0]_net_1 ), 
        .C(\xmit_state[6]_net_1 ), .Y(N_149));
    NOR2B \xmit_state_RNIPTQQ[2]  (.A(\xmit_state[2]_net_1 ), .B(
        xmit_pulse), .Y(N_28));
    DFI1E0P0 fifo_read_en0 (.D(\xmit_state_ns_i[6] ), .CLK(CLK_c), .E(
        N_149), .PRE(RESETN_c), .QN(WEAP));
    OA1C \xmit_state_RNO_0[3]  (.A(\xmit_state[3]_net_1 ), .B(N_24), 
        .C(\xmit_state[2]_net_1 ), .Y(N_30));
    MX2 tx_RNO_1 (.A(N_44), .B(N_51), .S(\xmit_bit_sel[2]_net_1 ), .Y(
        N_52));
    DFN1E1C0 \tx_byte[1]  (.D(tx_dout_reg[1]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(N_28), .Q(\tx_byte[1]_net_1 ));
    XA1 \xmit_bit_sel_RNO[3]  (.A(\xmit_bit_sel[3]_net_1 ), .B(N_9_0), 
        .C(\xmit_state[3]_net_1 ), .Y(N_11_0));
    DFN1C0 \xmit_state[6]  (.D(\xmit_state_ns[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_state[6]_net_1 ));
    
endmodule


module top_0_COREUART_0_Clock_gen_0s_0s(
       RESETN_c,
       CLK_c,
       baud_clock,
       xmit_pulse
    );
input  RESETN_c;
input  CLK_c;
output baud_clock;
output xmit_pulse;

    wire baud_cntr_25_0, \baud_cntr[11] , baud_cntr_c10, 
        \baud_cntr_RNO[12] , baud_cntr8, \baud_cntr[12] , 
        \baud_cntr[9] , baud_cntr_c8, \baud_cntr[10] , baud_cntr8_10_2, 
        baud_cntr_c3, \baud_cntr[8] , baud_cntr_c2, \baud_cntr[3] , 
        \baud_cntr[1] , \baud_cntr[0] , \baud_cntr[2] , 
        \baud_cntr_i[0] , baud_cntr_15_0, \baud_cntr[6] , baud_cntr_c5, 
        baud_cntr8_3, baud_cntr8_2, baud_cntr8_10_1, \baud_cntr[7] , 
        \baud_cntr[5] , \baud_cntr[4] , xmit_clock5, 
        \xmit_cntr[2]_net_1 , \xmit_cntr[3]_net_1 , xmit_cntr_c1, 
        \baud_cntr_RNO[8] , N_105_tz, \baud_cntr_RNO[6] , 
        \baud_cntr_RNO[2] , N_99_tz, xmit_clock_net_1, 
        \baud_cntr_RNO[11] , \baud_cntr_RNO[10] , N_86, 
        \baud_cntr_RNO[9] , \baud_cntr_RNO[7] , \baud_cntr_RNO[5] , 
        baud_cntr_c4, \baud_cntr_RNO[4] , \baud_cntr_RNO[3] , 
        \baud_cntr_RNO[1] , \xmit_cntr[1]_net_1 , \xmit_cntr[0]_net_1 , 
        xmit_cntr_n3, xmit_cntr_n2, xmit_cntr_n1, xmit_cntr_e0, GND, 
        VCC;
    
    NOR3 \genblk1.baud_cntr_RNIUH201[12]  (.A(\baud_cntr[8] ), .B(
        \baud_cntr[12] ), .C(\baud_cntr[9] ), .Y(baud_cntr8_2));
    DFN1C0 \genblk1.baud_cntr[4]  (.D(\baud_cntr_RNO[4] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[4] ));
    AX1C \xmit_cntr_RNO[3]  (.A(\xmit_cntr[2]_net_1 ), .B(xmit_cntr_c1)
        , .C(\xmit_cntr[3]_net_1 ), .Y(xmit_cntr_n3));
    DFN1C0 \genblk1.baud_cntr[1]  (.D(\baud_cntr_RNO[1] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[1] ));
    OR2 \genblk1.baud_cntr_RNI339T2[5]  (.A(baud_cntr_c4), .B(
        \baud_cntr[5] ), .Y(baud_cntr_c5));
    DFN1C0 \genblk1.baud_cntr[3]  (.D(\baud_cntr_RNO[3] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[3] ));
    OR3 \genblk1.baud_cntr_RNI8SES4[10]  (.A(\baud_cntr[9] ), .B(
        baud_cntr_c8), .C(\baud_cntr[10] ), .Y(baud_cntr_c10));
    DFN1E1C0 \xmit_cntr[3]  (.D(xmit_cntr_n3), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[3]_net_1 ));
    AX1D \genblk1.baud_cntr_RNO_0[2]  (.A(\baud_cntr[1] ), .B(
        \baud_cntr[0] ), .C(\baud_cntr[2] ), .Y(N_99_tz));
    XOR2 \xmit_cntr_RNO[2]  (.A(xmit_cntr_c1), .B(\xmit_cntr[2]_net_1 )
        , .Y(xmit_cntr_n2));
    AX1B \genblk1.baud_cntr_RNO[3]  (.A(baud_cntr_c2), .B(baud_cntr8), 
        .C(\baud_cntr[3] ), .Y(\baud_cntr_RNO[3] ));
    DFN1C0 \genblk1.baud_cntr[9]  (.D(\baud_cntr_RNO[9] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[9] ));
    DFN1C0 \genblk1.baud_clock_int  (.D(baud_cntr8), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(baud_clock));
    OR2A \genblk1.baud_cntr_RNO[2]  (.A(N_99_tz), .B(baud_cntr8), .Y(
        \baud_cntr_RNO[2] ));
    VCC VCC_i (.Y(VCC));
    OR2 \genblk1.baud_cntr_RNI0GND2[4]  (.A(baud_cntr_c3), .B(
        \baud_cntr[4] ), .Y(baud_cntr_c4));
    NOR3A \genblk1.baud_cntr_RNIEE6U1[7]  (.A(baud_cntr8_10_1), .B(
        \baud_cntr[6] ), .C(\baud_cntr[7] ), .Y(baud_cntr8_10_2));
    NOR3C xmit_clock_RNO (.A(\xmit_cntr[2]_net_1 ), .B(
        \xmit_cntr[3]_net_1 ), .C(xmit_cntr_c1), .Y(xmit_clock5));
    AX1B \genblk1.baud_cntr_RNO[9]  (.A(baud_cntr_c8), .B(baud_cntr8), 
        .C(\baud_cntr[9] ), .Y(\baud_cntr_RNO[9] ));
    OR3A \genblk1.baud_cntr_RNII2UB4[8]  (.A(baud_cntr8_10_2), .B(
        baud_cntr_c3), .C(\baud_cntr[8] ), .Y(baud_cntr_c8));
    INV \genblk1.baud_cntr_RNO[0]  (.A(\baud_cntr[0] ), .Y(
        \baud_cntr_i[0] ));
    XOR2 \xmit_cntr_RNO[1]  (.A(\xmit_cntr[0]_net_1 ), .B(
        \xmit_cntr[1]_net_1 ), .Y(xmit_cntr_n1));
    AX1B \genblk1.baud_cntr_RNO[5]  (.A(baud_cntr_c4), .B(baud_cntr8), 
        .C(\baud_cntr[5] ), .Y(\baud_cntr_RNO[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[7]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .Y(baud_cntr_15_0));
    DFN1C0 \genblk1.baud_cntr[7]  (.D(\baud_cntr_RNO[7] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[7] ));
    DFN1C0 \genblk1.baud_cntr[5]  (.D(\baud_cntr_RNO[5] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[5] ));
    OR2 \genblk1.baud_cntr_RNO_0[12]  (.A(\baud_cntr[11] ), .B(
        baud_cntr_c10), .Y(baud_cntr_25_0));
    DFN1C0 \genblk1.baud_cntr[8]  (.D(\baud_cntr_RNO[8] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[8] ));
    GND GND_i (.Y(GND));
    DFN1C0 \genblk1.baud_cntr[0]  (.D(\baud_cntr_i[0] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[0] ));
    AX1A \genblk1.baud_cntr_RNO_0[8]  (.A(baud_cntr_c3), .B(
        baud_cntr8_10_2), .C(\baud_cntr[8] ), .Y(N_105_tz));
    OR3 \genblk1.baud_cntr_RNO_0[10]  (.A(\baud_cntr[9] ), .B(
        baud_cntr_c8), .C(baud_cntr8), .Y(N_86));
    NOR3A \genblk1.baud_cntr_RNITN021[10]  (.A(baud_cntr8_2), .B(
        \baud_cntr[10] ), .C(\baud_cntr[11] ), .Y(baud_cntr8_3));
    OR2A \genblk1.baud_cntr_RNO[8]  (.A(N_105_tz), .B(baud_cntr8), .Y(
        \baud_cntr_RNO[8] ));
    XOR2 \xmit_cntr_RNO[0]  (.A(\xmit_cntr[0]_net_1 ), .B(baud_clock), 
        .Y(xmit_cntr_e0));
    AX1B \genblk1.baud_cntr_RNO[7]  (.A(baud_cntr8), .B(baud_cntr_15_0)
        , .C(\baud_cntr[7] ), .Y(\baud_cntr_RNO[7] ));
    XO1A \genblk1.baud_cntr_RNO[6]  (.A(\baud_cntr[6] ), .B(
        baud_cntr_c5), .C(baud_cntr8), .Y(\baud_cntr_RNO[6] ));
    DFN1E1C0 \xmit_cntr[2]  (.D(xmit_cntr_n2), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[2]_net_1 ));
    DFN1C0 \genblk1.baud_cntr[10]  (.D(\baud_cntr_RNO[10] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[10] ));
    NOR3B \genblk1.baud_cntr_RNI94DU4[10]  (.A(baud_cntr8_10_2), .B(
        baud_cntr8_3), .C(baud_cntr_c3), .Y(baud_cntr8));
    DFN1C0 \genblk1.baud_cntr[6]  (.D(\baud_cntr_RNO[6] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[6] ));
    DFN1E1C0 xmit_clock (.D(xmit_clock5), .CLK(CLK_c), .CLR(RESETN_c), 
        .E(baud_clock), .Q(xmit_clock_net_1));
    NOR2 \genblk1.baud_cntr_RNI553V[4]  (.A(\baud_cntr[5] ), .B(
        \baud_cntr[4] ), .Y(baud_cntr8_10_1));
    NOR2B xmit_clock_RNIKRQP (.A(baud_clock), .B(xmit_clock_net_1), .Y(
        xmit_pulse));
    AX1B \genblk1.baud_cntr_RNO[12]  (.A(baud_cntr8), .B(
        baud_cntr_25_0), .C(\baud_cntr[12] ), .Y(\baud_cntr_RNO[12] ));
    OR3 \genblk1.baud_cntr_RNITCKE1[2]  (.A(\baud_cntr[1] ), .B(
        \baud_cntr[0] ), .C(\baud_cntr[2] ), .Y(baud_cntr_c2));
    DFN1C0 \genblk1.baud_cntr[12]  (.D(\baud_cntr_RNO[12] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[12] ));
    DFN1E1C0 \xmit_cntr[1]  (.D(xmit_cntr_n1), .CLK(CLK_c), .CLR(
        RESETN_c), .E(baud_clock), .Q(\xmit_cntr[1]_net_1 ));
    AX1B \genblk1.baud_cntr_RNO[4]  (.A(baud_cntr_c3), .B(baud_cntr8), 
        .C(\baud_cntr[4] ), .Y(\baud_cntr_RNO[4] ));
    OR2 \genblk1.baud_cntr_RNIUT5U1[3]  (.A(baud_cntr_c2), .B(
        \baud_cntr[3] ), .Y(baud_cntr_c3));
    DFN1C0 \genblk1.baud_cntr[2]  (.D(\baud_cntr_RNO[2] ), .CLK(CLK_c), 
        .CLR(RESETN_c), .Q(\baud_cntr[2] ));
    XNOR2 \genblk1.baud_cntr_RNO[10]  (.A(N_86), .B(\baud_cntr[10] ), 
        .Y(\baud_cntr_RNO[10] ));
    DFN1C0 \xmit_cntr[0]  (.D(xmit_cntr_e0), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\xmit_cntr[0]_net_1 ));
    NOR2B \xmit_cntr_RNI5MAC[1]  (.A(\xmit_cntr[1]_net_1 ), .B(
        \xmit_cntr[0]_net_1 ), .Y(xmit_cntr_c1));
    DFN1C0 \genblk1.baud_cntr[11]  (.D(\baud_cntr_RNO[11] ), .CLK(
        CLK_c), .CLR(RESETN_c), .Q(\baud_cntr[11] ));
    AX1B \genblk1.baud_cntr_RNO[11]  (.A(baud_cntr_c10), .B(baud_cntr8)
        , .C(\baud_cntr[11] ), .Y(\baud_cntr_RNO[11] ));
    AX1B \genblk1.baud_cntr_RNO[1]  (.A(\baud_cntr[0] ), .B(baud_cntr8)
        , .C(\baud_cntr[1] ), .Y(\baud_cntr_RNO[1] ));
    
endmodule


module top_0_COREUART_0_fifo_256x8_pa3_0(
       rx_byte,
       DO_0,
       rx_state,
       RESETN_c,
       CLK_c,
       rx_dout_reg_empty,
       fifo_write,
       next_rx_state4
    );
input  [7:0] rx_byte;
output [7:0] DO_0;
input  [1:0] rx_state;
input  RESETN_c;
input  CLK_c;
input  rx_dout_reg_empty;
input  fifo_write;
output next_rx_state4;

    wire WEAP, fifo_write_rx_1, fifo_full_rx, fifo_empty_rx, AEMPTY, 
        FIFOBLOCK0_FULL_0, FIFOBLOCK0_RD8_0, FIFOBLOCK0_RD9_0, 
        FIFOBLOCK0_RD10_0, FIFOBLOCK0_RD11_0, FIFOBLOCK0_RD12_0, 
        FIFOBLOCK0_RD13_0, FIFOBLOCK0_RD14_0, FIFOBLOCK0_RD15_0, 
        FIFOBLOCK0_RD16_0, FIFOBLOCK0_RD17_0, 
        top_0_COREUART_0_fifo_256x8_pa3_0_GND, 
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC;
    
    OR2 FIFOBLOCK0_RNO_0 (.A(fifo_full_rx), .B(fifo_write), .Y(
        fifo_write_rx_1));
    FIFO4K18 FIFOBLOCK0 (.AEVAL11(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL10(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL9(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL8(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL7(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL6(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL5(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL4(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL3(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AEVAL2(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL1(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AEVAL0(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL11(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL10(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL9(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL8(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL7(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL6(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL5(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL4(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL3(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .AFVAL2(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL1(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .AFVAL0(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD17(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD16(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD15(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD14(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD13(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD12(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD11(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD10(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD9(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD8(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WD7(rx_byte[7]), .WD6(
        rx_byte[6]), .WD5(rx_byte[5]), .WD4(rx_byte[4]), .WD3(
        rx_byte[3]), .WD2(rx_byte[2]), .WD1(rx_byte[1]), .WD0(
        rx_byte[0]), .WW0(top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .WW1(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .WW2(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .RW0(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RW1(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RW2(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .RPIPE(
        top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WEN(fifo_write_rx_1), 
        .REN(WEAP), .WBLK(top_0_COREUART_0_fifo_256x8_pa3_0_GND), 
        .RBLK(top_0_COREUART_0_fifo_256x8_pa3_0_GND), .WCLK(CLK_c), 
        .RCLK(CLK_c), .RESET(RESETN_c), .ESTOP(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .FSTOP(
        top_0_COREUART_0_fifo_256x8_pa3_0_VCC), .RD17(
        FIFOBLOCK0_RD17_0), .RD16(FIFOBLOCK0_RD16_0), .RD15(
        FIFOBLOCK0_RD15_0), .RD14(FIFOBLOCK0_RD14_0), .RD13(
        FIFOBLOCK0_RD13_0), .RD12(FIFOBLOCK0_RD12_0), .RD11(
        FIFOBLOCK0_RD11_0), .RD10(FIFOBLOCK0_RD10_0), .RD9(
        FIFOBLOCK0_RD9_0), .RD8(FIFOBLOCK0_RD8_0), .RD7(DO_0[7]), .RD6(
        DO_0[6]), .RD5(DO_0[5]), .RD4(DO_0[4]), .RD3(DO_0[3]), .RD2(
        DO_0[2]), .RD1(DO_0[1]), .RD0(DO_0[0]), .FULL(
        FIFOBLOCK0_FULL_0), .AFULL(fifo_full_rx), .EMPTY(fifo_empty_rx)
        , .AEMPTY(AEMPTY));
    VCC VCC_i (.Y(top_0_COREUART_0_fifo_256x8_pa3_0_VCC));
    NOR3A FIFOBLOCK0_RNO (.A(next_rx_state4), .B(rx_state[1]), .C(
        rx_state[0]), .Y(WEAP));
    GND GND_i (.Y(top_0_COREUART_0_fifo_256x8_pa3_0_GND));
    NOR2A FIFOBLOCK0_RNINT3K (.A(rx_dout_reg_empty), .B(fifo_empty_rx), 
        .Y(next_rx_state4));
    
endmodule


module top_0_COREUART_0_fifo_256x8_0s_4294967295s_0(
       rx_state,
       rx_byte,
       rx_dout,
       next_rx_state4,
       fifo_write,
       rx_dout_reg_empty,
       RESETN_c,
       CLK_c
    );
input  [1:0] rx_state;
input  [7:0] rx_byte;
output [7:0] rx_dout;
output next_rx_state4;
input  fifo_write;
input  rx_dout_reg_empty;
input  RESETN_c;
input  CLK_c;

    wire \DO_0[0] , \DO_0[1] , \DO_0[2] , \DO_0[3] , \DO_0[4] , 
        \DO_0[5] , \DO_0[6] , \DO_0[7] , GND, VCC;
    
    DFN1 \DO[2]  (.D(\DO_0[2] ), .CLK(CLK_c), .Q(rx_dout[2]));
    DFN1 \DO[7]  (.D(\DO_0[7] ), .CLK(CLK_c), .Q(rx_dout[7]));
    DFN1 \DO[3]  (.D(\DO_0[3] ), .CLK(CLK_c), .Q(rx_dout[3]));
    DFN1 \DO[1]  (.D(\DO_0[1] ), .CLK(CLK_c), .Q(rx_dout[1]));
    VCC VCC_i (.Y(VCC));
    top_0_COREUART_0_fifo_256x8_pa3_0 top_0_COREUART_0_fifo_256x8_pa3 
        (.rx_byte({rx_byte[7], rx_byte[6], rx_byte[5], rx_byte[4], 
        rx_byte[3], rx_byte[2], rx_byte[1], rx_byte[0]}), .DO_0({
        \DO_0[7] , \DO_0[6] , \DO_0[5] , \DO_0[4] , \DO_0[3] , 
        \DO_0[2] , \DO_0[1] , \DO_0[0] }), .rx_state({rx_state[1], 
        rx_state[0]}), .RESETN_c(RESETN_c), .CLK_c(CLK_c), 
        .rx_dout_reg_empty(rx_dout_reg_empty), .fifo_write(fifo_write), 
        .next_rx_state4(next_rx_state4));
    DFN1 \DO[5]  (.D(\DO_0[5] ), .CLK(CLK_c), .Q(rx_dout[5]));
    DFN1 \DO[4]  (.D(\DO_0[4] ), .CLK(CLK_c), .Q(rx_dout[4]));
    GND GND_i (.Y(GND));
    DFN1 \DO[0]  (.D(\DO_0[0] ), .CLK(CLK_c), .Q(rx_dout[0]));
    DFN1 \DO[6]  (.D(\DO_0[6] ), .CLK(CLK_c), .Q(rx_dout[6]));
    
endmodule


module top_0_COREUART_0_COREUART_1s_1s_0s_15s_0s_0s(
       rx_dout_reg,
       a3p1000_test_0_TX,
       TX_1_c,
       COREUART_0_TXRDY,
       TX_0_c,
       TX_state_RNIBAEH,
       un1_wen_i,
       RESETN_c,
       CLK_c,
       COREUART_0_RXRDY
    );
output [7:0] rx_dout_reg;
input  [7:0] a3p1000_test_0_TX;
input  TX_1_c;
output COREUART_0_TXRDY;
output TX_0_c;
input  TX_state_RNIBAEH;
input  un1_wen_i;
input  RESETN_c;
input  CLK_c;
output COREUART_0_RXRDY;

    wire rx_dout_reg_empty_i, rx_dout_reg_empty_net_1, N_131_i, 
        \rx_state[0]_net_1 , \rx_state[1]_net_1 , \rx_state_ns[0] , 
        next_rx_state4, rx_dout_reg4, rx_dout_reg_empty_1_sqmuxa, 
        fifo_write_tx_net_1, \tx_hold_reg[0]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[7]_net_1 , \rx_dout[0] , \rx_dout[1] , 
        \rx_dout[2] , \rx_dout[3] , \rx_dout[4] , \rx_dout[5] , 
        \rx_dout[6] , \rx_dout[7] , baud_clock, xmit_pulse, 
        \tx_dout_reg[0] , \tx_dout_reg[1] , \tx_dout_reg[2] , 
        \tx_dout_reg[3] , \tx_dout_reg[4] , \tx_dout_reg[5] , 
        \tx_dout_reg[6] , \tx_dout_reg[7] , fifo_full_tx_i, 
        fifo_empty_tx, WEAP, \rx_byte[0] , \rx_byte[1] , \rx_byte[2] , 
        \rx_byte[3] , \rx_byte[4] , \rx_byte[5] , \rx_byte[6] , 
        \rx_byte[7] , fifo_write, GND, VCC;
    
    DFN1E1C0 \tx_hold_reg[5]  (.D(a3p1000_test_0_TX[5]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[5]_net_1 ));
    DFN1E0C0 \rx_dout_reg[0]  (.D(\rx_dout[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[0]));
    top_0_COREUART_0_Rx_async_0s_1s_0s_1s_2s_3s make_RX (.rx_byte({
        \rx_byte[7] , \rx_byte[6] , \rx_byte[5] , \rx_byte[4] , 
        \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , \rx_byte[0] }), 
        .TX_1_c(TX_1_c), .RESETN_c(RESETN_c), .CLK_c(CLK_c), 
        .fifo_write(fifo_write), .baud_clock(baud_clock));
    DFN1E1C0 \tx_hold_reg[0]  (.D(a3p1000_test_0_TX[0]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[0]_net_1 ));
    DFN1E0C0 \rx_dout_reg[3]  (.D(\rx_dout[3] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[3]));
    top_0_COREUART_0_fifo_256x8_0s_4294967295s \genblk2.tx_fifo  (
        .tx_hold_reg({\tx_hold_reg[7]_net_1 , \tx_hold_reg[6]_net_1 , 
        \tx_hold_reg[5]_net_1 , \tx_hold_reg[4]_net_1 , 
        \tx_hold_reg[3]_net_1 , \tx_hold_reg[2]_net_1 , 
        \tx_hold_reg[1]_net_1 , \tx_hold_reg[0]_net_1 }), .tx_dout_reg({
        \tx_dout_reg[7] , \tx_dout_reg[6] , \tx_dout_reg[5] , 
        \tx_dout_reg[4] , \tx_dout_reg[3] , \tx_dout_reg[2] , 
        \tx_dout_reg[1] , \tx_dout_reg[0] }), .fifo_full_tx_i(
        fifo_full_tx_i), .fifo_empty_tx(fifo_empty_tx), .WEAP(WEAP), 
        .RESETN_c(RESETN_c), .fifo_write_tx(fifo_write_tx_net_1), 
        .CLK_c(CLK_c));
    DFN1E1C0 \tx_hold_reg[2]  (.D(a3p1000_test_0_TX[2]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[2]_net_1 ));
    VCC VCC_i (.Y(VCC));
    DFN1E0P0 rx_dout_reg_empty (.D(rx_dout_reg4), .CLK(CLK_c), .PRE(
        RESETN_c), .E(rx_dout_reg_empty_1_sqmuxa), .Q(
        rx_dout_reg_empty_net_1));
    NOR2A rx_dout_reg_empty_RNO (.A(rx_dout_reg4), .B(COREUART_0_RXRDY)
        , .Y(rx_dout_reg_empty_1_sqmuxa));
    OR2B \rx_state_RNI9K81[0]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(rx_dout_reg4));
    top_0_COREUART_0_Tx_async_0s_1s_0s_1s_2s_3s_4s_5s_6s make_TX (
        .tx_dout_reg({\tx_dout_reg[7] , \tx_dout_reg[6] , 
        \tx_dout_reg[5] , \tx_dout_reg[4] , \tx_dout_reg[3] , 
        \tx_dout_reg[2] , \tx_dout_reg[1] , \tx_dout_reg[0] }), 
        .TX_0_c(TX_0_c), .fifo_full_tx_i(fifo_full_tx_i), 
        .COREUART_0_TXRDY(COREUART_0_TXRDY), .fifo_empty_tx(
        fifo_empty_tx), .xmit_pulse(xmit_pulse), .RESETN_c(RESETN_c), 
        .CLK_c(CLK_c), .WEAP(WEAP));
    DFN1E1C0 \tx_hold_reg[6]  (.D(a3p1000_test_0_TX[6]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[6]_net_1 ));
    XOR2 \rx_state_RNO[1]  (.A(\rx_state[0]_net_1 ), .B(
        \rx_state[1]_net_1 ), .Y(N_131_i));
    DFN1E0C0 \rx_dout_reg[4]  (.D(\rx_dout[4] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[4]));
    top_0_COREUART_0_Clock_gen_0s_0s make_CLOCK_GEN (.RESETN_c(
        RESETN_c), .CLK_c(CLK_c), .baud_clock(baud_clock), .xmit_pulse(
        xmit_pulse));
    DFN1C0 \rx_state[1]  (.D(N_131_i), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        \rx_state[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[7]  (.D(\rx_dout[7] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[7]));
    DFN1E0C0 \rx_dout_reg[1]  (.D(\rx_dout[1] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[1]));
    DFN1E0C0 \rx_dout_reg[5]  (.D(\rx_dout[5] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[5]));
    GND GND_i (.Y(GND));
    INV \genblk1.RXRDY_RNO  (.A(rx_dout_reg_empty_net_1), .Y(
        rx_dout_reg_empty_i));
    DFN1E0C0 \rx_dout_reg[6]  (.D(\rx_dout[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[6]));
    OA1B \rx_state_RNO[0]  (.A(\rx_state[1]_net_1 ), .B(next_rx_state4)
        , .C(\rx_state[0]_net_1 ), .Y(\rx_state_ns[0] ));
    DFN1C0 \rx_state[0]  (.D(\rx_state_ns[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\rx_state[0]_net_1 ));
    DFN1E1C0 \tx_hold_reg[7]  (.D(a3p1000_test_0_TX[7]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[7]_net_1 ));
    DFN1C0 \genblk1.RXRDY  (.D(rx_dout_reg_empty_i), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(COREUART_0_RXRDY));
    top_0_COREUART_0_fifo_256x8_0s_4294967295s_0 \genblk3.rx_fifo  (
        .rx_state({\rx_state[1]_net_1 , \rx_state[0]_net_1 }), 
        .rx_byte({\rx_byte[7] , \rx_byte[6] , \rx_byte[5] , 
        \rx_byte[4] , \rx_byte[3] , \rx_byte[2] , \rx_byte[1] , 
        \rx_byte[0] }), .rx_dout({\rx_dout[7] , \rx_dout[6] , 
        \rx_dout[5] , \rx_dout[4] , \rx_dout[3] , \rx_dout[2] , 
        \rx_dout[1] , \rx_dout[0] }), .next_rx_state4(next_rx_state4), 
        .fifo_write(fifo_write), .rx_dout_reg_empty(
        rx_dout_reg_empty_net_1), .RESETN_c(RESETN_c), .CLK_c(CLK_c));
    DFN1E1C0 \tx_hold_reg[3]  (.D(a3p1000_test_0_TX[3]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[3]_net_1 ));
    DFN1P0 fifo_write_tx (.D(un1_wen_i), .CLK(CLK_c), .PRE(RESETN_c), 
        .Q(fifo_write_tx_net_1));
    DFN1E1C0 \tx_hold_reg[1]  (.D(a3p1000_test_0_TX[1]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[1]_net_1 ));
    DFN1E0C0 \rx_dout_reg[2]  (.D(\rx_dout[2] ), .CLK(CLK_c), .CLR(
        RESETN_c), .E(rx_dout_reg4), .Q(rx_dout_reg[2]));
    DFN1E1C0 \tx_hold_reg[4]  (.D(a3p1000_test_0_TX[4]), .CLK(CLK_c), 
        .CLR(RESETN_c), .E(TX_state_RNIBAEH), .Q(
        \tx_hold_reg[4]_net_1 ));
    
endmodule


module UART_control(
       rx_dout_reg,
       RX_data_c,
       UART_control_0_TX,
       TX_data_c,
       COREUART_1_RXRDY,
       RESETN_c,
       CLK_c,
       RX_state,
       COREUART_1_TXRDY,
       TX_state_RNI441M,
       un1_wen_i
    );
input  [7:0] rx_dout_reg;
output [7:0] RX_data_c;
output [7:0] UART_control_0_TX;
input  [7:0] TX_data_c;
input  COREUART_1_RXRDY;
input  RESETN_c;
input  CLK_c;
output RX_state;
input  COREUART_1_TXRDY;
output TX_state_RNI441M;
output un1_wen_i;

    wire un1_TX_data_NE_5, un1_TX_data_6, un1_TX_data_7, 
        un1_TX_data_NE_3, un1_TX_data_NE_4, un1_TX_data_2, 
        un1_TX_data_3, un1_TX_data_NE_1, un1_TX_data_4, un1_TX_data_0, 
        \TX_3[7]_net_1 , TX6, \TX_3[6]_net_1 , \TX_3[5]_net_1 , 
        \TX_3[4]_net_1 , \TX_3[3]_net_1 , \TX_3[2]_net_1 , 
        \TX_3[1]_net_1 , \TX_3[0]_net_1 , TX_state_net_1, GND, VCC;
    
    NOR2B \TX_3[1]  (.A(TX6), .B(TX_data_c[1]), .Y(\TX_3[1]_net_1 ));
    DFN1C0 TX_state (.D(TX6), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        TX_state_net_1));
    DFN1E1C0 \RX_data[6]  (.D(rx_dout_reg[6]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[6]));
    XOR2 \TX_RNII29N[2]  (.A(TX_data_c[2]), .B(UART_control_0_TX[2]), 
        .Y(un1_TX_data_2));
    XOR2 \TX_RNIEU8N[0]  (.A(TX_data_c[0]), .B(UART_control_0_TX[0]), 
        .Y(un1_TX_data_0));
    DFN1E1C0 \RX_data[1]  (.D(rx_dout_reg[1]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[1]));
    NOR2B \TX_3[0]  (.A(TX6), .B(TX_data_c[0]), .Y(\TX_3[0]_net_1 ));
    DFN1C0 \TX[0]  (.D(\TX_3[0]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[0]));
    DFN1E1C0 \RX_data[4]  (.D(rx_dout_reg[4]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[4]));
    NOR2B \TX_3[2]  (.A(TX6), .B(TX_data_c[2]), .Y(\TX_3[2]_net_1 ));
    XO1 \TX_RNIEFIE1[5]  (.A(UART_control_0_TX[5]), .B(TX_data_c[5]), 
        .C(un1_TX_data_4), .Y(un1_TX_data_NE_3));
    XOR2 \TX_RNISC9N[7]  (.A(TX_data_c[7]), .B(UART_control_0_TX[7]), 
        .Y(un1_TX_data_7));
    VCC VCC_i (.Y(VCC));
    NOR2B \TX_3[5]  (.A(TX6), .B(TX_data_c[5]), .Y(\TX_3[5]_net_1 ));
    XO1 \TX_RNIUUHE1[1]  (.A(UART_control_0_TX[1]), .B(TX_data_c[1]), 
        .C(un1_TX_data_0), .Y(un1_TX_data_NE_1));
    DFN1C0 \TX[6]  (.D(\TX_3[6]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[6]));
    DFN1E1C0 \RX_data[3]  (.D(rx_dout_reg[3]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[3]));
    DFN1C0 \TX[4]  (.D(\TX_3[4]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[4]));
    OR3 \TX_RNI475T2[5]  (.A(un1_TX_data_6), .B(un1_TX_data_7), .C(
        un1_TX_data_NE_3), .Y(un1_TX_data_NE_5));
    OA1 \TX_RNI7UL76[1]  (.A(un1_TX_data_NE_4), .B(un1_TX_data_NE_5), 
        .C(COREUART_1_TXRDY), .Y(TX6));
    DFN1C0 \TX[7]  (.D(\TX_3[7]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[7]));
    GND GND_i (.Y(GND));
    XOR2 \TX_RNIK49N[3]  (.A(TX_data_c[3]), .B(UART_control_0_TX[3]), 
        .Y(un1_TX_data_3));
    NOR2B \TX_3[6]  (.A(TX6), .B(TX_data_c[6]), .Y(\TX_3[6]_net_1 ));
    DFN1E1C0 \RX_data[5]  (.D(rx_dout_reg[5]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[5]));
    DFN1C0 RX_state_inst_1 (.D(COREUART_1_RXRDY), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(RX_state));
    NOR2B \TX_3[4]  (.A(TX6), .B(TX_data_c[4]), .Y(\TX_3[4]_net_1 ));
    INV TX_state_RNI441M_0 (.A(TX_state_RNI441M), .Y(un1_wen_i));
    DFN1E1C0 \RX_data[0]  (.D(rx_dout_reg[0]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[0]));
    DFN1C0 \TX[3]  (.D(\TX_3[3]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[3]));
    NOR2B TX_state_RNI441M_inst_1 (.A(COREUART_1_TXRDY), .B(
        TX_state_net_1), .Y(TX_state_RNI441M));
    NOR2B \TX_3[7]  (.A(TX6), .B(TX_data_c[7]), .Y(\TX_3[7]_net_1 ));
    NOR2B \TX_3[3]  (.A(TX6), .B(TX_data_c[3]), .Y(\TX_3[3]_net_1 ));
    DFN1C0 \TX[1]  (.D(\TX_3[1]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[1]));
    XOR2 \TX_RNIM69N[4]  (.A(TX_data_c[4]), .B(UART_control_0_TX[4]), 
        .Y(un1_TX_data_4));
    DFN1E1C0 \RX_data[2]  (.D(rx_dout_reg[2]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[2]));
    XOR2 \TX_RNIQA9N[6]  (.A(TX_data_c[6]), .B(UART_control_0_TX[6]), 
        .Y(un1_TX_data_6));
    DFN1C0 \TX[5]  (.D(\TX_3[5]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[5]));
    DFN1E1C0 \RX_data[7]  (.D(rx_dout_reg[7]), .CLK(CLK_c), .CLR(
        RESETN_c), .E(COREUART_1_RXRDY), .Q(RX_data_c[7]));
    DFN1C0 \TX[2]  (.D(\TX_3[2]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(UART_control_0_TX[2]));
    OR3 \TX_RNI464T2[1]  (.A(un1_TX_data_2), .B(un1_TX_data_3), .C(
        un1_TX_data_NE_1), .Y(un1_TX_data_NE_4));
    
endmodule


module a3p1000_test(
       a3p1000_test_0_TX,
       rx_dout_reg,
       count_c,
       RESETN_c,
       CLK_c,
       COREUART_0_RXRDY,
       COREUART_0_TXRDY,
       TX_state_RNIBAEH,
       un1_wen_i
    );
output [7:0] a3p1000_test_0_TX;
input  [7:0] rx_dout_reg;
output [2:0] count_c;
input  RESETN_c;
input  CLK_c;
input  COREUART_0_RXRDY;
input  COREUART_0_TXRDY;
output TX_state_RNIBAEH;
output un1_wen_i;

    wire TX6_1, TX6_0, TX6, count_n2, count_5_0, \RX_data_3[5] , 
        \RX_data_3[6] , count_n1, count_n0, \TX_3[7]_net_1 , 
        \RX_data[7]_net_1 , \TX_3[6]_net_1 , \RX_data[6]_net_1 , 
        \TX_3[5]_net_1 , \RX_data[5]_net_1 , \TX_3[4]_net_1 , 
        \RX_data[4]_net_1 , \TX_3[3]_net_1 , \RX_data[3]_net_1 , 
        \TX_3[2]_net_1 , \RX_data[2]_net_1 , \TX_3[1]_net_1 , 
        \RX_data[1]_net_1 , \TX_3[0]_net_1 , \RX_data[0]_net_1 , 
        \RX_data_3[7] , \RX_data_3[4] , \RX_data_3[3] , \RX_data_3[2] , 
        \RX_data_3[1] , \RX_data_3[0] , TX_state_net_1, GND, VCC;
    
    NOR2B \TX_3[1]  (.A(TX6), .B(\RX_data[1]_net_1 ), .Y(
        \TX_3[1]_net_1 ));
    NOR2B \RX_data_RNO[0]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[0]), 
        .Y(\RX_data_3[0] ));
    DFN1C0 TX_state (.D(TX6), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        TX_state_net_1));
    DFN1C0 \RX_data[6]  (.D(\RX_data_3[6] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[6]_net_1 ));
    DFN1C0 \count[1]  (.D(count_n1), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        count_c[1]));
    DFN1C0 \count[0]  (.D(count_n0), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        count_c[0]));
    DFN1C0 \RX_data[1]  (.D(\RX_data_3[1] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[1]_net_1 ));
    NOR2B \TX_3[0]  (.A(TX6), .B(\RX_data[0]_net_1 ), .Y(
        \TX_3[0]_net_1 ));
    DFN1C0 \TX[0]  (.D(\TX_3[0]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[0]));
    DFN1C0 \RX_data[4]  (.D(\RX_data_3[4] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[4]_net_1 ));
    NOR2B \TX_3[2]  (.A(TX6), .B(\RX_data[2]_net_1 ), .Y(
        \TX_3[2]_net_1 ));
    XA1 \count_RNO[2]  (.A(count_c[2]), .B(count_5_0), .C(
        COREUART_0_RXRDY), .Y(count_n2));
    NOR2A \count_RNII82D[2]  (.A(COREUART_0_TXRDY), .B(count_c[2]), .Y(
        TX6_0));
    VCC VCC_i (.Y(VCC));
    INV TX_state_RNIBAEH_0 (.A(TX_state_RNIBAEH), .Y(un1_wen_i));
    NOR2B \RX_data_RNO[5]  (.A(rx_dout_reg[5]), .B(COREUART_0_RXRDY), 
        .Y(\RX_data_3[5] ));
    NOR2B \TX_3[5]  (.A(TX6), .B(\RX_data[5]_net_1 ), .Y(
        \TX_3[5]_net_1 ));
    NOR2B \RX_data_RNO[1]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[1]), 
        .Y(\RX_data_3[1] ));
    DFN1C0 \TX[6]  (.D(\TX_3[6]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[6]));
    DFN1C0 \RX_data[3]  (.D(\RX_data_3[3] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[3]_net_1 ));
    XA1 \count_RNO[1]  (.A(count_c[0]), .B(count_c[1]), .C(
        COREUART_0_RXRDY), .Y(count_n1));
    DFN1C0 \count[2]  (.D(count_n2), .CLK(CLK_c), .CLR(RESETN_c), .Q(
        count_c[2]));
    NOR2B \RX_data_RNO[7]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[7]), 
        .Y(\RX_data_3[7] ));
    NOR2A \count_RNI5GU8[1]  (.A(count_c[1]), .B(count_c[0]), .Y(TX6_1)
        );
    DFN1C0 \TX[4]  (.D(\TX_3[4]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[4]));
    DFN1C0 \TX[7]  (.D(\TX_3[7]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[7]));
    NOR2B TX_state_RNIBAEH_inst_1 (.A(COREUART_0_TXRDY), .B(
        TX_state_net_1), .Y(TX_state_RNIBAEH));
    GND GND_i (.Y(GND));
    NOR2B \RX_data_RNO[2]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[2]), 
        .Y(\RX_data_3[2] ));
    NOR2A \count_RNO[0]  (.A(COREUART_0_RXRDY), .B(count_c[0]), .Y(
        count_n0));
    NOR2B \TX_3[6]  (.A(TX6), .B(\RX_data[6]_net_1 ), .Y(
        \TX_3[6]_net_1 ));
    DFN1C0 \RX_data[5]  (.D(\RX_data_3[5] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[5]_net_1 ));
    NOR2B \count_RNO_0[2]  (.A(count_c[1]), .B(count_c[0]), .Y(
        count_5_0));
    NOR2B \RX_data_RNO[6]  (.A(rx_dout_reg[6]), .B(COREUART_0_RXRDY), 
        .Y(\RX_data_3[6] ));
    NOR2B \TX_3[4]  (.A(TX6), .B(\RX_data[4]_net_1 ), .Y(
        \TX_3[4]_net_1 ));
    NOR2B \count_RNINO0M[1]  (.A(TX6_1), .B(TX6_0), .Y(TX6));
    DFN1C0 \RX_data[0]  (.D(\RX_data_3[0] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[0]_net_1 ));
    NOR2B \RX_data_RNO[4]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[4]), 
        .Y(\RX_data_3[4] ));
    DFN1C0 \TX[3]  (.D(\TX_3[3]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[3]));
    NOR2B \RX_data_RNO[3]  (.A(COREUART_0_RXRDY), .B(rx_dout_reg[3]), 
        .Y(\RX_data_3[3] ));
    NOR2B \TX_3[7]  (.A(TX6), .B(\RX_data[7]_net_1 ), .Y(
        \TX_3[7]_net_1 ));
    NOR2B \TX_3[3]  (.A(TX6), .B(\RX_data[3]_net_1 ), .Y(
        \TX_3[3]_net_1 ));
    DFN1C0 \TX[1]  (.D(\TX_3[1]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[1]));
    DFN1C0 \RX_data[2]  (.D(\RX_data_3[2] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[2]_net_1 ));
    DFN1C0 \TX[5]  (.D(\TX_3[5]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[5]));
    DFN1C0 \RX_data[7]  (.D(\RX_data_3[7] ), .CLK(CLK_c), .CLR(
        RESETN_c), .Q(\RX_data[7]_net_1 ));
    DFN1C0 \TX[2]  (.D(\TX_3[2]_net_1 ), .CLK(CLK_c), .CLR(RESETN_c), 
        .Q(a3p1000_test_0_TX[2]));
    
endmodule


module top_0(
       CLK,
       RESETN,
       TX_data,
       GD,
       RX_data,
       TX_0,
       TX_1,
       count
    );
input  CLK;
input  RESETN;
input  [7:0] TX_data;
output GD;
output [7:0] RX_data;
output TX_0;
output TX_1;
output [2:0] count;

    wire COREUART_0_TXRDY, COREUART_0_RXRDY, \a3p1000_test_0_TX[0] , 
        \a3p1000_test_0_TX[1] , \a3p1000_test_0_TX[2] , 
        \a3p1000_test_0_TX[3] , \a3p1000_test_0_TX[4] , 
        \a3p1000_test_0_TX[5] , \a3p1000_test_0_TX[6] , 
        \a3p1000_test_0_TX[7] , VCC, \UART_control_0_TX[0] , 
        \UART_control_0_TX[1] , \UART_control_0_TX[2] , 
        \UART_control_0_TX[3] , \UART_control_0_TX[4] , 
        \UART_control_0_TX[5] , \UART_control_0_TX[6] , 
        \UART_control_0_TX[7] , COREUART_1_TXRDY, COREUART_1_RXRDY, 
        TX_state_RNI441M, \UART_control_0.RX_state , 
        \COREUART_1.rx_dout_reg[0] , \COREUART_1.rx_dout_reg[1] , 
        \COREUART_1.rx_dout_reg[2] , \COREUART_1.rx_dout_reg[3] , 
        \COREUART_1.rx_dout_reg[4] , \COREUART_1.rx_dout_reg[5] , 
        \COREUART_1.rx_dout_reg[6] , \COREUART_1.rx_dout_reg[7] , 
        \COREUART_0.rx_dout_reg[0] , \COREUART_0.rx_dout_reg[1] , 
        \COREUART_0.rx_dout_reg[2] , \COREUART_0.rx_dout_reg[3] , 
        \COREUART_0.rx_dout_reg[4] , \COREUART_0.rx_dout_reg[5] , 
        \COREUART_0.rx_dout_reg[6] , \COREUART_0.rx_dout_reg[7] , 
        TX_state_RNIBAEH, CLK_c, RESETN_c, \TX_data_c[0] , 
        \TX_data_c[1] , \TX_data_c[2] , \TX_data_c[3] , \TX_data_c[4] , 
        \TX_data_c[5] , \TX_data_c[6] , \TX_data_c[7] , GND, 
        \RX_data_c[0] , \RX_data_c[1] , \RX_data_c[2] , \RX_data_c[3] , 
        \RX_data_c[4] , \RX_data_c[5] , \RX_data_c[6] , \RX_data_c[7] , 
        TX_0_c, TX_1_c, \count_c[0] , \count_c[1] , \count_c[2] , 
        \a3p1000_test_0.un1_wen_i , \UART_control_0.un1_wen_i ;
    
    OUTBUF \RX_data_pad[0]  (.D(\RX_data_c[0] ), .PAD(RX_data[0]));
    CLKBUF CLK_pad (.PAD(CLK), .Y(CLK_c));
    INBUF \TX_data_pad[3]  (.PAD(TX_data[3]), .Y(\TX_data_c[3] ));
    OUTBUF \RX_data_pad[4]  (.D(\RX_data_c[4] ), .PAD(RX_data[4]));
    OUTBUF GD_pad (.D(GND), .PAD(GD));
    OUTBUF \count_pad[2]  (.D(\count_c[2] ), .PAD(count[2]));
    INBUF \TX_data_pad[1]  (.PAD(TX_data[1]), .Y(\TX_data_c[1] ));
    OUTBUF \count_pad[0]  (.D(\count_c[0] ), .PAD(count[0]));
    OUTBUF \RX_data_pad[2]  (.D(\RX_data_c[2] ), .PAD(RX_data[2]));
    top_0_COREUART_1_COREUART_1s_1s_0s_15s_0s_0s COREUART_1 (
        .rx_dout_reg({\COREUART_1.rx_dout_reg[7] , 
        \COREUART_1.rx_dout_reg[6] , \COREUART_1.rx_dout_reg[5] , 
        \COREUART_1.rx_dout_reg[4] , \COREUART_1.rx_dout_reg[3] , 
        \COREUART_1.rx_dout_reg[2] , \COREUART_1.rx_dout_reg[1] , 
        \COREUART_1.rx_dout_reg[0] }), .UART_control_0_TX({
        \UART_control_0_TX[7] , \UART_control_0_TX[6] , 
        \UART_control_0_TX[5] , \UART_control_0_TX[4] , 
        \UART_control_0_TX[3] , \UART_control_0_TX[2] , 
        \UART_control_0_TX[1] , \UART_control_0_TX[0] }), .TX_0_c(
        TX_0_c), .COREUART_1_TXRDY(COREUART_1_TXRDY), .TX_1_c(TX_1_c), 
        .TX_state_RNI441M(TX_state_RNI441M), .un1_wen_i(
        \UART_control_0.un1_wen_i ), .RESETN_c(RESETN_c), .CLK_c(CLK_c)
        , .RX_state(\UART_control_0.RX_state ), .COREUART_1_RXRDY(
        COREUART_1_RXRDY));
    VCC VCC_i (.Y(VCC));
    CLKBUF RESETN_pad (.PAD(RESETN), .Y(RESETN_c));
    OUTBUF \RX_data_pad[6]  (.D(\RX_data_c[6] ), .PAD(RX_data[6]));
    OUTBUF \RX_data_pad[3]  (.D(\RX_data_c[3] ), .PAD(RX_data[3]));
    INBUF \TX_data_pad[4]  (.PAD(TX_data[4]), .Y(\TX_data_c[4] ));
    GND GND_i (.Y(GND));
    top_0_COREUART_0_COREUART_1s_1s_0s_15s_0s_0s COREUART_0 (
        .rx_dout_reg({\COREUART_0.rx_dout_reg[7] , 
        \COREUART_0.rx_dout_reg[6] , \COREUART_0.rx_dout_reg[5] , 
        \COREUART_0.rx_dout_reg[4] , \COREUART_0.rx_dout_reg[3] , 
        \COREUART_0.rx_dout_reg[2] , \COREUART_0.rx_dout_reg[1] , 
        \COREUART_0.rx_dout_reg[0] }), .a3p1000_test_0_TX({
        \a3p1000_test_0_TX[7] , \a3p1000_test_0_TX[6] , 
        \a3p1000_test_0_TX[5] , \a3p1000_test_0_TX[4] , 
        \a3p1000_test_0_TX[3] , \a3p1000_test_0_TX[2] , 
        \a3p1000_test_0_TX[1] , \a3p1000_test_0_TX[0] }), .TX_1_c(
        TX_1_c), .COREUART_0_TXRDY(COREUART_0_TXRDY), .TX_0_c(TX_0_c), 
        .TX_state_RNIBAEH(TX_state_RNIBAEH), .un1_wen_i(
        \a3p1000_test_0.un1_wen_i ), .RESETN_c(RESETN_c), .CLK_c(CLK_c)
        , .COREUART_0_RXRDY(COREUART_0_RXRDY));
    OUTBUF \RX_data_pad[7]  (.D(\RX_data_c[7] ), .PAD(RX_data[7]));
    OUTBUF \RX_data_pad[1]  (.D(\RX_data_c[1] ), .PAD(RX_data[1]));
    INBUF \TX_data_pad[7]  (.PAD(TX_data[7]), .Y(\TX_data_c[7] ));
    OUTBUF \RX_data_pad[5]  (.D(\RX_data_c[5] ), .PAD(RX_data[5]));
    UART_control UART_control_0 (.rx_dout_reg({
        \COREUART_1.rx_dout_reg[7] , \COREUART_1.rx_dout_reg[6] , 
        \COREUART_1.rx_dout_reg[5] , \COREUART_1.rx_dout_reg[4] , 
        \COREUART_1.rx_dout_reg[3] , \COREUART_1.rx_dout_reg[2] , 
        \COREUART_1.rx_dout_reg[1] , \COREUART_1.rx_dout_reg[0] }), 
        .RX_data_c({\RX_data_c[7] , \RX_data_c[6] , \RX_data_c[5] , 
        \RX_data_c[4] , \RX_data_c[3] , \RX_data_c[2] , \RX_data_c[1] , 
        \RX_data_c[0] }), .UART_control_0_TX({\UART_control_0_TX[7] , 
        \UART_control_0_TX[6] , \UART_control_0_TX[5] , 
        \UART_control_0_TX[4] , \UART_control_0_TX[3] , 
        \UART_control_0_TX[2] , \UART_control_0_TX[1] , 
        \UART_control_0_TX[0] }), .TX_data_c({\TX_data_c[7] , 
        \TX_data_c[6] , \TX_data_c[5] , \TX_data_c[4] , \TX_data_c[3] , 
        \TX_data_c[2] , \TX_data_c[1] , \TX_data_c[0] }), 
        .COREUART_1_RXRDY(COREUART_1_RXRDY), .RESETN_c(RESETN_c), 
        .CLK_c(CLK_c), .RX_state(\UART_control_0.RX_state ), 
        .COREUART_1_TXRDY(COREUART_1_TXRDY), .TX_state_RNI441M(
        TX_state_RNI441M), .un1_wen_i(\UART_control_0.un1_wen_i ));
    INBUF \TX_data_pad[2]  (.PAD(TX_data[2]), .Y(\TX_data_c[2] ));
    OUTBUF TX_0_pad (.D(TX_0_c), .PAD(TX_0));
    a3p1000_test a3p1000_test_0 (.a3p1000_test_0_TX({
        \a3p1000_test_0_TX[7] , \a3p1000_test_0_TX[6] , 
        \a3p1000_test_0_TX[5] , \a3p1000_test_0_TX[4] , 
        \a3p1000_test_0_TX[3] , \a3p1000_test_0_TX[2] , 
        \a3p1000_test_0_TX[1] , \a3p1000_test_0_TX[0] }), .rx_dout_reg({
        \COREUART_0.rx_dout_reg[7] , \COREUART_0.rx_dout_reg[6] , 
        \COREUART_0.rx_dout_reg[5] , \COREUART_0.rx_dout_reg[4] , 
        \COREUART_0.rx_dout_reg[3] , \COREUART_0.rx_dout_reg[2] , 
        \COREUART_0.rx_dout_reg[1] , \COREUART_0.rx_dout_reg[0] }), 
        .count_c({\count_c[2] , \count_c[1] , \count_c[0] }), 
        .RESETN_c(RESETN_c), .CLK_c(CLK_c), .COREUART_0_RXRDY(
        COREUART_0_RXRDY), .COREUART_0_TXRDY(COREUART_0_TXRDY), 
        .TX_state_RNIBAEH(TX_state_RNIBAEH), .un1_wen_i(
        \a3p1000_test_0.un1_wen_i ));
    INBUF \TX_data_pad[5]  (.PAD(TX_data[5]), .Y(\TX_data_c[5] ));
    OUTBUF TX_1_pad (.D(TX_1_c), .PAD(TX_1));
    INBUF \TX_data_pad[6]  (.PAD(TX_data[6]), .Y(\TX_data_c[6] ));
    INBUF \TX_data_pad[0]  (.PAD(TX_data[0]), .Y(\TX_data_c[0] ));
    OUTBUF \count_pad[1]  (.D(\count_c[1] ), .PAD(count[1]));
    
endmodule
