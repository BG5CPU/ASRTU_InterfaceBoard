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
//+  File          : bsp.v
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
//+ $Id: bsp.v,v 1.4.2.6 2007/01/22 13:54:01 schneide Exp $
`timescale 1ns/10ps
module bsp (
  out2tcl,	//+ serialized data from TransBuf 	-> to TCL
  ready,	//+ BSP-Reg complete and ready from TCL -> to IML,MM
  dataout,	//+ BSP-Reg 				-> to IML,Mem
  a,		//+ Pointer selects bitposition in the BSP-Reg	-> to IML
  clk,		//+ system clock
  datain,	//+ databyte to transmit 		<- from TransBuf
  reset,	//+ =1 ->reset_request (HW and SW-reset)<- from IML
  halt,		//+ =1 ->bit not load into BSP-Reg	<- from TCL
  clock,	//+ bittime clock enable		<- from BTL
  tranceive,	//+ =1 ->transmitting is active		<- from TCL
  in_fr_tcl,	//+ rx data from TCL			<- from TCL
  zero,		//+ =1 ->set a=7 (new frame area)	<- from TCL
  ready_input,	//+ =1 ->ready from TCL			<- from TCL
  cd,		//+ =1 ->change direction (Rec<->Trans)	<- from TCL
  rtr		//+ =1 ->RTR bit			<- from TCL
  );
output out2tcl;
output ready;
output[7:0] dataout;
output[2:0] a;
input clk;
input [7:0] datain;
input reset;
input halt;
input clock;
input tranceive;
input in_fr_tcl;
input zero;
input ready_input;
input cd;
input rtr;
reg[7:0] dataout;
reg [2:0] a;
reg ready_reg;
wire ready,ready_int;		
wire out2tcl;		
wire [2:0] a_minus;            
wire [2:0] a_plus1;            
wire [2:0] a_plus2;            
assign a_minus = a - 3'b001;   
assign a_plus1 = a + 3'b001;   
assign a_plus2 = a + 3'b010;   
always@(posedge reset or posedge clk)
  begin
    if (reset==1'b1)
      begin
	a<=3'b111;
	dataout<=8'b00000000;
	ready_reg<=1'b0;
      end
    else
      begin
        if(clock==1'b1)
          begin
	    ready_reg<=ready_input&!halt;		
	    if(zero==1'b1)	
              begin		
	        if((halt==1'b0))
	          begin
		    if(tranceive==1'b0)	
		      dataout[7]<=in_fr_tcl;	
		    else		
		      dataout[7:0]<=datain[7:0]; 	
	          end
                else;
                a<=3'b111;
              end	
	    else
	      begin
	        if((halt==1'b0)&(cd==1'b0))	
                  begin				
		    if(tranceive==1'b0)	
                      dataout[ a_minus]<=in_fr_tcl;       
		    else		
		      dataout[7:0]<=datain[7:0];
		    a<=a-3'b001;
                  end
	        else if((cd==1'b1)&(rtr==1'b0))
                  begin
	            if((halt==1'b0))
	              begin
		        if(tranceive==1'b0)	
                          dataout[ a_plus1]<=in_fr_tcl;	
		        else		
		          dataout[7:0]<=datain[7:0];
	              end
	            else;
		    a<=a+3'b001;
                  end	
		else if((cd==1'b1)&(rtr==1'b1)) 
                  begin
	            if((halt==1'b0))
	              begin
		        if(tranceive==1'b0)	
                          dataout[ a_plus2]<=in_fr_tcl;   
		        else		
		          dataout[7:0]<=datain[7:0];
	              end
	            else;
		    a<=a+3'b010;
                  end	
		else;		
	      end
          end	
        else;	
      end	
  end		
assign out2tcl=datain[a];
assign ready_int=!a[0]&!a[1]&!a[2];	
assign ready=ready_int|ready_reg;	
endmodule
