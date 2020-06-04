----------------------------------------------------------------------------------------
-- 版权(copyright):  CAST
-- 项目名:           
-- 模块名:           AD_IF
-- 文件名:           AD_IF.vhd
-- 作者  ：
-- 功能和特点概述：  
-- 初始版本发布时间：1.00,201806
----------------------------------------------------------------------------------------
-- 更改历史:
----------------------------------------------------------------------------------------
-- 更改版本和更改时间：2018.09.12
-- 更改人员：luanxn
-- 更改描述：24路太敏增加系数
---------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";


entity AD_ACQ is
  port  ( rst_i          :   in      std_logic ;  
          clk_i          :   in      std_logic ;   ---40M--     
          init_end_i     :   in      std_logic ;      
          tick_1ms_i     :   in      std_logic ;    
          tick_1us_i     :   in      std_logic ;     
          tm_ask_i       :   in      std_logic ;   ---遥测查询请求---
          tm_end_i       :   in      std_logic ;
          ad_ren_i       :   in      std_logic ;
          ad_raddr_i     :   in      std_logic_vector(6 downto 0) ;
          ad_rdata_o     :   out     std_logic_vector(11 downto 0) ; ---AD RAM存储的数据---
          
          ad_data_i      :   in      std_logic_vector(11 downto 0) ;          
          ad_done_i      :   in      std_logic ;          
          ad_en_o        :   out     std_logic ;
          acq_end_o      :   out     std_logic ;
          ad_addr_o      :   out     std_logic_vector(3 downto 0) ;          
          hi_addr_o      :   out     std_logic_vector(3 downto 0) ;
          
          clj_cmd_i      :   in      std_logic ;   ---启动采集---
          clj_acq_end_o  :   out     std_logic ;
          clj_x_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_y_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_z_pos_o    :   out     std_logic_vector(11 downto 0) ;
          clj_x_neg_o    :   out     std_logic_vector(11 downto 0) ;
          clj_y_neg_o    :   out     std_logic_vector(11 downto 0) ;
          clj_z_neg_o    :   out     std_logic_vector(11 downto 0) ;
          test_o         :   out     std_logic_vector(7 downto 0)
          
         );  
end AD_ACQ;

architecture rtl of AD_ACQ is
  component RAM_128X12 is
  port  ( 
          CLK          :   in      std_logic ;   ---40M--
          RD           :   out     std_logic_vector(11 downto 0); 
          RADDR        :   in      std_logic_vector(6 downto 0); 
          WADDR        :   in      std_logic_vector(6 downto 0); 
          WD           :   in      std_logic_vector(11 downto 0); 
          WEN          :   in      std_logic;
          REN          :   in      std_logic
        );
  end component;
   
  type acq_fsm is (st1,st2,st3,st4,st5); 
  signal   acq_en       :     std_logic; 
  signal   ad_en        :     std_logic;
  signal   acq_cycle    :     std_logic_vector(7 downto 0);  
  signal   max_reg      :     std_logic_vector(11 downto 0);
  signal   min_reg      :     std_logic_vector(11 downto 0);
  signal   ad_sum       :     std_logic_vector(13 downto 0);  
  signal   time_cnt     :     std_logic_vector(7 downto 0); 
  --signal   wait_time    :     std_logic_vector(7 downto 0); 
  signal   hi_addr      :     std_logic_vector(3 downto 0); 
  signal   ad_addr      :     std_logic_vector(3 downto 0); 
  signal   acq_cnt      :     std_logic_vector(2 downto 0); 
  signal   ram_wen      :     std_logic;
  signal   ram_wen_c1   :     std_logic;
  signal   ram_wen_c2   :     std_logic;
  signal   ram_wdata    :     std_logic_vector(11 downto 0);
  signal   ram_waddr    :     std_logic_vector(6 downto 0);
  signal   ram_sel      :     std_logic;
  signal   ram1_raddr   :     std_logic_vector(6 downto 0);
  signal   ram2_raddr   :     std_logic_vector(6 downto 0);
  signal   ram1_rdata   :     std_logic_vector(11 downto 0);
  signal   ram2_rdata   :     std_logic_vector(11 downto 0);
  signal   ram1_wen     :     std_logic;
  signal   ram2_wen     :     std_logic;
  signal   ram1_ren     :     std_logic;
  signal   ram2_ren     :     std_logic;
  signal   cnt          :     std_logic_vector(1 downto 0);
  signal   tm_pro       :     std_logic;
  signal   acq_state    :     acq_fsm;
  signal   acq_end      :     std_logic;
  signal   acq_pro      :     std_logic;
  signal   clj_cmd      :     std_logic;
  signal   clj_acq_pro  :     std_logic;
  signal   clj_acq_en   :     std_logic;
  signal   clj_tick     :     std_logic;
  signal   clj_x_pos    :     std_logic_vector(11 downto 0);
  signal   clj_y_pos    :     std_logic_vector(11 downto 0);
  signal   clj_z_pos    :     std_logic_vector(11 downto 0);
  signal   clj_x_neg    :     std_logic_vector(11 downto 0);
  signal   clj_y_neg    :     std_logic_vector(11 downto 0);
  signal   clj_z_neg    :     std_logic_vector(11 downto 0);
  signal   clj_acq_end  :     std_logic;
  signal   ad_addr_note :     std_logic_vector(3 downto 0);
  signal   hi_addr_note :     std_logic_vector(3 downto 0);
  signal   acq_phase_note:     std_logic_vector(2 downto 0);
  signal   acq_phase    :     std_logic_vector(2 downto 0);
  signal   fsm_st       :     std_logic_vector(2 downto 0);
  signal   clj_mode     :     std_logic_vector(1 downto 0);
  signal   test_c       :     std_logic;
  signal   test_data1   :     std_logic_vector(11 downto 0);
  
  --attribute syn_radhardlevel          :     string;
  --attribute syn_radhardlevel of high_width,low_width :   signal is "tmr";


