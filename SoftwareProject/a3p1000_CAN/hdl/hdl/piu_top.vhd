 -----------------------文件描述--------------------------------------------------------------------------
-- 版权(copyright)：CAST
-- 项目名：
-- 模块名: piu_top
-- 作者  : luanxn
-- 功能  : 顶层文件
-- 初始版本和发布时间: 2018.08
---------------------------------------------------------------------------------------------------------
-- 更改历史:
---------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
entity piu_top is
    Port (	clk_i 				: 	in  	std_logic;                          ------时钟输入J3-----   
          	rst_i 				: 	in  	std_logic;                          ------复位输入J1-----   
          	                                                                                            
          	dog_clr_o			: 	out  	std_logic;                          ----看门狗清零---				
            atob_st_i			: 	in  	std_logic;                          -----低电平有效----     
            atob_cmd_o			: 	out  	std_logic;                                                  
            --------CAN核--------                                                                        
            cana_rxd_i			:	in		std_logic;							------CANA核接收-----   
            cana_txd_o			:	out		std_logic;							------CANA核发送-----   
            canb_rxd_i			:	in		std_logic;							------CANB核接收-----   
            canb_txd_o			:	out		std_logic;							------CANB核发送-----   
            
            --sja_data_o          :   out     std_logic_vector(7 downto 0); 
            sja_re_o            :   out     std_logic ; 
            sja_cs_o            :   out     std_logic ;    
            sja_ale_o           :   out     std_logic ;    
            ----TLV2548 
            ad_sclk_o           :   out     std_logic ;   ---10MHz---
            ad_sdo_i            :   in      std_logic ;   
            ad_sdi_o            :   out     std_logic ;  
            ad_csn_o            :   out     std_logic ;
            start_o             :   out     std_logic ; 
            ad_eoc_i            :   in      std_logic ;           
            hi_addr_o           :   out     std_logic_vector(3 downto 0); 
            
            cmd_en_o            :   out      std_logic ;  ---指令使能'1'使能---
            tc_a_cmd_o			:	out		std_logic_vector(1 downto 0);      ---测控配电指令---
            tc_b_cmd_o			:	out		std_logic_vector(1 downto 0);      ---配电指令---
            gps_a_cmd_o			:	out		std_logic;       ---配电指令---
            gps_b_cmd_o			:	out		std_logic;       ---配电指令---
            
            clj_x_cmd_o			:	out		std_logic_vector(1 downto 0); 
            clj_y_cmd_o			:	out		std_logic_vector(1 downto 0); 
            clj_z_cmd_o			:	out		std_logic_vector(1 downto 0); 
            
            therm_cmd_o 		:	out		std_logic_vector(21 downto 0) ---温控指令---
            
            --test_o		        :	out		std_logic_vector(4 downto 1)
            );
end piu_top;
----------------------------------------------------------------------------------
architecture Behavioral of piu_top is
----------------------------------------------------------------------------------

signal  	sysclk_c    		:	    	std_logic;							------系统时钟-----                           
signal		sysrst_c    		:	    	std_logic;							------系统复位-----                           
signal  	rst_c       		:     		std_logic;							------经过异步复位，同步释放后的复位信号------
                                                                                                                              
signal		can_addr_c			:			std_logic_vector(6 downto 0);		------CAN缓存地址----                         
signal		can_wen_c			:			std_logic;							------CAN写使能脉冲----                       
signal		can_wdata_c			:			std_logic_vector(7 downto 0);		------CAN写数据----                           
signal		can_ren_c			:			std_logic;							------CAN读使能脉冲----                       
signal		can_rdata_c			:			std_logic_vector(7 downto 0);		------CAN读数据----                           
signal		can_int_c			:			std_logic_vector(1 downto 0);                                                     
signal		can_done_c			:			std_logic;							------CAN完成脉冲----                         

