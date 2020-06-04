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
//+  File          : tcl.v
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
//+  Creation Date : 18-Feb-1999
//+
//+  Last Update   : 02-Aug-2007
//+
//+  Version       : 2V18N00S00
//+ ---------------------------------------------------------------------
//+
//+ $Id: tcl.v,v 1.4.2.15 2007/08/17 05:55:50 schneide Exp $
`timescale 1ns/10ps
module tcl 
  (
  err,		//+ kind of error (1...7)			-> to EML
  error_out, 	//+ =1 ->error occurred				-> to EML
  ebf, 		//+ =1 -> sequence of 11 rez. bits recognized	-> to EML	
  rack, 	//+ =1 -> receive acknowledge			-> to EML
  zero, 	//+ a pointer set to 7 (new frame area)		-> to BSP
  rtr_bit, 	//+ =1 ->rtr bit currently transmits		-> to BSP
  ready, 	//+ =1 ->end of acf-area			-> to BSP
  rxd_out, 	//+ rx data 					-> to BSP
  halt, 	//+ =1 ->ignore bit (stfb,srr,rtr,ide...)	-> to IML,BSP
  cd, 		//+ =1 ->change direction (lost of arbitration)	-> to IML,BSP
  transmit, 	//+ =1 ->node currently transmits				-> to IML,BSP,MM
  rtr, 		//+ RTR bit=1 ->RemoteFrame, =0 ->StandardFrame	-> to IML
  id_fmt, 	//+ =1 ->ext. ID (=0 -> std. ID)		-> to IML
  revalid, 	//+ =1 ->receiving valid			-> to IML
  abort, 	//+ =1 ->abort of activities after error 	-> to IML
  eof, 		//+ =1 field of crc,ack and eof bits		-> to IML
  transvalid, 	//+ =1 ->transmission errorfree to the last bit	-> to IML,EML
  receive, 	//+ =1 ->node is currently receiving		-> to IML
  sof, 		//+ =1 ->TCL has recognized a SOF bit		-> to IML
  start, 	//+ =1 ->start of transmission			-> to IML
  start_id, 	//+ =1 ->start of transmission with ID (external SOF recognized)-> to IML,MM
  interm3, 	//+ =1 =1 ->third Intermission bit		-> to BTL
  busidle, 	//+ =1 ->bus idle				-> to BTL
  txd, 		//+ transmitted value				-> to BTL,bus
  //+ --------------------------------------------------------------------------
  clk, 		//+ system clock				<- global
  clock, 	//+ bittime clock enable    	        	<- from BTL
  sample, 	//+ sample clock enable    	        	<- from BTL
  rxd, 		//+ rx vom Bus in BTL synchronisiert		<- from BTL
  reset, 	//+ =1 ->reset_request (HW and SW reset) 	<- from IML
  id_in, 	//+ =1 -> ext. ID, =0 -> std. ID 		<- from IML
  trrequ, 	//+ =1 -> order to send (TrRequ1 or TrRequ2)	<- from IML
  error_state, 	//+ =1 ->erroractive, =0 ->errorpassive		<- from IML
  txd_in, 	//+ bit to send 				<- from BSP
  busoff 	//+ =1 ->TrCount >= 256				<- from EML	
);
output[2:0] err;	
output error_out;	
output ebf;		
output rack;		
output zero;		
output rtr_bit;		
output ready;		
output rxd_out;		
output halt;		
output cd;		
output transmit;	
output rtr;		
output id_fmt;		
output revalid;		
output abort;		
output eof;		
output transvalid;	
output receive;		
output sof;		
output start;		
output start_id;	
output interm3;		
output busidle;		
output txd;		
input clk;		
input clock;		
input sample;		
input rxd;		
input reset;		
input id_in;		
input trrequ;		
input error_state;	
input txd_in;		
input busoff;		
reg [14:0] crc_reg;		
reg [5:0] b;
reg [5:0] b_l1;	
reg [5:0] b_l2;	
reg [5:0] b_l3;	
reg [5:0] b_l4;	
reg [5:0] equal;
reg [3:0] dlc;
reg [2:0] err;
reg error_out;
reg eactiv;
reg eactiv_l;
reg eac;
reg eac_l;	
reg halt_int;	
reg id_fmt;	
reg rtr;	
reg cd;		
reg cd_l;	
reg stopp,receive;
reg bnull;			
reg bnull_l1;	
reg bnull_l2;	
reg bnull_l3;	
reg acf;
reg df;
reg acf_l;
reg df_l;
reg transmit,transmit_x,sof;
reg last_trans_b;	
reg last_trans_b_l;	
reg txd;
reg strms;	
reg strms_l;	
reg busidle;		
reg busidle_l;		
reg crc_stat;
reg receive_stop;
reg frame;	
reg frame_l;	
reg   overld;   
wire  sfa,rack,abort,revalid;   
wire  transvalid,stfb,zero,rtr_bit;            
wire  nxt_stfb,halt,eof,rxd_out,ebf,crc_cont;
reg  interms;
wire  start;
wire  start_id;	
wire  next_start_id_reg;	
reg   start_id_reg;
wire  sfa_x;	  
wire  interm3;
reg   rec_l1;	
always @(posedge reset or posedge clk)
  if(reset==1'b1) 
    begin
      txd<=1'b1;
      end 
  else 
    begin
      if(clock==1'b1)
        begin
          if(transmit==1'b1)
	    begin
	      txd<= equal[0];	
	    end
          else if((rec_l1==1'b1)&(eof==1'b1)&(b[3:0]==4'b1111)&(crc_cont==1'b0)&(stfb==1'b0))
	    txd<= 1'b0;		
          else if(busoff==1'b1)	
	    txd<=1'b1;		
          else if((err[1]==1'b1)&(err[2]==1'b1))
 	    begin		
	      if(b==6'b000000) 		
	        txd<=1'b0;
	      else
	        txd<= equal[0];
	    end
          else if(((eactiv==1'b1)|(eac==1'b1))&((err[0]==1'b1)|(err[1]==1'b1)|(err[2]==1'b1)))
	    begin		
	      if(b==6'b000000) 		
	        begin		
	          txd<=1'b0;	
	        end
	      else 		
	        txd<=equal[0];
	    end
          else if((overld==1'b1)&(err[0]==1'b0)&(err[1]==1'b0)&(err[2]==1'b0)) 
	    begin		
	      txd<=1'b0;
	    end
          else 
	    txd<=1'b1;
        end			
      else;
    end
always @(receive_stop or receive)
          if(receive_stop==1'b1)
	    begin
	      rec_l1= 1'b0;
	    end
          else
            rec_l1= receive;
always @(bnull or overld or next_start_id_reg or stopp or stfb or cd or b)
          if((bnull==1'b0)&(overld==1'b0)&(next_start_id_reg==1'b0))
	    begin
	      if((stopp==1'b0)&(stfb==1'b0)&(cd==1'b0))	
	   	b_l1=b+6'b000001;
	      else 	
                b_l1=b;	
	    end		
          else 
            if(((stopp==1'b1)|(stfb==1'b1)|(cd==1'b1))&(overld==1'b0)&(next_start_id_reg==1'b0)) 
              b_l1=b;   
            else
	      b_l1=6'b000000;
always@(receive or equal or rxd or sfa or b_l1) 
   if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
       b_l2=6'b000000;                      
   else
     b_l2=b_l1; 
always@(acf or id_fmt or b_l1 or txd or rxd or stfb or err or eof or df)
	if(acf)	
	  begin
	    if(((id_fmt==1'b1)&(b_l1<6'b100001))|((id_fmt==1'b0)&(b_l1<6'b001101)))	
	      begin
		  if(txd!=rxd)  
		    if(stfb==1'b0)
		      if(rxd==1'b0)      
	                if(err!=3'b000)
		          b_l3=6'b000000;
	                else
                          b_l3=b_l1;
		      else  
		        b_l3=6'b000000;
		    else      
		      b_l3=6'b000000;
		  else
                    begin
	              if(err!=3'b000)
		        b_l3=6'b000000;
	              else
                        b_l3=b_l1;
                    end 
              end  
	    else if(rxd!=txd)	
	      b_l3=6'b000000;
	    else
              begin
	        if(err!=3'b000)
	          b_l3=6'b000000;
	        else
                  b_l3=b_l1;
              end  
	  end
	else if((df==1'b1))
	  begin
	    if(txd!=rxd)
	      begin   
	        b_l3=6'b000000;
	      end
            else
              b_l3=b_l1;  
            //
	  end
	else
          begin
            if((b_l1<6'b001110)&(txd!=rxd))
	      b_l3=6'b000000;
            else if((b_l1<6'b010001)&(eof==1'b1)&(txd!=rxd))
	      b_l3=6'b000000;
            else if((b_l1==6'b010001)&(txd==rxd))
	      b_l3=6'b000000;
            else if((b_l1==6'b010001)&(txd!=rxd))
	      b_l3=b_l1;
            else if((b_l1<6'b011010)&(eof==1'b1)&(txd!=rxd))
	      b_l3=6'b000000;
            else  b_l3=b_l1;
           end
always@(eactiv or eac or b_l1 or txd or rxd)
  if((eactiv==1'b1)|(eac==1'b1))
    if ((b_l1<6'b000111)&(rxd!=txd))   b_l4=6'b000000;                     
      else 
        if ((b_l1>6'b000111)&(rxd==1'b0)) b_l4=6'b000000;                     
        else                   b_l4=b_l1; 
  else 
    if ((b_l1>6'b000111)&(rxd==1'b0))     b_l4=6'b000000;                     
    else                       b_l4=b_l1; 
always@(transmit or overld or err or bnull)
  if((transmit==1'b0)&(overld==1'b1)&(err[2:0]==3'b000)) 
    bnull_l1=1'b0; 
  else
    bnull_l1=bnull; 
always@(equal or rxd or sfa or bnull_l1)
  if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
      bnull_l2=1'b0;
  else
    bnull_l2=bnull_l1;
always@(acf or nxt_stfb or id_fmt or b_l2 or dlc or err or df or rxd or bnull_l2)
    	    begin   
	      if((acf==1'b1)&(nxt_stfb==1'b0))		
	        begin	 
	          if(((id_fmt==1'b0)&(b_l2==6'b010001))|((id_fmt==1'b1)&(b_l2==6'b100101)))
                    bnull_l3=1'b1;
                  else
                    bnull_l3=1'b0;	     
	        end
	      else if(df==1'b1)
	        begin
	          if((b_l2==({dlc[3:0],3'b000}-6'b000001))&(nxt_stfb==1'b0)&(err==3'b000))    
		    bnull_l3=1'b1;
	          else
		    bnull_l3=1'b0;
	        end
	      else if((acf==1'b0)&(df==1'b0)&(nxt_stfb==1'b0))
	        begin
                  if(b_l2==6'b011000)
		    begin   
                      if(rxd==1'b0)
		        begin
		          bnull_l3=1'b0;
		        end
                      else
                        begin
		          bnull_l3=1'b1;
                        end
                    end
                  else
                    bnull_l3=1'b0;
                end
              else
                bnull_l3=bnull_l2;
            end   
always@(transmit or eactiv or err or b or eac)
  if((transmit==1'b0)&(eactiv==1'b1)&(err!=3'b000)&(b==6'b000000))
    eac_l=1'b1;
  else
    eac_l=eac;
always@(err or b_l1 or error_state or eactiv)
  if(err<3'b110)
    begin
      if(b_l1==6'b000001)
        begin
          if(error_state==1'b1)
            eactiv_l=1'b1;
          else   
            eactiv_l=1'b0;
        end
      else
        eactiv_l=eactiv;
    end
  else
    eactiv_l=1'b1;            
always@(transmit or acf or id_in or b_l1 or txd or rxd or stfb or cd)
  if(transmit==1'b1)
    begin		
      if(acf==1'b1)	
        begin
          if((id_in==1'b1)&(b_l1<6'b100001)&(txd!=rxd)&(stfb==1'b0)&(rxd==1'b0))
            cd_l=1'b1;	
          else if((id_in==1'b0)&(b_l1<6'b001101)&(txd!=rxd)&(stfb==1'b0)&(rxd==1'b0))
            cd_l=1'b1;	
          else
            cd_l=1'b0;
        end
      else
        cd_l=cd;
    end
  else
    cd_l=1'b0;	
always @(rec_l1 or transmit or err or rxd or crc_reg or b_l1 or interms or strms )
          if((rec_l1==1'b0)&(transmit==1'b0)&(err==3'b000))
     	    begin 
	      if((rxd==1'b1)&(crc_reg[11]==1'b0))	
                begin 
                  busidle_l=(!b_l1[3]&(b_l1[1]|b_l1[2])|b_l1[3]&!b_l1[2]|strms)&!(b_l1[4]&b_l1[3])&crc_reg[10];
                  strms_l=(b_l1[3]&(b_l1[1]|b_l1[2])&!interms|b_l1[4])&!(b_l1[4]&b_l1[3])&crc_reg[10];
                end
	      else if((rxd==1'b0)&(crc_reg[11]==1'b0))	
                begin 
                  busidle_l=1'b0;
                  strms_l=1'b0;
                end
	      else	 
                begin 
                  busidle_l=(!b_l1[3]&(b_l1[1]|b_l1[2])|b_l1[3]&!b_l1[2]|strms)&!(b_l1[4]&b_l1[3])&crc_reg[11];
                  strms_l=(b_l1[3]&(b_l1[1]|b_l1[2])&!interms|b_l1[4])&!(b_l1[4]&b_l1[3])&crc_reg[11];
                end
    	    end
          else  
    	    begin   
	      busidle_l=1'b0;
	      strms_l=1'b0;
    	    end		
always @(transmit or receive)
  if((transmit==1'b1)|(receive==1'b1))
      frame_l=1'b1;
  else
    frame_l=1'b0;
always @(transmit or receive or last_trans_b)
  if(transmit==1'b1)	
    last_trans_b_l=1'b0;	
  else if(receive==1'b1)
    last_trans_b_l=1'b1;	
  else
    last_trans_b_l=last_trans_b;
always @(acf or overld or busoff or rec_l1 or transmit or err or sof or next_start_id_reg or bnull_l1 or stfb or df or eof or rtr or dlc)
  if (busoff==1'b1)  
    begin            
      acf_l=1'b0;    
      df_l=1'b0;     
    end              
  else if(acf==1'b0) 
    begin
      if((overld==1'b0)&(busoff==1'b0)&(rec_l1==1'b0)&(transmit==1'b0)&(err==3'b000)&(sof==1'b0)&(next_start_id_reg==1'b1))
        acf_l=1'b1;
      else
        acf_l=bnull_l1&!overld&!stfb&(rec_l1|transmit)&!df&!eof;
      df_l=(!bnull_l1|overld)&df;
    end
  else
    begin  
      if(dlc!=0)
        df_l=bnull_l1&!overld&!rtr&(rec_l1|transmit);
      else
        df_l=1'b0;
      if((overld==1'b0)&(busoff==1'b0)&(rec_l1==1'b0)&(transmit==1'b0)&(err==3'b000)&(sof==1'b0)&(next_start_id_reg==1'b1))
        acf_l=1'b1;
      else
        acf_l=!bnull_l1|overld;
    end
always @(posedge reset or posedge clk)
  if(reset)
    begin
      dlc<=1'b0; 	
      err<=3'b000;		
      acf<=1'b0;		
      id_fmt<=1'b0;	
      df<=1'b0;		
      halt_int<=1'b1; 	
      crc_reg<=15'b000000000000001;	
      transmit<=1'b0;  	
      transmit_x<=1'b0;	
      receive<=1'b0;   	
      receive_stop<=1'b0;
      error_out<=1'b0;	
      eactiv<=1'b0;	
      eac<=1'b0;		
      stopp<=1'b0;	
      rtr<=1'b0;         
      b<=6'b000000;	
      equal<=6'b110011;	
      cd<=1'b0;		
      bnull<=1'b0;	
      busidle<=1'b0;	
      strms<=1'b0;	
      sof<=1'b0;		
      crc_stat<=1'b0;	
      last_trans_b<=1'b1;
      frame<=1'b0;	
    end
  else
    begin
      if(sample==1'b1)
        begin
          if(overld==1'b1)	
            begin
	      bnull<=1'b0; 
              if((err[0]==1'b0)&(err[1]==1'b0)&(err[2]==1'b0)&(transmit_x==1'b0))
	        begin
                  if((receive_stop==1'b1)&(receive==1'b0))
                    receive_stop<=1'b0;
                  else
                    receive<=rec_l1;
	          err<=3'b111;    
	          eactiv<=1'b1; 
                  b<=b_l1;	
	        end
              else
                if((err[2:0]==3'b000)&(transmit_x==1'b1))
	          begin
                    if((receive_stop==1'b1)&(receive==1'b0))
                      receive_stop<=1'b0;
                    else
                      receive<=rec_l1;
	            err<=3'b110;	
	            eactiv<=1'b1; 
	            if(txd==1'b0)	
	              b<=6'b000001;    	
	            else
                      b<=b_l1;
	          end
                else
                  b<=b_l1;
              eac<=eac_l;
            end
          else if(busoff==1'b1)
     	    begin  			 
              if((receive_stop==1'b1)&(receive==1'b0))
                receive_stop<=1'b0;
              else
                receive<=rec_l1;
              if((ebf==1'b1))
     	        begin  			 
	          crc_reg<={14'b00000000000000,rxd};    
	          err<=3'b000;
                end
              else if((ebf==1'b0)&(err!=3'b000))
     	        begin  			 
	          crc_reg<={14'b00000000000000,rxd};    
	          err<=3'b000;
                end
              else if((ebf==1'b0)&(err==3'b000))
     	        begin  			 
	          crc_reg[14:0]<={crc_reg[13:0],rxd};	
                end
              else;
              b<=b_l1;		
              bnull<=bnull_l1;	
              eac<=eac_l;
              equal<=6'b110011;	
     	    end				
          else if((rec_l1==1'b0)&(transmit==1'b0)&(err==3'b000))
     	    begin
              sof<=(busidle_l|interm3)&!rxd&(!trrequ|(trrequ&!transmit&!next_start_id_reg)|
                  (!strms_l&!last_trans_b_l&!error_state));
	      if(((busidle_l==1'b1)|(interm3==1'b1))&(rxd==1'b0)&((trrequ==1'b0)|
                  ((trrequ==1'b1)&(transmit==1'b0)&(next_start_id_reg==1'b0))|
                  ((strms_l==1'b0)&(last_trans_b_l==1'b0)&(error_state==1'b0))))  
	        begin   
                  if((receive_stop==1'b1)&(receive==1'b0))
                    receive_stop<=1'b0;
                  else;
	          if(busidle_l==1'b1) 
	            begin		
 	              transmit_x<=1'b0;	
	            end			
	          else;
	          bnull<=1'b1;	
	          transmit<=1'b0;
	          receive<=1'b1;
	          stopp<=1'b0;
	          crc_reg<=15'b000000000000000;
	          equal[0]<=1'b0;	
	        end		
	      else if(next_start_id_reg==1'b1)	
	        begin  
                  if((receive_stop==1'b1)&(receive==1'b0))
                    receive_stop<=1'b0;
                  else;
                  receive<=rec_l1;
	          equal[0]<=txd_in;	
	          equal[1]<=1'b0;		
	          bnull<=bnull_l1;	
	          transmit<=1'b1;	
	          transmit_x<=1'b1;	
	          halt_int<=1'b0;	
	          stopp<=1'b0;	
	          crc_reg<=15'b000000000000000;
	        end 
	      else if((trrequ==1'b1)&((strms_l==1'b1)|(busidle_l==1'b1)&((error_state==1'b1)|(last_trans_b_l==1'b1))))	
	        begin  	
                  if((receive_stop==1'b1)&(receive==1'b0))
                    receive_stop<=1'b0;
                  else;
                  receive<=rec_l1;
	          equal[0]<=1'b0;	
	          bnull<=1'b1;
	          transmit<=1'b1;	
	          transmit_x<=1'b1;	
	          halt_int<=1'b0;	
  	          stopp<=1'b0;      
	          crc_reg<=15'b000000000000000;
	        end 
	      else	
	        begin  
                  if((receive_stop==1'b1)&(receive==1'b0))
                    receive_stop<=1'b0;
                  else;
	          if(busidle_l==1'b1) 
	            begin		
 	              transmit_x<=1'b0;	
	            end			
	          else;
	          if((rxd==1'b1)&(crc_reg[11]==1'b0))	
	            crc_reg[14:0]<={crc_reg[13:0],1'b1}; 
	          else if(crc_reg[11]==1'b0)	
                    crc_reg<=15'b000000000000001;          
	          else;
	          equal[5:1]<=5'b11001;	
	          bnull<=!rxd;	
	          halt_int<=1'b1;	
	          equal[0]<=rxd;
	          transmit<=1'b0;	
	          receive<=1'b0;
	          stopp<=strms_l;	
	        end
              b<=b_l1;	
              eac<=eac_l;
    	    end
          else if(rec_l1==1'b1)  
    	    begin   
	      eactiv<=  error_state; 
	      if((acf_l==1'b0)&(df_l==1'b0)&(nxt_stfb==1'b0)&(b_l2[5:0]==6'b011000))  
                crc_reg[11]<=1'b1;	
	      else if(((acf_l==1'b1)|(df_l==1'b1)|(acf_l==1'b0)&(df_l==1'b0)&!((b_l2[4]==1'b1)|(b_l2[3:0]==4'b1111)))&(nxt_stfb==1'b0))
	        begin
		  if (rxd^crc_reg[14])
		    crc_reg<=  {crc_reg[13:0],1'b0}^15'b100_0101_1001_1001;
                  else
		    crc_reg<=  {crc_reg[13:0],1'b0}; 
	        end
              else;
	      if((acf_l==1'b1)&(nxt_stfb==1'b0))		
	        begin
	          if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	            begin  
	              err<=3'b001;
	              receive<=1'b0;
	              error_out<=1'b1;      
	            end
	          else;
	          if(id_fmt==1'b0)	
		    begin
		      case(b_l2)
		        6'b000000:
		           begin
		             halt_int<=1'b0;        
		             sof<=1'b0;
		           end
		        6'b001011:   
		           begin
		             halt_int<=1'b1;
		             rtr<=rxd;	
		           end 
		        6'b001100:	  
		           begin
		             id_fmt<=rxd; 
		             halt_int<=1'b1; 
		           end 	         
			6'b001101: halt_int<=1'b1; 
			6'b001110:
			   begin
			     halt_int<=1'b0;  
			     dlc[3]<=rxd;  
			   end
			6'b001111: dlc[2]<=rxd;
			6'b010000: dlc[1]<=rxd;
			6'b010001:
			   begin
                              if({dlc[3:1],rxd}>4'b1000)
                                dlc<= 4'b1000;
                              else
			        dlc[0]<=rxd; 
			   end
			default:;
		      endcase
		    end
	          else	
		    begin	 
		      case(b_l2)
		        6'b000000:
		           begin
		             halt_int<=1'b0;        
		             sof<=1'b0;
		           end
		        6'b001011:   
		           begin
		             halt_int<=1'b1;
		             rtr<=rxd;   
		           end 
		        6'b001100:	  
		           begin
		             id_fmt<=rxd; 
		             halt_int<=1'b1; 
		           end 	     
			6'b001101: halt_int<=1'b0;	
			6'b011111:     
			   begin
			     rtr<=rxd;
			     halt_int<=1'b1;	
			   end                              
			6'b100000: halt_int<=1'b1; 
			6'b100001: halt_int<=1'b1; 
			6'b100010: 
			   begin
			     halt_int<=1'b0;
			     dlc[3]<=rxd; 
			   end
			6'b100011: dlc[2]<=rxd;
			6'b100100: dlc[1]<=rxd;
			6'b100101:
			   begin
                              if({dlc[3:1],rxd}>4'b1000)
                                dlc<= 4'b1000;
                              else
			        dlc[0]<=rxd; 
			   end
			default:;
		      endcase
		    end
                  b<=b_l2;
	        end
	      else if(df_l==1'b1)
	        begin
	          if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	            begin               
	              err<=3'b001;
	              receive<=1'b0;
	              error_out<=1'b1;      
	            end
	          else;
	          if((b_l2==({dlc[3:0],3'b000}-7'b0000001))&(nxt_stfb==1'b0)&(err==3'b000))    
	            begin 
		      dlc<=1'b0;
		    end
	          else;
                  b<=b_l2;
	        end
	      else if((acf_l==1'b0)&(df_l==1'b0)&(nxt_stfb==1'b0))
	        begin
	          halt_int<=1'b1;	
		  case (b_l2)
		    6'b001111 :
                        begin
                          if(rxd==1'b0)
		            begin   
		              err<=3'b001;
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010000 :
		        begin
		          if((rxd==1'b1)&(txd==1'b0))	
                            begin
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
		                  err[0]<=1'b1;  
	                          err[1]<=1'b0;
	                          receive<=1'b0;
	                          b<=6'b000000;      
		                  error_out<=1'b1;
	                        end
                              else if(err[1]==1'b0)
                                begin
		                  err[0]<=1'b1;  
		                  b<=6'b000000;
		                  receive<=1'b0;
		                  error_out<=1'b1;
		                end
                              else
                                begin
		                  err[0]<=1'b1;  
                                  b<=b_l2;
		                  error_out<=1'b1;
                                end
                            end
		          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=1'b1;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
		        end
		    6'b010001 :
		        begin
	                  if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                    begin               
	                      err<=1'b1;
	                      receive<=1'b0;
	                      error_out<=1'b1;      
		              b<=6'b000000;
	                    end
                          else if((err[1]==1'b0)&(crc_cont==1'b1))    
		            begin
		              err[0]<=1'b1;
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else if(rxd==1'b0)
		            begin        
		              err<=1'b1;     
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
		              err[0]<=crc_cont;
		              error_out<=crc_cont;
                              b<=b_l2;
                            end
		        end
		    6'b010010 :            
                        begin
                          if(rxd==1'b0)    
		            begin       
		              err<=3'b001;    
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010011 :            
                        begin
                          if(rxd==1'b0)    
		            begin       
		              err<=3'b001;    
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010100 :            
                        begin
                          if(rxd==1'b0)   
		            begin      
		              err<=3'b001;   
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=1'b1;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010101 :            
                        begin
                          if(rxd==1'b0)   
		            begin      
		              err<=3'b001;   
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010110 :            
                        begin
                          if(rxd==1'b0)  
		            begin     
		              err<=3'b001;  
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b010111 :            
                        begin
                          if(rxd==1'b0)  
		            begin     
		              err<=3'b001;  
		              error_out<=1'b1;
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    6'b011000 :  
		        begin	
		          receive_stop<=1'b1;
                          if(rxd==1'b0)  
		            begin      
		              err<=3'b111;  
		              b<=6'b000000;
		              receive<=1'b0;
		            end
                          else
                            begin
                              b<=b_l2;
	                      if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                        begin               
	                          err<=3'b001;
	                          receive<=1'b0;
	                          error_out<=1'b1;      
	                        end
	                      else;
                            end
                        end
		    default: 
                        begin
                          b<=b_l2;
	                  if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	                    begin               
	                      err<=3'b001;
	                      receive<=1'b0;
	                      error_out<=1'b1;      
	                    end
	                  else;
                        end
		  endcase 
	        end
              else
                begin
                  b<=b_l2;
	          if((({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000))&(sfa==1'b0))
	            begin               
	              err<=3'b001;
	              receive<=1'b0;
	              error_out<=1'b1;      
	            end
	          else;
                end
              bnull<=bnull_l3;
              eac<=eac_l;
              equal<= {equal[4:0],rxd};
            end		
          else if(transmit==1'b1)	
	    begin		
	      if(acf_l==1'b1)	
	        begin
	          if(id_in==1'b1)	
		    begin
		      if((b_l1<6'b100001)&(txd!=rxd)&(stfb==1'b0)&(rxd==1'b0))
		        bnull<=1'b0;	
		      else if((cd_l==1'b0)&(b_l1==6'b100101))
                        bnull<=!nxt_stfb;
		      else		
                        bnull<=1'b0;
		    end
	          else		
		    begin
		      if((b_l1<6'b001101)&(txd!=rxd)&(stfb==1'b0)&(rxd==1'b0))	
		        bnull<=1'b0;
		      else if((cd_l==1'b0)&(b_l1==6'b010001))		
                        bnull<=!nxt_stfb;
		      else			
                        bnull<=1'b0;
                    end
	        end	
	      else if(df_l==1'b1)
	        begin
	          if((b_l1==({dlc[3:0],3'b000}-6'b000001))&(nxt_stfb==1'b0)&(err==3'b000))  
		    bnull<=1'b1;
	          else   
		    bnull<=1'b0;
	        end
	      else		
	        begin
                  if(b_l1<6'b010001)
                    if((txd!=rxd)&(eof==1'b1))
                      bnull<=1'b0;
                    else
                        bnull<=1'b0;
                  else if(b_l1==6'b010001)
                      bnull<=1'b0;
                  else if(b_l1<6'b011001)
                    if((txd!=rxd)&(eof==1'b1))
                      bnull<=1'b0;
                    else
                      bnull<=1'b0;
                  else if(b_l1==6'b011001)
                    if((eof==1'b1)&(txd!=rxd))
		      bnull<=1'b0;
                    else
                      bnull<=1'b1;
                  else
                      bnull<=1'b0;
	        end
              if((receive_stop==1'b1)&(receive==1'b0))
                receive_stop<=1'b0;
              else;
	      id_fmt<=id_in;
	      eactiv<=error_state; 
	      if(acf_l==1'b1)	
	        begin
	          if(id_in==1'b1)	
		    begin
		      if(b_l1<6'b100001)	
		        begin		
		          if(txd!=rxd)	
			    begin
			      transmit<=1'b0;	
			      if(stfb==1'b0)
			        begin
			          if(rxd==1'b0)
			     	    begin   	
				      receive<=1'b1;
	                              if(err!=3'b000)
		                        begin   
		                          stopp<=1'b0;
		                        end
	                              else;
			            end	
			          else	
				    begin    
				      err<=3'b100;	
			              error_out<=1'b1;
		                      stopp<=1'b0;
				    end
			        end
			      else if(rxd==1'b1) 
			        begin  	   
			          err<=3'b100;
			          error_out<=1'b1;
		                  stopp<=1'b0;
			        end
			      else	   
			        begin 	   
			          if((b_l1==6'b100000)&(stfb==1'b1))
				    err<=3'b100;	
			          else
				    err<=3'b101;
			          error_out<=1'b1;
		                  stopp<=1'b0;
			        end
			    end
		          else		
                            begin
	                      if(err!=3'b000)
		                begin   
		                  transmit<=1'b0;
		                  stopp<=1'b0;
		                end
	                      else;
                            end   
		        end
		      else if(rxd!=txd)	
		        begin  
		          err<=3'b100;	
		          error_out<=1'b1;
		          transmit<=1'b0;
		          stopp<=1'b0;
		        end
		      else
                        begin
	                  if(err!=3'b000)
		            begin   
		              transmit<=1'b0;
		              stopp<=1'b0;
		            end
	                  else;
                        end
		      if(cd_l==1'b0)	
		        begin
		          case(b_l1)
			    6'b001011:
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b1}; 	
	                            end
	                          else	 
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b1;  
                                    end
			          halt_int<=1'b1;  
			          rtr<=1'b1;	 
			        end
			    6'b001100:
			       begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b1}; 	
	                            end
	                          else	 
                                    begin
 	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b1;  
                                    end
			          halt_int<=1'b1;  
			       end
			    6'b011111:	
			       begin
		                  if((txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))        
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;
                                      rtr<=1'b0;
                                    end
	                          else if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              rtr<=txd_in;
                                    end
                                  else
                                    rtr<=equal[0];
			          halt_int<=1'b0; 
			       end
			    6'b100000:
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b0}; 	
	                            end
	                          else	 
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;  
                                    end
			          halt_int<=1'b1;  
			        end
			    6'b100001:
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b0}; 	
	                            end
	                          else
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;  
                                    end
			          halt_int<=1'b1;  
			        end	
			    6'b100010:     
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[3]<=txd_in; 
	                            end
	                          else	
			            dlc[3]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b100011:  
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[2]<=txd_in; 
	                            end
	                          else	
			            dlc[2]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b100100:	 
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[1]<=txd_in; 
	                            end
	                          else	
			            dlc[1]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b100101: 	
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
                                      if({dlc[3:1],txd_in}>4'b1000)
			                dlc<= 4'b1000;
                                      else
                                        dlc[0]<=txd_in; 
	                            end
	                          else
                                    begin	
                                      if({dlc[3:1],equal[0]}>4'b1000)
                                        dlc<= 4'b1000;
                                      else;
			                dlc[0]<=equal[0];
                                    end 
			          halt_int<=1'b0; 
			        end
			    default: 
                                begin
		                  if((b_l1<6'b100001)&(txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))        
                                    begin		
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;
                                    end
	                          else if(rxd==txd)
                                    begin		
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
                                    end
                                  else;
                                  halt_int<=1'b0;
                                end
		          endcase
		        end	
		      else	
		        begin 
		          if((b_l1<6'b100001)&(txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))        
                            begin
	                      if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                        equal[0]<=!equal[1]; 
	                      else
                                equal[0]<=1'b0;
                            end
	                  else if(rxd==txd)
                            begin		
	                      if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                        equal<={equal[4:0],(!equal[0])}; 
	                      else
	                        equal<={equal[4:0],txd_in}; 	
                            end
	                  else;	
		          case(b_l1)
			    6'b001100:
			       begin
			         halt_int<=1'b1;
			         rtr<=rxd;  
			       end	
			    6'b001101:			
			       begin
			         halt_int<=1'b1;
			         id_fmt<=rxd;
			       end
			    6'b100000:
			       begin
			         rtr<=rxd;   
			         halt_int<=1'b1; 
			       end
			    default: halt_int<=1'b0;
		          endcase
		        end
		    end
	          else		
		    begin
		      if(b_l1<6'b001101) 
		        begin	  
		          if(txd!=rxd)		
			    begin
			      transmit<=1'b0;	
			      if(stfb==1'b0)
			        begin
			          if(rxd==1'b0)  
			     	    begin   
				      receive<=1'b1;
	                              if(err!=3'b000)
		                        begin   
		                          stopp<=1'b0;
		                        end
	                              else;
			     	    end
			          else  
				    begin    
				      err<=3'b100;	
			              error_out<=1'b1;
		                      stopp<=1'b0;
				    end
			        end
			      else if(rxd==1'b1)	
				begin  		
				  err<=3'b100;	
			          error_out<=1'b1;
		                  stopp<=1'b0;
				end
			      else     
			        begin  
			          err<=3'b101;
			          error_out<=1'b1;
		                  stopp<=1'b0;
				end
			    end
		          else;  
		        end
		      else if(rxd!=txd) 
		        begin   
		          err<=3'b100;	
	                  error_out<=1'b1;
		          transmit<=1'b0;
		          stopp<=1'b0;
	   	        end
		      else
                        begin
	                  if(err!=3'b000)
		            begin   
		              transmit<=1'b0;
		              stopp<=1'b0;
		            end
	                  else;
                        end
		      if(cd_l==1'b0)		
		        begin
		          case(b_l1)
			    6'b001011:	
			        begin
		                  if((txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))        
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;
                                      rtr<=1'b0;
                                    end
                                  else if(rxd==txd)
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              rtr<=txd_in;
                                    end
                                  else
                                    begin
                                      rtr<=equal[0];
                                    end
			         halt_int<=1'b0; 
			        end
			    6'b001100: 
			        begin
                                  if(rxd==txd)
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b0}; 	
                                    end
                                  else
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;  
                                    end
			          halt_int<=1'b1;  
			        end
			    6'b001101:
			        begin
                                  if(rxd==txd)
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],1'b0}; 	
	                            end
	                          else
                                    begin
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;  
                                    end
			          halt_int<=1'b1;  
			        end	
			    6'b001110:	   
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[3]<=txd_in; 
	                            end
	                          else	
			            dlc[3]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b001111:  
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[2]<=txd_in; 
	                            end
	                          else	
			            dlc[2]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b010000:	
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
			              dlc[1]<=txd_in; 
	                            end
	                          else	
			            dlc[1]<=equal[0]; 
			          halt_int<=1'b0; 
			        end
			    6'b010001: 
			        begin
	                          if(rxd==txd)	
	                            begin	
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
                                      if({dlc[3:1],txd_in}>4'b1000)
			                dlc<= 4'b1000;
                                      else
                                        dlc[0]<=txd_in; 
	                            end
	                          else
                                    begin	
                                      if({dlc[3:1],equal[0]}>4'b1000)
                                        dlc<= 4'b1000;
                                      else;
			                dlc[0]<=equal[0];
                                    end 
			          halt_int<=1'b0; 
			        end
			    default: 
                                begin
		                  if((b_l1<6'b001101)&(txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))
                                    begin        
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal[0]<=!equal[1]; 
	                              else
                                        equal[0]<=1'b0;
                                    end
	                          else if(rxd==txd)
                                    begin		
	                              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                                equal<={equal[4:0],(!equal[0])}; 
	                              else
	                                equal<={equal[4:0],txd_in}; 	
                                    end
                                  else;
                                  halt_int<=1'b0;
                                end
		          endcase
		        end
		      else	
		        begin
		          if((b_l1<6'b001101)&(txd==1'b1)&(stfb==1'b0)&(rxd==1'b0))        
                            begin
	                      if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                        equal[0]<=!equal[1]; 
	                      else
                                equal[0]<=1'b0;
                            end
	                  else if(rxd==txd)
                            begin		
	                      if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                        equal<={equal[4:0],(!equal[0])}; 
	                      else
	                        equal<={equal[4:0],txd_in}; 	
                            end
	                  else;	
		          if(b_l1==6'b001100) 
			    begin          
			      halt_int<=1'b1; 
			      rtr<=rxd;    
			    end
                          else;
		        end
                    end
	        end	
	      else if(df_l==1'b1)
	        begin
	          if(rxd==txd)		
	            begin	 	
	              if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                equal<={equal[4:0],(!equal[0])}; 
	              else
	                equal<={equal[4:0],txd_in}; 	
	            end
	          else;	
	          if((b_l1==({dlc[3:0],3'b000}-6'b000001))&(nxt_stfb==1'b0)&(err==3'b000))  
		    dlc<=1'b0;
	          else;  
	          if(txd!=rxd)
	            begin   
	              err<=3'b100;
	              transmit<=1'b0;
	              error_out<=1'b1;
	              crc_stat<=1'b0;
	            end
                  else;
	        end
	      else		
	        begin
		  halt_int<=1'b1; 
		  case(b_l1)
		    6'b000000 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
	                                equal<={equal[4:0],(crc_reg[13]^1'b1)};  
                                      else if(stfb==1'b0)
                                        equal<={equal[4:0],crc_reg[13]}; 
                                      else
                                        equal<={equal[4:0],crc_reg[14]};	
                                    end
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=crc_reg[14];
                                    begin
                                      if((stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
	                                equal<=(crc_reg[13]^1'b1);  
                                      else if(stfb==1'b0)
                                        equal<=crc_reg[13]; 
                                      else
                                        equal<=crc_reg[14];	
                                    end
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0; 
	                        end
                              else
                                crc_stat<=1'b1;
		            end
		    6'b000001 :       
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[12]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[12])};
                                      else
                                        equal<={equal[4:0],crc_reg[13]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[12]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[12];
                                      else
                                        equal[0]<=crc_reg[13];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000010 :       
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[11]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[11])};
                                      else
                                        equal<={equal[4:0],crc_reg[12]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[11]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[11];
                                      else
                                        equal[0]<=crc_reg[12];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000011 :       
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[10]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[10])};
                                      else
                                        equal<={equal[4:0],crc_reg[11]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[10]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[10];
                                      else
                                        equal[0]<=crc_reg[11];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000100 :       
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[9]^1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[9])};
                                      else
                                        equal<={equal[4:0],crc_reg[10]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[9]^1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[9];
                                      else
                                        equal[0]<=crc_reg[10];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000101 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[8]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[8])};
                                      else
                                        equal<={equal[4:0],crc_reg[9]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[8]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[8];
                                      else
                                        equal[0]<=crc_reg[9];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000110 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[7]^1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[7])};
                                      else
                                        equal<={equal[4:0],crc_reg[8]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[7]^1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[7];
                                      else
                                        equal[0]<=crc_reg[8];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b000111 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[6]^1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[6])};
                                      else
                                        equal<={equal[4:0],crc_reg[7]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[6]^1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[6];
                                      else
                                        equal[0]<=crc_reg[7];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001000 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[5]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[5])};
                                      else
                                        equal<={equal[4:0],crc_reg[6]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[5]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[5];
                                      else
                                        equal[0]<=crc_reg[6];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001001 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[4]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[4])};
                                      else
                                        equal<={equal[4:0],crc_reg[5]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[4]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[4];
                                      else
                                        equal[0]<=crc_reg[5];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001010 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[3]^1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[3])};
                                      else
                                        equal<={equal[4:0],crc_reg[4]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[3]^1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[3];
                                      else
                                        equal[0]<=crc_reg[4];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001011 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[2]^1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[2])};
                                      else
                                        equal<={equal[4:0],crc_reg[3]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[2]^1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[2];
                                      else
                                        equal[0]<=crc_reg[3];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
                            end
		    6'b001100 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[1]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[1])};
                                      else
                                        equal<={equal[4:0],crc_reg[2]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[1]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[1];
                                      else
                                        equal[0]<=crc_reg[2];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001101 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(crc_reg[0]^1'b0)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],(crc_reg[0])};
                                      else
                                        equal<={equal[4:0],crc_reg[1]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(crc_reg[0]^1'b0);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=crc_reg[0];
                                      else
                                        equal[0]<=crc_reg[1];
                                    end 	
                                end
	                      if(txd!=rxd)
	                        begin   
	                          err<=3'b100;
	                          transmit<=1'b0;
	                          error_out<=1'b1;
	                          crc_stat<=1'b0;
	                        end
                              else;
		            end
		    6'b001110 : 
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal<={equal[4:0],(1'b1)};  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal<={equal[4:0],1'b0};
                                      else
                                        equal<={equal[4:0],crc_reg[0]};
                                    end 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    begin
                                      if((eof==1'b0)&(stfb==1'b0)&((rxd^crc_reg[14])==1'b1))
                                        equal[0]<=(1'b1);  
                                      else if((eof==1'b0)&(stfb==1'b0))
                                        equal[0]<=1'b0;
                                      else
                                        equal[0]<=crc_reg[0];
                                    end 	
                                end
		              crc_stat<=1'b0;
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
		            end
		    6'b001111 : 
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010000 : 
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010001 :  
		            begin  
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
		              err[0]<=~(txd^rxd); 	
		              err[1]<=~(txd^rxd); 	
                              if(txd==rxd)
		                begin   
		                  transmit<=1'b0;
		                  error_out<=1'b1; 
		                end
                              else;
		            end
		    6'b010010 :         
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010011 :         
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                          end        
		    6'b010100 :         
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010101 :         
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010110 :         
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b010111 :       
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b011000 :        
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],1'b1}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=1'b1;
                                end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  transmit<=1'b0; 
		                  error_out<=1'b1;
		                end
                              else;
                            end        
		    6'b011001:                     
		            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],txd_in}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=txd_in;
	                        end
                              if((eof==1'b1)&(txd!=rxd))
		                begin   
		                  err<=3'b100;
		                  error_out<=1'b1;
		                end
                              else;
		              transmit<=1'b0;
 		            end
		    default:
                            begin
	                      if(rxd==txd)		
	                        begin	 	
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))		
	                            equal<={equal[4:0],(!equal[0])}; 
	                          else
	                            equal<={equal[4:0],txd_in}; 	
	                        end
	                      else	
                                begin
	                          if((nxt_stfb==1'b1)&(sfa_x==1'b0))               
	                            equal[0]<=!equal[1]; 
	                          else
                                    equal[0]<=txd_in;
	                        end
                            end
		  endcase
	        end
              b<=b_l3;
              eac<=eac_l;
              if((acf_l==1'b0)&(df_l==1'b0)&(b_l1==6'b011001))
		crc_reg[11]<=1'b1;     
	      else if(((eof==1'b0)&(stfb==1'b0))|((eof==1'b1)&(stfb==1'b0)&(b_l1==6'b000000)))
                begin
		  if (rxd^crc_reg[14])
		    crc_reg<=  {crc_reg[13:0],1'b0}^15'b100_0101_1001_1001;
                  else
		    crc_reg<=  {crc_reg[13:0],1'b0};	
		end
              else;
            end	
          else
            begin
	      if((b_l1==6'b001110)&(rxd==1'b1))        
	        bnull<=1'b1;
	      else    
	        bnull<=1'b0;
              if((receive_stop==1'b1)&(receive==1'b0))   
                receive_stop<=1'b0; 
              else                        
                receive<=rec_l1;
	      if((eactiv_l==1'b1)|(eac_l==1'b1))		
	        begin            
	          case(b_l1)
	            6'b000001: begin
	                    equal[0]<=1'b0;
                            if(rxd!=txd)      eac<=1'b0;
                            else              eac<=eac_l;
                          end
	            6'b000010: begin
	                    equal[0]<=1'b0;
                            if(rxd!=txd)      eac<=1'b0;
                            else              eac<=eac_l;
                          end
	            6'b000011: begin
	                    equal[0]<=1'b0;
                            if(rxd!=txd)      eac<=1'b0;
                            else              eac<=eac_l;
                          end
	            6'b000100: begin
	                    equal[0]<=1'b0;
                            if(rxd!=txd)      eac<=1'b0;
                            else              eac<=eac_l;
                          end
	            6'b000101: begin
	                    equal[0]<=1'b0;
                            if(rxd!=txd)	eac<=1'b0;
                            else		eac<=eac_l;
                          end
	            6'b000110 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=1'b0;
	                  end
	            6'b000111 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            6'b001000 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            6'b001001 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            6'b001010 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            6'b001011 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            6'b001100 : 
	                  begin
	                    equal[0]<=1'b1;
	                    eac<=eac_l;
	                  end
	            default:  begin
	                        equal[0]<=1'b1;
                                eac<=eac_l;
                              end
	          endcase
	          if(b_l1<6'b000111)      
	            begin                    
	              if(b_l1<5)   
	                crc_reg<=15'b000000011111111;        
                      else;
	              if(rxd!=txd)        
	                begin    
	                  case(err)
	                    3'b001:
	                        begin
                                  err<=3'b010;
                                  eactiv<=eactiv_l;
	                        end
	                    3'b101: 
	                        begin
                                  err<=3'b100;
                                  eactiv<=eactiv_l;
	                        end
	                    3'b110:
	                        begin
	                          err<=3'b100; 
	                          eactiv<=eactiv_l&error_state;
	                        end
	                    3'b111: 
	                        begin
	                          if(error_state)
	                            begin
	                              err<=3'b010;
                                      eactiv<=eactiv_l;
	                            end
	                          else
	                            begin
 	                              err<=3'b101;
	                              eactiv<=1'b0;
	                            end
	                        end
	                    default:  eactiv<=eactiv_l;
	                  endcase
	                  error_out<=1'b1; 
	                end
	              else
                        begin 
                          error_out<=1'b0;
                          eactiv<=eactiv_l;
                        end
	            end
	          else if(b_l1==6'b000111)
	            begin
		      if(((stopp==1'b0)&(rxd==1'b0)&(err<3'b011))|((crc_reg[6:0]==7'b0000000)&(rxd==1'b0))) 
                        error_out<=1'b1;
		      else                                                    
                        error_out<=1'b0;
		      if((crc_reg[6:0]==7'b0000000)&(rxd==1'b0))     
		        begin		      
                          if((stopp==1'b0)&(rxd==1'b0)&(err<3'b011))
                            err<=3'b010;
                          else                
		            case(err)         
		              3'b001:  err<=3'b010;   
		              3'b011:  err<=3'b100;   
		              3'b101:  err<=3'b100;   
		              3'b110:  err<=3'b100;   
		              3'b111:  err<=3'b010;   
		              default:;
		            endcase
		          eactiv<=error_state; 
                          crc_reg[14:0]<={crc_reg[13:8],8'b00000001};     
		        end                   
		      else
		        begin
                          eactiv<=eactiv_l;
                          crc_reg[14:0]<={crc_reg[13:0],rxd};
                          if((stopp==1'b0) & (rxd==1'b0) & (err<3'b011))
                            err<=3'b010;
                          else;                
		        end                   
		      stopp<=!rxd;     
	            end		
	          else if(b_l1>6'b000111)
	            begin			
		      if(rxd==1'b0)		
		        begin			
		          if(b_l1==6'b001110)   
		            begin     
		              if(err<3'b011)
		                begin
		                  err<=3'b111;    
	 	                  eactiv<=1'b1;   
		                end           
		              else if(err<3'b110)              
		                begin
		                  err<=3'b110;    
	 	                  eactiv<=1'b1;   
		                end
		              else if(err==3'b110)
                                eactiv<=error_state;
                              else	
                                eactiv<=1'b1; 
		            end                       
		          else
		            begin
		              case(err)    
		                3'b010:   err<=3'b001; 
		                3'b011:   err<=3'b100;
		                3'b101:   err<=3'b100;
		                3'b110:   err<=3'b100; 
		                3'b111:   err<=3'b001; 
		                default:;     
		              endcase
                              eactiv<=error_state;        
		            end              
		          error_out<=1'b1;   
		        end
		      else if(b_l1==6'b001110) 	
		        begin                
		          err<=3'b000;
		          eactiv<=error_state;
		          crc_reg[11]<=1'b1;     
	                end
	              else 
                        begin
                          error_out<=1'b0;
                          eactiv<=eactiv_l;
                        end   
	            end
                  else
                    eactiv<=eactiv_l;
	        end
	      else
                begin
                  if(b_l1<6'b000111)
	            begin
	              if(b_l1<6'b000101) 
	                crc_reg<=15'b000000011111111;        
                      else;
                      if(({equal[4:0],rxd}==6'b111111)|({equal[4:0],rxd}==6'b000000)|(b_l1[1]==1'b0)|(b_l1[2]==1'b0))
                        stopp<=1'b0;
                      else
                        stopp<=1'b1;
	              if((rxd==1'b0)&(err==3'b011))
	                begin           
	                  err<=3'b100;        
	                  error_out<=1'b1;  
	                end           
	              else error_out<=1'b0;        
		      equal[5:1]<=equal[4:0];
                      equal[0]<=rxd;
	            end
	          else if(b_l1==6'b000111)
	            begin
		      if(((stopp==1'b0) & (rxd==1'b0) & (err<3'b011)) | ((crc_reg[6:0]==7'b0000000)&(rxd==1'b0))) 
                        error_out<=1'b1;
		      else                                                    
                        error_out<=1'b0;
		      if((crc_reg[6:0]==7'b0000000)&(rxd==1'b0))     
		        begin
                          if((stopp==1'b0) & (rxd==1'b0) & (err<3'b011))
                            err<=3'b010;  
                          else                
		            case(err)          
		              3'b001:  err<=3'b010;   
		              3'b011:  err<=3'b100;   
		              3'b101:  err<=3'b100;   
		              3'b110:  err<=3'b100;   
		              3'b111:  err<=3'b010;   
		              default:;
		            endcase
		          eactiv<=error_state; 
		          crc_reg[14:0]<={crc_reg[13:8],8'b00000001};
		        end                   
		      else
		        begin
		          crc_reg[14:0]<={crc_reg[13:0],rxd};       
                          if((stopp==1'b0) & (rxd==1'b0) & (err<3'b011))
                            err<=3'b010;
                          else;                
		        end                   
		      stopp<=!rxd;     
	            end		
	          else if(b_l1>6'b000111)
	            begin			
		      if(rxd==1'b0)		
		        begin
		          if(b_l1==6'b001110)   
		            begin     
		              if(err<3'b011)
		                begin
		                  err<=3'b111;  	
	 	                  eactiv<=1'b1;   
		                end           
		              else if(err<3'b110)              
		                begin
		                  err<=3'b110;   	
	 	                  eactiv<=1'b1;   
		                end
		              else if(err==3'b110)
                                eactiv<=error_state;
                              else	
                                eactiv<=1'b1; 
		            end                       
		          else
		             begin
		               case(err)    
		                 3'b010:   err<=3'b001; 
		                 3'b011:   err<=3'b100;
		                 3'b101:   err<=3'b100;
		                 3'b110:   err<=3'b100; 
		                 3'b111:   err<=3'b001; 
		                 default:;  
		               endcase
                               eactiv<=error_state;        
		             end              
		          error_out<=1'b1;   
		        end
		      else if(b_l1==6'b001110) 
		        begin           
		          err<=3'b000;
		          eactiv<=error_state;
		          crc_reg[11]<=1'b1; 
	                end
	              else error_out<=1'b0;   
	            end
                  else;
                  eac<=eac_l;
                end
              b<=b_l4;	 
            end		
          cd<=cd_l;	
          busidle<=busidle_l;	
          strms<=strms_l;	
	  last_trans_b<=last_trans_b_l;	
          acf<=acf_l;	
          df<=df_l;	
          frame<=frame_l;  
        end		
      else;		
    end			
assign sfa=(b[4]|b[5])&eof&!bnull;	
assign sfa_x=(b[0]&b[1]&b[2]&b[3])&eof&!bnull;
assign rack=!equal[0]&b[4]&!b[5]&eof&receive&!crc_cont;  
assign revalid=eof&b[0]&b[1]&b[2]&!b[3]&b[4]&!err[0]&receive; 
assign transvalid=!acf&!df&b[0]&!b[1]&!b[2]&b[3]&b[4]&!err[0]&!err[1]&!err[2]&!receive;	
assign abort=(err[0]|err[2])&!b[0]&!b[1]&!b[2]&!b[3]&!b[4]&!b[5];
assign ready=!b[0]&!b[1]&b[2]&!b[3]&!b[4]&b[5]&acf&id_fmt&transmit&!stfb|b[0]&!b[1]&!b[2]&!b[3]&b[4]&!b[5]&acf&!id_fmt&receive|b[0]&!b[1]&b[2]&!b[3]&!b[4]&b[5]&acf&id_fmt&receive;
assign start=trrequ&(strms|busidle&(error_state|last_trans_b));
assign next_start_id_reg=interms&b[0]&!b[4]&error_state&trrequ&!rxd;
assign eof=(receive&!sof&(b[0]|b[1]|b[2]|b[3]|b[4])|transmit)&!acf&!df&frame;		
assign rxd_out=equal[0];
assign zero=((bnull&!receive&!df|bnull&receive_stop&!df|(acf|df)&!b[0]&!b[1]&!b[2]&!b[3]&
	     !b[4]&!b[5]&receive)&!stfb)|(!transmit&!receive);
assign rtr_bit=cd&acf&(!b[0]&!b[1]&b[2]&b[3]&!b[4]&!b[5]&!id_fmt|!b[0]&!b[1]&!b[2]&!b[3]&!b[4]&b[5]&id_fmt);
assign ebf=busoff&crc_reg[0]&crc_reg[1]&crc_reg[2]&crc_reg[3]&crc_reg[4]&crc_reg[5]&crc_reg[6]&crc_reg[7]&crc_reg[8]&crc_reg[9]&crc_reg[10];
assign crc_cont=crc_reg[0]|crc_reg[1]|crc_reg[2]|crc_reg[3]|crc_reg[4]|crc_reg[5]|crc_reg[6]|crc_reg[7]|crc_reg[8]|crc_reg[9]|crc_reg[10]|crc_reg[11]|crc_reg[12]|crc_reg[13]|crc_reg[14];
assign stfb=(!equal[0]&equal[1]&equal[2]&equal[3]&equal[4]&equal[5]|equal[0]&!equal[1]&!equal[2]&!equal[3]&!equal[4]&!equal[5])&!sfa&!cd&(receive|transmit);
assign  nxt_stfb=(equal[0]&equal[1]&equal[2]&equal[3]&equal[4]|!equal[0]&!equal[1]&!equal[2]&!equal[3]&!equal[4])&!sfa&(transmit|receive);
assign halt=halt_int|stfb;
always@(interms or rxd or b ) 
  if((interms==1'b1)&(rxd==1'b0)&((b==6'b000000)|(b==6'b001110)|(b==6'b011000)|(b==6'b011001)))
    overld=1'b1;
  else
    overld=1'b0;
always@(busidle or transmit or receive or receive_stop or err or crc_reg or b ) 
  if((busidle==1'b0)&(transmit==1'b0)&((receive==1'b0)|(receive_stop==1'b1))&(err[2:0]==3'b000)&
  ((crc_reg[11]==1'b1)|(crc_reg[10]==1'b1)&(b==6'b001001)|(crc_reg[9]==1'b1)&(b==6'b001000)|(crc_reg[8]==1'b1)&
  (b==6'b000111)))
    interms=1'b1;
  else
    interms=1'b0;
assign interm3=interms&b[0]&!b[4]&trrequ;
assign start_id=start_id_reg|next_start_id_reg;	
always @(posedge reset or posedge clk)
  if(reset)
    begin
      start_id_reg<=1'b0;
    end
  else
    begin
      if(sample)
        begin
          start_id_reg<= next_start_id_reg;
        end
      else;
    end
endmodule
