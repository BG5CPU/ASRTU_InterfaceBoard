//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Mar 08 16:08:47 2019
// Version: v11.9 SP2 11.9.2.1
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top_0
module top_0(
    // Inputs
    ADDR,
    PCLK,
    PRESETN,
    data_in_0,
    data_in_1,
    // Outputs
    INT,
    S_DATA,
    data_0,
    data_1,
    // Inouts
    SCL,
    SDA
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] ADDR;
input        PCLK;
input        PRESETN;
input  [7:0] data_in_0;
input  [7:0] data_in_1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [0:0] INT;
output [7:0] S_DATA;
output [7:0] data_0;
output [7:0] data_1;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        SCL;
inout        SDA;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  ADDR;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          CoreAPB3_1_APBmslave0_PENABLE;
wire          CoreAPB3_1_APBmslave0_PSELx;
wire          CoreAPB3_1_APBmslave0_PWRITE;
wire   [0:0]  COREI2C_0_SCLO_0;
wire   [0:0]  COREI2C_0_SDAO_0;
wire   [0:0]  COREI2C_1_SCLO;
wire   [0:0]  COREI2C_1_SDAO;
wire   [7:0]  data;
wire   [7:0]  data_1_net_0;
wire   [7:0]  data_in_0;
wire   [7:0]  data_in_1;
wire          I2C_slave_0_BIF_1_PENABLE;
wire          I2C_slave_0_BIF_1_PREADY;
wire          I2C_slave_0_BIF_1_PSELx;
wire          I2C_slave_0_BIF_1_PSLVERR;
wire          I2C_slave_0_BIF_1_PWRITE;
wire          I2C_slave_0_SCLI;
wire          I2C_slave_0_SDAI;
wire          I2C_test_0_BIF_1_PENABLE;
wire          I2C_test_0_BIF_1_PREADY;
wire          I2C_test_0_BIF_1_PSELx;
wire          I2C_test_0_BIF_1_PSLVERR;
wire          I2C_test_0_BIF_1_PWRITE;
wire          I2C_test_0_SCLI;
wire          I2C_test_0_SDAI;
wire   [0:0]  INT_net_0;
wire   [0:0]  INT_0;
wire          PCLK;
wire          PRESETN;
wire   [7:0]  S_DATA_1;
wire          SCL;
wire          SDA;
wire   [7:0]  data_net_0;
wire   [7:0]  data_1_net_1;
wire   [7:0]  S_DATA_1_net_0;
wire   [0:0]  INT_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] IADDR_const_net_1;
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
wire   [31:0] PRDATAS1_const_net_1;
wire   [31:0] PRDATAS2_const_net_1;
wire   [31:0] PRDATAS3_const_net_1;
wire   [31:0] PRDATAS4_const_net_1;
wire   [31:0] PRDATAS5_const_net_1;
wire   [31:0] PRDATAS6_const_net_1;
wire   [31:0] PRDATAS7_const_net_1;
wire   [31:0] PRDATAS8_const_net_1;
wire   [31:0] PRDATAS9_const_net_1;
wire   [31:0] PRDATAS10_const_net_1;
wire   [31:0] PRDATAS11_const_net_1;
wire   [31:0] PRDATAS12_const_net_1;
wire   [31:0] PRDATAS13_const_net_1;
wire   [31:0] PRDATAS14_const_net_1;
wire   [31:0] PRDATAS15_const_net_1;
wire   [31:0] PRDATAS16_const_net_1;
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
wire   [31:0] CoreAPB3_1_APBmslave0_PADDR;
wire   [8:0]  CoreAPB3_1_APBmslave0_PADDR_0_8to0;
wire   [8:0]  CoreAPB3_1_APBmslave0_PADDR_0;
wire   [31:8] CoreAPB3_1_APBmslave0_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_1_APBmslave0_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_1_APBmslave0_PRDATA_0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PRDATA;
wire   [31:0] CoreAPB3_1_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_1_APBmslave0_PWDATA_0;
wire   [31:9] I2C_slave_0_BIF_1_PADDR_0_31to9;
wire   [8:0]  I2C_slave_0_BIF_1_PADDR_0_8to0;
wire   [31:0] I2C_slave_0_BIF_1_PADDR_0;
wire   [8:0]  I2C_slave_0_BIF_1_PADDR;
wire   [31:0] I2C_slave_0_BIF_1_PRDATA;
wire   [7:0]  I2C_slave_0_BIF_1_PRDATA_0_7to0;
wire   [7:0]  I2C_slave_0_BIF_1_PRDATA_0;
wire   [31:8] I2C_slave_0_BIF_1_PWDATA_0_31to8;
wire   [7:0]  I2C_slave_0_BIF_1_PWDATA_0_7to0;
wire   [31:0] I2C_slave_0_BIF_1_PWDATA_0;
wire   [7:0]  I2C_slave_0_BIF_1_PWDATA;
wire   [31:9] I2C_test_0_BIF_1_PADDR_0_31to9;
wire   [8:0]  I2C_test_0_BIF_1_PADDR_0_8to0;
wire   [31:0] I2C_test_0_BIF_1_PADDR_0;
wire   [8:0]  I2C_test_0_BIF_1_PADDR;
wire   [31:0] I2C_test_0_BIF_1_PRDATA;
wire   [7:0]  I2C_test_0_BIF_1_PRDATA_0_7to0;
wire   [7:0]  I2C_test_0_BIF_1_PRDATA_0;
wire   [31:8] I2C_test_0_BIF_1_PWDATA_0_31to8;
wire   [7:0]  I2C_test_0_BIF_1_PWDATA_0_7to0;
wire   [31:0] I2C_test_0_BIF_1_PWDATA_0;
wire   [7:0]  I2C_test_0_BIF_1_PWDATA;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net               = 1'b0;
assign VCC_net               = 1'b1;
assign IADDR_const_net_0     = 32'h00000000;
assign IADDR_const_net_1     = 32'h00000000;
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
assign PRDATAS1_const_net_1  = 32'h00000000;
assign PRDATAS2_const_net_1  = 32'h00000000;
assign PRDATAS3_const_net_1  = 32'h00000000;
assign PRDATAS4_const_net_1  = 32'h00000000;
assign PRDATAS5_const_net_1  = 32'h00000000;
assign PRDATAS6_const_net_1  = 32'h00000000;
assign PRDATAS7_const_net_1  = 32'h00000000;
assign PRDATAS8_const_net_1  = 32'h00000000;
assign PRDATAS9_const_net_1  = 32'h00000000;
assign PRDATAS10_const_net_1 = 32'h00000000;
assign PRDATAS11_const_net_1 = 32'h00000000;
assign PRDATAS12_const_net_1 = 32'h00000000;
assign PRDATAS13_const_net_1 = 32'h00000000;
assign PRDATAS14_const_net_1 = 32'h00000000;
assign PRDATAS15_const_net_1 = 32'h00000000;
assign PRDATAS16_const_net_1 = 32'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign data_net_0     = data;
assign data_0[7:0]    = data_net_0;
assign data_1_net_1   = data_1_net_0;
assign data_1[7:0]    = data_1_net_1;
assign S_DATA_1_net_0 = S_DATA_1;
assign S_DATA[7:0]    = S_DATA_1_net_0;
assign INT_0_net_0[0] = INT_0[0];
assign INT[0:0]       = INT_0_net_0[0];
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

