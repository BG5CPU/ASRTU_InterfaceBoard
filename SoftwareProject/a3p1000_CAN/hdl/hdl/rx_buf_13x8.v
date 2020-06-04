//+ ---------------------------------------------------------------------
//+
//+ Copyright (c) 1999-2003 FhG IPMS (Fraunhofer Institute of Photonic
//+ Microsystems, Dresden, Germany)
//+
//+ Please review the terms of the license agreement before using this
//+ file.  If you are not an authorized user, please destroy this source
//+ file and notify FhG IPMS immediately that you inadvertently 
//+ received an unauthorized copy.
//+ ---------------------------------------------------------------------
//+
//+  Project       : Basic CAN
//+
//+  File          : rx_buf_13x8.v
//+  Dependencies  : none
//+
//+  Model Type:   : Synthesizable core
//+
//+  Description   : CAN Controller Modules (Basic CAN version)
//+
//+  Designer      : BS
//+
//+  QA Engineer   : NA
//+
//+  Creation Date : 30-Oct-2002
//+
//+  Last Update   : 10-Jan-2007
//+
//+  Version       : 2V18N00S00
//+ ---------------------------------------------------------------------
//+
//+ $Id: rx_buf_13x8.v,v 1.1.2.8 2007/01/22 13:54:02 schneide Exp $
`timescale 1ns / 100ps
module rx_buf_13x8 (
	a_addr,           //+ port a buffer addr
        a_dout,           //+ port a data output
        b_addr,           //+ port b buffer addr
        b_din,            //+ port b data input
        b_wrn,            //+ port b write signal low active
        clk,              //+ clock 
        rsn		  //+ global reset low active 
        );
input	[3:0] a_addr;     
output  [7:0] a_dout;     
input   [3:0] b_addr;     
input   [7:0] b_din;      
input         b_wrn;      
input         clk;        
input         rsn;        
wire    [3:0] a_addr;           
reg     [7:0] a_dout;           
wire    [3:0] b_addr;           
wire    [7:0] b_din;            
wire          b_wrn;            
wire          clk;              
wire          rsn;        	
reg     [7:0] reg0;
reg     [7:0] reg1;
reg     [7:0] reg2;
reg     [7:0] reg3;
reg     [7:0] reg4;
reg     [7:0] reg5;
reg     [7:0] reg6;
reg     [7:0] reg7;
reg     [7:0] reg8;
reg     [7:0] reg9;
reg     [7:0] rega;
reg     [7:0] regb;
reg     [7:0] regc;
always @ (a_addr or reg0 or reg1 or reg2 or reg3 or reg4 or reg5
          or reg6 or reg7 or reg8 or reg9 or rega or regb or regc)
  case (a_addr)
    4'h0   : a_dout = reg0;  
    4'h1   : a_dout = reg1;  
    4'h2   : a_dout = reg2;  
    4'h3   : a_dout = reg3;  
    4'h4   : a_dout = reg4;  
    4'h5   : a_dout = reg5;  
    4'h6   : a_dout = reg6;  
    4'h7   : a_dout = reg7;  
    4'h8   : a_dout = reg8;  
    4'h9   : a_dout = reg9;  
    4'ha   : a_dout = rega;  
    4'hb   : a_dout = regb;  
    4'hc   : a_dout = regc;  
    default: a_dout = 8'h00;
  endcase
always @ (negedge rsn or posedge clk)
  if (rsn==1'b0)
    begin
      reg0 <= 8'hff;  
      reg1 <= 8'hff;  
      reg2 <= 8'hff;  
      reg3 <= 8'hff;  
      reg4 <= 8'hff;  
      reg5 <= 8'hff;  
      reg6 <= 8'hff;  
      reg7 <= 8'hff;  
      reg8 <= 8'hff;  
      reg9 <= 8'hff;  
      rega <= 8'hff;  
      regb <= 8'hff;  
      regc <= 8'hff;  
    end
  else
    begin
      if (b_wrn==1'b0)
        case (b_addr)
          4'h0   : reg0 <= b_din;  
          4'h1   : reg1 <= b_din;  
          4'h2   : reg2 <= b_din;  
          4'h3   : reg3 <= b_din;  
          4'h4   : reg4 <= b_din;  
          4'h5   : reg5 <= b_din;  
          4'h6   : reg6 <= b_din;  
          4'h7   : reg7 <= b_din;  
          4'h8   : reg8 <= b_din;  
          4'h9   : reg9 <= b_din;  
          4'ha   : rega <= b_din;  
          4'hb   : regb <= b_din;  
          4'hc   : regc <= b_din;  
          default: ;
        endcase
      else;
    end
endmodule
