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
//+  File          : can_core.v
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
//+ Verilog HDL for "can_core", "can_core" "behavioral"
//+ $Id: can_core.v,v 1.4.2.8 2007/01/11 14:43:49 schneide Exp $
`timescale 1ns/10ps
module can_core
  (
  dataout, 
  int, 
  tst_sample, 
  tst_clock, 
  txd, 
  adr, 
  datain, 
  rst_b, 
  cs_b,
  rd_b, 
  wr_b, 
  rxd, 
  clk,
  RecCnt,
  TrCnt
  )
;
    output [7:0] dataout;
    output int;
    output tst_sample;
    output tst_clock;
    output txd;
    output [7:0] RecCnt;
    output [8:0] TrCnt;
    input [5:0] adr;
    input [7:0] datain;
    input rst_b;
    input cs_b;
    input rd_b;
    input wr_b;
    input rxd;
    input clk;
    wire [7:0] dataout;
    wire int;
    wire tst_sample;
    wire tst_clock;
    wire txd;
    wire [7:0] RecCnt;
    wire [8:0] TrCnt;
    wire [5:0] adr;
    wire [7:0] datain;
    wire rst_b;
    wire cs_b;
    wire rd_b;
    wire wr_b;
    wire rxd;
    wire clk;
wire[13:0] iml2mm;
wire[3:0] address_iml;
wire rb_wr_act,id_out,trrequ,reset_request,wr_ptr_next,rd_ptr_next;
wire[2:0] err;
wire error_out,ebf,rack,zero,rtr_bit,ready_tcl,rxd_out,halt,cd,transmit;
wire rtr,id_form,revalid,abort,eof,transvalid,receive,sof,start;
wire start_id,interm3,busidle;
wire[7:0] data_rec;
wire[2:0] a; 
wire txd_in,ready;
wire sample,clock,rxd_sync;
wire[7:0] reccount,trcount; 
wire error_state,busoff,warn;
wire[5:0] ctrl2iml;	
wire[3:0] com2iml;	
wire[28:0] a1c2iml;      
wire[28:0] a1m2iml;      
wire[28:0] a2c2iml;      
wire[28:0] a2m2iml;      
wire[28:0] a3c2iml;      
wire[28:0] a3m2iml;      
wire[3:0] adr_trbuf;
wire[8:0] out_btl;
wire[7:0] div_factor;
wire wen_rb,we_trbuf,tst_off;
wire[7:0] dataout_fifo;
wire[1:0] dscr_bits;
wire rbstat,fullstat_fifo,ovrn_stat_fifo;
wire[7:0] datatrans;
assign RecCnt[7:0] = reccount[7:0];
assign TrCnt[8:0]  = {busoff,trcount[7:0]};
//+============================================================================
iml top_iml 
  (
  .out2mm(iml2mm),	//+ Bits of Interrupt and Statusregisters	-> to MM
  .address(address_iml),//+ byte address (generated for MM)		-> to MM
  .rb_wr_act(rb_wr_act),//+ RB active (receiving or transmitting)	-> to FIFO
  .id_out(id_out),	//+ =1 -> ext. ID, =0 -> std. ID 		-> to TCL
  .trrequ(trrequ),	//+ =1 ->Transmit request (TrRequ1 oder TrRequ2)-> to TCL
  .reset_request(reset_request),//+ =1 ->HW or SW reset 		-> to TCL,BSP,BTL,EML
  .wr_ptr_next(wr_ptr_next),	//+ =1 one sysclk-period to increment the b_ptr	-> to FIFO
  .rd_ptr_next(rd_ptr_next),	//+ =1 one sysclk-period to increment the a_ptr	-> to FIFO
  .clk(clk),		//+ System clock				<- from can_top
  .reset_b(rst_b),	//+ HW reset					<- from can_top
  .ctrl_mm(ctrl2iml),	//+ ControlReg inputs (ResReq,RIE,TIE,EIE,OIE,FIE) -> from MM
  .com_mm(com2iml),	//+ CommandReg inputs (TrRequ1,TrRequ2,AbortTr,RRB) -> from MM    
  .a1c(a1c2iml),     //+ Acceptancecode1 inputs                      -> from MM      
  .a1m(a1m2iml),     //+ Acceptancemask1 inputs                      -> from MM      
  .a2c(a2c2iml),     //+ Acceptancecode2 inputs                      -> from MM      
  .a2m(a2m2iml),     //+ Acceptancemask2 inputs                      -> from MM      
  .a3c(a3c2iml),     //+ Acceptancecode3 inputs                      -> from MM
  .a3m(a3m2iml),     //+ Acceptancemask3 inputs                      -> from MM      
  .resetint(resetint),	//+ =1 ->reset "recint,transint,errorint,ovrnint" in IML after read access <- vom MM
  .data_rec(data_rec),	//+ Data byte from BSP (received or transmitted)<- from BSP
  .a(a),		//+ Pointer selects bitposition within the byte	<- from BSP
  .ready(ready),	//+ =1 ->byte at the BSP complete		<- from BSP
  .clock(clock),	//+ Bit clock (ena for sysclk)    	        <- from BTL
  .warn_limit(warn),	//+ =1 ->one of errorcounters is >= 96		<- from EML
  .busoff(busoff),	//+ =1 ->TrCount >= 256				<- from EML
  .sof(sof),		//+ =1 ->TCL has recognized the SOF bit		<- from TCL
  .id_fmt(id_form),	//+ ID format =1 ->ext. =0 -> std. ID		<- from TCL
  .halt(halt),		//+ =1 ->BSP ignores the bit (stfb,srr,rtr,ide...<- from TCL
  .eof(eof),		//+ =1 ->area of crc-,ack- und eof-Bits		<- from TCL
  .revalid(revalid),	//+ =1 ->receiving valid			<- from TCL
  .start(start),	//+ =1 ->Start of transmission			<- from TCL
  .cd(cd),		//+ =1 ->change direction (Lost Arbitration)	<- from TCL
  .abort(abort),	//+ =1 ->abort of message storage after error 	<- from TCL
  .transvalid(transvalid),//+ =1 ->transmission errorfree to the last bit	<- from TCL
  .start_id(start_id),	//+ =1 ->start of transmission with ID (external SOF recognized)<- from TCL
  .transmit(transmit),	//+ =1 ->node is transmitter			<- from TCL
  .receive(receive),	//+ =1 ->node is receiver			<- from TCL
  .fullstat_fifo(fullstat_fifo),//+ all RB full (from FIFO)  )		<- from FIFO
  .ovrn_stat_fifo(ovrn_stat_fifo),//+ the oldest message in the FIFO is overwritten <- from FIFO
  .rbstat(rbstat)	//+ at least 1 FIFO Element if full <- from FIFO
  );
//+============================================================================
tcl top_tcl 
  (
  .err(err),		//+ kind of error (1...7)			-> to EML
  .error_out(error_out),//+ =1 ->error occurred				-> to EML
  .ebf(ebf), 		//+ =1 -> sequence of 11 rez. bits recognized	-> to EML
  .rack(rack), 		//+ =1 -> receive acknowledge			-> to EML
  .zero(zero), 		//+ a pointer set to 7 (new frame area)		-> to BSP
  .rtr_bit(rtr_bit), 	//+ =1 ->rtr bit currently transmits		-> to BSP
  .ready(ready_tcl), 	//+ =1 ->end of acf-area			-> to BSP
  .rxd_out(rxd_out), 	//+ rx data 					-> to BSP
  .halt(halt), 		//+ =1 ->ignore bit (stfb,srr,rtr,ide...)	-> to IML,BSP
  .cd(cd), 		//+ =1 ->change direction (lost of arbitration)	-> to IML,BSP
  .transmit(transmit), 	//+ =1 ->node currently transmits			
  .rtr(rtr), 		//+ RTR bit=1 ->RemoteFrame, =0 ->StandardFrame	-> to IML
  .id_fmt(id_form), 	//+ =1 ->ext. ID (=0 -> std. ID)		-> to IML
  .revalid(revalid), 	//+ =1 ->receiving valid			-> to IML
  .abort(abort), 	//+ =1 ->abort of activities after error 	-> to IML
  .eof(eof), 		//+ =1 field of crc,ack and eof bits		-> to IML
  .transvalid(transvalid), //+ =1 ->transmission errorfree to the last bit	-> to IML,EML
  .receive(receive), 	//+ =1 ->node is currently receiving		-> to IML
  .sof(sof), 		//+ =1 ->TCL has recognized a SOF bit		-> to IML
  .start(start), 	//+ =1 ->start of transmission			-> to IML
  .start_id(start_id), 	//+ =1 ->start of transmission with ID (external SOF recognized)-> to IML,MM
  .interm3(interm3), 	//+ =1 =1 ->third Intermission bit		-> to BTL
  .busidle(busidle), 	//+ =1 ->bus idle				-> to BTL
  .txd(txd), 		//+ transmitted value				-> to BTL,bus
  //+ --------------------------------------------------------------------------
  .clk(clk),	 	//+ system clock                                <- global
  .clock(clock), 	//+ bittime clock enable                        <- from BTL
  .sample(sample), 	//+ sample clock enable                         <- from BTL
  .rxd(rxd_sync), 	//+ rx vom Bus in BTL synchronisiert            <- from BTL                              <- von BTL
  .reset(reset_request),//+ =1 ->reset_request (HW and SW reset)        <- from IML
  .id_in(id_out), 	//+ =1 -> ext. ID, =0 -> std. ID                <- from IML                      //+Steuereingaenge
  .trrequ(trrequ), 	//+ =1 -> order to send (TrRequ1 or TrRequ2)    <- from IML
  .error_state(error_state),//+ =1 ->erroractive, =0 ->errorpassive     <- from IML
  .txd_in(txd_in), 	//+ bit to send                                 <- from BSP
  .busoff(busoff) 	//+ =1 ->TrCount >= 256                         <- from EML
);
//+============================================================================
bsp top_bsp (
  .out2tcl(txd_in),      //+ serialized data from TransBuf 	-> to TCL
  .ready(ready),         //+ BSP-Reg complete and ready from TCL-> to IML,MM
  .dataout(data_rec),    //+ BSP-Reg 				-> to IML,host
  .a(a),                 //+ Pointer selects bitposition in the BSP-Reg	-> to IML
  //+ --------------------------------------------------------------------------
  .clk(clk),          	 //+ system clock
  .datain(datatrans),    //+ databyte to transmit 		  <- from TransBuf
  .reset(reset_request), //+ =1 ->reset_request (HW and SW-reset) <- from IML
  .halt(halt),           //+ =1 ->bit not load into BSP-Reg	  <- from TCL
  .clock(clock),         //+ bittime clock enable		  <- from BTL
  .tranceive(transmit),  //+ =1 ->transmitting is active	  <- from TCL
  .in_fr_tcl(rxd_out),   //+ rx data from TCL			  <- from TCL
  .zero(zero),           //+ =1 ->set a=7 (new frame area)	  <- from TCL
  .ready_input(ready_tcl), //+ =1 ->ready from TCL		  <- from TCL
  .cd(cd),               //+ =1 ->change direction (Rec<->Trans)  <- from TCL
  .rtr(rtr_bit)          //+ =1 ->RTR bit			  <- from TCL
  );
//+============================================================================
btl_1ph_clk top_btl (
  .sample(sample),         //+ sample clock enable  		-> to TCL,MM,
  .clock(clock),           //+ bittime clock enable           	-> to TCL,EML,IML,BSP
  .tst_clock(tst_clock),   //+ test signal                    	-> to host
  .tst_sample(tst_sample), //+ test signal                    	-> to host
  .rx2tcl(rxd_sync),       //+ sampled rxd on every timequanta 	-> to TCL
  //+ --------------------------------------------------------------------------
  .timing(out_btl),       //+ {sjw,seg_1,seg_2}            	<- from MM
  .div_factor(div_factor),//+ prescaler to 256               	<- from MM    
  .rxd(rxd),              //+ rxd from bus 			<- from Transceiver device
  .txd(txd),              //+ transmitted value      		<- from TCL
  .clk(clk),     	  //+ system clock		   	<- global
  .reset_b(rst_b),        //+ =0 ->HW reset, lowactive     	<- global
  .busidle(busidle),      //+ =1 ->bus not occupied         	<- from TCL
  .interm3(interm3),      //+ =1 ->third Intermission bit     	<- from TCL
  .reset_request(reset_request),//+ =1 ->reset_request (HW and SW-reset) <- from IML
  .tst_off(tst_off),      //+ =1 ->test signals tst_sample und tst_sample off <- from MM
  .rr_in(ctrl2iml[5]),    //+ output of ResetRequest register   <- from MM      
  .transmit(transmit)     //+ =1 ->transmitting is active	<- from TCL      
  );
//+============================================================================
eml top_eml 
  (
  .error_state(error_state),	//+ =1 ->erroractive, =0 ->errorpassive	-> to TCL
  .busoff(busoff),		//+ =1 ->transmit-errorcount >= 256	-> to IML,TCL
  .warn(warn),			//+ =1 ->errorcount >= 96		-> to IML
  .trcount(trcount),		//+ {busoff,trcount[7:0]}=0...255	-> to MM
  .recount(reccount),		//+ recount=0...127			-> to MM
  //+ --------------------------------------------------------------------------
  .clk(clk),	        	//+ system clock			<- global
  .ko_error(err),		//+ kind of error (1...7)		<- from TCL
  .err(error_out),		//+ =1 ->error occurred			<- from TCL
  .transvalid(transvalid),	//+ =1 -> transmission valid		<- from TCL
  .reset(reset_request),	//+ =1 -> HW/SW reset (reset_request)	<- from IML
  .rec_ack(rack),		//+ =1 -> receive acknowledge		<- from TCL
  .clock(clock),		//+ bittime clock enable 		<- from BTL
  .ebf(ebf)			//+ =1 -> sequence of 11 rez. bits recognized <- from TCL
  );			
//+============================================================================
mm top_mm 
  (
  .ctrl2iml(ctrl2iml),	//+ ControlReg outputs (ResReq,RIE,TIE,EIE,OIE,FIE) -> to IML
  .com2iml(com2iml),	//+ CommandReg outputs (TrRequ1,TrRequ2,AbortTr,RRB) -> to IML    
  .a1c2iml(a1c2iml),	//+ Acceptancecode1 outputs                     -> to IML       
  .a1m2iml(a1m2iml),	//+ Acceptancemask1 outputs                     -> to IML       
  .a2c2iml(a2c2iml),	//+ Acceptancecode2 outputs                     -> to IML       
  .a2m2iml(a2m2iml),	//+ Acceptancemask2 outputs                     -> to IML       
  .a3c2iml(a3c2iml),    //+ Acceptancecode3 outputs                     -> to IML
  .a3m2iml(a3m2iml),	//+ Acceptancemask3 outputs                     -> to IML       
  .resetint(resetint),	//+ signal to reset the interrupt reg. in IML   -> to IML
  .out_intf(dataout),	//+ dataout to host                             -> to host
  .interrupt(int),	//+ interrupt (highactive)                      -> to host
  .adr_trbuf(adr_trbuf),//+ byte address for transbuf                   -> to transbuf
  .wen_rb(wen_rb),	//+ write for FIFO, lowactive                   -> to FIFO
  .we_trbuf(we_trbuf),	//+ write for transbuf                          -> to transbuf                  //+Write Enable fuer Nachrichten
  .out_btl(out_btl),	//+ time setting data (ControlSegment)          -> to BTL 
  .o_div_factor(div_factor),//+ prescaler                               -> to BTL
  .tst_off(tst_off),	//+ =1 ->test signals tst_sample und tst_sample off -> to BTL
  //+ --------------------------------------------------------------------------
  .rb_wr_act(rb_wr_act),//+ =1 -> ReceiveBuffer active                   <- from IML
  .in_iml(iml2mm),	//+ bits of interrupt and status registers       <- from IML
  .clk(clk),		//+ system clock                                 <- global
  .in_intf(datain),	//+ daten from host to write                     <- from host
  .adr_intf(adr),	//+ addresses selected by host                   <- from host
  .adr_iml(address_iml),//+ addresses selected by IML                    <- from IML
  .reset_b(rst_b), 	//+ =0 ->HW reset                                <- from global
  .cs_b(cs_b), 		//+ =0 ->enable Signal from host,lowactive       <- from host
  .rd_b(rd_b), 		//+ =0 ->read signal from host,lowactive         <- from host
  .wr_b(wr_b), 		//+ =0 ->write signal from host,lowactive        <- from host
  .ready(ready), 	//+ BSP-Reg complete and ready from TCL          <- from BTL
  .sample(sample), 	//+ sample clock enable                          <- from BTL
  .transmit(transmit),	//+ =1 ->transmitting is active                  <- from TCL
  .start_id(start_id),	//+ =1 ->transmission starts with ID bits (SOF recognized) <- from TCL
  .dataout_fifo(dataout_fifo), //+data from FIFO                         <- from FIFO
  .reccount(reccount),  //+ Receive Error Counter                        <- from EML
  .trcount(trcount), 	//+ Transmit Error Counter                       <- from EML
  .datatrans(datatrans),//+ data to send                                 <- from transbuf
  .trrequ(trrequ), 	//+ =1 -> order to send (TrRequ1 or TrRequ2)     <- from IML
  .dscr_in(dscr_bits)	//+ InterruptDescription bits ID_fmt,RTR         <- from FIFO
  );
//+============================================================================
fifo_ctrl i_fifo_ctrl (
  //+ port a used as "output" port (host)
  .a_addr(adr[3:0]),         	//+ port a buffer addr				<- from host
  .a_dout(dataout_fifo),  	//+ port a data output				-> to MM
  .a_next(rd_ptr_next),  	//+ access to next FIFO element (n-byte-Buffer)	<- from IML
  .a_ptr(),            		//+ adress pointer				-> nc
  //+ port b used as "input" port (can)
  .b_addr(address_iml),    	//+ port b buffer addr				<- from IML
  .b_din(data_rec),       	//+ port b data input				<- from BSP
  .b_wrn(wen_rb),         	//+ port b write signal				<- from MM
  .b_next(wr_ptr_next),  	//+ access to next FIFO element (n-byte-Buffer)	<- from IML
  .b_ptr(),            		//+ adress pointer				-> nc
  //+ description bits
  .dsc_out(dscr_bits),		//+ description data output			-> to MM
  .dsc_in({id_form,rtr}),	//+ description data input			<- from TCL
  //+ control signals
  .not_empty(rbstat),    	//+ at least 1 FIFO Element if full => (static)	-> to IML
  .full(fullstat_fifo),      	//+ full warning limit achieved => (static)	-> to IML
  .overflow(ovrn_stat_fifo),	//+ FIFO overflow (data lost) => (pulse)	-> to IML
  .nreset(rst_b),     		//+ async l-activ reset				<- global
  .clk(clk)     		//+ system clock 				<- global
  );
//+============================================================================
buf_13x8 transbuf
  (
  .dataout(datatrans),		//+ stored data to send	-> to BSP,MM
  .we_b(we_trbuf),		//+ write		<- from MM
  .datain(datain),		//+ data to send	<- from host
  .adress(adr_trbuf),		//+ byte address	<- from MM
  .clk(clk),			//+ system clock	<- global
  .rst_b(rst_b)			//+ reset		<- global
  );
endmodule