assign CoreAPB3_1_APBmslave0_PADDR_0_8to0 = CoreAPB3_1_APBmslave0_PADDR[8:0];
assign CoreAPB3_1_APBmslave0_PADDR_0 = { CoreAPB3_1_APBmslave0_PADDR_0_8to0 };

assign CoreAPB3_1_APBmslave0_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_1_APBmslave0_PRDATA_0_7to0 = CoreAPB3_1_APBmslave0_PRDATA[7:0];
assign CoreAPB3_1_APBmslave0_PRDATA_0 = { CoreAPB3_1_APBmslave0_PRDATA_0_31to8, CoreAPB3_1_APBmslave0_PRDATA_0_7to0 };

assign CoreAPB3_1_APBmslave0_PWDATA_0_7to0 = CoreAPB3_1_APBmslave0_PWDATA[7:0];
assign CoreAPB3_1_APBmslave0_PWDATA_0 = { CoreAPB3_1_APBmslave0_PWDATA_0_7to0 };

assign I2C_slave_0_BIF_1_PADDR_0_31to9 = 23'h0;
assign I2C_slave_0_BIF_1_PADDR_0_8to0 = I2C_slave_0_BIF_1_PADDR[8:0];
assign I2C_slave_0_BIF_1_PADDR_0 = { I2C_slave_0_BIF_1_PADDR_0_31to9, I2C_slave_0_BIF_1_PADDR_0_8to0 };

