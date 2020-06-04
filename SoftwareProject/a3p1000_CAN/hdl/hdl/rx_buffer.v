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
//+  File          : rx_buffer.v
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
//+  Last Update   : 30-Oct-2002
//+
//+  Version       : 2V18N00S00
//+ ---------------------------------------------------------------------
//+
//+ $Id: rx_buffer.v,v 1.1.2.7 2007/01/22 13:54:02 schneide Exp $
`timescale 1ns / 100ps
module rx_buffer (
        //+ port a used as "output" port
	a_addr,           //+ port a buffer addr
        a_dout,           //+ port a data output
        a_ptr,            //+ adress pointer
        //+ port b used as "input" port
        b_addr,           //+ port b buffer addr
        b_din,            //+ port b data input
        b_wrn,            //+ port b write signal low active
        b_ptr,            //+ adress pointer
        //+ control signals
        clk,              //+ clock 
        rsn		  //+ global reset low active 
        );
input	[3:0] a_addr;           
output  [7:0] a_dout;           
input   [1:0] a_ptr;            
input   [3:0] b_addr;           
input   [7:0] b_din;            
input         b_wrn;            
input   [1:0] b_ptr;            
input         clk;              
input         rsn;        	
wire    [3:0] a_addr;           
reg     [7:0] a_dout;           
wire    [1:0] a_ptr;            
wire    [3:0] b_addr;           
wire    [7:0] b_din;            
wire          b_wrn;            
wire    [1:0] b_ptr;            
wire          clk;              
wire          rsn;        	
wire [7:0] a_dout0;
wire [7:0] a_dout1;
wire [7:0] a_dout2;
wire [7:0] a_dout3;
reg        b_wrn0;
reg        b_wrn1;
reg        b_wrn2;
reg        b_wrn3;
rx_buf_13x8 buf0 (
	.a_addr(a_addr),        
        .a_dout(a_dout0),       
        .b_addr(b_addr),        
        .b_din(b_din),          
        .b_wrn(b_wrn0),         
        .clk(clk),              
        .rsn(rsn)               
        );
rx_buf_13x8 buf1 (
	.a_addr(a_addr),        
        .a_dout(a_dout1),       
        .b_addr(b_addr),        
        .b_din(b_din),          
        .b_wrn(b_wrn1),         
        .clk(clk),              
        .rsn(rsn)               
        );
rx_buf_13x8 buf2 (
	.a_addr(a_addr),        
        .a_dout(a_dout2),       
        .b_addr(b_addr),        
        .b_din(b_din),          
        .b_wrn(b_wrn2),         
        .clk(clk),              
        .rsn(rsn)               
        );
rx_buf_13x8 buf3 (
	.a_addr(a_addr),        
        .a_dout(a_dout3),       
        .b_addr(b_addr),        
        .b_din(b_din),          
        .b_wrn(b_wrn3),         
        .clk(clk),              
        .rsn(rsn)               
        );
always @ (a_ptr or a_dout0 or a_dout1 or a_dout2 or a_dout3)
  case (a_ptr)
    2'b00: a_dout = a_dout0;  
    2'b01: a_dout = a_dout1;
    2'b10: a_dout = a_dout2;
    2'b11: a_dout = a_dout3;
  endcase
always @ (b_ptr or b_wrn)
  case (b_ptr)
    2'b00: begin b_wrn0 = b_wrn; b_wrn1 = 1'b1; b_wrn2 = 1'b1; b_wrn3 = 1'b1; end
    2'b01: begin b_wrn0 = 1'b1; b_wrn1 = b_wrn; b_wrn2 = 1'b1; b_wrn3 = 1'b1; end 
    2'b10: begin b_wrn0 = 1'b1; b_wrn1 = 1'b1; b_wrn2 = b_wrn; b_wrn3 = 1'b1; end 
    2'b11: begin b_wrn0 = 1'b1; b_wrn1 = 1'b1; b_wrn2 = 1'b1; b_wrn3 = b_wrn; end
  endcase
endmodule
