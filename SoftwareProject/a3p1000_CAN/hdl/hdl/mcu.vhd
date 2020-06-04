-----------------------文件描述--------------------------------------------------------------------------
-- 版权(copyright)：CAST
-- 项目名：
-- 模块名: mcu
-- 作者  : 
-- 功能  : 实现CAN控制
-- 初始版本和发布时间: 1.00,2016.06
----------------------------------------------------------------------------------------
-- 更改历史:
----------------------------------------------------------------------------------------
-- 更改版本和更改时间：
-- 更改人员：
-- 更改描述：
---------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";

entity MCU is
    Port ( 	clk_i 				: 	in  	std_logic;                          ------时钟输入-----
           	rst_i 				: 	in  	std_logic;                          ------复位输入-----
        	piu_rst_cnt_i	    :	in		std_logic_vector(7 downto 0);
        	init_end_i			: 	in  	std_logic; 
        	atob_st_i			: 	in  	std_logic; 
            atob_cmd_o			: 	out  	std_logic;
        	-----tick内部接口------
            tick_1ms_i          :   in      std_logic;
            tick_1s_i           :   in      std_logic;
        	tick_1us_i          :   in      std_logic;
        	-----CAN内部接口-----
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
            
            --cmd_en_i            :   in      std_logic ;                         ---指令使能'1'使能---
            tc_a_cmd_o			:	out		std_logic_vector(1 downto 0);       ---测控配电指令---
            tc_b_cmd_o			:	out		std_logic_vector(1 downto 0);       ---配电指令---
            gps_a_cmd_o			:	out		std_logic;       ---配电指令---
            gps_b_cmd_o			:	out		std_logic;       ---配电指令---
            
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
end MCU;

architecture Behavioral of MCU is

component onoff is
    port ( 	clk_i 				: 	in  	std_logic;                          ------时钟-----
           	rst_i 				: 	in  	std_logic;                          ------复位-----
            cmd_en_i			:	in		std_logic;
        	tick_1ms_i			:	in		std_logic;							
        	cmd_o  				:	out		std_logic							
        );
end component;

component RAM_1024B is
  port  ( 
          CLK          :   in      std_logic ;   ---40M--
          RD           :   out     std_logic_vector(7 downto 0); 
          RADDR        :   in      std_logic_vector(9 downto 0); 
          WADDR        :   in      std_logic_vector(9 downto 0); 
          WD           :   in      std_logic_vector(7 downto 0); 
          WEN          :   in      std_logic ;
          REN          :   in      std_logic
        );
end component;

constant 	CAN_CTR				: std_logic_vector(5 downto 0) := "100000";						------控制寄存器----
constant 	CAN_CMR				: std_logic_vector(5 downto 0) := "100001";						------命令寄存器----
constant 	CAN_SR				: std_logic_vector(5 downto 0) := "100010";						------状态寄存器----
constant 	CAN_IR				: std_logic_vector(5 downto 0) := "100011";						------中断状态寄存器----
constant 	CAN_BTR				: std_logic_vector(5 downto 0) := "100100";						------总线定时寄存器0----
constant	CAN_AR				: std_logic_vector(5 downto 0) := "100101";						------扩展寄存器----
constant	CAN_PR				: std_logic_vector(5 downto 0) := "100110";						------分频寄存器----
constant	CAN_RXERR			: std_logic_vector(5 downto 0) := "100111";                     ------接收错误计数器-----
constant	CAN_TXERR			: std_logic_vector(5 downto 0) := "101000";                     ------接收错误计数器-----
constant	CAN_ACR1_1			: std_logic_vector(5 downto 0) := "101001";  
constant	CAN_ACR1_2			: std_logic_vector(5 downto 0) := "101010";
constant	CAN_ACR1_3			: std_logic_vector(5 downto 0) := "101011"; 
constant	CAN_ACR1_4			: std_logic_vector(5 downto 0) := "101100";            
constant	CAN_AMR1_1			: std_logic_vector(5 downto 0) := "101101";  
constant	CAN_AMR1_2			: std_logic_vector(5 downto 0) := "101110";
constant	CAN_AMR1_3			: std_logic_vector(5 downto 0) := "101111";                 
constant	CAN_ACR2_1			: std_logic_vector(5 downto 0) := "110000";  
constant	CAN_ACR2_2			: std_logic_vector(5 downto 0) := "110001";
constant	CAN_ACR2_3			: std_logic_vector(5 downto 0) := "110010"; 
constant	CAN_ACR2_4			: std_logic_vector(5 downto 0) := "110011";            
constant	CAN_AMR2_1			: std_logic_vector(5 downto 0) := "110100";  
constant	CAN_AMR2_2			: std_logic_vector(5 downto 0) := "110101";
constant	CAN_AMR2_3			: std_logic_vector(5 downto 0) := "110110";
constant	CAN_AMR2_4			: std_logic_vector(5 downto 0) := "110111";                  
constant	CAN_ACR3_1			: std_logic_vector(5 downto 0) := "111000";  
constant	CAN_ACR3_2			: std_logic_vector(5 downto 0) := "111001";
constant	CAN_ACR3_3			: std_logic_vector(5 downto 0) := "111010"; 
constant	CAN_ACR3_4			: std_logic_vector(5 downto 0) := "111011";            
constant	CAN_AMR3_1			: std_logic_vector(5 downto 0) := "111100";  
constant	CAN_AMR3_2			: std_logic_vector(5 downto 0) := "111101";
constant	CAN_AMR3_3			: std_logic_vector(5 downto 0) := "111110";
constant	CAN_AMR3_4			: std_logic_vector(5 downto 0) := "111111"; 
                        		
constant 	CAN_RXID0			: std_logic_vector(5 downto 0) := "000000";						------RX帧信息寄存器----
constant 	CAN_RXID1			: std_logic_vector(5 downto 0) := "000001";						------RX帧ID寄存器----
constant 	CAN_RXDATA0			: std_logic_vector(5 downto 0) := "000010";						------RX帧数据0寄存器----
constant 	CAN_RXDATA1			: std_logic_vector(5 downto 0) := "000011";						------RX帧数据1寄存器----
constant 	CAN_RXDATA2			: std_logic_vector(5 downto 0) := "000100";						------RX帧数据2寄存器----
constant 	CAN_RXDATA3			: std_logic_vector(5 downto 0) := "000101";						------RX帧数据3寄存器----
constant 	CAN_RXDATA4			: std_logic_vector(5 downto 0) := "000110";						------RX帧数据4寄存器----
constant 	CAN_RXDATA5			: std_logic_vector(5 downto 0) := "000111";						------RX帧数据5寄存器----
constant 	CAN_RXDATA6			: std_logic_vector(5 downto 0) := "001000";						------RX帧数据6寄存器----
constant 	CAN_RXDATA7			: std_logic_vector(5 downto 0) := "001001";						------RX帧数据7寄存器----

constant 	CAN_TXID0			: std_logic_vector(5 downto 0) := "010000";						------TX帧信息寄存器----
constant 	CAN_TXID1			: std_logic_vector(5 downto 0) := "010001";						------TX帧ID寄存器----
constant 	CAN_TXDATA0			: std_logic_vector(5 downto 0) := "010010";						------TX帧数据0寄存器----
constant 	CAN_TXDATA1			: std_logic_vector(5 downto 0) := "010011";						------TX帧数据1寄存器----
constant 	CAN_TXDATA2			: std_logic_vector(5 downto 0) := "010100";						------TX帧数据2寄存器----
constant 	CAN_TXDATA3			: std_logic_vector(5 downto 0) := "010101";						------TX帧数据3寄存器----
constant 	CAN_TXDATA4			: std_logic_vector(5 downto 0) := "010110";						------TX帧数据4寄存器----
constant 	CAN_TXDATA5			: std_logic_vector(5 downto 0) := "010111";						------TX帧数据5寄存器----
constant 	CAN_TXDATA6			: std_logic_vector(5 downto 0) := "011000";						------TX帧数据6寄存器----
constant 	CAN_TXDATA7			: std_logic_vector(5 downto 0) := "011001";						------TX帧数据7寄存器----

type 	 	step1 				is (st1, st2, st3, st4, st5, st6, st7, st8, st9, st10, st11, st12, st13, st14, st15, st16, st17, st18, st19, st20, st21, st22, st23, st24, st25, st26, st27, st28, st29, st30);
type 	 	step2 				is (st1, st2, st3, st4, st5, st6, st7, st8, st9);
type		step3				is (st1, st2, st3, st4, st5, st6, st7, st8, st9, st10);
type        step5               is (st1, st2, st3, st4, st5);
type        step6               is (st1, st2, st3, st4, st5, st6);                        		                        		
signal		can_addr			:	std_logic_vector(6 downto 0);
signal		can_wen				:	std_logic;
signal		can_wdata			:	std_logic_vector(7 downto 0);
signal		can_ren				:	std_logic;
signal		can_sel				:	std_logic;
signal		can_busy			:	std_logic;
                        		
signal		ram_wdata			:	std_logic_vector(7 downto 0);
signal		ram_waddr			:	std_logic_vector(6 downto 0);
signal		ram_wen				:	std_logic;                        		
signal		ram_rdata			:	std_logic_vector(7 downto 0);
signal		ram_raddr			:	std_logic_vector(6 downto 0);
signal		ram_ren				:	std_logic;
signal		ram_done			:	std_logic;
signal		ram_busy			:	std_logic;
signal		ram_sum				:	std_logic_vector(15 downto 0);
signal      ram_rd_st			:	std_logic;
                        		
signal		cmd_type			:	std_logic_vector(3 downto 0);							------总线类型----
                        		
signal		frame_cnt			:	std_logic_vector(7 downto 0);							------帧计数-----
signal		frame_info			:	std_logic_vector(4 downto 0);							------帧信息----
signal		frame_id			:	std_logic_vector(10 downto 0);							------帧ID----
signal		frame_send			:	std_logic;
signal		frame_en			:	std_logic;
signal		frame_busy			:	std_logic;
signal		frame_sel			:	std_logic;
signal		frame_length		:	std_logic_vector(3 downto 0);
signal		frame_data			:	std_logic_vector(63 downto 0);
                        		
signal		ad_busy				:	std_logic;
signal      ad_addr             :   std_logic_vector(6 downto 0);

signal	 	send_step			: 	step2;
signal		send_busy			:	std_logic;
signal      send_mode			:	std_logic_vector(1 downto 0);
signal      tx_cnt              :   std_logic_vector(2 downto 0);
signal	 	init_step			: 	step1;
signal		init_busy			:	std_logic;
signal      init_cnt            :   std_logic_vector(1 downto 0);
signal		init_mode			:	std_logic;
signal		init_sel			:	std_logic;

signal		int_step			:	step3;
signal		int_busy			:	std_logic;
signal		int_cnt				:	std_logic_vector(1 downto 0);

signal      rst_cnt             :   std_logic_vector(3 downto 0);

signal      err_flag            :   std_logic;
signal      err_cnt             :   std_logic_vector(7 downto 0);

signal      tick_step           :   step5;
signal      tick_busy           :   std_logic;
signal		tick_mode			:	std_logic;

signal      gps_a_cmd           :   std_logic;
signal      gps_b_cmd           :   std_logic;
signal      tc_a_en             :   std_logic_vector(1 downto 0);
signal      tc_b_en             :   std_logic_vector(1 downto 0);
signal      tc_a_cmd            :   std_logic_vector(1 downto 0);
signal      tc_b_cmd            :   std_logic_vector(1 downto 0);

signal      clj_state           :   step6;
signal      clj_cmd             :   std_logic;
signal      clj_acq             :   std_logic;
signal      clj_new             :   std_logic;
signal      wait_hold           :   std_logic_vector(11 downto 0);
signal      clj_x_cmd           :   std_logic_vector(1 downto 0);
signal      clj_y_cmd           :   std_logic_vector(1 downto 0);
signal      clj_z_cmd           :   std_logic_vector(1 downto 0);
signal      clj_x_ctrl          :   std_logic_vector(1 downto 0);
signal      clj_y_ctrl          :   std_logic_vector(1 downto 0);
signal      clj_z_ctrl          :   std_logic_vector(1 downto 0);
signal      clj_x_st            :   std_logic_vector(1 downto 0);
signal      clj_y_st            :   std_logic_vector(1 downto 0);
signal      clj_z_st            :   std_logic_vector(1 downto 0);
signal      clj_x_reg           :   std_logic_vector(15 downto 0);
signal      clj_y_reg           :   std_logic_vector(15 downto 0);
signal      clj_z_reg           :   std_logic_vector(15 downto 0);
signal      clj_x_close         :   std_logic;
signal      clj_y_close         :   std_logic;
signal      clj_z_close         :   std_logic;
signal      close_time          :   std_logic_vector(7 downto 0);
signal      clj_acq_en          :   std_logic;
signal      therm_cmd           :   std_logic_vector(21 downto 0);

signal      atob_st_reg         :   std_logic_vector(1 downto 0);
signal      high_cnt            :   std_logic_vector(3 downto 0);
signal      low_cnt             :   std_logic_vector(3 downto 0);
signal      atob_st	            :	std_logic;
signal      atob_st_c	        :	std_logic;
signal      atob_en  	        :	std_logic;
signal      atob_cmd 	        :	std_logic;

signal      tm_ask_cnt          :   std_logic_vector(7 downto 0);
signal      bus_cmd_cnt         :   std_logic_vector(7 downto 0);
signal      rst_frame	        :	std_logic;
signal      tm_ask	            :	std_logic;
signal      tm_end	            :	std_logic;

signal      dog_clr	            :	std_logic;
signal      dog_time            :   std_logic_vector(7 downto 0);

signal      sum_tick            :	std_logic;
signal      sum_tick_c          :	std_logic;
signal      tm_sum              :   std_logic_vector(7 downto 0);

signal      broadcast_en        :	std_logic;
signal      imp_en              :	std_logic;
signal      imp_end             :	std_logic;
signal      imp_ren             :	std_logic;
signal      imp_wen             :	std_logic;
signal      imp_wen_c           :	std_logic_vector(1 downto 0);
signal      imp_waddr           :	std_logic_vector(9 downto 0);
signal      imp_raddr           :	std_logic_vector(9 downto 0);
signal      imp_rdata           :   std_logic_vector(7 downto 0);
signal      imp_wdata           :   std_logic_vector(7 downto 0);
signal      imp_sum             :   std_logic_vector(7 downto 0);
signal      imp_length          :   std_logic_vector(9 downto 0);
signal      imp_cnt             :   std_logic_vector(9 downto 0);
signal      imp_wr_type         :   std_logic_vector(7 downto 0);
signal      imp_tx_type         :   std_logic_vector(7 downto 0);
signal      imp1_cnt            :   std_logic_vector(7 downto 0);
signal      imp2_cnt            :   std_logic_vector(7 downto 0);
signal      imp3_cnt            :   std_logic_vector(7 downto 0);
signal      imp4_cnt            :   std_logic_vector(7 downto 0);
signal      imp5_cnt            :   std_logic_vector(7 downto 0);
signal      imp6_cnt            :   std_logic_vector(7 downto 0);
signal      imp7_cnt            :   std_logic_vector(7 downto 0);
signal      imp8_cnt            :   std_logic_vector(7 downto 0);
signal      imp1_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp2_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp3_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp4_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp5_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp6_rec_cnt        :   std_logic_vector(9 downto 0);
signal      imp8_rec_cnt        :   std_logic_vector(9 downto 0);

signal      imp1_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp2_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp3_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp4_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp5_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp6_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp8_tx_frame       :   std_logic_vector(6 downto 0);
signal      imp1_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp2_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp3_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp4_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp5_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp6_final_cnt      :   std_logic_vector(3 downto 0);
signal      imp8_final_cnt      :   std_logic_vector(3 downto 0);
--signal      imp_tx_final_cnt    :   std_logic_vector(3 downto 0);
signal      imp_tx_byte_cnt     :   std_logic_vector(9 downto 0);
signal      imp_sum_right       :	std_logic;
signal      imp_len_right       :	std_logic;
signal      imp_renew           :	std_logic;
signal      imp_ask             :	std_logic;
signal      imp_ask_type        :   std_logic_vector(7 downto 0);
signal      imp_frame_cnt       :   std_logic_vector(7 downto 0);
signal      tx_frame_cnt        :   std_logic_vector(7 downto 0);
signal      tx_byte_cnt         :   std_logic_vector(9 downto 0);
signal      imp_tx_data         :   std_logic_vector(7 downto 0);
signal      imp_tx_raddr        :	std_logic_vector(9 downto 0);
signal      imp_final_cnt       :	std_logic_vector(3 downto 0);
signal      final_cnt           :	std_logic_vector(3 downto 0);
signal      imp_tx_end          :	std_logic;
signal      imp_renew_wr        :	std_logic;
signal      cnt                 :	std_logic_vector(2 downto 0);
signal      imp_renew_waddr     :	std_logic_vector(9 downto 0);
signal      imp_new_waddr       :	std_logic_vector(9 downto 0);
signal      imp1_rdata          :   std_logic_vector(7 downto 0);
signal      imp2_rdata          :   std_logic_vector(7 downto 0);
signal      imp3_rdata          :   std_logic_vector(7 downto 0);
signal      imp4_rdata          :   std_logic_vector(7 downto 0);
signal      imp5_rdata          :   std_logic_vector(7 downto 0);
signal      imp6_rdata          :   std_logic_vector(7 downto 0);
signal      imp7_rdata          :   std_logic_vector(7 downto 0);
signal      imp8_rdata          :   std_logic_vector(7 downto 0);
signal      imp_renew_wen       :   std_logic_vector(7 downto 0);
signal      imp_renew_st        :   std_logic_vector(7 downto 0);
signal      imp1_ren            :	std_logic;
signal      imp2_ren            :	std_logic;
signal      imp3_ren            :	std_logic;
signal      imp4_ren            :	std_logic;
signal      imp5_ren            :	std_logic;
signal      imp6_ren            :	std_logic;
signal      imp7_ren            :	std_logic;
signal      imp8_ren            :	std_logic;
signal      wait_rd             :   std_logic_vector(1 downto 0);
signal      imp_ren_not         :	std_logic;
signal      imp_wen_not         :	std_logic;
signal      imp_ram_ren         :	std_logic;
signal      clj_cmd_cnt         :   std_logic_vector(1 downto 0);
signal      clj_timeout         :   std_logic_vector(2 downto 0);
signal		clj_timeout_en      :	std_logic;
signal		scaler_1us	        :	std_logic_vector(5 downto 0);							------分频器-----
signal		tick_1us	        :	std_logic;

signal		scaler_1ms	        :	std_logic_vector(9 downto 0);							------分频器-----
signal		tick_1ms	        :	std_logic;

signal		scaler_1s	        :	std_logic_vector(9 downto 0);
signal		tick_1s  	        :	std_logic; 

signal      test_c              :   std_logic;
signal      test_data1          :   std_logic_vector(7 downto 0);
begin

	process (rst_i, clk_i)
	variable imp_tx_frame  : std_logic_vector(6 downto 0);
	variable imp_tx_final_cnt: std_logic_vector(3 downto 0);
	begin
		if (rst_i = '0') then																	----复位值-----            
			can_addr  <= (others => '0');
			can_wen   <= '0';
			can_wdata <= (others => '0');
			can_ren   <= '0';
			can_sel   <= '0';	
			can_busy  <= '0';

            ram_wen   <= '0';
			ram_wdata <= (others => '0');
			ram_waddr <= (others => '0');				
			ram_ren   <= '0';
			ram_raddr <= (others => '0');			
			ram_busy  <= '0';
			ram_sum   <= (others => '0');	
			ram_rd_st <= '0'; 
			cmd_type  <= (others => '1');
			
			frame_cnt <= (others => '0');
			frame_info<= (others => '0');
			frame_id  <= (others => '0');
			frame_data<= (others => '0');
			frame_length<= (others => '0');
			frame_send<= '0';
			frame_en  <= '0';
            --frame_busy<= '1';
            frame_busy<= '0';
            frame_sel <= '0';
			
			ad_addr   <= (others => '0');
			ad_busy   <= '0';		
			
            send_step <= st1;                                                                   ----遥测发送状态机----
            send_busy <= '0';
            send_mode <= "00";
            tx_cnt    <= (others => '0');

            init_step <= st1;																    ----CAN控制芯片初始化状态机----
            init_busy <= '1';
            init_cnt  <= (others => '0');
            init_mode <= '0';
            init_sel  <= '0';

			int_step  <= st1;			                                                        ----中断处理状态机----
            int_busy  <= '0';
            int_cnt   <= (others => '0');

            rst_cnt   <= (others => '0');
            
            err_flag  <= '0';
            err_cnt   <= (others => '0');

            cana_rst_o <= '0';
            canb_rst_o <= '0';
            
            tick_step <= st1;
            tick_busy <= '0';		
            tick_mode <= '0';

            tc_a_en   <="00";
			tc_b_en   <="00";
            gps_a_cmd <='0'; 
            gps_b_cmd <='0'; 
            clj_state <=st1;
            clj_cmd   <='0';
            clj_acq   <='0';
            clj_new   <='0';
            wait_hold <=(others=>'0');
            clj_x_cmd <= (others => '0');  
            clj_y_cmd <= (others => '0'); 
            clj_z_cmd <= (others => '0'); 
            clj_x_ctrl<= (others => '0'); 
            clj_y_ctrl<= (others => '0'); 
            clj_z_ctrl<= (others => '0'); 
            clj_x_reg <= (others => '1');   
            clj_y_reg <= (others => '1');   
            clj_z_reg <= (others => '1');   
            clj_x_st  <= (others=>'1');
            clj_y_st  <= (others=>'1');
            clj_z_st  <= (others=>'1');    
            clj_x_close<='0';  
            clj_y_close<='0';  
            clj_z_close<='0';  
            clj_acq_en <='0'; 
            close_time <= (others => '0'); 
            therm_cmd  <= (others => '0');
            
            atob_st_reg<= (others => '0'); 
            high_cnt  <= (others => '0');   
            low_cnt   <= (others => '0');   
            atob_st	  <=  '0';   
            atob_st_c <=  '0'; 
            atob_en   <=  '0'; 
            
            tm_ask_cnt<= (others => '0');
            bus_cmd_cnt<= (others => '0'); 

            tm_ask    <= '0';
            tm_end    <= '0';
            rst_frame <= '0';
            dog_time  <= (others => '0'); 
            dog_clr   <= '1';
            sum_tick  <= '0';
            sum_tick_c<= '0';
            tm_sum    <= (others => '0'); 
            
            broadcast_en<= '0';   
            imp_en    <= '0';
            imp_end   <= '0';
            imp_wen   <= '0';   
            imp_wen_c <= (others => '0'); 
            imp_waddr <= (others => '0'); 
            imp_raddr <= (others => '0'); 
            imp_length<= (others => '0'); 
            imp_wdata <= (others => '0'); 
            imp_sum   <= (others => '0'); 
            imp_wr_type<= (others => '0');   
            imp_tx_type<= (others => '0');  
            imp_cnt   <= (others => '0');   
            imp1_cnt  <= (others => '0'); 
            imp2_cnt  <= (others => '0'); 
            imp3_cnt  <= (others => '0'); 
            imp4_cnt  <= (others => '0'); 
            imp5_cnt  <= (others => '0'); 
            imp6_cnt  <= (others => '0'); 
            imp7_cnt  <= (others => '0'); 
            imp8_cnt  <= (others => '0'); 
            imp1_rec_cnt<= (others => '0'); 
            imp2_rec_cnt<= (others => '0'); 
            imp3_rec_cnt<= (others => '0'); 
            imp4_rec_cnt<= (others => '0'); 
            imp5_rec_cnt<= (others => '0'); 
            imp6_rec_cnt<= (others => '0'); 
            imp8_rec_cnt<= (others => '0'); 
            imp1_tx_frame<= (others => '0'); 
            imp2_tx_frame<= (others => '0'); 
            imp3_tx_frame<= (others => '0'); 
            imp4_tx_frame<= (others => '0'); 
            imp5_tx_frame<= (others => '0'); 
            imp6_tx_frame<= (others => '0'); 
            imp8_tx_frame<= (others => '0'); 
            imp1_final_cnt<= (others => '0'); 
            imp2_final_cnt<= (others => '0'); 
            imp3_final_cnt<= (others => '0'); 
            imp4_final_cnt<= (others => '0'); 
            imp5_final_cnt<= (others => '0'); 
            imp6_final_cnt<= (others => '0'); 
            imp8_final_cnt<= (others => '0');
            --imp_tx_final_cnt<= (others => '0');
            imp_tx_byte_cnt<= (others => '0');
            
            imp_renew <= '0';
            imp_ask   <= '0';
            imp_sum_right<= '0';  
            imp_len_right<= '0';
            
            imp_ask_type <= (others => '0'); 
            imp_frame_cnt<= (others => '0'); 
            tx_frame_cnt <= (others => '0'); 
            tx_byte_cnt  <= (others => '0'); 
            imp_tx_raddr <= (others => '0');  
            imp_final_cnt<= (others => '0'); 
            final_cnt    <= (others => '0'); 
            imp_tx_end   <= '0';
            imp_renew_waddr<=(others=>'0');
            imp_new_waddr  <=(others=>'0');     
            cnt            <=(others=>'0');  
            imp_renew_wr   <= '0';
            imp_renew_st   <=(others=>'0'); 
            imp_ram_ren    <= '0';
            imp_ren        <= '0';
            wait_rd        <=(others=>'0');
            clj_cmd_cnt    <=(others=>'0');
            clj_timeout    <=(others=>'0'); 
		    clj_timeout_en <='0';
--            imp1_ren<= '1';
--            imp2_ren<= '1';
--            imp3_ren<= '1';
--            imp4_ren<= '1';
--            imp5_ren<= '1';
--            imp6_ren<= '1';
--            imp7_ren<= '1';
                       
            scaler_1us <= (others => '0');												----复位值-----
			scaler_1ms <= (others => '0');
			scaler_1s  <= (others => '0');
			tick_1us   <= '0';
			tick_1ms   <= '0';
			tick_1s    <= '0';
			test_c     <='0';
            test_data1 <=(others=>'0');
		elsif (clk_i' event and clk_i = '1') then			

			tc_a_en <="00";
			tc_b_en <="00";
			tm_ask  <='0';
			tm_end  <='0';
			sum_tick<= '0';
			ram_ren <= '0';
			imp_wen <= '0';  
			imp_ram_ren<= '0';

--			if (scaler_1us = "100111") then
--				scaler_1us <= (others => '0');
--				tick_1us <= '1';
--			else
--                scaler_1us <= scaler_1us + 1;
--				tick_1us <= '0';
--			end if;
--			
--			tick_1ms <= '0';
--			if (tick_1us='1') then
--				scaler_1ms <= scaler_1ms + 1;
--				if (scaler_1ms="1111100111") then
--					scaler_1ms <= (others=>'0');	
--					tick_1ms   <= '1';
--			    end if;
--			end if;

            if (tick_1s_i = '1') then              
                if (rst_cnt = "1001") then          ---连续10s未收到主节点消息则重新初始化CAN---
				    init_cnt  <= (others => '0');
                    init_mode <= '0';
                    init_busy <= '1';
                    init_step <= st1;	
                    send_busy <= '0';
                    send_step <= st1; 
                    int_busy  <= '0';
                    int_step  <= st1; 
                    tick_busy <= '0';
                    can_busy  <= '0';
                    rst_cnt   <= (others => '0');
                else
                    rst_cnt <= rst_cnt + 1;
                end if;
            end if; 
            
            if (send_busy = '0' and init_busy = '0' and int_busy = '0' and tick_busy = '0') then					----帧空闲----

				if (can_int_i(0) = '1' or can_int_i(1) = '1') then														----CAN interrupt occur----
					int_busy <= '1';
				end if;
				
				if (tick_1s_i = '1' and rst_cnt="0000") then
                    tick_busy <= '1';   
                end if;
                
			elsif (init_busy = '1') then														----can init初始化---
				if (can_busy = '0') then														
					case init_step is                                          
	                    when st1 =>
	                    	if (init_mode = '0') then
	                    		can_sel <= '0';
	                    	else
	                    		can_sel <= init_sel;
	                    	end if;	                    	
	                    	init_step <= st2;	                    
	                        init_cnt <= (others => '0');
	                        
	                    when st2 =>                        
							if (tick_1us_i = '1') then
	                            if (init_cnt ="00") then                               
                                    init_cnt <= init_cnt + 1;
                                    if (can_sel = '0') then
                                    	cana_rst_o <= '0';
                                    else
                                    	canb_rst_o <= '0';
                                    end if;
                                elsif (init_cnt ="01") then
                                    init_cnt <= init_cnt + 1;
                                    if (can_sel = '0') then
                                    	cana_rst_o <= '1';
                                    else
                                    	canb_rst_o <= '1';
                                    end if;
                                elsif (init_cnt ="11") then
	                                can_addr <= can_sel & CAN_CTR;												----set can_core to reset mode----
							        can_wdata <= X"80";
							        can_wen <= '1';
						            can_busy <= '1';
						            init_cnt <= (others => '0');
						            init_step <= st3;                                
	                            else
	                                init_cnt <= init_cnt + 1;
	                            end if;
	                        end if;
							
						when st3 =>
							can_addr <= can_sel & CAN_PR;													----设置PR=3，TQ=100ns----
							can_wdata <= X"03";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st4;
							
						when st4 =>
							can_addr <= can_sel & CAN_AR;													----设置SWJ=0,AM4~AM0----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st5;
							
						when st5 =>
							can_addr <= can_sel & CAN_BTR;													----设置Seg_1=0xF，Seg_2=0x2----
							can_wdata <= X"F4";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st6;						
											
						when st6 =>
							can_addr <= can_sel & CAN_ACR1_1;													----set sja1000 ACR1_1----
							can_wdata <= X"EE";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st7;

						when st7 =>
							can_addr <= can_sel & CAN_ACR1_2;													----set sja1000 ACR1_2----
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st8;
							if (can_sel = '0') then
								can_wdata <= X"00";
							else
								can_wdata <= X"80";
							end if;
						when st8 =>
							can_addr <= can_sel & CAN_ACR1_3;													----set sja1000 ACR1_3----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st9;	
						
						when st9 =>
							can_addr <= can_sel & CAN_ACR1_4;													----set sja1000 ACR1_4----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st10;	
							
						when st10 =>
							can_addr <= can_sel & CAN_AMR1_1;													----set sja1000 AMR1_1----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st11;															
						
						when st11 =>
							can_addr <= can_sel & CAN_AMR1_2;													----set sja1000 AMR1_2----
							can_wdata <= X"1F";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st12;																				

						when st12 =>
							can_addr <= can_sel & CAN_AMR1_3;													----set sja1000 AMR1_3----
							can_wdata <= X"FF";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st13;

						when st13 =>
							can_addr <= can_sel & CAN_ACR2_1;													----set sja1000 ACR2_1----
							can_wdata <= X"A0";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st14;

						when st14 =>
							can_addr <= can_sel & CAN_ACR2_2;													----set sja1000 ACR2_2----
							if (can_sel = '0') then
								can_wdata <= X"00";
							else
								can_wdata <= X"80";
							end if;
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st15;
							
						when st15 =>
							can_addr <= can_sel & CAN_ACR2_3;													----set sja1000 ACR2_3----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st16;	
						
						when st16 =>
							can_addr <= can_sel & CAN_ACR2_4;													----set sja1000 ACR2_4----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st17;	

						when st17 =>
							can_addr <= can_sel & CAN_AMR2_1;													----set sja1000 ACR3----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st18;															
						
						when st18 =>
							can_addr <= can_sel & CAN_AMR2_2;													----set sja1000 AMR2_2----
							can_wdata <= X"7F";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st19;																				

						when st19 =>
							can_addr <= can_sel & CAN_AMR2_3;													----set sja1000 AMR2_3----
							can_wdata <= X"FF";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st20;

						when st20 =>
							can_addr <= can_sel & CAN_AMR2_4;													----set sja1000 AMR2_4----
							can_wdata <= X"FF";                                                                 ---D[7:3]=AMR[4:0]
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st21;

						when st21 =>
							can_addr <= can_sel & CAN_ACR3_1;													----set sja1000 ACR3_1----
							can_wdata <= X"CE";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st22;

						when st22 =>
							can_addr <= can_sel & CAN_ACR3_2;													----set sja1000 ACR3_2----
							if (can_sel = '0') then
								can_wdata <= X"00";
							else
								can_wdata <= X"80";
							end if;
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st23;
							
						when st23 =>
							can_addr <= can_sel & CAN_ACR3_3;													----set sja1000 ACR3_3----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st24;	
						
						when st24 =>
							can_addr <= can_sel & CAN_ACR3_4;													----set sja1000 ACR3_4----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st25;	

						when st25 =>
							can_addr <= can_sel & CAN_AMR3_1;													----set sja1000 AMR3_1----
							can_wdata <= X"00";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st26;															
						
						when st26 =>
							can_addr <= can_sel & CAN_AMR3_2;													----set sja1000 AMR3_2----
							can_wdata <= X"1F";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st27;																				

						when st27 =>
							can_addr <= can_sel & CAN_AMR3_3;													----set sja1000 AMR3_3----
							can_wdata <= X"FF";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st28;

						when st28 =>
							can_addr <= can_sel & CAN_AMR3_4;													----set sja1000 AMR3_4----
							can_wdata <= X"FF";
							can_wen <= '1';
							can_busy <= '1';
							init_step <= st29;
                        
                        when st29 =>											
							can_addr <= can_sel & CAN_CTR;													----set sja1000 CTR----
                            can_wdata <= X"50";
	                        can_wen <= '1';
							can_busy <= '1';
							init_step <= st30;
							
						when st30 =>
							if (init_mode = '0') then							
								if (can_sel = '0') then
		                            can_sel <= '1';
		                            init_step <= st2;
		                        else
	                                init_busy <= '0';
	                                init_step <= st1;
	                                can_sel   <= '0';
		                        end if;
		                    else
		                    	init_busy <= '0';
		                    	init_step <= st1;
		                    end if;
					end case;
				else
					if (can_done_i = '1') then
						can_busy <= '0';
					end if;
					
					can_wen <= '0';
				end if;
				
			elsif (send_busy = '1') then                                             ---遥测复帧格式:两字节的帧长---
				--if (ram_busy = '0' and can_busy = '0') then
				if (can_busy = '0') then
					case send_step is											
						when st1 =>
							--can_sel <= frame_sel;
							send_step <= st2;
							frame_cnt <= (others=>'0');
							if (send_mode="10") then            ---TM---
							    tm_sum    <= (others=>'0');						        
						        ram_raddr <= (others=>'0');
						        ram_rd_st <= '0';  
						        final_cnt <="0101";             ---末帧1个字节 
						    end if;
						    if (send_mode="11") then           ---重要数据---
						    	tm_sum      <= (others=>'0');	
						    	final_cnt   <= imp_final_cnt;   ---末帧
						    	imp_tx_raddr<= (others=>'0');
						    	imp_cnt     <= (others=>'0');	
						    	imp_sum     <= (others=>'0');
						    end if; 
						when st2 =>	
							if (send_mode="01") then                                     ---恢复帧应答---
								if (frame_cnt =X"00") then
								    frame_id  <= "01001110" & can_sel & "00" ;
									frame_info<= "00001";
									tx_cnt    <= "111";
								    can_addr  <= can_sel & CAN_SR;													----check status register----
								    can_ren   <= '1';
								    can_busy  <= '1';
								    send_step <= st3;	
							    end if;
							elsif (send_mode="10" or send_mode="11") then   		     ---遥测帧 or 重要数据---									
							    if (frame_cnt =X"00") then
							    	frame_info<= "01000";
							    	frame_id  <= "01101110" & can_sel & "01" ;           ---复帧中的首帧"01"---
							    	tx_cnt    <= "111";
							    	can_addr  <= can_sel & CAN_SR;													----check status register----
							    	can_ren   <= '1';
							    	can_busy  <= '1';
							    	send_step <= st3;
							    elsif (frame_cnt < tx_frame_cnt) then
							    	frame_info<= "01000";
							    	frame_id  <= "01101110" & can_sel & "10" ;           ---复帧中的中间帧"01"---
							    	tx_cnt    <= "111";
							    	can_addr  <= can_sel & CAN_SR;													----check status register----
							    	can_ren   <= '1';
							    	can_busy  <= '1';
							    	send_step <= st3;							                                                    
							    elsif (frame_cnt = tx_frame_cnt) then                   ---遥测共24帧,最后一包4个字节---
							    	frame_info<='0' & final_cnt;
							    	frame_id  <= "01101110" & can_sel & "11" ;           ---复帧中的末帧"11"---
							    	tx_cnt    <= "011";
							    	can_addr  <= can_sel & CAN_SR;													----check status register----
							    	can_ren   <= '1';
							    	can_busy  <= '1';
							    	send_step <= st3;
							    else
                                    send_busy <= '0';
                                    send_step <= st1;
							    end if;
							else
							    send_busy <= '0';
                                send_step <= st1;
		                    end if;
		                    
						when st3 =>
							if (can_rdata_i(5) = '1') then			                         ---check if transmit buffer is released----
								can_addr  <= can_sel & CAN_TXID0;
								can_wdata <=frame_id(10 downto 3);
								can_wen   <= '1';
								can_busy  <= '1';
								send_step <= st4;
							else
								can_ren  <= '1';
                                can_busy <= '1';
							end if;
							
						when st4 =>
							can_addr  <= can_sel & CAN_TXID0;
							can_wdata <= frame_id(10 downto 3);
							can_wen   <= '1';
							can_busy  <= '1';
							send_step <= st5;

						when st5 =>
							can_addr  <= can_sel & CAN_TXID1;
							can_wdata <= frame_id(2 downto 0) & frame_info(4 downto 0);  ---bit3~0=DLC3~0
							can_wen   <= '1';
							can_busy  <= '1';
							send_step <= st6;
							wait_rd   <= (others=>'0');
						when st6 => 
						    if (send_mode="10") then 
						    	wait_rd   <=wait_rd +'1';
						    	if (wait_rd="00") then 
						    		ram_ren   <= '1';
						        else
						        	ram_ren   <= '0';
						        	if (wait_rd="10") then
                                	    wait_rd<="00";
                                	    send_step <= st7;
                                    end if;
						        end if;
                            elsif (send_mode="11") then                
							    wait_rd   <=wait_rd +'1';
						    	if (wait_rd="00") then 
						    		imp_ram_ren   <= '1';
						        else
						        	imp_ram_ren   <= '0';
						        	if (wait_rd="10") then
                                	    wait_rd<="00";
                                	    send_step <= st7;
                                    end if;
						        end if;
						    else
						    	send_step <= st7;
							end if;							

						when st7 =>
						    can_addr  <= can_addr + 1;						    
						    can_wen   <= '1';
							can_busy  <= '1';
							send_step <= st6;
							wait_rd   <= (others=>'0');
							if (send_mode="01") then                       ---恢复帧应答---
								can_wdata <= X"22";
								send_step <= st8;
							elsif (send_mode="10") then  ---TM
								sum_tick  <= '1';									
						        if (frame_cnt=X"00") then
						        	case can_addr(3 downto 0) is
						        	    when "0001" =>
						        	        can_wdata <=X"00";
						        	    when "0010" =>
						        	        can_wdata <=X"BA";             ---遥测数据字节数186---
						        	    when others =>
						        	        ram_rd_st <= not ram_rd_st;
						        	        if (ram_rd_st='0') then
							                    can_wdata <= "0000" & ram_rdata_i(11 downto 8);
							                else
							    	            can_wdata <= ram_rdata_i(7 downto 0);
							    	            ram_raddr <= ram_raddr+'1';
						                    end if;
						                    if (can_addr(3 downto 0)="1000") then
						                    	send_step <= st8;
						                    end if;
						        	end case;    
						        elsif (frame_cnt=X"10") then               ---第17帧---
						        	ram_rd_st <='0';
						        	case can_addr(3 downto 0) is
						        	    when "0001" =>
						        	        can_wdata <= "0000" & ram_rdata_i(11 downto 8);  --温度量34---
						        	    when "0010" =>
						        	        can_wdata <= ram_rdata_i(7 downto 0);
						        	        ram_raddr <= ram_raddr+'1';
						        	    when "0011" =>
						        	        can_wdata <=therm_cmd(7 downto 0);
						        	    when "0100" =>
						        	        can_wdata <=therm_cmd(15 downto 8);
						        	    when "0101" =>
						        	        can_wdata <="00" & therm_cmd(21 downto 16);
						        	    when "0110" =>
						        	        can_wdata <=clj_x_reg(15 downto 8);
						                when "0111" =>
						        	        can_wdata <=clj_x_reg(7 downto 0);
						        	    when "1000" =>
						        	        can_wdata <=clj_y_reg(15 downto 8);
						        	        send_step <= st8;
						        	    when others => null;
                                    end case;
                                elsif (frame_cnt=X"11") then 
                                	ram_rd_st <='0';   
						        	case can_addr(3 downto 0) is
						        	    when "0001" =>
						        	        can_wdata <=clj_y_reg(7 downto 0); 
						        	    when "0010" =>
						        	        can_wdata <=clj_z_reg(15 downto 8);
						        	    when "0011" =>
						        	        can_wdata <=clj_z_reg(7 downto 0);  
						        	    when "0100" =>
						        	        can_wdata <=imp1_cnt(7 downto 0);     ---1类重要数据更新计数---  
						        	    when "0101" =>
						        	        can_wdata <=imp2_cnt(7 downto 0);     ---2类重要数据更新计数---  
						        	    when "0110" =>
						        	        can_wdata <=imp3_cnt(7 downto 0);     ---3类重要数据更新计数---      
						        	    when "0111" =>
						        	        can_wdata <=imp4_cnt(7 downto 0);     ---4类重要数据更新计数---      
						        	    when "1000" =>
						        	        can_wdata <=imp5_cnt(7 downto 0);     ---5类重要数据更新计数--- 
						        	        send_step <= st8;
						        	    when others => null;
                                    end case;         
						        	 
                                elsif (frame_cnt=X"12") then      
						        	case can_addr(3 downto 0) is
						        	    when "0001" =>
						        	        can_wdata <=imp6_cnt(7 downto 0);     ---6类重要数据更新计数---
						        	    when "0010" =>
						        	        can_wdata <=imp7_cnt(7 downto 0);     ---7类重要数据更新计数---    
						        	    when "0011" =>     
						        	        can_wdata <=imp8_cnt(7 downto 0);     ---8类重要数据更新计数---    
						        	    when "0100" =>    
						        	        can_wdata <=piu_rst_cnt_i(7 downto 0);   ---PIU热复位计数---
						        	    when "0101" =>
						        	        can_wdata <=tm_ask_cnt(7 downto 0);      ---遥测轮询计数---  
						        	    when "0110" =>
						        	        can_wdata <=bus_cmd_cnt(7 downto 0);     ---指令计数--  
						        	    when others =>
						        	        ram_rd_st <= not ram_rd_st;
						        	        if (ram_rd_st='0') then
							                    can_wdata <= "0000" & ram_rdata_i(11 downto 8);
							                else
							    	            can_wdata <= ram_rdata_i(7 downto 0);
							    	            ram_raddr <= ram_raddr+'1';
						                    end if;
						                    if (can_addr(3 downto 0)="1000") then
						                    	send_step <= st8;
						                    end if;
						        	end case;
						        else     						    	                    
						            ram_rd_st <= not ram_rd_st;
							        can_addr  <= can_addr + 1;
							        can_wen   <= '1';
							        can_busy  <= '1';
							        if (ram_rd_st='0') then
							            can_wdata <= "0000" & ram_rdata_i(11 downto 8);
							        else
							        	can_wdata <= ram_rdata_i(7 downto 0);
							        	ram_raddr <= ram_raddr+'1';
						            end if;
						            
						            if (frame_cnt=X"17") then						            	
						            	if (can_addr(3 downto 0) = "0101") then
						            		can_wdata <= tm_sum;   ---遥测末帧第4个字节为校验和---
						            		send_step <= st8;
						            		tm_end<='1';
						                end if;
						            else
							            if (can_addr(3 downto 0) = "1000") then
							        	    send_step <= st8;
							            end if;
							        end if;
							    end if;
							elsif  (send_mode="11") then  ---重要数据---
								sum_tick  <= '1';
							    if (frame_cnt=X"00") then                         ---首帧---
						        	case can_addr(3 downto 0) is
						        	    when "0001" =>
						        	        can_wdata <="000000" & tx_byte_cnt(9 downto 8);
						        	    when "0010" =>
						        	        can_wdata <=tx_byte_cnt(7 downto 0);  ---数据字节数---
						        	    when others =>
						        	        can_wdata   <=imp_tx_data;
						        	        imp_tx_raddr<=imp_tx_raddr+'1';
						                    if (can_addr(3 downto 0)="1000") then
						                    	send_step <= st8;
						                    end if;    
						        	end case;
						        else
						        	can_addr  <= can_addr + 1;
							        can_wen   <= '1';
							        can_busy  <= '1';    
							        can_wdata <=imp_tx_data;
						        	imp_tx_raddr <=imp_tx_raddr+'1';
						        	if (frame_cnt=tx_frame_cnt) then        ----末帧----
						        		if (can_addr(3 downto 0) =imp_final_cnt) then
						            		can_wdata <= tm_sum;    ---末帧最后一个字节为校验和---
						                    send_step <= st8;
						            		imp_tx_end<='1';
						                end if;
						            else
						            	if (can_addr(3 downto 0) = "1000") then
							        	    send_step <= st8;
							            end if;
						            end if;
						            
							    end if;
							else
								send_step <= st1;
								send_busy <= '0';         	        
							end if;
							
						when st8 =>
							can_addr  <= can_sel & CAN_CMR;
							can_wdata <= X"40";
							can_wen   <= '1';
							can_busy  <= '1';
							send_step <= st9;
							
						when st9 =>						    
						    if (send_mode="10" or send_mode="11" ) then   ---遥测---
							    frame_cnt <= frame_cnt + 1;
							    --frame_en  <= '1';
							    send_step <= st2;
							else						    
								send_step <= st1;
								send_busy <= '0';
							end if;    								
					end case;
				else
					if (can_done_i = '1') then
						can_busy <= '0';
					end if;
					
--					if (ram_done = '1') then
--						ram_busy <= '0';
--					end if;
					
					can_ren <= '0';
					can_wen <= '0';
					ram_ren <= '0';
					imp_ram_ren <= '0';
				end if;
				
			elsif (int_busy = '1') then
				if (can_busy = '0') then								
					case int_step is
						when st1 =>
							can_sel <= '0';
							int_step <= st2;
						    frame_data <= (others=>'0');
						when st2 =>						
							err_flag <= '0';
                            can_addr <= can_sel & CAN_IR;						   ----check status register----
							can_ren <= '1';
							can_busy <= '1';
							int_step <= st3;
							
	            	    when st3 =>
							if (can_rdata_i(7 downto 5) = "100") then              ----check if message is avilable----
								can_addr <= can_sel & CAN_RXID0;
								can_ren <= '1';
								can_busy <= '1';
								int_step <= st4;
	            	        else
                                if (can_sel = '0') then
								    can_sel <= '1';
								    int_step <= st2;
                                else
                                    can_sel <= '0';
                                    init_cnt <= (others => '0');
                                    init_busy <= '1';
                                    init_mode <= '0';
                                    int_busy <= '0';
                                    int_step <= st1;
                                end if;
							end if;
							
	            	    when st4 =>
	            	        frame_id(10 downto 3) <= can_rdata_i(7 downto 0);
	            	        can_addr <= can_sel & CAN_RXID1;
						    can_ren  <= '1';
							can_busy <= '1';
							int_step <= st5;		
							
						when st5 =>
						    frame_id(2 downto 0) <= can_rdata_i(7 downto 5);
							frame_length <= can_rdata_i(4 downto 1);
							cmd_type <= can_rdata_i(4 downto 1);   ---指令的类型---
                            int_step <= st6;
						
						when st6 =>
						    int_step <= st7;
						    if (frame_id(10 downto 3)="10100000") then    ---广播指令---
						        broadcast_en<='1';						        
						    else	
						    	broadcast_en<='0';					    	
--						    	if (frame_id(10 downto 3)/="11101110" or frame_id(10 downto 3)/="11001110") then ---遥控指令---
--						        	frame_length <= "0000";
--						        	int_step <= st7;
--						        end if;
						    end if;		
						    			    	
						when st7 =>	
							if (frame_length(3 downto 0) = "0000") then
							    can_addr <= can_sel & CAN_CMR;
							    can_wdata <= X"10";
							    can_wen <= '1';
							    can_busy <= '1';
							    if (broadcast_en='0') then
							        int_step <= st9;
							    else
							    	int_step <= st10;
							    end if;
							else
							    frame_length(3 downto 0) <= frame_length(3 downto 0) - 1;
							    can_addr <= can_addr + 1;
							    can_ren <= '1';	
							    can_busy <= '1';
							    int_step <= st8;
							end if;

						when st8 =>                                              ---接收数据缓存---
						    int_step <= st7;
						    if (broadcast_en='0') then                           ---非广播---
							    frame_data <= frame_data(55 downto 0) & can_rdata_i;							    
							else
								if (frame_id(1 downto 0)="00") then   ---单帧广播---
									frame_length <= "0000";
						            int_step <= st7;
                                else 	  
								    imp_wdata<= can_rdata_i;
								    imp_wen  <='1';
								    imp_sum  <= imp_sum + can_rdata_i;
								    imp_cnt  <= imp_cnt +'1';
								    imp_tx_type<=X"00"; 
							        if (frame_id(1 downto 0)="01") then              ---首帧---
							    	    case can_addr(3 downto 0) is
							    	        when "0010" =>
							    	            imp_wen  <='0';
							    	            imp_length(9 downto 8)<=can_rdata_i(1 downto 0);
							    	            imp_cnt  <= (others=>'0') ;
							    	            imp_waddr<= (others=>'0') ;
							    	            imp_sum  <= can_rdata_i;
							    	        when "0011" =>
							    	            imp_wen  <='0';
							    	            imp_length(7 downto 0) <=can_rdata_i;	
							    	            imp_cnt  <= (others=>'0') ;
							    	        when "0100" =>
							    	            imp_wen  <='0';
							    	            imp_tx_byte_cnt<=imp_length+"0000000010";  --重要数据需要发送的字节数---
							    	            if (can_rdata_i/=X"44") then
							    	            	frame_length<="0000";							    	        	
							    	            	imp_sum  <= (others=>'0');
							    	            	imp_cnt  <= (others=>'0') ;
							    	            end if;
							    	        when "1001" =>
							    	            if (imp_tx_byte_cnt(2 downto 0)="000") then
							    	                imp_tx_frame:=imp_tx_byte_cnt(9 downto 3)-'1';
							    	                imp_tx_final_cnt:="1000"; 
							    	            else
							    	            	imp_tx_frame:=imp_tx_byte_cnt(9 downto 3); 
							    	            	imp_tx_final_cnt:='0' & imp_tx_byte_cnt(2 downto 0);   
							    	            end if;
							    	                
							    	            case can_rdata_i is
							    	                when X"55" =>
							    	                    imp_wr_type <=X"01";			
							    	                    imp1_rec_cnt<=imp_length-'1';		----记录长度---		
							    	                    imp1_tx_frame<=imp_tx_frame; ---重要数据返回时需要返回的帧数=字节数/8---
							    	                    imp1_final_cnt<=imp_tx_final_cnt;    	                    
							    	                when X"66" =>
							    	                    imp_wr_type <=X"02";	
							    	                    imp2_rec_cnt<=imp_length-'1';
							    	                    imp2_tx_frame<=imp_tx_frame; 
							    	                    imp2_final_cnt<=imp_tx_final_cnt;  
							                        when X"77" =>
							    	                    imp_wr_type <=X"04";	
							    	                    imp3_rec_cnt<=imp_length-'1';
							    	                    imp3_tx_frame<=imp_tx_frame; 
							    	                    imp3_final_cnt<=imp_tx_final_cnt;  
							                        when X"88" =>
							    	                    imp_wr_type <=X"08";
							    	                    imp4_rec_cnt<=imp_length-'1';
							    	                    imp4_tx_frame<=imp_tx_frame; 
							    	                    imp4_final_cnt<=imp_tx_final_cnt;  
							                        when X"99" =>
							    	                    imp_wr_type <=X"10";	
							    	                    imp5_rec_cnt<=imp_length-'1';
							    	                    imp5_tx_frame<=imp_tx_frame; 
							    	                    imp5_final_cnt<=imp_tx_final_cnt;  
							    	                when X"AA" =>
							    	                    imp_wr_type <=X"20";	
							    	                    imp6_rec_cnt<=imp_length-'1';
							    	                    imp6_tx_frame<=imp_tx_frame; 
							    	                    imp6_final_cnt<=imp_tx_final_cnt;  
							    	                when X"BB" =>
							    	                    imp_wr_type <=X"40";
							    	                    --imp7_rec_cnt<=imp_length+X"000E";	
							    	                    
							    	                when X"CC" =>
							    	                    imp_wr_type <=X"80";
							    	                    imp8_rec_cnt<=imp_length-'1';
							    	                    imp8_tx_frame<=imp_tx_frame; 
							    	                    imp8_final_cnt<=imp_tx_final_cnt;  
							    	                when others =>
							    	                    frame_length<="0000";
							    	            	    imp_sum  <= (others=>'0');  
							    	            end case;
							    	        when others =>
							    	            null;							    	    
							    	    end case;	
							        elsif (frame_id(1 downto 0)="11") then              ---末帧---	
							    	    if (frame_length="0000") then
							    		    imp_sum  <= (others=>'0');  
							    		    imp_end  <= '1';                            ---重要数据接收完成---
							    		    if (imp_cnt=imp_length) then
							    			    imp_len_right<='1';
							    	        else
							    	    	    imp_len_right<='0';
							    	        end if;
							    		    if (imp_sum=can_rdata_i) then           ---校验和是否正确？---
							    			    imp_sum_right<='1';
							    	        else
							    	    	    imp_sum_right<='0';
							    	        end if;
							    	    end if;					    	
							        end if;	         							    	              
							    end if;	
						    end if;						
						when st9 =>                                              ---总线指令---
						    int_step <= st10;
						    if (cmd_type="0010" and frame_data(15 downto 0) = X"2201") then  ---遥测查询250ms---
						    	tm_ask    <= '1';
							    tm_ask_cnt<=tm_ask_cnt+'1';
							    send_busy <= '1';
							    send_mode <= "10";
							    tx_frame_cnt<=X"17";              ---24帧---
							    rst_cnt   <=(others=>'0');
						    elsif (cmd_type="0001" and frame_data(7 downto 0) = X"11") then	 ---总线恢复帧---
						    	rst_frame <= '1';
							    send_mode <= "01";
							    send_busy <= '1';
							    init_busy <= '1';        ---先初始化再发送应答---
							    init_sel  <= '0';
						    elsif (cmd_type="0010" and frame_data(15 downto 8) = X"55") then						    							    
								imp_ask_type<=frame_data(7 downto 0) ;
								imp_ask   <= '0';
								send_busy <= '0';
								rst_cnt   <=(others=>'0');
							    if (frame_data(7 downto 0)=X"55" and imp_renew_st(0)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11"; 
							        imp_tx_type<=X"01";           ---重要数据存储器选择---							        
							        --tx_frame_cnt<=X"42";          ---待发送67帧---							        
							        --tx_byte_cnt<=X"20E";          ---要发送的字节数为526Byte---
							        --imp_final_cnt<="0001";        ---最后一个字节对应的CAN地址---
							        tx_frame_cnt<='0' & imp1_tx_frame;
							        tx_byte_cnt <=imp1_rec_cnt;
							        imp_final_cnt<=imp1_final_cnt; 
							    end if;
							    
							    if (frame_data(7 downto 0)=X"66" and imp_renew_st(1)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11"; 
							        imp_tx_type <=X"02";
							        --tx_frame_cnt<=X"42";         ---待发送67帧---							        
							        --tx_byte_cnt <=X"20E";        ---526Byte---
							        --imp_final_cnt<="0001"; 
							        tx_frame_cnt<='0' & imp2_tx_frame;
							        tx_byte_cnt <=imp2_rec_cnt;
							        imp_final_cnt<=imp2_final_cnt;
							    end if;
							    
							    if (frame_data(7 downto 0)=X"77" and imp_renew_st(2)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11"; 
							        imp_tx_type<=X"04";
							        --tx_frame_cnt<=X"42";   ---待发送67帧---
							        --tx_byte_cnt<=X"20E";   ---526Byte---
							        --imp_final_cnt<="0001"; 
							        tx_frame_cnt<='0' & imp3_tx_frame;
							        tx_byte_cnt <=imp3_rec_cnt;
							        imp_final_cnt<=imp3_final_cnt;
							        
							    end if;
							    if (frame_data(7 downto 0)=X"88" and imp_renew_st(3)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11";
							        imp_tx_type<=X"08"; 
							        --tx_frame_cnt<=X"42";   ---待发送67帧---							        
							        --tx_byte_cnt<=X"20E";   ---526Byte---
							        --imp_final_cnt<="0001";
							        tx_frame_cnt<='0' & imp4_tx_frame;
							        tx_byte_cnt <=imp4_rec_cnt;
							        imp_final_cnt<=imp4_final_cnt;
							         
							    end if;
							    			    	
							    if (frame_data(7 downto 0)=X"99" and imp_renew_st(4)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11"; 
							        imp_tx_type<=X"10";							        
							        --tx_frame_cnt<=X"22";    ---35帧---							        
							        --tx_byte_cnt <=X"10E";   --270B--
							        --imp_final_cnt<="0001";
							        tx_frame_cnt<='0' & imp5_tx_frame;
							        tx_byte_cnt <=imp5_rec_cnt;
							        imp_final_cnt<=imp5_final_cnt;
							         
							    end if;
							    if (frame_data(7 downto 0)=X"AA" and imp_renew_st(5)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11";
							        imp_tx_type<=X"20"; 
							        --tx_frame_cnt<=X"42";   ---待发送67帧---							        
							        --tx_byte_cnt<=X"20E"; 
							        --imp_final_cnt<="0001";
							        tx_frame_cnt<='0' & imp6_tx_frame;
							        tx_byte_cnt <=imp6_rec_cnt;
							        imp_final_cnt<=imp6_final_cnt;							         
							    end if;
							    if (frame_data(7 downto 0)=X"BB" and imp_renew_st(6)='1') then
							        imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11";
							        imp_tx_type<=X"40"; 
							        tx_frame_cnt<=X"02";      ---3帧---							        
							        tx_byte_cnt<="0000010010";      ---18Byte---
							        --tx_byte_cnt<=imp7_rec_cnt;
							        imp_final_cnt<="0101"; 
							    end if;
							    if (frame_data(7 downto 0)=X"CC" and imp_renew_st(7)='1') then
							    	imp_ask   <= '1';
								    send_busy <= '1';
							        send_mode <= "11"; 
							        imp_tx_type<=X"80";
							        --tx_frame_cnt<=X"42";   ---待发送67帧---							        
							        --tx_byte_cnt<=X"20E";   ---526Byte---
							        --imp_final_cnt<="0001";
							        tx_frame_cnt<='0' & imp8_tx_frame;
							        tx_byte_cnt <=imp8_rec_cnt;
							        imp_final_cnt<=imp8_final_cnt;
							         
							    end if;	
							else
								bus_cmd_cnt<=bus_cmd_cnt+'1';                     ---总线指令计数---
								send_mode <= "00"; 
								send_busy <= '0';
								rst_cnt   <=(others=>'0');
								case frame_data is
									when X"FFFFFFFF55BB0B0B" =>                   ---GPS单元A加电---
									    gps_a_cmd<='1';						   									
									when X"FFFFFFFF55BB0C0C" =>                   ---GPS单元A断电---
									    gps_a_cmd<='0';          
									when X"FFFFFFFF55BB0D0D" =>                   ---GPS单元B加电---
									    gps_b_cmd<='1';
									when X"FFFFFFFF55BB0E0E" =>                   
									    gps_b_cmd<='0';
									when X"FFFFFFFF55BB0303" =>                   --测控单元A加电---
									    tc_a_en<="01";
									when X"FFFFFFFF55BB0404" =>                   --测控单元A断电---
									    tc_a_en<="10";
									when X"FFFFFFFF55BB0505" =>                   --测控单元B加电---
									    tc_b_en<="01";
									when X"FFFFFFFF55BB0606" =>                   --测控单元B断电---
									    tc_b_en<="10";
									when X"00000000003F003F" =>                  ---磁力矩器X正开,Y正开,Z正开---
									    clj_x_cmd<="01";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';	
									    clj_state<=st1;							    
									when X"00000000003F000F" =>                  ---磁力矩器X正开,Y正开,Z关---									                                              
									    clj_x_cmd<="01";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F002F" =>                  ---磁力矩器X正开,Y正开,Z反向开---
									    clj_x_cmd<="01";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0033" =>                  ---磁力矩器X正开,Y关,Z正向开---
									    clj_x_cmd<="01";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0003" =>                   ---磁力矩器X正开,Y关,Z关---
									    clj_x_cmd<="01";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0023" =>                  ---磁力矩器X正开,Y关,Z反向开---
	                                    clj_x_cmd<="01";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F003B" =>                  ---磁力矩器X正开,Y反向开,Z正向开---
									    clj_x_cmd<="01";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F000B" =>                  ---磁力矩器X正开,Y反向开,Z关---
									    clj_x_cmd<="01";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F002B" =>                  ---磁力矩器X正开,Y反向开,Z反向开---
	                                    clj_x_cmd<="01";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F003C" =>                  ---磁力矩器X关,Y正向开,Z正向开---
									    clj_x_cmd<="00";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F000C" =>                  ---磁力矩器X关,Y正向开,Z关---
									    clj_x_cmd<="00";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F002C" =>                  ---磁力矩器X关,Y正向开,Z反向开---
	                                    clj_x_cmd<="00";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0030" =>                  ---磁力矩器X关,Y关,Z正向开---
									    clj_x_cmd<="00";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0000" =>                  ---磁力矩器X关,Y关,Z关---
									    clj_x_cmd<="00";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0020" =>                  ---磁力矩器X关,Y关,Z反向开---
	                                    clj_x_cmd<="00";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0038" =>                  ---磁力矩器X关,Y反向开,Z正向开---
									    clj_x_cmd<="00";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0008" =>                  ---磁力矩器X关,Y反向开,Z关---
									    clj_x_cmd<="00";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0028" =>                  ---磁力矩器X关,Y反向开,Z反向开---
	                                    clj_x_cmd<="00";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F003E" =>                 ---磁力矩器X反开,Y正向开,Z正开---
									    clj_x_cmd<="10";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F000E" =>                 ---磁力矩器X反开,Y正向开,Z关---
									    clj_x_cmd<="10";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F002E" =>                 ---磁力矩器X反开,Y正向开,Z反开---
	                                    clj_x_cmd<="10";
									    clj_y_cmd<="01"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0032" =>                 ---磁力矩器X反开,Y关,Z正开---
									    clj_x_cmd<="10";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0002" =>                 ---磁力矩器X反开,Y关,Z关---
									    clj_x_cmd<="10";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F0022" =>                 ---磁力矩器X反开,Y关,Z反开---
	                                    clj_x_cmd<="10";
									    clj_y_cmd<="00"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F003A" =>                 ---磁力矩器X反开,Y反开,Z正开---
									    clj_x_cmd<="10";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="01";
									    clj_cmd  <='1';
									when X"00000000003F000A" =>                 ---磁力矩器X反开,Y反开,Z关---
									    clj_x_cmd<="10";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="00";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"00000000003F002A" =>                 ---磁力矩器X反开,Y反开,Z反开---
	                                    clj_x_cmd<="10";
									    clj_y_cmd<="10"; 
									    clj_z_cmd<="10";
									    clj_cmd  <='1';
									    clj_state<=st1;
									when X"0000000100000001" =>
									    therm_cmd(0)<='1';
									when X"0000000200000002" =>
									    therm_cmd(1)<='1';
									when X"0000000400000004" =>
	                                    therm_cmd(2)<='1';
									when X"0000000800000008" =>
	                                    therm_cmd(3)<='1';
									when X"0000001000000010" =>
	                                    therm_cmd(4)<='1';	
									when X"0000002000000020" =>
	                                    therm_cmd(5)<='1';									
									when X"0000004000000040" =>
	                                    therm_cmd(6)<='1';									
									when X"0000008000000080" =>
	                                    therm_cmd(7)<='1';								
									when X"0000010000000100" =>
	                                    therm_cmd(8)<='1';									
									when X"0000020000000200" =>
	                                    therm_cmd(9)<='1';									
									when X"0000040000000400" =>
	                                    therm_cmd(10)<='1';									
									when X"0000080000000800" =>
	                                    therm_cmd(11)<='1';									
									when X"0000100000001000" =>
	                                    therm_cmd(12)<='1';									
									when X"0000200000002000" =>
	                                    therm_cmd(13)<='1';									
									when X"0000400000004000" =>
	                                    therm_cmd(14)<='1';									
									when X"0000800000008000" =>
	                                    therm_cmd(15)<='1';									
									when X"0001000000010000" =>
	                                    therm_cmd(16)<='1';									
									when X"0002000000020000" =>
	                                    therm_cmd(17)<='1';									
									when X"0004000000040000" =>
	                                    therm_cmd(18)<='1';									
									when X"0008000000080000" =>
	                                    therm_cmd(19)<='1';									
									when X"0010000000100000" =>
	                                    therm_cmd(20)<='1';									
									when X"0020000000200000" =>
	                                    therm_cmd(21)<='1';									
									when X"0000000100000000" =>
	                                    therm_cmd(0)<='0';									
									when X"0000000200000000" =>
	                                    therm_cmd(1)<='0';										
									when X"0000000400000000" =>
	                                    therm_cmd(2)<='0';										
									when X"0000000800000000" =>
	                                    therm_cmd(3)<='0';										
									when X"0000001000000000" =>
	                                    therm_cmd(4)<='0';										
									when X"0000002000000000" =>
	                                    therm_cmd(5)<='0';										
									when X"0000004000000000" =>
	                                    therm_cmd(6)<='0';										
									when X"0000008000000000" =>
	                                    therm_cmd(7)<='0';										
									when X"0000010000000000" =>
	                                    therm_cmd(8)<='0';										
									when X"0000020000000000" =>
	                                    therm_cmd(9)<='0';										
									when X"0000040000000000" =>
	                                    therm_cmd(10)<='0';										
									when X"0000080000000000" =>
	                                    therm_cmd(11)<='0';										
									when X"0000100000000000" =>
	                                    therm_cmd(12)<='0';										
									when X"0000200000000000" =>
	                                    therm_cmd(13)<='0';										
									when X"0000400000000000" =>
	                                    therm_cmd(14)<='0';										
									when X"0000800000000000" =>
	                                    therm_cmd(15)<='0';										
									when X"0001000000000000" =>
	                                    therm_cmd(16)<='0';										
									when X"0002000000000000" =>
	                                    therm_cmd(17)<='0';										
									when X"0004000000000000" =>
	                                    therm_cmd(18)<='0';										
									when X"0008000000000000" =>
	                                    therm_cmd(19)<='0';										
									when X"0010000000000000" =>
	                                    therm_cmd(20)<='0';										
									when X"0020000000000000" =>
	                                    therm_cmd(21)<='0';		
									when others => 
									    bus_cmd_cnt<=bus_cmd_cnt;   --错误则总线指令计数不加1----
								end case;
							end if;

						when st10 =>						    
                            int_cnt <= int_cnt + 1;
    					    if (int_cnt ="11") then
    							int_busy <= '0';
    							int_step <= st1;
    					    end if;
					end case;

				else
					if (can_done_i = '1') then
						can_busy <= '0';
					end if;

					can_ren <= '0';	
					can_wen <= '0';				
				end if;
			
            elsif (tick_busy = '1') then                
                if (can_busy = '0') then
                    case tick_step is
                        when st1 =>
                        	can_sel <= '0';
                        	tick_mode <= '0';
                        	tick_step <= st2;
                        
                        when st2 =>															
    						can_addr <= can_sel & CAN_SR;													----check status register----
    						can_ren <= '1';
    						can_busy <= '1';
    						tick_step <= st3;
		
    					when st3 =>
    						if (can_rdata_i(0) = '1') then													----check if bus is off----
        						if (can_sel = '0') then
        							can_sel <= '1';
        							tick_mode <= '1';
									tick_step <= st2;
        						else
	        						if (tick_mode = '0') then
	                                	init_sel <= '1';
	                                	init_mode <= '1';
	        						else
        								init_mode <= '0';
	        						end if;
	        						
	        						init_cnt <= (others => '0');
	                                init_busy <= '1';
	                                tick_busy <= '0';
	    							tick_step <= st1;        						
        						end if;
    						else
    						    can_addr <= can_sel & CAN_RXERR;													----check status register----
    						    can_ren <= '1';
    						    can_busy <= '1';
    						    tick_step <= st4;                            
    						end if;                                                           
                    
                        when st4 =>
                            if (can_rdata_i > X"5A") then             ---receive error count
                            	if (can_sel = '0') then
        							can_sel   <= '1';
        							tick_mode <= '1';
									tick_step <= st2;                            	
                            	else
	        						if (tick_mode = '0') then
	                                	init_sel <= '1';
	                                	init_mode <= '1';
	        						else
        								init_mode <= '0';
	        						end if;
	        						
	        						init_cnt <= (others => '0');
	                                init_busy <= '1';
	                                tick_busy <= '0';
	    							tick_step <= st1;                             	
                            	end if;
                            else
    						    can_addr <= can_sel & CAN_TXERR;													----check status register----
    						    can_ren <= '1';
    						    can_busy <= '1';
    						    tick_step <= st5;
                            end if;

                        when st5 =>
                            if (can_rdata_i > X"5A") then              ---transmit error count
                            	if (can_sel = '0') then
        							can_sel <= '1';
        							tick_mode <= '1';
									tick_step <= st2;                             	
                            	else
	        						if (tick_mode = '0') then
	                                	init_sel <= '1';
	                                	init_mode <= '1';
	        						else
        								init_mode <= '0';
	        						end if;
	        						
	        						init_cnt  <= (others => '0');
	                                init_busy <= '1';
	                                tick_busy <= '0';
	    							tick_step <= st1;                             	
                            	end if;
                            else
                                if (can_sel = '0') then
                                    can_sel <= '1';
                                    tick_step <= st2;
                                else
                                	if (tick_mode = '1') then
										init_sel  <= '0';
										init_mode <= '1';
	        							init_cnt  <= (others => '0');
	                                	init_busy <= '1';
                                	end if;    
                                	                            
                                    tick_busy <= '0';
                                    tick_step <= st1;
                                end if;
                            end if;
                            
                    end case;
                else
					if (can_done_i = '1') then
						can_busy <= '0';
					end if;
					can_ren <= '0';	
                end if;

            end if;
            
            imp_wen_c<=imp_wen_c(0) & imp_wen;
            if (imp_wen_c(1)='1') then
            	imp_waddr<=imp_waddr+'1';
            end if;
            
            if (imp_end='1') then
            	imp_end  <='0';            	
            	--imp_wr_type<= (others => '0');
            	if (imp_len_right='1' and imp_sum_right='1') then
            		imp_renew<='1';
            	    if (imp_wr_type(0)='1') then
            	    	imp1_cnt<=imp1_cnt+'1';
            	    	imp_renew_st(0)<='1';
            	    end if;
            	    if (imp_wr_type(1)='1') then
            	    	imp2_cnt<=imp2_cnt+'1';
            	    	imp_renew_st(1)<='1';
            	    end if;
            	    if (imp_wr_type(2)='1') then
            	    	imp3_cnt<=imp3_cnt+'1';
            	    	imp_renew_st(2)<='1';
            	    end if;
            	    if (imp_wr_type(3)='1') then
            	    	imp4_cnt<=imp4_cnt+'1';
            	    	imp_renew_st(3)<='1';
            	    end if;
            	    if (imp_wr_type(4)='1') then
            	    	imp5_cnt<=imp5_cnt+'1';
            	    	imp_renew_st(4)<='1';
            	    end if;
            	    if (imp_wr_type(5)='1') then
            	    	imp6_cnt<=imp6_cnt+'1';
            	    	imp_renew_st(5)<='1';
            	    end if;	
            	    if (imp_wr_type(6)='1') then
            	    	imp7_cnt<=imp7_cnt+'1';
            	    	imp_renew_st(6)<='1';
            	    end if;
            	    if (imp_wr_type(7)='1') then
            	    	imp8_cnt<=imp8_cnt+'1';
            	    	imp_renew_st(7)<='1';
            	    end if;
            	end if;
            end if;
            
            imp_renew_wr<='0';
            --imp_ren<='0';
            if (imp_renew='1') then
            	cnt<=cnt+'1';
            	imp_ren<='1';
--            	if (cnt="000") then
--            		imp_ren<='1';
--                end if;
            	if (cnt="010") then
            		imp_renew_wr<='1';           ---更新重要数据存储器---
                end if;
            	if (cnt="101") then
            		imp_renew_waddr<=imp_renew_waddr+'1';
            		imp_raddr<=imp_raddr+'1';
            		cnt	<=(others=>'0');
            		if (imp_wr_type=X"01" or imp_wr_type=X"02" or imp_wr_type=X"04" or imp_wr_type=X"08" or imp_wr_type=X"20" or imp_wr_type=X"80") then
            		    if (imp_raddr="1000001101") then ----526B
            		    	imp_renew<='0';
            		    	imp_wr_type<=(others=>'0');
            		    end if;
            	    elsif (imp_wr_type=X"10") then
            	    	if (imp_raddr="0100001101") then ----270B
            		    	imp_renew<='0';
            		    	imp_wr_type<=(others=>'0');
            		    end if;
            		elsif (imp_wr_type=X"40") then
            	    	if (imp_raddr="0000010001") then ----18B
            		    	imp_renew<='0';
            		    	imp_wr_type<=(others=>'0');
            		    end if;
            		else
            			imp_renew<='0';
            			imp_wr_type<=(others=>'0');
            		end if;
            		
                end if;
            else
            	imp_raddr      <=(others=>'0');
            	imp_renew_waddr<=(others=>'0');
            	cnt	<=(others=>'0');
            	imp_ren<='0';
            end if;
            
            
           --------------------磁力矩器控制-------------------------- 
            									                                ---发正向开时先判断反向是否关,反向关才能发正向开,反向未关则不能发正向开---					
			clj_acq<='0';						                                            ---反向亦然---
		    case clj_state is
		        when st1 =>
		            close_time<=(others=>'0'); 
		            wait_hold <=(others=>'0'); 
		            clj_x_close<='0';
		            clj_y_close<='0';
		            clj_z_close<='0';
		            clj_timeout<=(others=>'0'); 
		            clj_timeout_en<='0';
		            if (clj_cmd='1') then
		            	clj_cmd  <='0';
		            	clj_acq  <='1';         ---接收到指令后先去采集磁力距状态---
		            	clj_state<=st2;
		            	clj_cmd_cnt<=clj_cmd_cnt+'1';		            	
		            end if;
		        when st2 =>
		            clj_timeout_en<='1';	---20180827增加超时---            
		            if (clj_acq_end_i='1') then		
		        		clj_state  <=st3;
            	        if (clj_x_cmd="01" and clj_x_neg_i>X"800") then   ---正向开但反向未关---
            	        	clj_x_ctrl <="00";
                            clj_x_close<='1';
                        elsif (clj_x_cmd="10" and clj_x_pos_i>X"800") then   ---反向开但正向未关---
            		        clj_x_ctrl <="00";	
                            clj_x_close<='1';
                        else
                        	clj_x_ctrl<=clj_x_cmd;
                        end if;
                         
                        if (clj_y_cmd="01" and clj_y_neg_i>X"800") then      ---正向开但反向未关---
            		        clj_y_ctrl <="00";	
                            clj_y_close<='1';
                        elsif (clj_y_cmd="10" and clj_y_pos_i>X"800") then   ---反向开但正向未关---
            		        clj_y_ctrl<="00";	
                            clj_y_close<='1';
                        else
                            clj_y_ctrl<=clj_y_cmd;
                        end if;
                        
                        if (clj_z_cmd="01" and clj_z_neg_i>X"800") then      ---正向开但反向未关---
            		        clj_z_ctrl <="00";	
                            clj_z_close<='1';
                        elsif (clj_z_cmd="10" and clj_z_pos_i>X"800") then   ---反向开但正向未关---
            		        clj_z_ctrl <="00";	
                            clj_z_close<='1';
                        else
                        	clj_z_ctrl <=clj_z_cmd;
                        end if;
		        	end if;	
		        when st3 => 
		            clj_timeout<=(others=>'0');
		            clj_timeout_en<='0';
		            if (clj_x_close='1' or clj_y_close ='1' or clj_z_close='1') then
		            	clj_state<=st4;	
		            else
		            	clj_state<=st5;	
		            	clj_x_ctrl <=clj_x_cmd;
						clj_y_ctrl <=clj_y_cmd;
						clj_z_ctrl <=clj_z_cmd;	
				    end if;
						
		        when st4 =>  
		            clj_timeout<=(others=>'0'); 
		            clj_timeout_en<='0';
		            if (clj_x_close='1' or clj_y_close ='1' or clj_z_close='1') then
		            	if (tick_1ms_i='1') then
                 	        close_time<=close_time +'1';
                 	        if (close_time=X"63") then
                 	 	        close_time <=(others=>'0');    
                 	 	        clj_x_close<='0';                                     
								clj_y_close<='0';  
								clj_z_close<='0';  	 
							    clj_x_ctrl <=clj_x_cmd;
							    clj_y_ctrl <=clj_y_cmd;
							    clj_z_ctrl <=clj_z_cmd;
							    clj_state  <=st5;
							end if;
					    end if;
					end if;
					 
			    when st5 => 
			        clj_timeout<=(others=>'0'); 
		            clj_timeout_en<='0';
			        if (tick_1ms_i='1') then
                        wait_hold<=wait_hold+'1';
                        if (wait_hold=X"02F") then   ---等待15ms再去采集状态----
                            clj_acq<='1';
                            wait_hold <=(others=>'0');   
                            clj_state <=st6;     
                            clj_cmd_cnt<=clj_cmd_cnt+'1';
                        end if;
                    end if;
                     
                when st6 =>
                    clj_timeout_en<='1';
                    if (clj_acq_end_i='1') then
                    	clj_state <=st1;
                    	clj_new   <='1';         ---磁力距更新寄存器---
                        if (clj_x_pos_i >=X"800"  and clj_x_neg_i <X"800") then    
                        	 clj_x_st<="01";                ---正向开---
	     	            elsif (clj_x_pos_i <X"800"  and clj_x_neg_i >=X"800") then
	     	            	 clj_x_st<="10";                ---反向开---
	     	            elsif (clj_x_pos_i <X"800"  and clj_x_neg_i <X"800") then
	     	            	 clj_x_st<="00";              ---关---
	     	            else
	     	            	 clj_x_st<="11";              ---无效---
	     	            end if;
	     	            if (clj_y_pos_i >=X"800"  and clj_y_neg_i <X"800") then
	     	            	 clj_y_st<="01";                ---正向开---
	     	            elsif (clj_y_pos_i <X"800"  and clj_y_neg_i >=X"800") then
	     	            	 clj_y_st<="10";                ---反向开---
	     	            elsif (clj_y_pos_i <X"800"  and clj_y_neg_i <X"800") then
	     	            	 clj_y_st<="00";                ---关---
	     	            else
	     	            	 clj_y_st<="11";                ---无效---
	     	            end if;
	     	            if (clj_z_pos_i >=X"800"  and clj_z_neg_i <X"800") then
	     	            	 clj_z_st<="01";                ---正向开---
	     	            elsif (clj_z_pos_i <X"800"  and clj_z_neg_i >=X"800") then
	     	            	 clj_z_st<="10";                ---反向开---
	     	            elsif (clj_z_pos_i <X"800"  and clj_z_neg_i <X"800") then
	     	            	 clj_z_st<="00";              ---关---
	     	            else
	     	            	 clj_z_st<="11";              ---无效---
	     	            end if;
                    end if;	 
				when others =>
				    clj_state <=st1;
			end case;	         	                                           
             
            if (clj_new='1') then
            	clj_new<='0';
             	clj_x_reg<=clj_x_reg(13 downto 0) & clj_x_st;
             	clj_y_reg<=clj_y_reg(13 downto 0) & clj_y_st;
                clj_z_reg<=clj_z_reg(13 downto 0) & clj_z_st;
            end if;
            
            if (tick_1ms_i='1' and clj_timeout_en='1') then
		        clj_timeout<=clj_timeout+'1';
		        if (clj_timeout="111") then
		            clj_timeout<=(others=>'0'); 
		            clj_timeout_en<='0';
		            clj_state <=st1;
		        end if;
		    end if;
		    
--            if (init_end_i='0') then
--            	clj_acq  <='0';
--            	clj_cmd  <='0';
--            	clj_state<=st1;
--            end if;
--            case imp_wr_type is
--                when X"01" =>
--                    imp_wen(0)<=imp_renew_wr;
--                    imp1_waddr<=imp_renew_waddr;
--                when X"02" =>
--                    imp_wen(1)<=imp_renew_wr;
--                    imp2_waddr<=imp_renew_waddr;    
--                when X"04" =>
--                    imp_wen(2)<=imp_renew_wr;
--                    imp3_waddr<=imp_renew_waddr;
--                when X"08" =>
--                    imp_wen(3)<=imp_renew_wr;
--                    imp4_waddr<=imp_renew_waddr;
--            	when X"10" =>
--                    imp_wen(4)<=imp_renew_wr;
--                    imp5_waddr<=imp_renew_waddr;
--                when X"20" =>
--                    imp_wen(5)<=imp_renew_wr;
--                    imp6_waddr<=imp_renew_waddr;
--                when X"40" =>
--                    imp_wen(6)<=imp_renew_wr;
--                    imp7_waddr<=imp_renew_waddr;
--                when others =>
--                    imp_wen<=(others=>'0');
--            end case;
            
--			if (ram_wen = '1') then
--				ram_waddr <= ram_waddr + 1;
--			end if;
			
--			if (ram_ren = '1') then
--				ram_raddr <= ram_raddr + 1;
--			end if;

			sum_tick_c<=sum_tick;        ---计算遥测数据校验和---
			if (sum_tick_c='1') then
				tm_sum<=tm_sum + can_wdata;
		    end if;
		    
		    -------------------切机功能----------------------
		    atob_st_reg<=atob_st_reg(0) & atob_st_i;  ---
		    if (atob_st_reg(1)='1') then              ---滤波---
		    	if (tick_1us_i='1') then
		    		high_cnt<=high_cnt+'1';
		    		if (high_cnt="1001") then
		    			high_cnt<="1001";
		    		    atob_st<='1';
		    		end if;
		        end if;
		        low_cnt<=(others=>'0');
		    else
		    	if (tick_1us_i='1') then
		    		low_cnt<=low_cnt+'1';
		    		if (low_cnt="1001") then
		    			low_cnt<="1001";
		    		    atob_st<='0';
		    		end if;
		        end if;
		        high_cnt<=(others=>'0');
		    end if;
		    
		    atob_st_c<=atob_st;
		    atob_en<='0';
		    if (atob_st='1' and atob_st_c='0') then  ---rising_edge---
		    	atob_en<='1';		    	
		    end if;
		   
		    if (tick_1ms_i='1') then
		    	dog_time<=dog_time+'1';
		    	dog_clr<='1';
		    	if (dog_time=X"FF") then
		    		dog_clr<='0';
		        end if;
		    end if;		    	 
		end if;
	end process;

    imp_tx_data <=imp1_rdata when imp_tx_type=X"01" else
                  imp2_rdata when imp_tx_type=X"02" else 
                  imp3_rdata when imp_tx_type=X"04"	else
                  imp4_rdata when imp_tx_type=X"08" else
                  imp5_rdata when imp_tx_type=X"10" else
                  imp6_rdata when imp_tx_type=X"20" else
                  imp7_rdata when imp_tx_type=X"40" else
                  imp8_rdata when imp_tx_type=X"80" 
                  else (others=>'0');
                  	
imp_renew_wen(0)<=imp_renew_wr and imp_wr_type(0);
imp_renew_wen(1)<=imp_renew_wr and imp_wr_type(1);
imp_renew_wen(2)<=imp_renew_wr and imp_wr_type(2);
imp_renew_wen(3)<=imp_renew_wr and imp_wr_type(3);
imp_renew_wen(4)<=imp_renew_wr and imp_wr_type(4);
imp_renew_wen(5)<=imp_renew_wr and imp_wr_type(5);
imp_renew_wen(6)<=imp_renew_wr and imp_wr_type(6);   
imp_renew_wen(7)<=imp_renew_wr and imp_wr_type(7); 

imp1_ren<=imp_tx_type(0);
imp2_ren<=imp_tx_type(1);
imp3_ren<=imp_tx_type(2);
imp4_ren<=imp_tx_type(3); 
imp5_ren<=imp_tx_type(4);
imp6_ren<=imp_tx_type(5);
imp7_ren<=imp_tx_type(6);
imp8_ren<=imp_tx_type(7);
            --imp_new_waddr<=imp_renew_waddr;             
--pro2:  process(therm_cmd)
--       begin
--       for i in 0 to 21 loop 
--           therm_cmd_o(i) <=therm_cmd(i);          
--       end loop;          
--       end process;
   
cmd1: onoff 
      port map (clk_i 				=>	clk_i,                          
           		rst_i 				=>	rst_i,                          
           		cmd_en_i            =>  tc_a_en(0),
           		tick_1ms_i          =>  tick_1ms_i,
           		cmd_o               =>  tc_a_cmd(0)
           		);
cmd2: onoff 
      port map (clk_i 				=>	clk_i,                          
           		rst_i 				=>	rst_i,                          
           		cmd_en_i            =>  tc_a_en(1),
           		tick_1ms_i          =>  tick_1ms_i,
           		cmd_o               =>  tc_a_cmd(1)
           		);           		
           		
cmd3: onoff 
      port map (clk_i 				=>	clk_i,                          
           		rst_i 				=>	rst_i,                          
           		cmd_en_i            =>  tc_b_en(0),
           		tick_1ms_i          =>  tick_1ms_i,
           		cmd_o               =>  tc_b_cmd(0)
           		);           		

cmd4: onoff 
      port map (clk_i 				=>	clk_i,                          
           		rst_i 				=>	rst_i,                          
           		cmd_en_i            =>  tc_b_en(1),
           		tick_1ms_i          =>  tick_1ms_i,
           		cmd_o               =>  tc_b_cmd(1)
           		);

cmd5: onoff 
      port map (clk_i 				=>	clk_i,                          
           		rst_i 				=>	rst_i,                          
           		cmd_en_i            =>  atob_en,
           		tick_1ms_i          =>  tick_1ms_i,
           		cmd_o               =>  atob_cmd
           		);
           		

--imp_wen_not<=not imp_wen;
--imp_ren_not<=not imp_ren;

RAM0: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_raddr,
                RD    =>imp_rdata,
                WADDR =>imp_waddr,
                WD    =>imp_wdata,
                WEN   =>imp_wen,
                REN   =>imp_renew
               );

RAM1: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp1_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(0),
                REN   =>imp1_ren
               );
RAM2: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp2_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(1),
                REN   =>imp2_ren
               );
RAM3: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp3_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(2),
                REN   =>imp3_ren
               );  
RAM4: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp4_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(3),
                REN   =>imp4_ren
               );               
RAM5: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp5_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(4),
                REN   =>imp5_ren
               ); 
                             
RAM6: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp6_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(5),
                REN   =>imp6_ren
               );               
               
RAM7: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp7_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(6),
                REN   =>imp7_ren
               );                              