assign I2C_slave_0_BIF_1_PRDATA_0_7to0 = I2C_slave_0_BIF_1_PRDATA[7:0];
assign I2C_slave_0_BIF_1_PRDATA_0 = { I2C_slave_0_BIF_1_PRDATA_0_7to0 };

assign I2C_slave_0_BIF_1_PWDATA_0_31to8 = 24'h0;
assign I2C_slave_0_BIF_1_PWDATA_0_7to0 = I2C_slave_0_BIF_1_PWDATA[7:0];
assign I2C_slave_0_BIF_1_PWDATA_0 = { I2C_slave_0_BIF_1_PWDATA_0_31to8, I2C_slave_0_BIF_1_PWDATA_0_7to0 };

assign I2C_test_0_BIF_1_PADDR_0_31to9 = 23'h0;
assign I2C_test_0_BIF_1_PADDR_0_8to0 = I2C_test_0_BIF_1_PADDR[8:0];
assign I2C_test_0_BIF_1_PADDR_0 = { I2C_test_0_BIF_1_PADDR_0_31to9, I2C_test_0_BIF_1_PADDR_0_8to0 };

assign I2C_test_0_BIF_1_PRDATA_0_7to0 = I2C_test_0_BIF_1_PRDATA[7:0];
assign I2C_test_0_BIF_1_PRDATA_0 = { I2C_test_0_BIF_1_PRDATA_0_7to0 };

