----------------------------------------------------------------------------------------
-- 版权(copyright):  CAST
-- 项目名:           
-- 模块名:           AD_Comp
-- 文件名:           AD_Comp.vhd
-- 作者  ：
-- 功能和特点概述：  AD型号为TLV2548,Tconv=(min:2.8us;typ:3.5us;max:3.86)
--                   共采集89路
-- 初始版本发布时间：1.00,201806
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


entity AD_Comp is
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
end AD_Comp;

architecture rtl of AD_Comp is
  type ad_fsm is (st1,st2,st3,st4,st5); 
   
  signal   scaler       :     std_logic_vector(3 downto 0); 
  signal   ad_reg       :     std_logic_vector(15 downto 0); 
  signal   config_reg   :     std_logic_vector(15 downto 0); 
  signal   ad_csn       :     std_logic;
  signal   ad_clk       :     std_logic;
  signal   ad_clk_c     :     std_logic;
  signal   ad_acq       :     std_logic;
  signal   init_end     :     std_logic; 
  signal   wbit_cnt     :     std_logic_vector(4 downto 0); 
  signal   rbit_cnt     :     std_logic_vector(4 downto 0); 
  signal   cnt          :     std_logic_vector(2 downto 0); 
  signal   ad_done      :     std_logic;
  signal   ad_done_c    :     std_logic;
  signal   ad_state     :     ad_fsm;
  signal   eoc_filter   :     std_logic_vector(3 downto 0);
  signal   eoc_st       :     std_logic;
  signal   acq_cnt      :     std_logic_vector(2 downto 0);
  signal   eoc_test     :     std_logic;
  
  attribute syn_radhardlevel          :     string;
  --attribute syn_radhardlevel of high_width,low_width :   signal is "tmr";
  --attribute syn_radhardlevel of filter_sig           :   signal is "tmr";

begin	 

start_o<='1';   

pro1:process(rst_i,clk_i)
     begin    
     if (rst_i='0') then 
     	 scaler    <=(others=>'0');
     	 ad_reg    <=(others=>'0');
     	 config_reg<=(others=>'0');
     	 ad_csn    <='1';
     	 ad_clk    <='0'; 
     	 ad_clk_c  <='0'; 
     	 ad_acq    <='0';
     	 init_end  <='0';
     	 wbit_cnt  <=(others=>'0');           
         rbit_cnt  <=(others=>'0');
         cnt       <=(others=>'0');
     	 ad_done   <='0';
     	 ad_done_c <='0';
     	 ad_state  <=st1;
         eoc_filter<=(others=>'1');
         eoc_st    <='0';  
         ad_data_o <=(others=>'0');  
         acq_cnt   <=(others=>'0');  
         eoc_test  <='0';    
	 elsif(clk_i'event and clk_i='1')then
	     ad_done<='0';
	      
	     scaler<=scaler+'1';
	     if (scaler="1111") then
	         ad_clk<=not ad_clk;
	         scaler<=(others=>'0');
	     end if;
	     
--	     if (acq_end_i='1') then    ---采集完成后重新初始化AD---
--	     	 init_end<='0';
--	     end if;
--	     
	     ad_clk_c<=ad_clk;

	     case ad_state is	           
	         when st1 => 
	             wbit_cnt<=(others=>'0');
	             rbit_cnt<=(others=>'0');
	             cnt     <=(others=>'0');
	             ad_csn  <='1';
	             if (init_end ='0')then	             	 
	             	 ad_state<=st2;
	             	 ad_acq  <='0';
	             elsif (ad_en_i='1') then
	      	         ad_state<=st2;	
	      	         ad_acq  <='1';    
	      	         acq_cnt <= acq_cnt+'1'; 	       
	             end if;
	             
	         when st2  =>
	             if (ad_clk_c='1' and ad_clk='0') then
	             	 if (ad_acq='0') then
	             	     --config_reg<=X"A004";
	             	     config_reg<=X"A204";
	             	     init_end  <='1';
	             	 else
	             	  	 config_reg<=ad_addr_i & X"000";
	             	 end if;
	                 ad_state<=st3;
	                 ad_csn<='0';
	             end if;
	         
	         when st3  =>
	             if (ad_clk_c='1' and ad_clk='0') then          ---falling edge
	                 wbit_cnt<=wbit_cnt+'1';
	                 config_reg<=config_reg(14 downto 0) & '0';
	                 --if (wbit_cnt="10001") then
	                 if (wbit_cnt="11100") then
	                 	 ad_csn  <='1';
	                 	 wbit_cnt<=(others=>'0');
	                 	 if (ad_acq='0') then
	                 	     ad_state<=st1;
	                 	 else
	                 	  	 ad_state<=st4;
	                 	 end if;
	                 end if;
	             end if;
	             cnt<=(others=>'0');
	         when st4 =>
                  eoc_filter<= eoc_filter(2 downto 0) & ad_eoc_i;
                  if (eoc_filter(3 downto 2) = "01" )then
                  	  eoc_st  <='1';
                  	  eoc_test<='0';
                  end if;
                  if (tick_1us_i='1') then   ---超时---
                  	  cnt<=cnt+'1';
                  	  if (cnt="111") then
                  	  	  cnt<=(others=>'0');
                  	  	  eoc_st<='1';
                  	  	  eoc_test<='1';
                  	  end if;
                  end if;
                  if (eoc_st='1' and ad_clk_c='1' and ad_clk='0') then  ---falling edge
                  	  eoc_st<='0'; 
                      rbit_cnt<=(others=>'0');
                      cnt     <=(others=>'0');
                      ad_csn  <= '0';
                      ad_state<=st5;                     
                      config_reg<= X"E000";  
                  end if;                                      
	          
	         when st5 =>
	             if (ad_clk_c='1' and ad_clk='0') then   ---falling edge
                     config_reg<=config_reg(14 downto 0) & '0';
                 end if;
                 if (ad_clk_c='0' and ad_clk='1') then  ---rising edge
                 	 rbit_cnt<= rbit_cnt + '1';
                 	 if (rbit_cnt = "10000")then
                 	  	 ad_state<=st1;
                 	  	 rbit_cnt<=(others=>'0');
                 	  	 ad_done<='1';
                 	  	 ad_acq <='0';
                 	 else
                 	 	 ad_reg<=ad_reg(14 downto 0) & ad_sdo_i;
                 	 end if;
                 end if;
             when others =>
                 ad_state<=st1;
         end case;
               
	     if (ad_done='1') then
	         ad_data_o<=ad_reg(15 downto 4); 	            
	     end if;    
	       
	     ad_done_c<=ad_done;     	              	  
     end if;
     
     end process; 
         
 ad_sdi_o <=config_reg(15);
 ad_csn_o <=ad_csn;
 ad_sclk_o<=ad_clk;
 ad_done_o<=ad_done_c;
 init_end_o<=init_end;
 test_o<=eoc_test;
end;