RAM8: RAM_1024B
      port map( CLK   =>clk_i,
                RADDR =>imp_tx_raddr,
                RD    =>imp8_rdata,
                WADDR =>imp_renew_waddr,
                WD    =>imp_rdata,
                WEN   =>imp_renew_wen(7),
                REN   =>imp8_ren
               );  
                                                          	
	--ad_addr_o   <= ad_addr;
    can_addr_o  <= can_addr;
	can_wen_o   <= can_wen;
	can_wdata_o <= can_wdata;
	can_ren_o   <= can_ren;
    
    tc_a_cmd_o(0) <= tc_a_cmd(0); 
    tc_a_cmd_o(1) <= tc_a_cmd(1);  
    tc_b_cmd_o(0) <= tc_b_cmd(0); 
    tc_b_cmd_o(1) <= tc_b_cmd(1); 
    
    gps_a_cmd_o   <= gps_a_cmd ; 
    gps_b_cmd_o   <= gps_b_cmd ;  
    atob_cmd_o    <= atob_cmd  ;  
    
    therm_cmd_o<=therm_cmd;
    clj_x_cmd_o<=clj_x_ctrl;
    clj_y_cmd_o<=clj_y_ctrl;
    clj_z_cmd_o<=clj_z_ctrl;
    clj_cmd_o  <=clj_acq;
    --clj_cmd_o  <='0';
    dog_clr_o<=dog_clr; 
    
    tm_ask_o <=tm_ask;
    tm_end_o <=tm_end;
    ram_ren_o<=ram_ren;
    ram_raddr_o<=ram_raddr;
    
    test_o(0)<=imp_len_right;
    test_o(1)<=imp_sum_right;
    test_o(2)<=imp_end;
end Behavioral;