assign I2C_test_0_BIF_1_PWDATA_0_31to8 = 24'h0;
assign I2C_test_0_BIF_1_PWDATA_0_7to0 = I2C_test_0_BIF_1_PWDATA[7:0];
assign I2C_test_0_BIF_1_PWDATA_0 = { I2C_test_0_BIF_1_PWDATA_0_31to8, I2C_test_0_BIF_1_PWDATA_0_7to0 };

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
        .PWRITE     ( I2C_test_0_BIF_1_PWRITE ),
        .PENABLE    ( I2C_test_0_BIF_1_PENABLE ),
        .PSEL       ( I2C_test_0_BIF_1_PSELx ),
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
        .PADDR      ( I2C_test_0_BIF_1_PADDR_0 ),
        .PWDATA     ( I2C_test_0_BIF_1_PWDATA_0 ),
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
        .PREADY     ( I2C_test_0_BIF_1_PREADY ),
        .PSLVERR    ( I2C_test_0_BIF_1_PSLVERR ),
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
        .PRDATA     ( I2C_test_0_BIF_1_PRDATA ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ) 
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
CoreAPB3_1(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PWRITE     ( I2C_slave_0_BIF_1_PWRITE ),
        .PENABLE    ( I2C_slave_0_BIF_1_PENABLE ),
        .PSEL       ( I2C_slave_0_BIF_1_PSELx ),
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
        .PADDR      ( I2C_slave_0_BIF_1_PADDR_0 ),
        .PWDATA     ( I2C_slave_0_BIF_1_PWDATA_0 ),
        .PRDATAS0   ( CoreAPB3_1_APBmslave0_PRDATA_0 ),
        .PRDATAS1   ( PRDATAS1_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS2   ( PRDATAS2_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS3   ( PRDATAS3_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS4   ( PRDATAS4_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS5   ( PRDATAS5_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS6   ( PRDATAS6_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS7   ( PRDATAS7_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS8   ( PRDATAS8_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS9   ( PRDATAS9_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS10  ( PRDATAS10_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS11  ( PRDATAS11_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS12  ( PRDATAS12_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS13  ( PRDATAS13_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS14  ( PRDATAS14_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS15  ( PRDATAS15_const_net_1 ), // tied to 32'h00000000 from definition
        .PRDATAS16  ( PRDATAS16_const_net_1 ), // tied to 32'h00000000 from definition
        .IADDR      ( IADDR_const_net_1 ), // tied to 32'h00000000 from definition
        // Outputs
        .PREADY     ( I2C_slave_0_BIF_1_PREADY ),
        .PSLVERR    ( I2C_slave_0_BIF_1_PSLVERR ),
        .PWRITES    ( CoreAPB3_1_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PSELS0     ( CoreAPB3_1_APBmslave0_PSELx ),
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
        .PRDATA     ( I2C_slave_0_BIF_1_PRDATA ),
        .PADDRS     ( CoreAPB3_1_APBmslave0_PADDR ),
        .PWDATAS    ( CoreAPB3_1_APBmslave0_PWDATA ) 
        );

//--------top_0_COREI2C_0_COREI2C   -   Actel:DirectCore:COREI2C:7.2.101
top_0_COREI2C_0_COREI2C #( 
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
        .SCLI        ( I2C_test_0_SCLI ),
        .SDAI        ( I2C_test_0_SDAI ),
        .SMBALERT_NI ( GND_net ), // tied to 1'b0 from definition
        .SMBSUS_NI   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .INT         ( INT_net_0 ),
        .PRDATA      ( CoreAPB3_0_APBmslave0_PRDATA ),
        .SCLO        ( COREI2C_0_SCLO_0 ),
        .SDAO        ( COREI2C_0_SDAO_0 ),
        .SMBALERT_NO (  ),
        .SMBA_INT    (  ),
        .SMBSUS_NO   (  ),
        .SMBS_INT    (  ) 
        );

//--------top_0_COREI2C_1_COREI2C   -   Actel:DirectCore:COREI2C:7.2.101
top_0_COREI2C_1_COREI2C #( 
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
COREI2C_1(
        // Inputs
        .BCLK        ( GND_net ), // tied to 1'b0 from definition
        .PCLK        ( PCLK ),
        .PENABLE     ( CoreAPB3_1_APBmslave0_PENABLE ),
        .PRESETN     ( PRESETN ),
        .PSEL        ( CoreAPB3_1_APBmslave0_PSELx ),
        .PWRITE      ( CoreAPB3_1_APBmslave0_PWRITE ),
        .PADDR       ( CoreAPB3_1_APBmslave0_PADDR_0 ),
        .PWDATA      ( CoreAPB3_1_APBmslave0_PWDATA_0 ),
        .SCLI        ( I2C_slave_0_SCLI ),
        .SDAI        ( I2C_slave_0_SDAI ),
        .SMBALERT_NI ( GND_net ), // tied to 1'b0 from definition
        .SMBSUS_NI   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .INT         ( INT_0 ),
        .PRDATA      ( CoreAPB3_1_APBmslave0_PRDATA ),
        .SCLO        ( COREI2C_1_SCLO ),
        .SDAO        ( COREI2C_1_SDAO ),
        .SMBALERT_NO (  ),
        .SMBA_INT    (  ),
        .SMBSUS_NO   (  ),
        .SMBS_INT    (  ) 
        );

//--------I2C_slave
I2C_slave #( 
        .ADDR0 ( 12 ),
        .ADDR1 ( 28 ),
        .CTRL  ( 0 ),
        .DATA  ( 8 ),
        .S0    ( 0 ),
        .S1    ( 1 ),
        .S2    ( 2 ),
        .S3    ( 3 ),
        .S4    ( 4 ),
        .S5    ( 5 ),
        .S6    ( 6 ),
        .S7    ( 7 ),
        .S8    ( 8 ),
        .S9    ( 9 ),
        .S10   ( 10 ),
        .S11   ( 11 ),
        .S12   ( 12 ),
        .S13   ( 13 ),
        .S14   ( 14 ),
        .S15   ( 15 ),
        .SMB   ( 16 ),
        .STAT  ( 4 ) )
I2C_slave_0(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETN ( PRESETN ),
        .PREADY  ( I2C_slave_0_BIF_1_PREADY ),
        .PSLVERR ( I2C_slave_0_BIF_1_PSLVERR ),
        .INT     ( INT_0 ),
        .SCLO    ( COREI2C_1_SCLO ),
        .SDAO    ( COREI2C_1_SDAO ),
        .PRDATA  ( I2C_slave_0_BIF_1_PRDATA_0 ),
        .data_in ( data_in_1 ),
        // Outputs
        .PSEL    ( I2C_slave_0_BIF_1_PSELx ),
        .PENABLE ( I2C_slave_0_BIF_1_PENABLE ),
        .PWRITE  ( I2C_slave_0_BIF_1_PWRITE ),
        .SCLI    ( I2C_slave_0_SCLI ),
        .SDAI    ( I2C_slave_0_SDAI ),
        .PADDR   ( I2C_slave_0_BIF_1_PADDR ),
        .PWDATA  ( I2C_slave_0_BIF_1_PWDATA ),
        .data    ( data_1_net_0 ),
        // Inouts
        .SCL     ( SCL ),
        .SDA     ( SDA ) 
        );

//--------I2C_test
I2C_test #( 
        .ADDR0 ( 12 ),
        .ADDR1 ( 28 ),
        .CTRL  ( 0 ),
        .DATA  ( 8 ),
        .S0    ( 0 ),
        .S1    ( 1 ),
        .S2    ( 2 ),
        .S3    ( 3 ),
        .S4    ( 4 ),
        .S5    ( 5 ),
        .S6    ( 6 ),
        .S7    ( 7 ),
        .S8    ( 8 ),
        .S9    ( 9 ),
        .S10   ( 10 ),
        .S11   ( 11 ),
        .S12   ( 12 ),
        .S13   ( 13 ),
        .S14   ( 14 ),
        .S_15  ( 15 ),
        .S_16  ( 16 ),
        .S_17  ( 17 ),
        .S_18  ( 18 ),
        .S_19  ( 19 ),
        .S_20  ( 20 ),
        .SMB   ( 16 ),
        .STAT  ( 4 ) )
I2C_test_0(
        // Inputs
        .PCLK    ( PCLK ),
        .PRESETN ( PRESETN ),
        .PREADY  ( I2C_test_0_BIF_1_PREADY ),
        .PSLVERR ( I2C_test_0_BIF_1_PSLVERR ),
        .INT     ( INT_net_0 ),
        .SCLO    ( COREI2C_0_SCLO_0 ),
        .SDAO    ( COREI2C_0_SDAO_0 ),
        .PRDATA  ( I2C_test_0_BIF_1_PRDATA_0 ),
        .data_in ( data_in_0 ),
        .ADDR    ( ADDR ),
        // Outputs
        .PSEL    ( I2C_test_0_BIF_1_PSELx ),
        .PENABLE ( I2C_test_0_BIF_1_PENABLE ),
        .PWRITE  ( I2C_test_0_BIF_1_PWRITE ),
        .SCLI    ( I2C_test_0_SCLI ),
        .SDAI    ( I2C_test_0_SDAI ),
        .PADDR   ( I2C_test_0_BIF_1_PADDR ),
        .PWDATA  ( I2C_test_0_BIF_1_PWDATA ),
        .data    ( data ),
        .S_DATA  ( S_DATA_1 ),
        // Inouts
        .SCL     ( SCL ),
        .SDA     ( SDA ) 
        );


endmodule
