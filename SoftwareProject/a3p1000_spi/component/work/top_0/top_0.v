//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Dec 03 22:15:50 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top_0
module top_0(
    // Inputs
    CLKA,
    PRESETN,
    SPISDI,
    rxd,
    // Outputs
    RE,
    SPIRXAVAIL,
    SPISCLKO,
    SPISDO,
    SPI_data,
    dout,
    empty,
    txd
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLKA;
input         PRESETN;
input         SPISDI;
input         rxd;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        RE;
output        SPIRXAVAIL;
output        SPISCLKO;
output        SPISDO;
output [15:0] SPI_data;
output [15:0] dout;
output        empty;
output        txd;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLKA;
wire          clok_0_GLA;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [7:0]  CORESPI_0_SPISS;
wire   [15:0] dout_0;
wire          empty_net_0;
wire          PRESETN;
wire          RE_net_0;
wire          rxd;
wire   [15:0] sp_fifo_0_dout;
wire   [15:0] SPI_data_net_0;
wire   [31:0] SPI_master_0_BIF_1_PADDR;
wire          SPI_master_0_BIF_1_PENABLE;
wire          SPI_master_0_BIF_1_PREADY;
wire          SPI_master_0_BIF_1_PSELx;
wire          SPI_master_0_BIF_1_PSLVERR;
wire          SPI_master_0_BIF_1_PWRITE;
wire          SPI_master_0_RE;
wire          SPI_master_0_WE;
wire          SPIMODE;
wire          SPIOEN;
wire          SPIRXAVAIL_net_0;
wire          SPISCLKO_net_0;
wire          SPISDI;
wire          SPISDO_net_0;
wire          SPITXRFM;
wire          txd_net_0;
wire   [7:0]  uart_0_m_axis_tdata;
wire          uart_0_m_axis_tvalid;
wire          uart_0_rx_busy;
wire          uart_0_s_axis_tready;
wire          uart_0_tx_busy;
wire   [7:0]  UART_AD7606_0_m_axis_tdata;
wire          UART_AD7606_0_m_axis_tvalid;
wire   [15:0] UART_AD7606_0_PC_data;
wire   [15:0] UART_AD7606_0_prescale;
wire          UART_AD7606_0_s_axis_tready;
wire          UART_AD7606_0_WE;
wire          UART_fifo_0_empty;
wire          SPISCLKO_net_1;
wire          SPISDO_net_1;
wire          txd_net_1;
wire          SPIRXAVAIL_net_1;
wire          RE_net_1;
wire          empty_net_1;
wire   [15:0] dout_0_net_0;
wire   [15:0] SPI_data_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] PRDATAS1_const_net_0;
wire   [31:0] PRDATAS2_const_net_0;
wire   [31:0] PRDATAS3_const_net_0;
wire   [31:0] PRDATAS4_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [6:0]  CoreAPB3_0_APBmslave0_PADDR_0_6to0;
wire   [6:0]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [31:16]CoreAPB3_0_APBmslave0_PRDATA_0_31to16;
wire   [15:0] CoreAPB3_0_APBmslave0_PRDATA_0_15to0;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA_0;
wire   [15:0] CoreAPB3_0_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_0_15to0;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [31:0] SPI_master_0_BIF_1_PRDATA;
wire   [15:0] SPI_master_0_BIF_1_PRDATA_0_15to0;
wire   [15:0] SPI_master_0_BIF_1_PRDATA_0;
wire   [15:0] SPI_master_0_BIF_1_PWDATA;
wire   [31:16]SPI_master_0_BIF_1_PWDATA_0_31to16;
wire   [15:0] SPI_master_0_BIF_1_PWDATA_0_15to0;
wire   [31:0] SPI_master_0_BIF_1_PWDATA_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net               = 1'b1;
assign GND_net               = 1'b0;
assign IADDR_const_net_0     = 32'h00000000;
assign PRDATAS1_const_net_0  = 32'h00000000;
assign PRDATAS2_const_net_0  = 32'h00000000;
assign PRDATAS3_const_net_0  = 32'h00000000;
assign PRDATAS4_const_net_0  = 32'h00000000;
assign PRDATAS5_const_net_0  = 32'h00000000;
assign PRDATAS6_const_net_0  = 32'h00000000;
assign PRDATAS7_const_net_0  = 32'h00000000;
assign PRDATAS8_const_net_0  = 32'h00000000;
assign PRDATAS9_const_net_0  = 32'h00000000;
assign PRDATAS10_const_net_0 = 32'h00000000;
assign PRDATAS11_const_net_0 = 32'h00000000;
assign PRDATAS12_const_net_0 = 32'h00000000;
assign PRDATAS13_const_net_0 = 32'h00000000;
assign PRDATAS14_const_net_0 = 32'h00000000;
assign PRDATAS15_const_net_0 = 32'h00000000;
assign PRDATAS16_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SPISCLKO_net_1   = SPISCLKO_net_0;
assign SPISCLKO         = SPISCLKO_net_1;
assign SPISDO_net_1     = SPISDO_net_0;
assign SPISDO           = SPISDO_net_1;
assign txd_net_1        = txd_net_0;
assign txd              = txd_net_1;
assign SPIRXAVAIL_net_1 = SPIRXAVAIL_net_0;
assign SPIRXAVAIL       = SPIRXAVAIL_net_1;
assign RE_net_1         = RE_net_0;
assign RE               = RE_net_1;
assign empty_net_1      = empty_net_0;
assign empty            = empty_net_1;
assign dout_0_net_0     = dout_0;
assign dout[15:0]       = dout_0_net_0;
assign SPI_data_net_1   = SPI_data_net_0;
assign SPI_data[15:0]   = SPI_data_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave0_PADDR_0_6to0 = CoreAPB3_0_APBmslave0_PADDR[6:0];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_6to0 };

