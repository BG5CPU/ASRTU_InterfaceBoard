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
//+  File          : eml.v
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
//+ $Id: eml.v,v 1.3.2.7 2007/01/22 13:54:02 schneide Exp $
//
`timescale 1ns/10ps
module eml
  (
  error_state,		//+ =1 ->erroractive, =0 ->errorpassive -> to TCL
  busoff,		//+ =1 ->transmit-errorcount >= 256     -> to IML,TCL
  warn,			//+ =1 ->errorcount >= 96               -> to IML
  trcount,		//+ {busoff,trcount[7:0]}=0...255       -> to MM
  recount,		//+ recount=0...127                     -> to MM
  clk,	        	//+ system clock                        <- global
  ko_error,		//+ kind of error (1...7)               <- from TCL
  err,			//+ =1 ->error occurred                 <- from TCL
  transvalid,		//+ =1 -> transmission valid            <- from TCL
  reset,		//+ =1 -> HW/SW reset (reset_request)   <- from IML
  rec_ack,		//+ =1 -> receive acknowledge           <- from TCL
  clock,		//+ bittime clock enable                <- from BTL
  ebf			//+ =1 -> sequence of 11 rez. bits recognized <- from TCL
  );			
output error_state;	
output busoff;		
output warn;		
output[7:0] trcount;	
output[7:0] recount;	
input clk;
input[2:0] ko_error;	
input err;		
input transvalid;	
input reset;		
input rec_ack;		
input clock;
input ebf;		//
wire error_state,busoff,warn;
wire[7:0] trcount;
reg [8:0] trcount_int;
wire[7:0] recount;
reg [7:0] recount_int;
reg busoff_store;	
assign trcount = trcount_int[7:0];
assign recount = recount_int[7:0];
always@(posedge reset or posedge clk)
  begin
    if(reset==1'b1)
      begin
	trcount_int<=9'b000000000;
	recount_int<=8'b00000000;
        busoff_store<=1'b0;
      end
    else
      begin
        if(clock==1'b1)
          begin
            if(err==1'b1)
              begin
	        if(trcount_int[8]==1'b1)	
	          begin
	            if((recount_int[7]==1'b0)&(ebf==1'b1))	
	              begin
		        recount_int<=recount_int+8'b00000001;
	              end
	            else;
	          end
	        else if(error_state==1'b1)	
	          begin
	            case(ko_error)
		      3'b001: begin
                                if(recount_int[7] == 1'b0)	
                                  recount_int<=recount_int+8'b00000001;
                                else;
                              end
		      3'b010: begin
                                if(recount_int[7] == 1'b0)	
                                  recount_int<=recount_int+8'b00001000;
                                else;
                              end
		      3'b011:      trcount_int<=trcount_int+9'b000001000;
		      3'b100:      trcount_int<=trcount_int+9'b000001000;
		      default:;
	            endcase
	          end
                else			
	          begin
	            case(ko_error)
		      3'b001: begin
                                if(recount_int[7] == 1'b0)	
                                  recount_int<=recount_int+8'b00000001;
                                else;
                              end
		      3'b010: begin
                                if(recount_int[7] == 1'b0)	
                                  recount_int<=recount_int+8'b00001000;
                                else;
                              end
		      3'b100:     trcount_int<=trcount_int+9'b000001000;
		      default:;
	            endcase
	          end
              end
            else if(transvalid==1'b1)
              begin
	        if(trcount_int!=9'b000000000)
	          trcount_int<=trcount_int-9'b000000001;
	        else
	          trcount_int<=9'b000000000;
              end
            else if(rec_ack==1'b1)
              begin
	        if((recount_int!=8'b00000000)&(error_state==1'b1))
                  begin
	            recount_int<=recount_int-8'b00000001;	
                  end
	        else if(recount_int[7]==1'b1)
                  begin			
	            recount_int<=8'b01111111;   
                  end
	        else
	          recount_int<=8'b00000000;
              end
            else;
          end
        else	
          begin
            if((trcount_int[8]==1'b1)&(busoff_store==1'b0))
              begin                 	
                recount_int<=8'b00000000;      	  
                busoff_store<=1'b1;
              end                         
            else if((trcount_int[8]==1'b1)&(recount_int[7]==1'b1))	
              begin
                recount_int<=8'b00000000; 	
                trcount_int<=9'b000000000; 
                busoff_store<=1'b0;
              end
            else;
          end
      end
    end
assign error_state=!trcount_int[7]&!recount_int[7];	
assign warn=recount_int[5]&recount_int[6]|trcount_int[5]&trcount_int[6]|
		trcount_int[7]|recount_int[7]|busoff;
assign busoff=trcount_int[8];	
endmodule
