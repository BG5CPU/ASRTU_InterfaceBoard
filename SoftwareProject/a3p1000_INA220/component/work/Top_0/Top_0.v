//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Mar 10 20:55:59 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Top_0
module Top_0(
    // Inputs
    PCLK,
    PRESETN,
    RX,
    // Outputs
    GD,
    TX,
    // Inouts
    SCL,
    SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  PCLK;
input  PRESETN;
input  RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output GD;
output TX;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  SCL;
inout  SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          AFULL;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire   [0:0]  COREI2C_0_INT;
wire   [0:0]  COREI2C_0_SCLO;
wire   [7:0]  COREUART_0_DATA_OUT;
wire          COREUART_0_RXRDY;
wire          COREUART_0_TXRDY;
wire          EMPTY;
wire          GD_net_0;
wire          IIC_control_0_BIF_1_PENABLE;
wire          IIC_control_0_BIF_1_PREADY;
wire          IIC_control_0_BIF_1_PSELx;
wire          IIC_control_0_BIF_1_PSLVERR;
wire          IIC_control_0_BIF_1_PWRITE;
wire          IIC_control_0_SCLI;
wire          IIC_control_0_SDAI;
wire          IIC_FIFO_1_EMPTY;
wire   [7:0]  INA220_DATA_2;
wire          PCLK;
wire          PRESETN;
wire   [7:0]  Q;
wire   [7:0]  Q_1;
wire          RE_OUT;
wire          RX;
wire          SCL;
wire          SDA;
wire   [0:0]  SDAO;
wire          TX_net_0;
wire   [12:0] UART_control_0_BAUD_val;
wire          UART_control_0_OEN;
wire   [7:0]  UART_control_0_PC_DATA;
wire          UART_control_0_RE;
wire   [7:0]  UART_control_0_TX;
wire          UART_control_0_WE;
wire          WE_OUT;
wire          WEN;
wire          TX_net_1;
wire          GD_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
wire   [31:0] IADDR_const_net_0;
wire   [2:0]  BAUD_VAL_FRACTION_const_net_0;
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
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [8:0]  CoreAPB3_0_APBmslave0_PADDR_0_8to0;
wire   [8:0]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [31:8] CoreAPB3_0_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [31:9] IIC_control_0_BIF_1_PADDR_0_31to9;
wire   [8:0]  IIC_control_0_BIF_1_PADDR_0_8to0;
wire   [31:0] IIC_control_0_BIF_1_PADDR_0;
wire   [8:0]  IIC_control_0_BIF_1_PADDR;
wire   [31:0] IIC_control_0_BIF_1_PRDATA;
wire   [7:0]  IIC_control_0_BIF_1_PRDATA_0_7to0;
wire   [7:0]  IIC_control_0_BIF_1_PRDATA_0;
wire   [31:8] IIC_control_0_BIF_1_PWDATA_0_31to8;
wire   [7:0]  IIC_control_0_BIF_1_PWDATA_0_7to0;
wire   [31:0] IIC_control_0_BIF_1_PWDATA_0;
wire   [7:0]  IIC_control_0_BIF_1_PWDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net                       = 1'b1;
assign GND_net                       = 1'b0;
assign IADDR_const_net_0             = 32'h00000000;
assign BAUD_VAL_FRACTION_const_net_0 = 3'h0;
assign PRDATAS1_const_net_0          = 32'h00000000;
assign PRDATAS2_const_net_0          = 32'h00000000;
assign PRDATAS3_const_net_0          = 32'h00000000;
assign PRDATAS4_const_net_0          = 32'h00000000;
assign PRDATAS5_const_net_0          = 32'h00000000;
assign PRDATAS6_const_net_0          = 32'h00000000;
assign PRDATAS7_const_net_0          = 32'h00000000;
assign PRDATAS8_const_net_0          = 32'h00000000;
assign PRDATAS9_const_net_0          = 32'h00000000;
assign PRDATAS10_const_net_0         = 32'h00000000;
assign PRDATAS11_const_net_0         = 32'h00000000;
assign PRDATAS12_const_net_0         = 32'h00000000;
assign PRDATAS13_const_net_0         = 32'h00000000;
assign PRDATAS14_const_net_0         = 32'h00000000;
assign PRDATAS15_const_net_0         = 32'h00000000;
assign PRDATAS16_const_net_0         = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TX_net_1 = TX_net_0;
assign TX       = TX_net_1;
assign GD_net_1 = GD_net_0;
assign GD       = GD_net_1;
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave0_PADDR_0_8to0 = CoreAPB3_0_APBmslave0_PADDR[8:0];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_8to0 };

