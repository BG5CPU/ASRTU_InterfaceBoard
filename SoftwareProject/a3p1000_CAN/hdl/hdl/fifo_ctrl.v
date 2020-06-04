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
//+  File          : fifo_ctrl.v
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
//+ $Id: fifo_ctrl.v,v 1.1.2.7 2007/01/22 13:54:02 schneide Exp $
`timescale 1ns / 100ps
module fifo_ctrl (
        //+ port a used as "output" port (host)
	a_addr,           //+ port a buffer addr
        a_dout,           //+ port a data output
        a_next,           //+ access to next FIFO element (n-byte-Buffer)
        a_ptr,            //+ adress pointer
        //+ port b used as "input" port (can)
        b_addr,           //+ port b buffer addr
        b_din,            //+ port b data input
        b_wrn,            //+ port b write signal low active
        b_next,           //+ access to next FIFO element (n-byte-Buffer)
        b_ptr,            //+ adress pointer
        //+ description bits
        dsc_out,          //+ description data output
        dsc_in,           //+ description data input
        //+ control signals
        not_empty,        //+ at least 1 FIFO Element if full    => (static)
	full,             //+ full warning limit achieved        => (static)
        overflow,         //+ FIFO overflow (data lost)          => (pulse) 
	nreset,           //+ async l-activ reset
        clk               //+ clock  
        );
parameter  p_max_fill_count       =  3 ;    
input  [3:0]   a_addr;          
output [7:0]   a_dout;          
input          a_next;          
output [1:0]   a_ptr;           
input  [3:0]   b_addr;          
input  [7:0]   b_din;           
input          b_wrn;            
input          b_next;          
output [1:0]   b_ptr;           
output [1:0]   dsc_out;         
input  [1:0]   dsc_in;          
output         not_empty;       
output         full;            
output         overflow;        
input          nreset;          
input          clk;             
wire  [3:0]   a_addr;           
wire  [7:0]   a_dout;           
wire          a_next;           
reg   [1:0]   a_ptr;            
wire  [3:0]   b_addr;           
wire  [7:0]   b_din;            
wire          b_wrn;             
wire          b_next;           
reg   [1:0]   b_ptr;            
wire  [1:0]   dsc_out;          
wire  [1:0]   dsc_in;           
reg           not_empty;        
reg           full;             
reg           overflow;         
wire          nreset;           
wire          clk;              
reg   [1:0]   next_a_ptr;       
reg   [1:0]   next_b_ptr;       
reg   [1:0]   fill_count;       
reg   [1:0]   next_fill_count;  
reg           next_overflow;
wire  [1:0]   ab_next;
reg           next_not_empty;
reg           next_full;   
wire  [1:0]   af_warnig_limit;  
reg           ptr_mismatch;     
wire  [1:0]   diff_ptr;         
assign af_warnig_limit = 2'd3;  
always @(posedge clk or negedge nreset)
  if(nreset == 1'b0) 
    begin
      a_ptr <= 0;
      b_ptr <= 1;
      fill_count  <= 0;
    end
  else  
    if (ptr_mismatch)  
      begin
        a_ptr <= 0;
        b_ptr <= 1;
        fill_count  <= 0;
      end
    else
      begin
        a_ptr <= next_a_ptr;
        b_ptr <= next_b_ptr;
        fill_count  <= next_fill_count;
      end
assign diff_ptr = a_ptr-b_ptr;
always @(diff_ptr or fill_count)
  case(diff_ptr)
    2'b00: ptr_mismatch = 1;                                                    
    2'b01: if (fill_count != 2'b11)   ptr_mismatch = 1; else ptr_mismatch = 0;  
    2'b10: if (fill_count != 2'b10)   ptr_mismatch = 1; else ptr_mismatch = 0;  
    2'b11: if (fill_count[1] != 1'b0) ptr_mismatch = 1; else ptr_mismatch = 0;  
  endcase
assign ab_next = {a_next,b_next};
always @(ab_next or fill_count or a_ptr or b_ptr)
  if (fill_count==0)  
    begin
      case (ab_next)
        2'b00:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end
        2'b01:  begin next_fill_count = fill_count +1; next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end
        2'b10:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end 
        2'b11:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end
      endcase
    end
  else if (fill_count == 1)  
    begin
      case (ab_next)
        2'b00: begin next_fill_count = fill_count;     next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end
        2'b01: begin next_fill_count = fill_count +1;  next_a_ptr = a_ptr;    next_b_ptr = b_ptr+1; end
        2'b10: begin next_fill_count = fill_count -1;  next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end
        2'b11: begin next_fill_count = fill_count;     next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end
      endcase
    end
  else if (fill_count == p_max_fill_count)  
    begin
      case (ab_next)
        2'b00:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end  
        2'b01:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end 
        2'b10:  begin next_fill_count = fill_count -1; next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr;   end  
        2'b11:  begin next_fill_count = fill_count;    next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end  
      endcase
    end
  else  
    begin
      case (ab_next)
        2'b00: begin next_fill_count = fill_count;     next_a_ptr = a_ptr;    next_b_ptr = b_ptr;   end
        2'b01: begin next_fill_count = fill_count +1;  next_a_ptr = a_ptr;    next_b_ptr = b_ptr+1; end
        2'b10: begin next_fill_count = fill_count -1;  next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr;   end
        2'b11: begin next_fill_count = fill_count;     next_a_ptr = a_ptr+1;  next_b_ptr = b_ptr+1; end
      endcase
    end
always @(ab_next or fill_count or a_ptr or b_ptr)
  if (fill_count == p_max_fill_count)  
    begin
      case (ab_next)
        2'b00:  next_overflow = 0;
        2'b01:  next_overflow = 1; 
        2'b10:  next_overflow = 0; 
        2'b11:  next_overflow = 0;
      endcase
    end
  else next_overflow = 0;
always @(next_fill_count or af_warnig_limit)
  if (next_fill_count >= af_warnig_limit)
    next_full = 1;
  else
    next_full = 0;
always @(next_fill_count)
  if      (next_fill_count==0) next_not_empty = 0;
  else    next_not_empty = 1;
always @(posedge clk or negedge nreset)
  if(nreset == 1'b0) 
    begin
      not_empty <= 0;
      full <= 0;
      overflow <= 0;
    end
  else if (ptr_mismatch)  
    begin                 
      not_empty <= 0;      
      full <= 0;           
      overflow <= 1;       
    end
  else if (a_next | b_next)
    begin
      not_empty <= next_not_empty;
      full <= next_full;
      overflow <= next_overflow;
    end
  else
    begin
      overflow <= 0;   
    end
rx_buffer i_rx_buffer (
	.a_addr(a_addr),   
        .a_dout(a_dout),   
        .a_ptr(a_ptr),     
        .b_addr(b_addr),   
        .b_din(b_din),     
        .b_wrn(b_wrn),     
        .b_ptr(b_ptr),     
        .clk(clk),         
        .rsn(nreset)	   
        );
status_buffer i_status_buffer (
        .dsc_out(dsc_out), 
        .dsc_in(dsc_in),   
        .a_ptr(a_ptr),     
        .b_ptr(b_ptr),     
        .wrn(b_wrn),       
        .clk(clk),         
        .rsn(nreset)       
        );
endmodule
