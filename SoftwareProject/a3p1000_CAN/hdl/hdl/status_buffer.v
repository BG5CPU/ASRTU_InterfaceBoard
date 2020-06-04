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
//+  File          : status_buffer.v
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
`timescale 1ns / 100ps
//+ memory for status information (FF's)
module status_buffer (
        dsc_out,          //+ description data output
        dsc_in,           //+ description data input
        a_ptr,            //+ adress pointer
        b_ptr,            //+ adress pointer
        wrn,              //+ write signal low active
        clk,              //+ clock 
        rsn		  //+ global reset low active 
        );
output  [1:0] dsc_out;    
input   [1:0] dsc_in;     
input   [1:0] a_ptr;      
input   [1:0] b_ptr;      
input         wrn;        
input         clk;        
input         rsn;        
reg     [1:0] dsc_out;    
wire    [1:0] dsc_in;     
wire    [1:0] a_ptr;      
wire    [1:0] b_ptr;      
wire          wrn;        
wire          clk;        
wire          rsn;        
reg     [1:0] reg0;       
reg     [1:0] reg1;       
reg     [1:0] reg2;       
reg     [1:0] reg3;       
always @ (a_ptr or reg0 or reg1 or reg2 or reg3)
  case (a_ptr)
    2'h0   : dsc_out = reg0;  
    2'h1   : dsc_out = reg1;  
    2'h2   : dsc_out = reg2;  
    2'h3   : dsc_out = reg3;   
  endcase
always @ (negedge rsn or posedge clk)
  if(rsn==1'b0)
    begin
      reg0 <= 0;
      reg1 <= 0;
      reg2 <= 0;
      reg3 <= 0;
    end
  else
    begin
      if (wrn==1'b0)
      case (b_ptr)
        4'h0   : reg0 <= dsc_in;  
        4'h1   : reg1 <= dsc_in;  
        4'h2   : reg2 <= dsc_in;  
        4'h3   : reg3 <= dsc_in;  
      endcase
      else;
    end
endmodule
