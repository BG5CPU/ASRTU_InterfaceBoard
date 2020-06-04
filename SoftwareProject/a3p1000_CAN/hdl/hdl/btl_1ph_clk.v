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
//+  File          : btl_1ph_clk.v
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
//+  Last Update   : 16-Nov-2006
//+
//+  Version       : 2V18N00S00
//+ ---------------------------------------------------------------------
//+
//+ $Id: btl_1ph_clk.v,v 1.5.2.10 2007/01/22 13:54:01 schneide Exp $
//
//
//
//
//
//
`timescale 1ns/10ps
module btl_1ph_clk (
       sample,    	//+ sample clock enable              -> to TCL,MM,
       clock,          	//+ bittime clock enable             -> to TCL,EML,IML,BSP
       tst_clock,      	//+ test signal                      -> to host
       tst_sample,     	//+ test signal                      -> to host
       rx2tcl,      	//+ sampled rxd on every timequanta  -> to TCL             
       timing,          //+ {sjw,seg_1,seg_2}                 <- from MM
       div_factor,      //+ prescaler to 256                  <- from MM    
       rxd,             //+ rxd from bus                      <- from Transceiver device
       txd,             //+ transmitted value                 <- from TCL
       clk,          	//+ system clock                      <- global
       reset_b,         //+ =0 ->HW reset, lowactive          <- global
       busidle,         //+ =1 ->bus not occupied             <- from TCL
       interm3,         //+ =1 ->third Intermission bit       <- from TCL
       reset_request,	//+ =1 ->reset_request (HW and SW-reset) <- from IML
       tst_off,		//+ =1 ->test signals tst_sample und tst_sample off <- from MM
       rr_in, 		//+ output of ResetRequest register   <- from MM
       transmit		//+ =1 ->node acts as transmitter     <- from TCL
  );
input [8:0] timing;	
input [7:0] div_factor;	
input rxd;		
input txd;		
input clk;         	
input reset_b;		
input busidle;		
input interm3;		
input reset_request;	
input tst_off;		
input rr_in;		
input transmit;		
output sample;     	
output clock;      	
output tst_clock;  	
output tst_sample; 	
output rx2tcl;  	
reg sample,s1,s2;
reg clock;
reg [4:0] k2;		
reg [3:0] phase_2;
reg [4:0] seg;
reg [4:0] t;		
reg [7:0] count;	
reg rxd_sync1;		
reg rxd_sync2;		
reg rx2tcl;		
reg tq_clk_tic;	
reg tq_work_tic;
reg clk_ena;	
wire [3:0] seg_1;
wire [2:0] seg_2;
wire [1:0] sjw;
assign seg_1[3:0]=timing[6:3];
assign seg_2[2:0]=timing[2:0];
assign sjw[1:0]=timing[8:7];
wire init;		
assign init=reset_request|rr_in;	
wire negedge_rx;
assign negedge_rx=(rxd_sync1^rxd_sync2)&!rxd_sync1;
  wire hardsync;
  assign hardsync=negedge_rx&(busidle|interm3)&txd;
  reg resync_before;
  always@(negedge_rx or s1 or t or seg_1 or txd or transmit)
    if((negedge_rx==1'b1)&(s1==1'b0)&(t<=({1'b0,seg_1}+5'b00001))&(txd==1'b1)&(transmit==1'b0))
      resync_before <=1'b1;
    else
      resync_before <=1'b0;
  reg resync_after;
  always@(negedge_rx or s1 or t or seg_1)
    if((negedge_rx==1'b1)&(s1==1'b0)&(t>({1'b0,seg_1}+5'b00001)))
      resync_after <=1'b1;
    else
      resync_after <=1'b0;
always @(negedge reset_b or posedge clk)
  begin
    if(reset_b==1'b0) 
      count <= 8'b00000001;  	
    else if(init==1'b1)	
      count <=div_factor;      
    else if(count==8'b00000000)
      count <=div_factor; 
    else
      count <=count - 8'b00000001; 
  end
always @(negedge reset_b or posedge clk)
  begin
    if(reset_b==1'b0)	 
      begin
        tq_clk_tic <=1'b0;	
        tq_work_tic <=1'b0;	
        clk_ena <= 1'b0;	
      end
    else
      begin
        if(div_factor>8'b00000001)
          case(count)
            8'b00000001:
              begin
                tq_clk_tic <= 1'b1;
                tq_work_tic <= 1'b0;
                clk_ena <= 1'b0;
              end
            8'b00000000:
              begin
                tq_clk_tic <= 1'b0;
                tq_work_tic <= 1'b1;
                clk_ena <= 1'b0;
              end
            8'b00000010:
              begin
                tq_clk_tic <= 1'b0;
                tq_work_tic <= 1'b0;
                clk_ena <= 1'b1;
              end
            default:
              begin
                tq_clk_tic <= 1'b0;
                tq_work_tic <= 1'b0;
                clk_ena <= 1'b0;
              end
          endcase
        else if(div_factor<8'b00000010)	
          case(count)
            8'b00000000:
              begin
                tq_clk_tic <= 1'b0;
                tq_work_tic <= 1'b1;
                clk_ena <= 1'b1;
              end
            default:
              begin
                tq_clk_tic <= 1'b1;
                tq_work_tic <= 1'b0;
                clk_ena <= 1'b0;
              end
          endcase
        else;
      end
  end
always @(negedge reset_b or posedge clk)
  if(reset_b==1'b0)
    begin
      rxd_sync2 <= 1'b1;
      rxd_sync1 <= 1'b1;
    end
  else
    begin
      if(init==1'b1)			
        begin
          rxd_sync2 <= 1'b1;
          rxd_sync1 <= 1'b1;
        end
      else if(tq_clk_tic==1'b1)     
         begin
           rxd_sync2 <= rxd_sync1;       
           rxd_sync1 <= rxd;             
         end
      else;
    end
always @(negedge reset_b or posedge clk)
  begin
    if(reset_b==1'b0)	
      begin
	t <= 5'b00000;
	k2 <= 5'b00000;
	s1 <= 1'b0;
	s2 <= 1'b0;
	sample <= 1'b0;
	clock <= 1'b0;
	phase_2 <= 4'b0011;	
	seg <= 5'b01001;		
        rx2tcl <=1'b1;
      end
    else	
      begin
        if(tq_work_tic==1'b1)      
          begin
          if(init)        
            begin
              t <= 5'b00000;
              k2 <= 5'b00000;
              s1 <= 1'b0;
              s2 <= 1'b0;
              sample <= 1'b0;
              clock <= !clock;      
              phase_2 <= ({1'b0,seg_2})+4'b0001;       
              seg <= ({1'b0,seg_1})+({2'b00,seg_2})+5'b00010;   
              rx2tcl <=1'b1;
            end
          else                    
            begin
              if(hardsync==1'b1)                                                      
	        begin                                                           
	          clock <= 1'b1;                                              
                  sample <= 1'b0;                                             
	          s1 <= 1'b1;                                                              
	          s2 <= 1'b0;                                                              
	          k2 <= 5'b00000;                                                              
                  phase_2 <= ({1'b0,seg_2})+4'b0001;                                                   
                  t <= 5'b00001; 
                end                                                             
              else  
                begin
                  if(clk_ena==1'b1) 
                    begin                                                       
                      if(t==seg)                                                
                        begin                                                   
	                  clock <= 1'b1;                                      
                        end                                                     
                      else;                                                     
                    end                                                         
                  else;       
                  if(t==5'b00000)          
		    begin     
		        s1 <= s2;           
		        s2 <= 1'b0;            
		        seg <= ({1'b0,seg_1})+5'b00010+({2'b00,seg_2});       
                        if((({1'b0,seg_2})+3'b001-k2[2:0])>3'b010)    
                          begin                       
                            phase_2 <= ({1'b0,seg_2})+4'b0001-k2[3:0];                                                      
                            k2 <=5'b00000;             
                          end                                                                             
                        else                                                                              
                          begin                                                                           
                            phase_2 <= 4'b0010;   
                            k2 <= k2-({2'b00,seg_2})+5'b00001; 
                          end                                                 
		        t <= 5'b00001;                                                                        
		      end                                                                                 
		  else if(t==5'b00001)  
                      if(resync_before==1'b1)                                                                   
                        begin                                                                             
	                  if (t<(({3'b000,sjw})+5'b00001))      
                            t <= 5'b00001;         
	                  else            
                            t <= t-({3'b000,sjw}); 
	                  s1 <= 1'b1;                                                                      
	                  k2 <= 5'b00000;                                                                      
                          phase_2 <= ({1'b0,seg_2})+4'b0001;                                                           
                        end                                                                               
                      else                                                                                
                        begin                                                                             
		          seg <= ({1'b0,seg_1})+1+({1'b0,phase_2});   
		          t <= t+5'b00001;                                                                    
		        end                                                                               
		  else if(t==({1'b0,seg_1})+5'b00001)            
                      if(resync_before==1'b1)                                                                   
                        begin                                                                             
	                  if (t<(({3'b000,sjw})+5'b00001))      
                            t <= 5'b00001;         
	                  else            
                            t <= t-({3'b000,sjw}); 
	                  s1 <= 1'b1;                                                                      
	                  k2 <= 5'b00000;                                                                      
                          phase_2 <= ({1'b0,seg_2})+4'b0001;                                                           
                        end                                                                               
                      else                                                                                
		        begin                                                                             
		          sample <= 1'b1;   
		          s1 <= 1'b0;          
                          rx2tcl <=rxd_sync1;                                                               
		          t <= t+5'b00001;                                                                    
		        end                                                                               
		  else if(t==seg)                
                      if(resync_after==1'b1)                                                                    
                        begin                                                                             
	                  if ((seg-t)<(({3'b000,sjw})))  
	                    k2 <= seg+5'b00001-t;     
	                  else                                                                            
                            k2 <= ({3'b000,sjw})+5'b00001;                                                                
	                  s1 <= 1'b0;    
	                  s2 <= 1'b1;    
                          t <= 5'b00000;                                                                       
	                end                                                                               
                      else                                                                                
		        begin                                                                             
		          s1 <= 1'b0;          
		          t <= 5'b00000;                                                                      
		        end                                                                               
		  else
                    begin                                                                              
                      if(resync_before==1'b1)                                                                   
                        begin                                                                             
	                  if (t<(({3'b000,sjw})+5'b00001))      
                            t <= 5'b00001;         
	                  else            
                            t <= t-({3'b000,sjw}); 
	                  s1 <= 1'b1;                                                                      
	                  k2 <= 5'b00000;                                                                      
                          phase_2 <= ({1'b0,seg_2})+4'b0001;                                                           
                        end                                                                               
                      else if(resync_after==1'b1)                                                               
                        begin                                                                             
	                  if ((seg-t)<(({3'b000,sjw})))  
	                    k2 <= seg+5'b00001-t;     
	                  else                                                                            
                            k2 <= ({3'b000,sjw})+5'b00001;                                                                
	                  s1 <= 1'b0;    
	                  s2 <= 1'b1;    
                          t <= t+5'b00001;                                                                     
	                end                                                                               
                      else                                                                                
		        begin                                                                             
		          t <= t+5'b00001;                                                                    
		        end                                                                               
	            end                                                                                 
                end
            end		
          end		
        else            
          begin
            if(sample==1'b1)
              sample <= 1'b0;     
            else;
            if(clock==1'b1)
              clock <= 1'b0; 
            else
            if(clk_ena==1'b1) 
              begin
                if(t==seg)
                  begin
	            clock <= 1'b1;
                  end
                else;
              end
            else;       
          end
      end			
  end				
assign tst_clock=clock&!tst_off;
assign tst_sample=sample&!tst_off;
endmodule