begin	 
 

pro1:process(rst_i,clk_i)
     variable ad_reg    :     std_logic_vector(12 downto 0);
     begin    
     --if (rst_i='0' or init_end_i='0') then 
     if (rst_i='0') then 
     	 acq_en    <='0';
     	 ad_en     <='0';
         acq_cycle <=(others=>'0');
         max_reg   <=(others=>'0');
         min_reg   <=(others=>'0');
         ad_sum    <=(others=>'0');
         time_cnt  <=(others=>'0');   
         --wait_time <=X"63";      
         hi_addr   <=(others=>'0');
         ad_addr   <=(others=>'0');
         acq_cnt   <=(others=>'0');
         ram_wen   <='0';
         ram_wen_c1<='0';
         ram_wen_c2<='0';
         ram_wdata <=(others=>'0');
         ram_waddr <=(others=>'0');
         ram_sel   <='0';        
         cnt       <=(others=>'0');
         tm_pro    <='0';
         acq_state <=st1;
         acq_end   <='0';
         acq_pro   <='0';
         clj_acq_pro<='0';
         clj_acq_en<='0'; 
         clj_tick  <='0'; 
         clj_x_pos <=(others=>'0');
         clj_y_pos <=(others=>'0');
         clj_z_pos <=(others=>'0');
         clj_x_neg <=(others=>'0');
         clj_z_neg <=(others=>'0');
         clj_y_neg <=(others=>'0');
         clj_acq_end<='0';
         clj_cmd     <='0';
         hi_addr_note<=(others=>'0');
         ad_addr_note<=(others=>'0');
         acq_phase   <=(others=>'0');
         acq_phase_note<=(others=>'0');
         fsm_st      <=(others=>'0');
         clj_mode    <=(others=>'0');
         test_c      <='0';
         test_data1  <=(others=>'0');
	 elsif(clk_i'event and clk_i='1')then
	 
	     if (tick_1ms_i='1') then
	         acq_cycle<=acq_cycle+'1';
	         if (acq_cycle=X"63") then ---100ms
	         	 acq_cycle<=(others=>'0');
	             acq_en <='1';             
	         end if;
	     end if;
	     
	     ad_en   <='0';
	     ram_wen <='0';
	     clj_tick<='0';
	     
	     if (clj_cmd_i='1') then
	     	 clj_acq_en<='1';	     	 
	     end if;
	      
	     case acq_state is                 ---没采磁力距器---
	         when st1 =>
	             time_cnt<=(others=>'0');
	             ad_sum  <=(others=>'0');
	             acq_cnt <=(others=>'0');
	             acq_phase<=(others=>'0');
	             fsm_st  <="000";
	             --wait_time<=X"63"; ---100US	
	             if (clj_acq_en='1') then 
	             	 clj_acq_en <='0';  
	             	 clj_acq_pro<='1';
	             	 clj_mode   <="01";
	                 acq_state  <=st2;      
	                 hi_addr    <="0010";
	                 ad_addr    <="0010";        ---磁力距-- 
	             else
	             	 if (acq_en='1' and clj_cmd_i='0') then
	             	     acq_en   <='0';
	             	     acq_pro  <='1';
	                     acq_state<=st2;
	                     hi_addr  <="0000";        ---先从磁强计开始---
	                     ad_addr  <="0101";
	                     ram_waddr<=(others=>'0');	          
	                 end if;
	             end if;
	         when st2=>
	             fsm_st  <="001";
	             ad_sum  <=(others=>'0');
	             if (clj_acq_en='1') then                      ----如果有磁力距采集指令---
	                 clj_acq_en <='0';  
	             	 clj_acq_pro<='1';
	             	 clj_mode   <="10";
	             	 hi_addr    <="0010";
	                 ad_addr    <="0010";	                
	                 if (acq_pro='1'and clj_acq_pro='0') then
                         hi_addr_note<=hi_addr;                     ----记录之前AD采集的地址(注意st1刚跳转到st2时)---
 	                     ad_addr_note<=ad_addr;
            	         acq_phase_note<=acq_phase;	    
	                 end if;   
	             end if;	             
	             if (tick_1us_i='1') then
	                 time_cnt<=time_cnt+'1';
	                 if (time_cnt=X"FF") then         ---等待通道建立256us---     
	                 --if (time_cnt=wait_time) then        
	                     time_cnt<=(others=>'0');
	                     acq_state<=st3;
	                     ad_en <='1';
	                 end if;
	             end if;
	             
	         when st3=>   
	             fsm_st  <="010";
	             time_cnt<=(others=>'0'); 
	             if (ad_done_i='1') then
	                 acq_cnt<=acq_cnt+'1';
	                 acq_state<=st4;
	                 case acq_cnt is
	     	 	         when "000" =>
	     	 	             max_reg<=ad_data_i;
	     	 	             min_reg<=ad_data_i;
                         when "001" =>
                             if (max_reg >ad_data_i) then
                             	 min_reg<=ad_data_i;
                             else
                             	 max_reg<=ad_data_i;
                             end if;
	                     when "010"|"011" | "100"=>
	                         if (max_reg <ad_data_i) then
	                         	 max_reg<=ad_data_i ;
	                         	 ad_sum <=ad_sum + max_reg;
	                         elsif(min_reg >ad_data_i) then
	                         	  min_reg<=ad_data_i; 
	                         	  ad_sum <=ad_sum + min_reg;
	                         else
	                         	  ad_sum <=ad_sum + ad_data_i; 
	                         end if;
	                     when "101" =>
	                         if (max_reg <ad_data_i) then
	                         	 max_reg<=ad_data_i ;
	                         	 ad_sum <=ad_sum + max_reg;
	                         elsif(min_reg >ad_data_i) then
	                         	  min_reg<=ad_data_i; 
	                         	  ad_sum <=ad_sum + min_reg;
	                         else
	                         	  ad_sum <=ad_sum + ad_data_i; 
	                         end if;
	                         acq_cnt<=(others=>'0');
	                         acq_state<=st5;
	                     when others =>
	                         acq_cnt<=(others=>'0');
	                 end case;
	             end if;
	             
	         when st4 =>
	             fsm_st  <="011";
	             if (tick_1us_i='1') then
	                 time_cnt<=time_cnt+'1';
	                 if (time_cnt=X"31") then                       ---单个通道两次采集之间等待50us---          
	                     time_cnt<=(others=>'0');
	                     acq_state<=st3;
	                     ad_en <='1';
	                 end if;
	             end if;
	             	             
	         when st5 =>
	             fsm_st  <="100";
	             ad_sum  <=(others=>'0');
	             acq_state<=st2;	                 
	             if (clj_acq_pro='0') then
	                 ram_wen  <='1';
	                 ram_wdata<=ad_sum(13 downto 2);
                     hi_addr  <=hi_addr +'1';
                     
                     if (acq_phase="000") then           ---第1阶段---
                         if (hi_addr="0101" and ad_addr="0101") then
                             hi_addr<="1000";
	                 	     ad_addr<="0010";
	                 	     acq_phase<="001";
	                 	 end if;
                     elsif (acq_phase="001") then
                     	 if (hi_addr="1111" and ad_addr="0010") then           ----hi="1000",ad="0010":太阳敏1_1----
	                         hi_addr<="0000";
	                 	     ad_addr<="0011";
	                 	 end if;
                     	 if (hi_addr="1111" and ad_addr="0011") then           ----hi="1111",ad="0011":太阳敏6_4---
	                         hi_addr<="0000";
	                 	     ad_addr<="0000";
	                 	     acq_phase<="010";
	                 	 end if;
	                 	 if (ad_addr="0010") then 
	                 	     case hi_addr is 
	                 	         when "1000" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"00E"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1001" =>
	                 	             ram_wdata<=ad_sum(13 downto 2);
	                 	         when "1010" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"006"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1011" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"013"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1100" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"00F"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1101" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"00C"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1110" =>
	                 	             ram_wdata<=ad_sum(13 downto 2);
	                 	         when "1111" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"012"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when others => 
	                 	             ram_wdata<=ad_sum(13 downto 2);
	                 	     end case;
	                 	 end if;
	                 	 if (ad_addr="0011") then 
	                 	     case hi_addr is 
	                 	         when "0000" =>   
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"010"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "0001" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"003"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "0010" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"005"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "0011" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"004"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "0100" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"003"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "0101" =>
	                 	             ram_wdata<=ad_sum(13 downto 2); 
	                 	         when "0110" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"007"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "0111" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"006"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1000" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"009"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1001" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"008"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1010" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"007"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1011" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"001"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1100" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"00A"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1101" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"00C"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when "1110" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))-('0' & X"005"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"000";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if;
	                 	         when "1111" =>
	                 	             ad_reg:=('0' & ad_sum(13 downto 2))+('0' & X"00A"); 
	                 	             if (ad_reg(12)='1') then
	                 	                 ram_wdata<=X"FFF";
	                 	             else   	                 	             
	                 	                 ram_wdata<=ad_reg(11 downto 0); 
	                 	             end if; 
	                 	         when others => null;
	                 	     end case;
	                 	 end if;    
                     elsif (acq_phase="010") then
                     	 if (hi_addr="1111" and ad_addr="0000") then           
	                         hi_addr<="0000";
	                 	     ad_addr<="0001";
	                 	 end if;
                     	 if (hi_addr="1111" and ad_addr="0001") then           
	                         hi_addr<="0000";
	                 	     ad_addr<="0010";
	                 	 end if; 	
                     	 if (hi_addr="0001" and ad_addr="0010") then           
	                         hi_addr<="0000";
	                 	     ad_addr<="0100";
	                 	     acq_phase<="011";
	                 	 end if; 
	                 elsif (acq_phase="011") then
                     	 if (hi_addr="1111" and ad_addr="0100") then           
	                         hi_addr<="0110";
	                 	     ad_addr<="0101";
	                 	     acq_phase<="100";
	                 	 end if; 	 
	                 elsif (acq_phase="100") then
	                 	 if (hi_addr="0111") then
	                 	 	 test_data1<=ad_sum(13 downto 2);
	                 	 end if;
	                 	 
                     	 if (hi_addr="1000" and ad_addr="0101") then           
	                 	     hi_addr  <="0000";        ---先从磁强计开始---
	                         ad_addr  <="0101";
	                         acq_phase<="000";
	                         acq_state<=st1;
	                         acq_end  <='1';
	                         acq_pro  <='0';
	                         if (test_data1=ad_sum(13 downto 2)) then
	                         	 test_c<='1';
	                         else
	                         	 test_c<='0';
	                         end if;
	                 	 end if;   	 
	                 else
	                	 hi_addr  <="0000";        ---先从磁强计开始---
	                     ad_addr  <="0101"; 	
	                     acq_state<=st1;
	                     acq_pro  <='0'; 
	                 end if;
                     
	             else
	             	 hi_addr <=hi_addr +'1';
	             	 ad_addr <="0010";
	             	 clj_mode  <="11";
	             	 if (hi_addr="0010") then
	             	 	 clj_x_pos<=ad_sum(13 downto 2);
	             	 end if;
	             	 if (hi_addr="0011") then
	             	 	 clj_x_neg<=ad_sum(13 downto 2);	             	 	 
	             	 end if;
	             	 if (hi_addr="0100") then
	             	 	 clj_y_pos<=ad_sum(13 downto 2);
	             	 end if;
	             	 if (hi_addr="0101") then
	             	 	 clj_y_neg<=ad_sum(13 downto 2);	             	 	 
	             	 end if;
	             	 if (hi_addr="0110") then
	             	 	 clj_z_pos<=ad_sum(13 downto 2);
	             	 end if;
	             	 if (hi_addr="0111") then
	             	 	 clj_z_neg<=ad_sum(13 downto 2);	 
	             	 	 clj_tick<='1';   
	             	 	 acq_state<=st1;   
	             	 	 clj_acq_pro<='0';     
	             	 	 if (acq_pro='1') then
	             	 	     hi_addr <=hi_addr_note;
	             	 	     ad_addr <=ad_addr_note; 	
	             	 	     acq_phase<=acq_phase_note;
	             	 	     acq_state<=st2;   
	             	 	 end if; 	 
	             	 end if;
	             end if;
	         when others =>
	             acq_state<=st1;
	     end case;
  
	     if (acq_end='1') then
	         cnt<=cnt+'1';
	         if (cnt="11") then
	         	 cnt<=(others=>'0');
	         	 acq_end <='0';
	         	 if (tm_ask_i='0' and tm_pro='0') then ---如果mcu模块正在组遥测帧,则暂不切换RAM---
	         	     ram_sel <=not ram_sel;            ---切换RAM---
	         	 end if;         	 
	         end if;
	     end if;
	     
	     clj_acq_end<=clj_tick;
	     ------------------

 	     ram_wen_c1<=ram_wen ;
 	     ram_wen_c2<=ram_wen_c1;
 	     if (ram_wen_c2='1') then
 	     	 ram_waddr<=ram_waddr+'1';
 	     end if;
 	     
 	     if (tm_ask_i='1') then
 	     	 tm_pro<='1';
 	     end if;

 	     if (tm_end_i='1') then
 	     	 tm_pro<='0';
 	     end if;	              	  
     end if;
     
     end process; 
     
ad_en_o   <=ad_en;     
ad_addr_o <=ad_addr;
hi_addr_o <=hi_addr;
clj_acq_end_o<=clj_acq_end;

clj_x_neg_o<=clj_x_neg;
clj_y_neg_o<=clj_y_neg;
clj_z_neg_o<=clj_z_neg;
clj_x_pos_o<=clj_x_pos;
clj_y_pos_o<=clj_y_pos;
clj_z_pos_o<=clj_z_pos;

acq_end_o  <=acq_end;
test_o(2 downto 0)<=acq_phase ;
test_o(3)<=clj_acq_pro;
test_o(4)<=test_c;
test_o(7 downto 5)<=fsm_st(2 downto 0);

ad_rdata_o<=ram1_rdata when ram_sel='1' else ram2_rdata;   
ram1_raddr<=ad_raddr_i when ram_sel='1' else "0000000";
ram2_raddr<=ad_raddr_i when ram_sel='0' else "0000000";	
	
ram1_wen  <=ram_wen when ram_sel='0' else '0';	
ram2_wen  <=ram_wen when ram_sel='1' else '0';	     

--ram1_ren  <=ad_ren_i when ram_sel='1' else '0';	
--ram2_ren  <=ad_ren_i when ram_sel='0' else '0';	  
ram1_ren  <=ram_sel;
ram2_ren  <=NOT ram_sel;


		
RAM1: RAM_128X12
      port map( CLK   =>clk_i,
                RADDR =>ram1_raddr,
                RD    =>ram1_rdata,
                WADDR =>ram_waddr,
                WD    =>ram_wdata,
                WEN   =>ram1_wen,
                REN   =>ram1_ren
               );
               
RAM2: RAM_128X12
      port map( CLK   =>clk_i,
                RADDR =>ram2_raddr,
                RD    =>ram2_rdata,
                WADDR =>ram_waddr,
                WD    =>ram_wdata,
                WEN   =>ram2_wen,
                REN   =>ram2_ren   
               );               
    

end;