signal		cana_addr_c			:			std_logic_vector(5 downto 0);
signal		cana_datain_c		:			std_logic_vector(7 downto 0);
signal		cana_dataout_c		:			std_logic_vector(7 downto 0);
signal		cana_cs_c			:			std_logic;
signal		cana_rd_c			:			std_logic;
signal		cana_wr_c			:			std_logic;
signal		cana_rst_c			:			std_logic;
signal		cana_int_c			:			std_logic;
signal		canb_addr_c			:			std_logic_vector(5 downto 0);
signal		canb_datain_c		:			std_logic_vector(7 downto 0);
signal		canb_dataout_c		:			std_logic_vector(7 downto 0);
signal		canb_cs_c			:			std_logic;
signal		canb_rd_c			:			std_logic;
signal		canb_wr_c			:			std_logic;
signal		canb_rst_c			:			std_logic;

signal      tick_1us_c			:			std_logic;	
signal		tick_1ms_c			:			std_logic;							------1ms定时脉冲----
signal		tick_1s_c			:			std_logic;							------1s定时脉冲---- 

signal      ad_rdata_c		    :			std_logic_vector(11 downto 0);
signal      ad_data_c		    :			std_logic_vector(11 downto 0);
signal      ad_done_c		    :			std_logic;
signal      ad_en_c  		    :			std_logic;
signal      acq_end_c		    :			std_logic;
signal      ad_ren_c 		    :			std_logic;
signal      ad_addr_c  		    :			std_logic_vector(3 downto 0);
signal      ad_raddr_c		    :			std_logic_vector(6 downto 0);

signal      tm_ask_c			:			std_logic;	
signal      tm_end_c			:			std_logic;	
signal      piu_rst_cnt_c	    :			std_logic_vector(7 downto 0);
signal      init_end_c		    :			std_logic;	
signal      test_c	            :			std_logic_vector(11 downto 0);

signal      clj_cmd_c			:			std_logic;	
signal      clj_acq_end_c		:			std_logic;	  
signal      clj_x_pos_c 		:			std_logic_vector(11 downto 0);
signal      clj_y_pos_c 		:			std_logic_vector(11 downto 0);
signal      clj_z_pos_c 		:			std_logic_vector(11 downto 0);   
signal      clj_x_neg_c 		:			std_logic_vector(11 downto 0);  
signal      clj_y_neg_c 		:			std_logic_vector(11 downto 0);  
signal      clj_z_neg_c 		:			std_logic_vector(11 downto 0);  



component HCLKBUF is 
	port (	PAD					: 	in 		std_logic; 
		  	Y					: 	out 	std_logic);
end component HCLKBUF;

component CLKINT is 
	port (	A			    	: 	in 		std_logic; 
		  	Y					: 	out 	std_logic);
end component CLKINT;

attribute syn_black_box : boolean;
attribute syn_black_box of HCLKBUF: component is true;
attribute syn_black_box of CLKINT: component is true;

component RST_IF is
	port ( 	clk_i				: 	in		std_logic;                          ------时钟输入----- 
			rst_i				: 	in		std_logic;                          ------复位输入----- 
			rst_o               :   out     std_logic;
            piu_rst_cnt_o       :   out     std_logic_vector(7 downto 0)
          );
end component;