assign CoreAPB3_0_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave0_PRDATA_0_7to0 = CoreAPB3_0_APBmslave0_PRDATA[7:0];
assign CoreAPB3_0_APBmslave0_PRDATA_0 = { CoreAPB3_0_APBmslave0_PRDATA_0_31to8, CoreAPB3_0_APBmslave0_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave0_PWDATA_0_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_7to0 };

assign IIC_control_0_BIF_1_PADDR_0_31to9 = 23'h0;
assign IIC_control_0_BIF_1_PADDR_0_8to0 = IIC_control_0_BIF_1_PADDR[8:0];
assign IIC_control_0_BIF_1_PADDR_0 = { IIC_control_0_BIF_1_PADDR_0_31to9, IIC_control_0_BIF_1_PADDR_0_8to0 };

assign IIC_control_0_BIF_1_PRDATA_0_7to0 = IIC_control_0_BIF_1_PRDATA[7:0];
assign IIC_control_0_BIF_1_PRDATA_0 = { IIC_control_0_BIF_1_PRDATA_0_7to0 };

assign IIC_control_0_BIF_1_PWDATA_0_31to8 = 24'h0;
assign IIC_control_0_BIF_1_PWDATA_0_7to0 = IIC_control_0_BIF_1_PWDATA[7:0];
assign IIC_control_0_BIF_1_PWDATA_0 = { IIC_control_0_BIF_1_PWDATA_0_31to8, IIC_control_0_BIF_1_PWDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
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
        .PWRITE     ( IIC_control_0_BIF_1_PWRITE ),
        .PENABLE    ( IIC_control_0_BIF_1_PENABLE ),
        .PSEL       ( IIC_control_0_BIF_1_PSELx ),
        .PREADYS0   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS0  ( GND_net ), // tied to 1'b0 from definition
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
        .PADDR      ( IIC_control_0_BIF_1_PADDR_0 ),
        .PWDATA     ( IIC_control_0_BIF_1_PWDATA_0 ),
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
        .PREADY     ( IIC_control_0_BIF_1_PREADY ),
        .PSLVERR    ( IIC_control_0_BIF_1_PSLVERR ),
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
        .PRDATA     ( IIC_control_0_BIF_1_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
        );

//--------Top_0_COREI2C_0_COREI2C   -   Actel:DirectCore:COREI2C:7.2.101
Top_0_COREI2C_0_COREI2C #( 
        .ADD_SLAVE1_ADDRESS_EN   ( 0 ),
        .BAUD_RATE_FIXED         ( 1 ),
        .BAUD_RATE_VALUE         ( 6 ),
        .BCLK_ENABLED            ( 0 ),
        .FIXED_SLAVE0_ADDR_EN    ( 0 ),
        .FIXED_SLAVE0_ADDR_VALUE ( 'h0 ),
        .FIXED_SLAVE1_ADDR_EN    ( 0 ),
        .FIXED_SLAVE1_ADDR_VALUE ( 'h0 ),
        .FREQUENCY               ( 30 ),
        .GLITCHREG_NUM           ( 3 ),
        .I2C_NUM                 ( 1 ),
        .IPMI_EN                 ( 0 ),
        .OPERATING_MODE          ( 0 ),
        .SMB_EN                  ( 0 ) )
COREI2C_0(
        // Inputs
        .BCLK        ( GND_net ), // tied to 1'b0 from definition
        .PCLK        ( PCLK ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PRESETN     ( PRESETN ),
        .PSEL        ( CoreAPB3_0_APBmslave0_PSELx ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        .SCLI        ( IIC_control_0_SCLI ),
        .SDAI        ( IIC_control_0_SDAI ),
        .SMBALERT_NI ( GND_net ), // tied to 1'b0 from definition
        .SMBSUS_NI   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .INT         ( COREI2C_0_INT ),
        .PRDATA      ( CoreAPB3_0_APBmslave0_PRDATA ),
        .SCLO        ( COREI2C_0_SCLO ),
        .SDAO        ( SDAO ),
        .SMBALERT_NO (  ),
        .SMBA_INT    (  ),
        .SMBSUS_NO   (  ),
        .SMBS_INT    (  ) 
        );

//--------Top_0_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.6.102
Top_0_COREUART_0_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 15 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_0(
        // Inputs
        .BAUD_VAL          ( UART_control_0_BAUD_val ),
        .BIT8              ( VCC_net ),
        .CLK               ( PCLK ),
        .CSN               ( GND_net ),
        .DATA_IN           ( UART_control_0_TX ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( UART_control_0_OEN ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( PRESETN ),
        .RX                ( RX ),
        .WEN               ( WEN ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .DATA_OUT          ( COREUART_0_DATA_OUT ),
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_0_RXRDY ),
        .TX                ( TX_net_0 ),
        .TXRDY             ( COREUART_0_TXRDY ),
        .FRAMING_ERR       (  ) 
        );

//--------IIC_control
IIC_control #( 
        .ADDR0       ( 12 ),
        .ADDR1       ( 28 ),
        .CTRL        ( 0 ),
        .DATA        ( 8 ),
        .IDLE        ( 0 ),
        .READ_COUNT  ( 2 ),
        .S0          ( 1 ),
        .S1          ( 2 ),
        .S2          ( 3 ),
        .S3          ( 4 ),
        .S4          ( 5 ),
        .S5          ( 6 ),
        .S6          ( 7 ),
        .S7          ( 8 ),
        .S8          ( 9 ),
        .S9          ( 10 ),
        .S10         ( 11 ),
        .S11         ( 12 ),
        .S12         ( 13 ),
        .S13         ( 14 ),
        .S14         ( 15 ),
        .S_15        ( 16 ),
        .S_16        ( 17 ),
        .S_17        ( 18 ),
        .SMB         ( 16 ),
        .STAT        ( 4 ),
        .WRITE_COUNT ( 4 ) )
IIC_control_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .PREADY      ( IIC_control_0_BIF_1_PREADY ),
        .PSLVERR     ( IIC_control_0_BIF_1_PSLVERR ),
        .PRDATA      ( IIC_control_0_BIF_1_PRDATA_0 ),
        .DATA_IN     ( Q ),
        .INT         ( COREI2C_0_INT ),
        .SCLO        ( COREI2C_0_SCLO ),
        .SDAO        ( SDAO ),
        .CSN         ( AFULL ),
        // Outputs
        .PADDR       ( IIC_control_0_BIF_1_PADDR ),
        .PWDATA      ( IIC_control_0_BIF_1_PWDATA ),
        .PSEL        ( IIC_control_0_BIF_1_PSELx ),
        .PENABLE     ( IIC_control_0_BIF_1_PENABLE ),
        .PWRITE      ( IIC_control_0_BIF_1_PWRITE ),
        .RE          ( RE_OUT ),
        .WE          ( WE_OUT ),
        .INA220_DATA ( INA220_DATA_2 ),
        .SCLI        ( IIC_control_0_SCLI ),
        .SDAI        ( IIC_control_0_SDAI ),
        // Inouts
        .SCL         ( SCL ),
        .SDA         ( SDA ) 
        );

//--------IIC_FIFO
IIC_FIFO IIC_FIFO_0(
        // Inputs
        .DATA   ( UART_control_0_PC_DATA ),
        .WE     ( UART_control_0_WE ),
        .RE     ( RE_OUT ),
        .WCLOCK ( PCLK ),
        .RCLOCK ( PCLK ),
        .RESET  ( PRESETN ),
        // Outputs
        .Q      ( Q ),
        .FULL   (  ),
        .EMPTY  ( EMPTY ),
        .AEMPTY (  ),
        .AFULL  ( AFULL ) 
        );

//--------IIC_FIFO
IIC_FIFO IIC_FIFO_1(
        // Inputs
        .DATA   ( INA220_DATA_2 ),
        .WE     ( WE_OUT ),
        .RE     ( UART_control_0_RE ),
        .WCLOCK ( PCLK ),
        .RCLOCK ( PCLK ),
        .RESET  ( PRESETN ),
        // Outputs
        .Q      ( Q_1 ),
        .FULL   (  ),
        .EMPTY  ( IIC_FIFO_1_EMPTY ),
        .AEMPTY (  ),
        .AFULL  (  ) 
        );

//--------UART_control
UART_control UART_control_0(
        // Inputs
        .PCLK        ( PCLK ),
        .PRESETN     ( PRESETN ),
        .TXrd        ( COREUART_0_TXRDY ),
        .RXrd        ( COREUART_0_RXRDY ),
        .EMPTY       ( IIC_FIFO_1_EMPTY ),
        .RX          ( COREUART_0_DATA_OUT ),
        .INA220_DATA ( Q_1 ),
        // Outputs
        .BAUD_val    ( UART_control_0_BAUD_val ),
        .GD          ( GD_net_0 ),
        .WE          ( UART_control_0_WE ),
        .RE          ( UART_control_0_RE ),
        .OEN         ( UART_control_0_OEN ),
        .WEN         ( WEN ),
        .TX          ( UART_control_0_TX ),
        .PC_DATA     ( UART_control_0_PC_DATA ) 
        );


endmodule
