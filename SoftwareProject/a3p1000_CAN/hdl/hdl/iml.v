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
//+  File          : iml.v
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
//+ $Id: iml.v,v 1.5.2.16 2007/01/22 13:54:02 schneide Exp $
//+ Verilog HDL for "can_core", "iml" "behavioral"
`timescale 1ns/10ps
module iml 
  (
  out2mm,	//+ Bits of Interrupt and Statusregisters	-> to MM
  address,	//+ byte address (generated for MM)		-> to MM
  rb_wr_act,	//+ RB active (receiving or transmitting)	-> to FIFO
  id_out,	//+ =1 -> ext. ID, =0 -> std. ID (transmission)	-> to TCL
  trrequ,	//+ =1 ->Transmit request (TrRequ1 oder TrRequ2)-> to TCL
  reset_request,//+ =1 ->HW or SW reset 			-> to TCL,BSP,BTL,EML
  wr_ptr_next,	//+ =1 one clk-period to increment the b_ptr	-> to dpram_fifo_ctrl
  rd_ptr_next,	//+ =1 one clk-period to increment the a_ptr	-> to dpram_fifo_ctrl
  clk,		//+ System clock				<- from can_top
  reset_b,	//+ HW reset					<- from can_top
  ctrl_mm,	//+ ControlReg inputs (ResReq,RIE,TIE,EIE,OIE,FIE) <- from MM
  com_mm,	//+ CommandReg inputs (TrRequ1,TrRequ2,AbortTr,RRB) <- from MM    
  a1c,		//+ Acceptancecode1 inputs  			<- from MM      
  a1m,		//+ Acceptancemask1 inputs  			<- from MM      
  a2c,		//+ Acceptancecode2 inputs  			<- from MM      
  a2m,		//+ Acceptancemask2 inputs  			<- from MM      
  a3c,      	//+ Acceptancecode3 inputs  			<- from MM
  a3m,		//+ Acceptancemask3 inputs  			<- from MM      
  resetint,	//+ =1 ->reset "recint,transint,errorint,ovrnint" in IML after read access <- vom MM
  data_rec,	//+ Data byte from BSP (received or transmitted)<- from BSP
  a,		//+ Pointer selects bitposition within the byte	<- from BSP
  ready,	//+ =1 ->byte at the BSP complete		<- from BSP
  clock,	//+ Bit clock (ena for clk)    	        <- from BTL
  warn_limit,	//+ =1 ->one of errorcounters is >= 96		<- from EML
  busoff,	//+ =1 ->TrCount >= 256				<- from EML
  sof,		//+ =1 ->TCL has recognized the SOF bit		<- from TCL
  id_fmt,	//+ =1 ->ID format (=1->ext.ID,=0->std.ID)	<- from TCL
  halt,		//+ =1 ->BSP ignores the bit (stfb,srr,rtr,ide...<- from TCL
  eof,		//+ =1 ->area of crc-,ack- und eof-Bits		<- from TCL
  revalid,	//+ =1 ->receiving valid			<- from TCL
  start,	//+ =1 ->Start of transmission			<- from TCL
  cd,		//+ =1 ->change direction (Lost Arbitration)	<- from TCL
  abort,	//+ =1 ->abort of message storage after error 	<- from TCL
  transvalid,	//+ =1 ->transmission errorfree to the last bit	<- from TCL
  start_id,	//+ =1 ->start of transmission with ID (external SOF recognized)<- from TCL
  transmit,	//+ =1 ->node is transmitter			<- from TCL
  receive,	//+ =1 ->node is receiver			<- from TCL
  fullstat_fifo,//+ all RB full (from FIFO)  )			<- from FIFO
  ovrn_stat_fifo,//+ the oldest message in the FIFO is overwritten <- from FIFO
  rbstat	//+ at least 1 FIFO Element if full 		<- from FIFO
);
output [13:0] out2mm;	//+ RecInt,ErrInt,OvrnInt,TrInt,RBFI,RecBufStat,RecBufFull,
	                //+ TrBufAcc,TrCompl,RecStat,TrStat,ErrStat,BusStat,resrrb
output [3:0] address;
output rb_wr_act;	
output id_out;
output trrequ;
output reset_request;	//+ =1 ->HW- or SW-reset (ResReq bit of CtrlReg is set ) -> to TCL,BSP,BTL,EML
output wr_ptr_next;	//+ =1 one clk-period to increment the b_ptr	-> to dpram_fifo_ctrl
output rd_ptr_next;	//+ =1 one clk-period to increment the a_ptr	-> to dpram_fifo_ctrl
input clk;
input[5:0]  ctrl_mm;  //+ ControlReg outputs (ResReq,RIE,TIE,EIE,OIE,FIE)  
input[3:0]  com_mm;   //+ CommandReg outputs (TrRequ1,TrRequ2,AbortTr,RRB)   
input[28:0] a1c;      //+ Acceptancecode1 inputs   
input[28:0] a1m;      //+ Acceptancemask1 inputs  
input[28:0] a2c;      //+ Acceptancecode2 inputs   
input[28:0] a2m;      //+ Acceptancemask2 inputs  
input[28:0] a3c;      //+ Acceptancecode3 inputs   
input[28:0] a3m;      //+ Acceptancemask3 inputs   
input [7:0] data_rec; 
input [2:0] a;
input clock;
input sof;
input ready;
input id_fmt;
input reset_b;
input halt;
input eof;
input revalid;
input start;
input cd;
input abort;
input transvalid;
input start_id;
input resetint;	 
input warn_limit;
input busoff;
input transmit;
input receive;
input fullstat_fifo;	//+ all RB full (from FIFO)
input ovrn_stat_fifo;   //+ the oldest message in the FIFO is overwritten <- from FIFO
input rbstat;   	//+ at least 1 FIFO Element if full <- from FIFO
wire clk;
wire[5:0]  ctrl_mm;  //+ ControlReg outputs (ResReq,RIE,TIE,EIE,OIE,FIE)  
wire[3:0]  com_mm;   //+ CommandReg outputs (TrRequ1,TrRequ2,AbortTr,RRB)   
wire[28:0] a1c;      //+ Acceptancecode1 inputs      
wire[28:0] a1m;      //+ Acceptancemask1 inputs     
wire[28:0] a2c;      //+ Acceptancecode2 inputs      
wire[28:0] a2m;      //+ Acceptancemask2 inputs     
wire[28:0] a3c;      //+ Acceptancecode3 inputs      
wire[28:0] a3m;      //+ Acceptancemask3 inputs      
wire [7:0] data_rec; 
wire [2:0] a;
wire clock;
wire sof;
wire ready;
wire id_fmt;
wire reset_b;
wire halt;	
wire eof;
wire revalid;
wire start;
wire cd;		
wire abort;
wire transvalid;
wire start_id;
wire resetint;	
wire warn_limit;
wire busoff;
wire transmit;
wire receive;		
wire fullstat_fifo;	
wire ovrn_stat_fifo;   
wire rbstat;		
wire [13:0] out2mm;
reg  [3:0] address;
reg rb_wr_act;		
wire id_out;
wire trrequ;
reg reset_request;
reg wr_ptr_next;	
reg rd_ptr_next;	
//+internal signals:
reg recend;	//+ =1 ->message isn't accepted from all acc. filters
wire rr_in;	//+ Reset Request input from MM register
wire trstat;	//+ transmit status (=1 -> node is transmitting even)
wire busstat;	//+ bus status (=1 -> busoff)
reg recstat;	//+ receive status (=1 -> node is receiving even)
reg trcompl;	//+ transmission complete (=1 if trrequ=0, no abort transmission realized)
reg tbacc;	//+ transmit buffer access (=1 if trrequ=0 without abort transmission
		//+ or if AbortTr=1 and abort realized without transmission)
wire oie;	//+ overrun interrupt enable input from MM
wire tie;	//+ transmit interrupt enable input from MM
wire rie;	//+ receive interrupt enable input from MM
wire eie;	//+ error interrupt enable input from MM
wire fie;	//+ full interrupt enable input from MM
wire stopp;	//
wire decadr;
reg fullstat_fifo_store;	
//+ signals to control the acceptance filtering
reg [7:0] byte_acc1;	//+result of checked bit positions from ID bits "1"->not pass
reg [7:0] byte_acc2;	//+result of checked bit positions from ID bits "1"->not pass
reg [7:0] byte_acc3;	//+result of checked bit positions from ID bits "1"->not pass
reg not_acc1_l;		//+logical acceptance check result of filter1 at current ID byte
reg not_acc2_l;		//+logical acceptance check result of filter2 at current ID byte
reg not_acc3_l;		//+logical acceptance check result of filter3 at current ID byte
reg not_acc1_r;         //+registered acceptance check result of filter1
reg not_acc2_r;         //+registered acceptance check result of filter2
reg not_acc3_r;         //+registered acceptance check result of filter3
wire fil1_rej;		//+logical value shows if filter is rejecting actual message (=1->reject)
wire fil2_rej;		//+logical value shows if filter is rejecting actual message 
wire fil3_rej;		//+logical value shows if filter is rejecting actual message 
//+ command / interrupt registers-------------------------------------------------
reg trrequ1,trrequ2;	//+Command Register
reg recint;		//+RecInt	->received message valid
reg errorint;		//+ErrInt	->error status or bus status has changed
reg ovrnint;		//+OvrnInt	->at least one RB overwritten		
reg transint;		//+TrInt	->transmission completed successfully
reg rbfint;		//+RBFI		->all three RB filled
reg resrrb;
reg warn_limit_old;	
reg busoff_old;		
reg ready_save;		
assign trstat=transmit;			
assign busstat=busoff;			
assign fie=ctrl_mm[0];
assign oie=ctrl_mm[1];
assign eie=ctrl_mm[2];
assign tie=ctrl_mm[3];
assign rie=ctrl_mm[4];
assign rr_in=ctrl_mm[5];
assign out2mm[0]=resrrb;			//+ Reset for rrb in MM
assign out2mm[1]=busstat;			//+ 0x22[0],RecBufStat
assign out2mm[2]=warn_limit;			//+ 0x22[1],ErrStat
assign out2mm[3]=trstat;			//+ 0x22[2],TrStat
assign out2mm[4]=recstat;			//+ 0x22[3],RecStat
assign out2mm[5]=trcompl;			//+ 0x22[4],TrCompl
assign out2mm[6]=tbacc;				//+ 0x22[5],TrBufAcc
assign out2mm[7]=fullstat_fifo;			//+ 0x22[6],RecBufFull
assign out2mm[8]=rbstat;			//+ 0x22[7],RecBufStat
assign out2mm[9]=rbfint;			//+ 0x23[1],RBFI
assign out2mm[10]=transint;			//+ 0x23[2],TrInt
assign out2mm[11]=ovrnint;			//+ 0x23[3],OvrnInt
assign out2mm[12]=errorint;			//+ 0x23[4],ErrInt
assign out2mm[13]=recint;			//+ 0x23[7],RecInt
always@(negedge reset_b or posedge clk) 
  begin
    if(reset_b==1'b0)	
      begin
        recend<=1'b0;
        rb_wr_act<=1'b0;	
        address<=4'b0000;
        reset_request<=1'b1;	
        trrequ1<=1'b0;
        trrequ2<=1'b0;
        trcompl<=1'b1;
        tbacc<=1'b1;
        recstat<=1'b0;
        resrrb<=1'b1;       
        wr_ptr_next<=1'b0; 
        rd_ptr_next<=1'b0; 
        not_acc1_r <= 1'b0;
        not_acc2_r <= 1'b0;
        not_acc3_r <= 1'b0;
        ready_save <= 1'b0;
      end
    else	
      begin
        reset_request<=rr_in; 
        if(wr_ptr_next==1'b1)
          wr_ptr_next<=1'b0;	
        if(rd_ptr_next==1'b1)
          rd_ptr_next<=1'b0;	
        else;
        //+ ---SOFTWARE RESET begin                                                    
        if((rr_in==1'b1)|(busoff==1'b1))
          begin         
            trrequ1<=1'b0;  	
            trrequ2<=1'b0;                                                     
            trcompl<=1'b1;
            tbacc<=1'b1;
            rb_wr_act<=1'b0;	
            recstat<=1'b0;
            recend<=1'b0;
            not_acc1_r <= 1'b0;
            not_acc2_r <= 1'b0;
            not_acc3_r <= 1'b0;
          end 
        //+ ---SOFTWARE RESET end                                                    
        else	
          begin
	    if(com_mm[0]==1'b1)	
	      begin
	        if(resrrb==1'b0)
	          begin
		    resrrb<=1'b1;	
                    rd_ptr_next<=1'b1;	
	          end
                else;
              end
            else
              begin
                resrrb<=1'b0;	
                rd_ptr_next<=1'b0;	
              end
            if((com_mm[3]==1'b1)&(trrequ1==1'b0)&(trrequ2==1'b0)) 
              begin         
                trrequ1<=1'b1;  
                trcompl<=1'b0;
                tbacc<=1'b0;
              end
            else if((com_mm[2]==1'b1)&(trrequ2==1'b0)&(trrequ1==1'b0)) 
              begin         
                trrequ2<=1'b1;  
                trcompl<=1'b0;
                tbacc<=1'b0;
              end
            else;
            if(abort==1'b1) 		
              begin
                rb_wr_act<=1'b0;    
              end
            if(clock==1'b1)	
              begin
                if(eof==1'b0)
                  recstat<=receive;
                else
                  begin
                    if(revalid==1'b1)
                      recstat<=1'b0;
                    else;
                  end
                if(receive==1'b1)                                                      
                  begin
                    if(sof==1'b1)
                      address<=4'b0000;                                                                  
                    else if(recend==1'b0) 
                      begin     
                        if(eof==1'b0)                                                 
                          begin                                                  
                            if((ready==1'b1)&(stopp==1'b0)&(halt==1'b0))    
                              address<=address+4'b0001;        
                            else if(decadr==1'b1)                                               
                              address<=address-4'b0001;                                            
                            else;                                                         
                          end                                                                  
                        else                                                                   
                          begin
                            if(revalid==1'b1) 
                              begin 
                                rb_wr_act<=1'b0;    
                                wr_ptr_next<=1'b1; 	
                              end                                                              
                             else;                                                              
                          end                                                                  
                      end 	
                    else;                                                        
                  end		
                else if(transmit==1'b1)                                                              
                  begin                                                                        
                    if((ready==1'b1)|(ready_save==1'b1)) 
                      begin                                                           
                        if(halt==1'b0)
                          begin 
                            address<=address+4'b0001;
                            ready_save <= 1'b0;
                          end
                        else
                          begin 
                            ready_save <= 1'b1;
                          end
                      end                                                         
                    else;
                  end                                                                          
                else
                  begin                 
                    if(transvalid==1'b1)      
                      begin                                                                    
                        trrequ1<=1'b0;                                                             
                        trrequ2<=1'b0;                                                             
                        trcompl<=1'b1;
                        tbacc<=1'b1;
                        rb_wr_act<=1'b0;    
                      end
                    recend<=1'b0;	
                    address<=4'b0000;	
                  end                                                                          
                if((ready==1'b1)&(recend==1'b0)&(eof==1'b0)&(fil1_rej==1'b1)&(fil2_rej==1'b1)&(fil3_rej==1'b1))
                  recend <= 1'b1;	//+message rejected
                else;
                if((start==1'b1)|(start_id==1'b1)|(sof==1'b1))
                  begin
                    not_acc1_r <= 1'b0;
                    not_acc2_r <= 1'b0;
                    not_acc3_r <= 1'b0;
                  end
                else if((ready==1'b1)&(recend==1'b0)&(eof==1'b0))
                  begin
                    if(not_acc1_l==1'b1)
                      not_acc1_r <= 1'b1;
                    else;
                    if(not_acc2_l==1'b1)
                      not_acc2_r <= 1'b1;
                    else;
                    if(not_acc3_l==1'b1)
                      not_acc3_r <= 1'b1;
                    else;
                  end
                else;
                if((start==1'b1)|(start_id==1'b1))      
                  begin      		
                    if(fullstat_fifo==1'b0)  
                      rb_wr_act<=1'b1;      
                    else; 	  	
                  end                                                                       
                else if(sof==1'b1)            
                  begin                                                                     
                    address<=1'b0;                                                              
                    rb_wr_act<=1'b1;        
                  end                                                                       
                else;
                if((com_mm[1]==1'b1)&(transmit==1'b0))         
                  begin                                                                        
                    trrequ1<=1'b0;    
                    trrequ2<=1'b0;    
                    trcompl<=1'b0;
                    tbacc<=1'b1;
                  end                                                                          
                else;
              end   	
            else;     	
          end   	
      end       	
  end			
always@(negedge reset_b or posedge clk) 
  begin
    if(reset_b==1'b0)	
      recint<=1'b0;       
    else	
      begin
        if((rr_in==1'b1)|(busoff==1'b1))
          recint<=1'b0;                             
        else	
          begin
            if(clock==1'b1)	
              begin
                if((receive==1'b1)&(recend==1'b0)&(revalid==1'b1))                                    
                  recint<=rie;     
                else
                  begin                 
                    if(resetint==1'b1)  
                      recint<=1'b0;	
                    else;
                  end
              end   	
            else     	
              begin                                                  
                  if(resetint==1'b1)    
                    recint<=1'b0;	
                  else;
              end
          end   	
      end       	
  end			
always@(negedge reset_b or posedge clk) 
  begin
    if(reset_b==1'b0)	
      begin
        ovrnint<=1'b0;
        rbfint<=1'b0; 
        fullstat_fifo_store<=1'b0;                                                
      end
    else	
      begin
        //+ ---SOFTWARE RESET begin                                                    
        if((rr_in==1'b1)|(busoff==1'b1))
          begin         
        //+ ---SOFTWARE RESET end                                                    
            ovrnint<=1'b0;                                                
            rbfint<=1'b0;                                                 
            fullstat_fifo_store<=1'b0;
          end 
        else	
          begin
            if((fullstat_fifo==1'b1)&(fullstat_fifo_store==1'b0)) 
              begin
                fullstat_fifo_store<=1'b1;
                rbfint<=fie;
              end
            else if(fullstat_fifo==1'b0)	
              fullstat_fifo_store<=1'b0;
            else;
            if(ovrn_stat_fifo==1'b1) 
              ovrnint<=oie;
            else;
            if(resetint==1'b1)    
              begin         
                rbfint<=1'b0;                                                 
                ovrnint<=1'b0;                                                 
              end                                                          
            else;
          end   	
      end       	
  end			
always@(negedge reset_b or posedge clk) 
  begin
    if(reset_b==1'b0)	
      transint<=1'b0;       
    else		
      begin
        if((rr_in==1'b1)|(busoff==1'b1))
          transint<=1'b0;                             
        else	
          begin
            if(clock==1'b1)	
              begin                 
                if(transvalid==1'b1)      
                  begin                                                        
                    if(tie==1'b1)         
                      transint<=1'b1; 
                    else                                                       
                      transint<=1'b0; 
                  end                     
                else
                  begin                 
                    if(resetint==1'b1)    
                      transint<=1'b0;
                    else;
                  end
              end   	
            else     	
              begin                                                  
                  if(resetint==1'b1)    
                    transint<=1'b0;
                  else;
              end
          end   	
      end       	
  end			
always@(negedge reset_b or posedge clk) 
  begin
    if(reset_b==1'b0)	
      begin
        errorint<=1'b0;       
        warn_limit_old<=1'b0;
        busoff_old<=1'b0;
      end
    else	
      begin
        if(rr_in==1'b1)
          begin               
            errorint<=1'b0;                             
            warn_limit_old<=1'b0;
            busoff_old<=1'b0;
          end                                                
        else	
          begin
            if(clock==1'b1)	
              begin
                if((busoff==1'b1)&(busoff_old==1'b0))	
                  begin
                    busoff_old<=1'b1;
                    errorint<=eie;
                  end
                else if((busoff==1'b0)&(busoff_old==1'b1))	
                  begin		
                    busoff_old<=1'b0;
                    errorint<=eie;
                    warn_limit_old<=1'b0;                                               
                  end
                else if((warn_limit==1'b1)&(warn_limit_old==1'b0))
                  begin                                                                      
                    errorint<=eie;                                                              
                    warn_limit_old<=1'b1;                                               
                  end                                                                        
                else if((warn_limit==1'b0)&(warn_limit_old==1'b1))
                  begin                                                                      
                    errorint<=eie;                                                              
                    warn_limit_old<=1'b0;                                               
                  end                                                                        
                else 	
                  begin
                    if(resetint==1'b1)   	
                        errorint<=1'b0;	
                    else;
                  end
              end   	
            else     	
              begin                                                  
                  if(resetint==1'b1)    
                    begin         
                      errorint<=1'b0;                                
                    end                                                        
                  else;
              end
          end   	
      end       	
  end			
//+ Logical assignments for acceptance filtering
//+ not accepted bits of vector byte_acc will be "1"
always@(address or id_fmt or data_rec or a1m  or a1c or a2m  or a2c or a3m  or a3c)
  case({id_fmt,address})
     5'h1_0:	
           begin
             byte_acc1[7:0]=(~a1m[28:21]&(data_rec[7:0]^a1c[28:21]));
             byte_acc2[7:0]=(~a2m[28:21]&(data_rec[7:0]^a2c[28:21]));
             byte_acc3[7:0]=(~a3m[28:21]&(data_rec[7:0]^a3c[28:21]));
           end
     5'h1_1:	
           begin
             byte_acc1[7:0]=(~a1m[20:13]&(data_rec[7:0]^a1c[20:13]));
             byte_acc2[7:0]=(~a2m[20:13]&(data_rec[7:0]^a2c[20:13]));
             byte_acc3[7:0]=(~a3m[20:13]&(data_rec[7:0]^a3c[20:13]));
           end
     5'h1_2:	
           begin
             byte_acc1[7:0]=(~a1m[12:5]&(data_rec[7:0]^a1c[12:5]));
             byte_acc2[7:0]=(~a2m[12:5]&(data_rec[7:0]^a2c[12:5]));
             byte_acc3[7:0]=(~a3m[12:5]&(data_rec[7:0]^a3c[12:5]));
           end
     5'h1_3:	
           begin
             byte_acc1[7:3]=(~a1m[4:0]&(data_rec[7:3]^a1c[4:0]));
             byte_acc2[7:3]=(~a2m[4:0]&(data_rec[7:3]^a2c[4:0]));
             byte_acc3[7:3]=(~a3m[4:0]&(data_rec[7:3]^a3c[4:0]));
             byte_acc1[2:0]=3'b000;
             byte_acc2[2:0]=3'b000;
             byte_acc3[2:0]=3'b000;
           end
     5'h0_0:	
           begin
             byte_acc1[7:0]=(~a1m[28:21]&(data_rec[7:0]^a1c[28:21]));
             byte_acc2[7:0]=(~a2m[28:21]&(data_rec[7:0]^a2c[28:21]));
             byte_acc3[7:0]=(~a3m[28:21]&(data_rec[7:0]^a3c[28:21]));
           end
     5'h0_1:	
           begin
             byte_acc1[7:5]=(~a1m[20:18]&(data_rec[7:5]^a1c[20:18]));
             byte_acc2[7:5]=(~a2m[20:18]&(data_rec[7:5]^a2c[20:18]));
             byte_acc3[7:5]=(~a3m[20:18]&(data_rec[7:5]^a3c[20:18]));
             byte_acc1[4:0]=5'b0_0000;
             byte_acc2[4:0]=5'b0_0000;
             byte_acc3[4:0]=5'b0_0000;
           end
     default            
           begin
             byte_acc1[7:0]=8'b0000_0000;
             byte_acc2[7:0]=8'b0000_0000;
             byte_acc3[7:0]=8'b0000_0000;
           end
  endcase
//+ logical value of acceptance check of filter 1
always@(byte_acc1)
  if(byte_acc1!=0)
    not_acc1_l=1;
  else
    not_acc1_l=0;
//+ logical value of acceptance check of filter 2
always@(byte_acc2)
  if(byte_acc2!=0)
    not_acc2_l=1;
  else
    not_acc2_l=0;
//+ logical value of acceptance check of filter 3
always@(byte_acc3)
  if(byte_acc3!=0)
    not_acc3_l=1;
  else
    not_acc3_l=0;
//+ filters which reject message
assign fil1_rej = not_acc1_l | not_acc1_r ;
assign fil2_rej = not_acc2_l | not_acc2_r ;
assign fil3_rej = not_acc3_l | not_acc3_r ;  
assign id_out=trrequ1;		
assign trrequ=(trrequ1|trrequ2)&!fullstat_fifo;	
assign decadr=a[0]&a[1]&a[2]&cd;		
assign stopp=!a[0]&!a[1]&!a[2]&cd;
endmodule	
