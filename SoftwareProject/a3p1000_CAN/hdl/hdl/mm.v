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
//+  File          : mm.v
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
//+  Last Update   : 02-Aug-2007
//+
//+  Version       : 2V18N00S00 
//+ ---------------------------------------------------------------------
//+
//+ $Id: mm.v,v 1.4.2.12 2007/08/17 05:55:17 schneide Exp $
`timescale 1ns/10ps
module mm
  (
  ctrl2iml,	//+ ControlReg outputs (ResReq,RIE,TIE,EIE,OIE,FIE) -> to IML
  com2iml,	//+ CommandReg outputs (TrRequ1,TrRequ2,AbortTr,RRB) -> to IML    
  a1c2iml,	//+ Acceptancecode1 outputs  			-> to IML      
  a1m2iml,	//+ Acceptancemask1 outputs  			-> to IML      
  a2c2iml,	//+ Acceptancecode2 outputs  			-> to IML      
  a2m2iml,	//+ Acceptancemask2 outputs  			-> to IML      
  a3c2iml,      //+ Acceptancecode3 outputs  			-> to IML
  a3m2iml,	//+ Acceptancemask3 outputs  			-> to IML      
  resetint,	//+ signal to reset the interrupt reg. in IML 	-> to IML
  out_intf,	//+ dataout to host 				-> to host
  interrupt,	//+ interrupt (highactive) 			-> to host
  adr_trbuf,	//+ byte address for transbuf			-> to transbuf
  wen_rb,	//+ write for FIFO, lowactive			-> to FIFO
  we_trbuf,	//+ write for transbuf				-> to transbuf			//+Write Enable fuer Nachrichten
  out_btl,	//+ time setting data (ControlSegment)		-> to BTL 
  o_div_factor,	//+ prescaler					-> to BTL
  tst_off,	//+ =1 ->test signals tst_sample und tst_sample off -> to BTL
  //+ --------------------------------------------------------------------------
  rb_wr_act,	//+ =1 -> ReceiveBuffer active                   <- from IML
  in_iml,	//+ bits of interrupt and status registers       <- from IML
  clk,		//+ system clock                                 <- global
  in_intf,	//+ daten from host to write		         <- from host
  adr_intf,	//+ addresses selected by host         	 	 <- from host
  adr_iml,	//+ addresses selected by IML    		 <- from IML
  reset_b, 	//+ =0 ->HW reset                                <- from global
  cs_b,    	//+ =0 ->enable Signal from host,lowactive       <- from host
  rd_b,      	//+ =0 ->read signal from host,lowactive         <- from host
  wr_b,      	//+ =0 ->write signal from host,lowactive        <- from host
  ready,   	//+ BSP-Reg complete and ready from TCL          <- from BTL
  sample,  	//+ sample clock enable				 <- from BTL
  transmit,	//+ =1 ->transmitting is active			 <- from TCL
  start_id,	//+ =1 ->transmission starts with ID bits (SOF recognized) <- from TCL
  dataout_fifo, //+ data from FIFO                    		 <- from FIFO
  reccount,  	//+ Receive Error Counter                        <- from EML
  trcount,   	//+ Transmit Error Counter                       <- from EML
  datatrans, 	//+ data to send		                 <- from transbuf
  trrequ, 	//+ =1 -> order to send (TrRequ1 or TrRequ2)	 <- from IML
  dscr_in	//+ InterruptDescription bits ID_fmt,RTR	 <- from FIFO
  );
output[5:0] ctrl2iml;	
output[3:0] com2iml;	
output[28:0] a1c2iml;      
output[28:0] a1m2iml;      
output[28:0] a2c2iml;      
output[28:0] a2m2iml;      
output[28:0] a3c2iml;      
output[28:0] a3m2iml;      
output resetint;	
output[7:0] out_intf;	
output interrupt;	
output [3:0] adr_trbuf;	
output wen_rb;		
output we_trbuf;	
output[8:0] out_btl;	
output[7:0] o_div_factor;
output tst_off;		
input rb_wr_act;	
input[13:0] in_iml;	
input clk;		
input[7:0] in_intf;	
input[5:0] adr_intf;	
input[3:0] adr_iml;	
input reset_b;		
input cs_b;		
input rd_b;		
input wr_b;		
input ready;		
input sample;		
input transmit;		
input start_id;		
input  [7:0] dataout_fifo;
input  [7:0] reccount;	
input  [7:0] trcount;	
input  [7:0] datatrans;	
input trrequ;		
input  [1:0] dscr_in;	
wire rb_wr_act;	
wire[13:0] in_iml;
wire clk;	
wire[7:0] in_intf;
wire[5:0] adr_intf;
wire[3:0] adr_iml;
wire reset_b;	
wire cs_b;	
wire rd_b;	
wire wr_b;	
wire ready;	
wire sample;	
wire transmit;	
wire start_id;	
wire  [7:0] dataout_fifo;
wire  [7:0] reccount;
wire  [7:0] trcount;
wire  [7:0] datatrans;
wire  trrequ;
wire  [1:0] dscr_in;	
reg[5:0] ctrl2iml;	
reg[3:0] com2iml;	
reg[28:0] a1c2iml;      
reg[28:0] a1m2iml;      
reg[28:0] a2c2iml;      
reg[28:0] a2m2iml;      
reg[28:0] a3c2iml;      
reg[28:0] a3m2iml;      
reg resetint;	
reg[7:0] out_intf;	
wire interrupt;	
reg [3:0] adr_trbuf;	
wire wen_rb;		
wire we_trbuf;		
reg[8:0] out_btl;	
reg[7:0] o_div_factor;
reg tst_off;		
//+
//
//+
//+	IN from IML				OUT to IML:
//+     			                ctrl2iml[5:0] 
//+	0:		resRRB(reset-Bit) 	[5] 		ResetRequest
//+	1:		BusStat			[4] 		RIE
//+	2:		ErrorStat		[3] 		TIE
//+	3:		TrStat			[2] 		EIE
//+	4:		recstat			[1] 		OIE
//+	5:		TrCompl			[0] 		FIE
//+	6:		TBAccess		com2iml[3:0] 
//+	7:		DataOvrn		[3] 		TrRequ1
//+	8:		RBStat			[2] 		TrRequ2
//+	9:		RBFI			[1] 		AbortTr
//+	10:		TrInt                   [0] 		RRB
//+	11:		OvrnInt                 a1c2iml[28:0] 
//+	12:		ErrInt                  a1m2iml[28:0] 
//+	13:		RecInt                  a2c2iml[28:0] 
//+                                             a2m2iml[28:0] 
//+	                                        a3c2iml[28:0]
//+	                                        a3m2iml[28:0]
//+
//+
//+
always@(posedge clk or negedge reset_b)
begin
  if(!reset_b)
    begin
      out_btl<=9'b00_0011_010;	     //+ ->t_sjw=0, t_seg1=5, t_seg2=3
      ctrl2iml[5:0]<=0;
      com2iml[3:0]<=0;
      a1c2iml[28:0]<=0;               
      a1m2iml[28:0]<=29'h1fffffff;    //+ all accepted
      a2c2iml[28:0]<=0; 
      a2m2iml[28:0]<=29'h1fffffff;    //+ all accepted 
      a3c2iml[28:0]<=0;
      a3m2iml[28:0]<=29'h1fffffff;    //+ all accepted
      o_div_factor[7:0]<=8'h01;       //+ =1 ->clk / 2
      tst_off<=0;	
    end
  else
    begin
      if(transmit|com2iml[1])	
	begin			
	  com2iml[2]<=0;		
	  com2iml[3]<=0;		
        end
      else;
      if(in_iml[6])	
        com2iml[1]<=0;	
      else;
      if(!cs_b&rd_b&!wr_b)
	begin
	  if(ctrl2iml[5]) 	//+ ResetRequest (SW reset)
            begin
	      case(adr_intf)
	        6'h20:  begin  
                          ctrl2iml [5:0]<={in_intf[7:3],in_intf[1]}; 
                          tst_off <=in_intf[2]; 
                        end
	        6'h24:     out_btl   [6:0]<=in_intf[7:1];  //+Seg_2[7:4],Seg_1[3:1]
	        6'h25:  begin     
                          out_btl   [8:7]<=in_intf[7:6];      //+SJW1,SJW2
                          a1m2iml   [4:0]<=in_intf[4:0];      //+A1M
                        end
	        6'h26:     o_div_factor[7:0]<=in_intf[7:0];   //+Presc[7:0]
	        6'h29:     a1c2iml [28:21]  <=in_intf[7:0];   //+A1C
	        6'h2a:     a1c2iml [20:13]  <=in_intf[7:0];   //+A1C
	        6'h2b:     a1c2iml [12:5]   <=in_intf[7:0];   //+A1C
	        6'h2c:     a1c2iml [4:0]    <=in_intf[7:3];   //+A1C
	        6'h2d:     a1m2iml [28:21]  <=in_intf[7:0];   //+A1M
	        6'h2e:     a1m2iml [20:13]  <=in_intf[7:0];   //+A1M
	        6'h2f:     a1m2iml [12:5]   <=in_intf[7:0];   //+A1M
	        6'h30:     a2c2iml [28:21]  <=in_intf[7:0];   //+A2C
	        6'h31:     a2c2iml [20:13]  <=in_intf[7:0];   //+A2C
	        6'h32:     a2c2iml [12:5]   <=in_intf[7:0];   //+A2C
	        6'h33:     a2c2iml [4:0]    <=in_intf[7:3];   //+A2C
	        6'h34:     a2m2iml [28:21]  <=in_intf[7:0];   //+A2M
	        6'h35:     a2m2iml [20:13]  <=in_intf[7:0];   //+A2M
	        6'h36:     a2m2iml [12:5]   <=in_intf[7:0];   //+A2M
	        6'h37:     a2m2iml [4:0]    <=in_intf[7:3];   //+A2M
	        6'h38:     a3c2iml [28:21]  <=in_intf[7:0];   //+A3C
	        6'h39:     a3c2iml [20:13]  <=in_intf[7:0];   //+A3C
	        6'h3a:     a3c2iml [12:5]   <=in_intf[7:0];   //+A3C
	        6'h3b:     a3c2iml [4:0]    <=in_intf[7:3];   //+A3C
	        6'h3c:     a3m2iml [28:21]  <=in_intf[7:0];   //+A3M
	        6'h3d:     a3m2iml [20:13]  <=in_intf[7:0];   //+A3M
	        6'h3e:     a3m2iml [12:5]   <=in_intf[7:0];   //+A3M
	        6'h3f:     a3m2iml [4:0]    <=in_intf[7:3];   //+A3M
	        default;
	      endcase
            end
	  else;	
	  case(adr_intf)	//+ always writable
	    6'h20:  begin  
                      ctrl2iml [5:0]<={in_intf[7:3],in_intf[1]}; 
                      tst_off <=in_intf[2]; 
                      if(in_iml[0]|!in_iml[8])	
	                 com2iml[0]<=0;		
                      else;
                    end
	    6'h21:  begin
                      if(in_intf[4]==1)
                        com2iml[0]<=1;		
                      else if((in_intf[4]==0)&(in_iml[0]|!in_iml[8]))	
	                com2iml[0]<=0;		
                      else;
	              com2iml [1]<=in_intf[5];	
                      if(com2iml[3:2]==2'b00)       
                        com2iml [3:2]<=in_intf[7:6]; 
                      else;
                    end
	    default:  if(in_iml[0]|!in_iml[8])	
	                com2iml[0]<=0;		
                      else;
	  endcase
	end
      else	
        begin
          if(in_iml[0]|!in_iml[8])	
	    com2iml[0]<=0;		
          else;
        end
    end	
end	
reg resetint_save;	
always @(negedge reset_b or posedge clk)	
  if(!reset_b)
    begin
      resetint_save<=0;
      resetint<=0;
    end
  else
    begin
      if(!(in_iml[13]|in_iml[12]|in_iml[11]|in_iml[10]|in_iml[9]))
        begin
          resetint_save<=0;
          resetint<=0;
        end
      else if ((adr_intf==6'h23)&!cs_b&!rd_b) 
        resetint_save<=1;
      else
        resetint<=resetint_save;
    end
assign wen_rb=!(ready&rb_wr_act&sample);	
assign we_trbuf=!(in_iml[6]&adr_intf[4]&!adr_intf[5]&!cs_b&!wr_b&rd_b);
always@(start_id or trrequ or transmit or adr_iml or adr_intf)
  if((trrequ==1'b1)&(transmit==1'b0))
    adr_trbuf[3:0]=4'b0000;		
  else if((transmit==1'b1)|(start_id==1'b1))
    adr_trbuf[3:0]=adr_iml[3:0];		
  else
    adr_trbuf[3:0]=adr_intf[3:0];		
assign interrupt=(in_iml[13]|in_iml[12]|in_iml[11]|in_iml[10]|in_iml[9])&!resetint;
always @(adr_intf or ctrl2iml or com2iml or a1c2iml or a1m2iml or a2c2iml or 
       a2m2iml or a3c2iml or a3m2iml or reccount or trcount or dataout_fifo 
       or in_iml or tst_off or out_btl or o_div_factor or datatrans or dscr_in)
  begin
    casex(adr_intf)
    6'h1x:	out_intf=datatrans;		//+Transmit Buffer    
    6'h20:	out_intf={ctrl2iml[5:1],tst_off,ctrl2iml[0],1'b0};//+Control Register
    6'h21:	out_intf={com2iml[3:0],4'b0000};//+Command Register
    6'h22:	out_intf={in_iml[8:1]};		//+Status Register
    6'h23:	out_intf={in_iml[13],dscr_in[1:0],in_iml[12:9],1'b0};//+Interrupt Register
    6'h24:	out_intf={out_btl[6:0],1'b0};	//+BitTiming Register
    6'h25:	out_intf={out_btl[8:7],1'b0,a1m2iml[4:0]};//+Additional Register
    6'h26:	out_intf={o_div_factor[7:0]};	//+Prescaler Register
    6'h27:	out_intf=reccount;		//+reccount Register
    6'h28:	out_intf=trcount;		//+trcount Register
    6'h29:	out_intf=a1c2iml [28:21];	//+A1C
    6'h2a:	out_intf=a1c2iml [20:13];	//+A1C
    6'h2b:	out_intf=a1c2iml [12:5];	//+A1C
    6'h2c:	out_intf={a1c2iml [4:0],3'b000};//+A1C
    6'h2d:	out_intf=a1m2iml [28:21];	//+A1M
    6'h2e:	out_intf=a1m2iml [20:13];	//+A1M
    6'h2f:	out_intf=a1m2iml [12:5];	//+A1M
    6'h30:	out_intf=a2c2iml [28:21];	//+A2C
    6'h31:	out_intf=a2c2iml [20:13];	//+A2C
    6'h32:	out_intf=a2c2iml [12:5];	//+A2C
    6'h33:	out_intf={a2c2iml [4:0],3'b000};//+A2C
    6'h34:	out_intf=a2m2iml [28:21];	//+A2M
    6'h35:	out_intf=a2m2iml [20:13];	//+A2M
    6'h36:	out_intf=a2m2iml [12:5];	//+A2M
    6'h37:	out_intf={a2m2iml[4:0],3'b000};	//+A2M
    6'h38:	out_intf=a3c2iml [28:21];	//+A3C
    6'h39:	out_intf=a3c2iml [20:13];	//+A3C
    6'h3a:	out_intf=a3c2iml [12:5];	//+A3C
    6'h3b:	out_intf={a3c2iml [4:0],3'b000};//+A3C
    6'h3c:	out_intf=a3m2iml [28:21];	//+A3M
    6'h3d:	out_intf=a3m2iml [20:13];	//+A3M
    6'h3e:	out_intf=a3m2iml [12:5];	//+A3M
    6'h3f:	out_intf={a3m2iml[4:0],3'b000};	//+A3M
    default:	out_intf=dataout_fifo;	//+Receive Buffer
    endcase
  end
endmodule