assign CoreAPB3_0_APBmslave0_PRDATA_0_31to16 = 16'h0;
assign CoreAPB3_0_APBmslave0_PRDATA_0_15to0 = CoreAPB3_0_APBmslave0_PRDATA[15:0];
assign CoreAPB3_0_APBmslave0_PRDATA_0 = { CoreAPB3_0_APBmslave0_PRDATA_0_31to16, CoreAPB3_0_APBmslave0_PRDATA_0_15to0 };

assign CoreAPB3_0_APBmslave0_PWDATA_0_15to0 = CoreAPB3_0_APBmslave0_PWDATA[15:0];
assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_15to0 };

assign SPI_master_0_BIF_1_PRDATA_0_15to0 = SPI_master_0_BIF_1_PRDATA[15:0];
assign SPI_master_0_BIF_1_PRDATA_0 = { SPI_master_0_BIF_1_PRDATA_0_15to0 };

assign SPI_master_0_BIF_1_PWDATA_0_31to16 = 16'h0;
assign SPI_master_0_BIF_1_PWDATA_0_15to0 = SPI_master_0_BIF_1_PWDATA[15:0];
assign SPI_master_0_BIF_1_PWDATA_0 = { SPI_master_0_BIF_1_PWDATA_0_31to16, SPI_master_0_BIF_1_PWDATA_0_15to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------clok
clok clok_0(
        // Inputs
        .POWERDOWN ( VCC_net ),
        .CLKA      ( CLKA ),
        // Outputs
        .LOCK      (  ),
        .GLA       ( clok_0_GLA ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 8 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 0 ),
        .APBSLOT2ENABLE  ( 0 ),
        .APBSLOT3ENABLE  ( 0 ),
        .APBSLOT4ENABLE  ( 0 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 15 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 12 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 2 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( SPI_master_0_BIF_1_PWRITE ),
        .PENABLE    ( SPI_master_0_BIF_1_PENABLE ),
        .PSEL       ( SPI_master_0_BIF_1_PSELx ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS2   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS2  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS3   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS4   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( SPI_master_0_BIF_1_PADDR ),
        .PWDATA     ( SPI_master_0_BIF_1_PWDATA_0 ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA_0 ),
        .PRDATAS1   ( PRDATAS1_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( PRDATAS2_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( SPI_master_0_BIF_1_PREADY ),
        .PSLVERR    ( SPI_master_0_BIF_1_PSLVERR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     (  ),
        .PSELS2     (  ),
        .PSELS3     (  ),
        .PSELS4     (  ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ),
        .PRDATA     ( SPI_master_0_BIF_1_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------CORESPI   -   Actel:DirectCore:CORESPI:5.2.104
CORESPI #( 
        .APB_DWIDTH        ( 16 ),
        .CFG_CLK           ( 60 ),
        .CFG_FIFO_DEPTH    ( 8 ),
        .CFG_FRAME_SIZE    ( 16 ),
        .CFG_MODE          ( 0 ),
        .CFG_MOT_MODE      ( 3 ),
        .CFG_MOT_SSEL      ( 0 ),
        .CFG_NSC_OPERATION ( 0 ),
        .CFG_TI_JMB_FRAMES ( 0 ),
        .CFG_TI_NSC_CUSTOM ( 0 ),
        .CFG_TI_NSC_FRC    ( 0 ) )
CORESPI_0(
        // Inputs
        .PCLK       ( clok_0_GLA ),
        .PRESETN    ( PRESETN ),
        .PSEL       ( CoreAPB3_0_APBmslave0_PSELx ),
        .PENABLE    ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE     ( CoreAPB3_0_APBmslave0_PWRITE ),
        .SPISSI     ( GND_net ),
        .SPISDI     ( SPISDI ),
        .SPICLKI    ( VCC_net ),
        .PADDR      ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PWDATA     ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        // Outputs
        .PREADY     ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR    ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .SPIINT     (  ),
        .SPIRXAVAIL ( SPIRXAVAIL_net_0 ),
        .SPITXRFM   ( SPITXRFM ),
        .SPISCLKO   ( SPISCLKO_net_0 ),
        .SPIOEN     ( SPIOEN ),
        .SPISDO     ( SPISDO_net_0 ),
        .SPIMODE    ( SPIMODE ),
        .PRDATA     ( CoreAPB3_0_APBmslave0_PRDATA ),
        .SPISS      ( CORESPI_0_SPISS ) 
        );

//--------sp_fifo
sp_fifo sp_fifo_0(
        // Inputs
        .wr_en ( SPI_master_0_WE ),
        .rd_en ( RE_net_0 ),
        .clk   ( clok_0_GLA ),
        .rst   ( PRESETN ),
        .din   ( SPI_data_net_0 ),
        // Outputs
        .full  (  ),
        .empty ( empty_net_0 ),
        .dout  ( sp_fifo_0_dout ) 
        );

//--------SPI_master
SPI_master #( 
        .CLK_DIV     ( 44 ),
        .COMMAND     ( 28 ),
        .CONTROL     ( 0 ),
        .CONTROL2    ( 24 ),
        .INTCLEAR    ( 4 ),
        .INTMASK     ( 16 ),
        .INTRAW      ( 20 ),
        .RXDATA      ( 8 ),
        .S0          ( 0 ),
        .S1          ( 1 ),
        .S2          ( 2 ),
        .S3          ( 3 ),
        .S4          ( 4 ),
        .S5          ( 5 ),
        .S6          ( 6 ),
        .S7          ( 7 ),
        .S8          ( 8 ),
        .S9          ( 9 ),
        .S10         ( 10 ),
        .S11         ( 11 ),
        .SSEL        ( 36 ),
        .STAT        ( 32 ),
        .TXDATA      ( 12 ),
        .TXDATA_LAST ( 40 ) )
SPI_master_0(
        // Inputs
        .PCLK       ( clok_0_GLA ),
        .PRESETN    ( PRESETN ),
        .PREADY     ( SPI_master_0_BIF_1_PREADY ),
        .PSLVERR    ( SPI_master_0_BIF_1_PSLVERR ),
        .SPIRXAVAIL ( SPIRXAVAIL_net_0 ),
        .SPITXRFM   ( SPITXRFM ),
        .EMPTY      ( UART_fifo_0_empty ),
        .PRDATA     ( SPI_master_0_BIF_1_PRDATA_0 ),
        .PC_data    ( dout_0 ),
        // Outputs
        .PSEL       ( SPI_master_0_BIF_1_PSELx ),
        .PENABLE    ( SPI_master_0_BIF_1_PENABLE ),
        .PWRITE     ( SPI_master_0_BIF_1_PWRITE ),
        .WE         ( SPI_master_0_WE ),
        .RE         ( SPI_master_0_RE ),
        .PWDATA     ( SPI_master_0_BIF_1_PWDATA ),
        .PADDR      ( SPI_master_0_BIF_1_PADDR ),
        .SPI_data   ( SPI_data_net_0 ) 
        );

//--------uart
uart uart_0(
        // Inputs
        .clk              ( clok_0_GLA ),
        .rst              ( PRESETN ),
        .s_axis_tvalid    ( UART_AD7606_0_m_axis_tvalid ),
        .m_axis_tready    ( UART_AD7606_0_s_axis_tready ),
        .rxd              ( rxd ),
        .s_axis_tdata     ( UART_AD7606_0_m_axis_tdata ),
        .prescale         ( UART_AD7606_0_prescale ),
        // Outputs
        .s_axis_tready    ( uart_0_s_axis_tready ),
        .m_axis_tvalid    ( uart_0_m_axis_tvalid ),
        .txd              ( txd_net_0 ),
        .tx_busy          ( uart_0_tx_busy ),
        .rx_busy          ( uart_0_rx_busy ),
        .rx_overrun_error (  ),
        .rx_frame_error   (  ),
        .m_axis_tdata     ( uart_0_m_axis_tdata ) 
        );

//--------UART_AD7606
UART_AD7606 UART_AD7606_0(
        // Inputs
        .clk           ( clok_0_GLA ),
        .rst           ( PRESETN ),
        .s_axis_tvalid ( uart_0_m_axis_tvalid ),
        .m_axis_tready ( uart_0_s_axis_tready ),
        .EMPTY         ( empty_net_0 ),
        .tx_busy       ( uart_0_tx_busy ),
        .rx_busy       ( uart_0_rx_busy ),
        .s_axis_tdata  ( uart_0_m_axis_tdata ),
        .SPI_data      ( sp_fifo_0_dout ),
        // Outputs
        .s_axis_tready ( UART_AD7606_0_s_axis_tready ),
        .m_axis_tvalid ( UART_AD7606_0_m_axis_tvalid ),
        .RE            ( RE_net_0 ),
        .WE            ( UART_AD7606_0_WE ),
        .m_axis_tdata  ( UART_AD7606_0_m_axis_tdata ),
        .PC_data       ( UART_AD7606_0_PC_data ),
        .prescale      ( UART_AD7606_0_prescale ) 
        );

//--------UART_fifo
UART_fifo UART_fifo_0(
        // Inputs
        .wr_en ( UART_AD7606_0_WE ),
        .rd_en ( SPI_master_0_RE ),
        .clk   ( clok_0_GLA ),
        .rst   ( PRESETN ),
        .din   ( UART_AD7606_0_PC_data ),
        // Outputs
        .full  (  ),
        .empty ( UART_fifo_0_empty ),
        .dout  ( dout_0 ) 
        );


endmodule