component mcu is
    Port (  clk_i 				: 	in  	std_logic;                          ------时钟输入----- 
           	rst_i 				: 	in  	std_logic;                          ------复位输入----- 
           	init_end_i          :   in      std_logic ; 
        	piu_rst_cnt_i	    :	in		std_logic_vector(7 downto 0);
        	atob_st_i			: 	in  	std_logic; 
            atob_cmd_o			: 	out  	std_logic;
        	-----tick????------
            tick_1ms_i          :   in      std_logic;
            tick_1s_i           :   in      std_logic;
        	tick_1us_i          :   in      std_logic;
        	-----CAN????-----
        	can_addr_o			:	out		std_logic_vector(6 downto 0);		------SJA1000地址----                     
        	can_wen_o			:	out		std_logic;							------SJA1000写使能----                   
        	can_wdata_o			:	out		std_logic_vector(7 downto 0);		------SJA1000写数据----                   
        	can_ren_o			:	out		std_logic;							------SJA1000读使能----                   
        	can_rdata_i			:	in		std_logic_vector(7 downto 0);		------SJA1000读数据----                   
        	can_int_i			:	in		std_logic_vector(1 downto 0);							------SJA1000中断---- 
        	can_done_i			:	in		std_logic;							------SJA1000完成信号----                 
            cana_rst_o          :   out     std_logic;                          ------SJA1000复位信号1----                
            canb_rst_o          :   out     std_logic;                          ------SJA1000复位信号2----                
                      
            tm_ask_o            :   out     std_logic; 
            tm_end_o            :   out     std_logic; 
            ram_ren_o           :   out     std_logic ;
            ram_rdata_i			:	in		std_logic_vector(11 downto 0);
            ram_raddr_o			:	out		std_logic_vector(6 downto 0);           
            tc_a_cmd_o			:	out		std_logic_vector(1 downto 0);       ---测控配电指令---        
            tc_b_cmd_o			:	out		std_logic_vector(1 downto 0);       ---配电指令---            
            gps_a_cmd_o			:	out		std_logic;       ---????---                                   
            gps_b_cmd_o			:	out		std_logic;       ---????---                                   
                                                                                                          
            therm_cmd_o 		:	out		std_logic_vector(21 downto 0);       ---温控指令'1'开,'0'关---
                                                                                                          
            clj_x_cmd_o			:	out		std_logic_vector(1 downto 0);       --"01"正向开---           
            clj_y_cmd_o			:	out		std_logic_vector(1 downto 0);       --"01"正向开---           
            clj_z_cmd_o			:	out		std_logic_vector(1 downto 0);        --"01"正向开---          
            clj_cmd_o           :   out     std_logic ;                     
            clj_acq_end_i       :   in      std_logic ;               
            clj_x_pos_i         :   in      std_logic_vector(11 downto 0) ; 
            clj_y_pos_i         :   in      std_logic_vector(11 downto 0) ; 
            clj_z_pos_i         :   in      std_logic_vector(11 downto 0) ; 
            clj_x_neg_i         :   in      std_logic_vector(11 downto 0) ;
            clj_y_neg_i         :   in      std_logic_vector(11 downto 0) ;
            clj_z_neg_i         :   in      std_logic_vector(11 downto 0) ;  
            dog_clr_o           :   out     std_logic;
            test_o              :   out     std_logic_vector(2 downto 0)
        );
end component;

component can_if is
    Port ( 	clk_i 				: 	in  	std_logic;                          
           	rst_i 				: 	in  	std_logic;                          
        	
        	-----CAN????-----
        	can_addr_i			:	in		std_logic_vector(6 downto 0);		
        	can_wen_i			:	in		std_logic;							
        	can_wdata_i			:	in		std_logic_vector(7 downto 0);		
        	can_ren_i			:	in		std_logic;							
        	can_rdata_o			:	out		std_logic_vector(7 downto 0);		
        	can_done_o			:	out		std_logic;							    
        	--can_int_o		    :	out		std_logic_vector(1 downto 0);	
        	
        	--cana_int_i			:	in		std_logic;	
        	cana_addr_o			:	out		std_logic_vector(5 downto 0);
        	cana_data_o			:	out		std_logic_vector(7 downto 0);
        	cana_data_i			:	in		std_logic_vector(7 downto 0);
        	cana_cs_o			:	out		std_logic;
        	cana_rd_o			:	out		std_logic;
        	cana_wr_o			:	out		std_logic;
        	
        	--canb_int_i			:	in		std_logic;	
        	canb_addr_o			:	out		std_logic_vector(5 downto 0);
        	canb_data_o			:	out		std_logic_vector(7 downto 0);
        	canb_data_i			:	in		std_logic_vector(7 downto 0);
        	canb_cs_o			:	out		std_logic;
        	canb_rd_o			:	out		std_logic;
        	canb_wr_o			:	out		std_logic 
        );
end component can_if;

component can_core is
    Port ( 	clk 				: 	in  	std_logic;                          
           	rst_b 				: 	in  	std_logic;                                   

        	adr					:	in		std_logic_vector(5 downto 0);
        	cs_b				:	in		std_logic;
        	rd_b				:	in		std_logic;
        	wr_b				:	in		std_logic;
        	datain				:	in		std_logic_vector(7 downto 0);
        	dataout				:	out		std_logic_vector(7 downto 0);
        	
        	int					:	out		std_logic;
        	
        	rxd					:	in		std_logic;
        	txd					:	out		std_logic;
        	
        	tst_clock			:	out		std_logic;
        	tst_sample			:	out		std_logic;
        	RecCnt				:	out		std_logic_vector(7 downto 0);
        	TrCnt				:	out		std_logic_vector(8 downto 0)
        );
