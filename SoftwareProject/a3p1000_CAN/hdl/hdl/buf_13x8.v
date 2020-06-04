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
//+  File          : buf_13x8.v
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
//+ $Id: buf_13x8.v,v 1.3.2.6 2007/01/22 13:54:01 schneide Exp $
`timescale 1ns/10ps
module buf_13x8
  (
  dataout,
  we_b,
  datain,
  adress,
  clk,
  rst_b
  ) ;
input we_b;
input[7:0] datain;
input[3:0] adress;
input clk;	
input rst_b;	
output[7:0] dataout;
reg[7:0] dataout;
reg[103:0] ff_buf;
always @(negedge rst_b or posedge clk)
  if(rst_b==1'b0)
    ff_buf<=104'hffffffffffffffffffffffffff;
  else
    begin
      if(we_b==1'b0)
        case(adress)
	           4'b0000: ff_buf[7:0]<=datain;   
	           4'b0001: ff_buf[15:8]<=datain;  
	           4'b0010: ff_buf[23:16]<=datain; 
	           4'b0011: ff_buf[31:24]<=datain; 
	           4'b0100: ff_buf[39:32]<=datain; 
	           4'b0101: ff_buf[47:40]<=datain; 
	           4'b0110: ff_buf[55:48]<=datain; 
	           4'b0111: ff_buf[63:56]<=datain;
	           4'b1000: ff_buf[71:64]<=datain;
	           4'b1001: ff_buf[79:72]<=datain;
	           4'b1010: ff_buf[87:80]<=datain;
	           4'b1011: ff_buf[95:88]<=datain;
      	     default : ff_buf[103:96] <= datain;
        endcase
      else;
    end
always @(adress or ff_buf)
	   begin 
		case(adress)
		   4'b0000:  dataout[7:0]=ff_buf[7:0];	
		   4'b0001:  dataout[7:0]=ff_buf[15:8];	
		   4'b0010:  dataout[7:0]=ff_buf[23:16];	
		   4'b0011:  dataout[7:0]=ff_buf[31:24];	
		   4'b0100:  dataout[7:0]=ff_buf[39:32];	
		   4'b0101:  dataout[7:0]=ff_buf[47:40];	
		   4'b0110:  dataout[7:0]=ff_buf[55:48];	
		   4'b0111:  dataout[7:0]=ff_buf[63:56];
		   4'b1000:  dataout[7:0]=ff_buf[71:64];
		   4'b1001:  dataout[7:0]=ff_buf[79:72];
		   4'b1010:  dataout[7:0]=ff_buf[87:80];
		   4'b1011:  dataout[7:0]=ff_buf[95:88];
		   default:  dataout[7:0]=ff_buf[103:96];
		endcase
	   end
endmodule