end component can_core;

component tick is
    Port ( 	clk_i 				: 	in  	std_logic;                         
           	rst_i 				: 	in  	std_logic;                         
        	
        	-----????-----
        	tick_1us_o		    :	out		std_logic;
        	tick_1ms_o			:	out		std_logic;							
        	tick_1s_o			:	out		std_logic							
        );
end component tick;

component AD_Comp is
  port  ( rst_i          :   in      std_logic ;  
          clk_i          :   in      std_logic ;   ---40M--
            
          tick_1ms_i     :   in      std_logic ;   
          tick_1us_i     :   in      std_logic ;      
          ad_en_i        :   in      std_logic ;
          acq_end_i      :   in      std_logic ;
          ad_addr_i      :   in      std_logic_vector(3 downto 0) ;
          
          ad_sclk_o      :   out     std_logic ;   ---75ns~100us---
          ad_sdo_i       :   in      std_logic ;   
          ad_sdi_o       :   out     std_logic ;  
          ad_csn_o       :   out     std_logic ;
          start_o        :   out     std_logic ; 
          ad_eoc_i       :   in      std_logic ;
          
          ad_data_o      :   out     std_logic_vector(11 downto 0) ;          
          ad_done_o      :   out     std_logic ;
          init_end_o     :   out     std_logic ;
          test_o         :   out     std_logic            
         );  
end component;

component AD_ACQ is
  port  ( rst_i          :   in      std_logic ;  
          clk_i          :   in      std_logic ;   ---40M--    
          init_end_i     :   in      std_logic ;       
          tick_1ms_i     :   in      std_logic ;    
          tick_1us_i     :   in      std_logic ;      
          tm_ask_i       :   in      std_logic ;  ---遥测查询请求---
          tm_end_i       :   in      std_logic ;
          ad_ren_i       :   in      std_logic ;
          ad_raddr_i     :   in      std_logic_vector(6 downto 0) ;
          ad_rdata_o     :   out     std_logic_vector(11 downto 0) ;  ---AD RAM存储的数据---
          
          ad_data_i      :   in      std_logic_vector(11 downto 0) ;          
          ad_done_i      :   in      std_logic ;          
          ad_en_o        :   out     std_logic ;
          acq_end_o      :   out     std_logic ;
          ad_addr_o      :   out     std_logic_vector(3 downto 0) ;         
          hi_addr_o      :   out     std_logic_vector(3 downto 0) ;
          clj_cmd_i      :   in      std_logic ;   
          clj_acq_end_o  :   out     std_logic ;
          clj_x_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_y_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_z_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_x_neg_o    :   out     std_logic_vector(11 downto 0) ;
          clj_y_neg_o    :   out     std_logic_vector(11 downto 0) ;
          clj_z_neg_o    :   out     std_logic_vector(11 downto 0) ;
          test_o         :   out     std_logic_vector(7 downto 0)
         );  
end component;
----------------------------------------------------------------------------------

begin

--sysclk_c<=clk_i;
--sysrst_c<=rst_c;

C0: CLKINT
    port map (	A            	=>  clk_i,
              	Y           	=>  sysclk_c);

C1: CLKINT
    port map (	A          		=>  rst_c,
              	Y           	=>  sysrst_c);
				
C2: RST_IF
    port map (	clk_i		    =>  sysclk_c,                               	
              	rst_i       	=>  rst_i,                                  	
                rst_o       	=>  rst_c,                                      
                piu_rst_cnt_o   =>  piu_rst_cnt_c                               
                                 	
             );

C3: AD_ACQ
    port map (	clk_i		    =>  sysclk_c,                               	
              	rst_i       	=>  rst_i,  
              	init_end_i      =>  init_end_c,
                tick_1ms_i      =>  tick_1ms_c,
                tick_1us_i      =>  tick_1us_c,
                tm_ask_i        =>  tm_ask_c , 
                tm_end_i        =>  tm_end_c , 
                ad_ren_i        =>  ad_ren_c ,
                ad_raddr_i      =>  ad_raddr_c,
                ad_rdata_o      =>  ad_rdata_c,
                
                ad_data_i       =>  ad_data_c,
                ad_done_i       =>  ad_done_c,
                ad_en_o         =>  ad_en_c  ,
                acq_end_o       =>  acq_end_c,
                ad_addr_o       =>  ad_addr_c,
                hi_addr_o       =>  hi_addr_o,
                clj_cmd_i       =>  clj_cmd_c,
                clj_acq_end_o   =>  clj_acq_end_c,
                clj_x_pos_o     =>  clj_x_pos_c,
                clj_y_pos_o     =>  clj_y_pos_c,
                clj_z_pos_o     =>  clj_z_pos_c,
                clj_x_neg_o     =>  clj_x_neg_c,
                clj_y_neg_o     =>  clj_y_neg_c,
                clj_z_neg_o     =>  clj_z_neg_c,
                test_o          =>  test_c(7 downto 0)
   
              ); 

C4: AD_COMP
    port map (	clk_i		    =>  sysclk_c,                               	
              	rst_i       	=>  rst_i,  
              	tick_1ms_i      =>  tick_1ms_c,
              	tick_1us_i      =>  tick_1us_c,
              	ad_en_i         =>  ad_en_c  ,
              	acq_end_i       =>  acq_end_c,
              	ad_addr_i       =>  ad_addr_c,        
              	ad_sclk_o       =>  ad_sclk_o,
              	ad_sdo_i        =>  ad_sdo_i ,
              	ad_sdi_o        =>  ad_sdi_o ,
              	ad_csn_o        =>  ad_csn_o ,
              	start_o         =>  start_o  ,
              	ad_eoc_i        =>  ad_eoc_i ,          
              	ad_data_o       =>  ad_data_c,
              	ad_done_o       =>  ad_done_c,
              	init_end_o      =>  init_end_c,
              	test_o          =>  test_c(8)
              	
              );	


C6: mcu
	port map (	clk_i 			=>	sysclk_c,                          			
           		rst_i 			=>	sysrst_c,                          			 
        		piu_rst_cnt_i   =>  piu_rst_cnt_c,
        		init_end_i      =>  init_end_c,
        		atob_st_i       =>  atob_st_i,
                atob_cmd_o      =>  atob_cmd_o,
                
                tick_1ms_i      =>  tick_1ms_c,
                tick_1s_i       =>  tick_1s_c,
                tick_1us_i      =>  tick_1us_c,
        		-----CAN内部接口-----
        		can_addr_o		=>	can_addr_c,									
        		can_wen_o		=>	can_wen_c,									
        		can_wdata_o		=>	can_wdata_c,								
        		can_ren_o		=>	can_ren_c,									
        		can_rdata_i		=>	can_rdata_c,								
        		can_int_i		=>	can_int_c,
        		can_done_i		=>	can_done_c,										

                cana_rst_o      =>  cana_rst_c,
                canb_rst_o      =>  canb_rst_c,
                tm_ask_o        =>  tm_ask_c,
                tm_end_o        =>  tm_end_c,
                ram_rdata_i     =>  ad_rdata_c,
                ram_ren_o       =>  ad_ren_c,
                ram_raddr_o     =>  ad_raddr_c, 
                --cmd_en_i        =>  cmd_en_i  , 
                tc_a_cmd_o	    =>  tc_a_cmd_o,
                tc_b_cmd_o	    =>  tc_b_cmd_o,
                gps_a_cmd_o     =>  gps_a_cmd_o, 
                gps_b_cmd_o     =>  gps_b_cmd_o, 
             
                therm_cmd_o     =>  therm_cmd_o, 
                                            
                clj_x_cmd_o     =>  clj_x_cmd_o, 
                clj_y_cmd_o     =>  clj_y_cmd_o, 
                clj_z_cmd_o     =>  clj_z_cmd_o,
                clj_cmd_o       =>  clj_cmd_c  ,
                clj_acq_end_i   =>  clj_acq_end_c,
                clj_x_pos_i     =>  clj_x_pos_c,
                clj_y_pos_i     =>  clj_y_pos_c,
                clj_z_pos_i     =>  clj_z_pos_c,
                clj_x_neg_i     =>  clj_x_neg_c,
                clj_y_neg_i     =>  clj_y_neg_c,
                clj_z_neg_i     =>  clj_z_neg_c,
                 
                dog_clr_o       =>  dog_clr_o ,
                test_o          =>  test_c(11 downto 9)               
                
			);  
			
C7: can_if
    port map( 	clk_i 			=>	sysclk_c,                          			
           		rst_i 			=>	sysrst_c,                          			
        	
        		-----CAN内部接口-----
        		can_addr_i		=>	can_addr_c,									
        		can_wen_i		=>	can_wen_c,									
        		can_wdata_i		=>	can_wdata_c,								
        		can_ren_i		=>	can_ren_c,									
        		can_rdata_o		=>	can_rdata_c,								
        		can_done_o		=>	can_done_c,									   
				--can_int_o		=>	can_int_c,

	        	cana_addr_o		=>	cana_addr_c,
	        	cana_data_o		=>	cana_datain_c,
	        	cana_data_i		=>	cana_dataout_c,
	        	cana_cs_o		=>	cana_cs_c,
	        	cana_rd_o		=>	cana_rd_c,
	        	cana_wr_o		=>	cana_wr_c,
	        	--cana_int_i		=>	cana_int_c,
	        	
	        	canb_addr_o		=>	canb_addr_c,  
	        	canb_data_o		=>	canb_datain_c,
	        	canb_data_i		=>	canb_dataout_c,
	        	canb_cs_o		=>	canb_cs_c,   
	        	canb_rd_o		=>	canb_rd_c,   
	        	canb_wr_o		=>	canb_wr_c
	        	--canb_int_i		=>	canb_int_c
        	);				
			
C8: can_core
	port map (	clk 			=>	sysclk_c,                          			
           		rst_b 			=>	cana_rst_c,                          			    
        		
        		adr				=>	cana_addr_c,
        		cs_b			=>	cana_cs_c,
        		rd_b			=>	cana_rd_c,
        		wr_b			=>	cana_wr_c,
        		datain			=>	cana_datain_c,
        		dataout			=>	cana_dataout_c,
        		
        		int				=>	can_int_c(0),
        		
        		rxd				=>	cana_rxd_i,
        		txd				=>	cana_txd_o,
        		
        		tst_clock		=>	open,
        		tst_sample		=>	open,
        		RecCnt			=>	open,
        		TrCnt			=>	open
			);   	

C9: can_core
	port map (	clk 			=>	sysclk_c,                          			
           		rst_b 			=>	canb_rst_c,                          			    
        		
        		adr				=>	canb_addr_c,
        		cs_b			=>	canb_cs_c,
        		rd_b			=>	canb_rd_c,
        		wr_b			=>	canb_wr_c,
        		datain			=>	canb_datain_c,
        		dataout			=>	canb_dataout_c,
        		
        		int				=>	can_int_c(1),
        		
        		rxd				=>	canb_rxd_i,
        		txd				=>	canb_txd_o,
        		
        		tst_clock		=>	open,
        		tst_sample		=>	open,
        		RecCnt			=>	open,
        		TrCnt			=>	open
			); 

        	
C10: tick
    port map ( 	clk_i 			=>	sysclk_c,                          			
           		rst_i 			=>	sysrst_c,                          			
        	
        		-----????-----
        		tick_1us_o      =>  tick_1us_c,
        		tick_1ms_o		=>	tick_1ms_c,									
        		tick_1s_o		=>	tick_1s_c									
        	);       	

--sja_data_o<=test_c(7 downto 0) ;
sja_ale_o <=test_c(11);
sja_cs_o  <=test_c(10);
--sja_we_o  <='0';
sja_re_o  <=test_c(9);
--sja_rst_o <=ad_eoc_i;

cmd_en_o<='1';
end Behavioral;
