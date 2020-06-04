-----------------------文件描述--------------------------------------------------------------------------
-- 版权(copyright)：CAST 513
-- 项目名：
-- 模块名: tick
-- 作者  : zhangp
-- 功能  : 实现定时脉冲的输出
-- 初始版本和发布时间: 1.10,2014.02
---------------------------------------------------------------------------------------------------------
-- 更改历史:
---------------------------------------------------------------------------------------------------------
-- 更改版本和更改时间：
-- 更改人员：
-- 更改描述:                          
---------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tick is
    Port ( 	clk_i 					: 	in  	std_logic;                          ------时钟输入-----
           	rst_i 					: 	in  	std_logic;                          ------复位输入-----
        	
        	-----内部接口-----
        	tick_1us_o				:	out		std_logic;
        	tick_1ms_o				:	out		std_logic;							------1ms定时脉冲输出----
        	tick_1s_o				:	out		std_logic							------1s定时脉冲输出----
        );
end tick;

architecture Behavioral of tick is
signal		scaler_1us	:	std_logic_vector(5 downto 0);							------分频器-----
signal		tick_1us	:	std_logic;

signal		scaler_1ms	:	std_logic_vector(9 downto 0);							------分频器-----
signal		tick_1ms	:	std_logic;

signal		scaler_1s	:	std_logic_vector(9 downto 0);
signal		tick_1s  	:	std_logic;      

begin
	process (rst_i, clk_i)
	begin
		if (rst_i = '0') then		
			scaler_1us <= (others => '0');												----复位值-----
			scaler_1ms <= (others => '0');
			scaler_1s  <= (others => '0');
			tick_1us   <= '0';
			tick_1ms   <= '0';
			tick_1s    <= '0';

		elsif (clk_i' event and clk_i = '1') then	
		    if (scaler_1us = "100111") then
				scaler_1us <= (others => '0');
				tick_1us <= '1';
			else
                scaler_1us <= scaler_1us + 1;
				tick_1us <= '0';
			end if;
			
			tick_1ms <= '0';
			if (tick_1us='1') then
				scaler_1ms <= scaler_1ms + 1;
				if (scaler_1ms="1111100111") then
					scaler_1ms <= (others=>'0');	
					tick_1ms   <= '1';
			    end if;
			end if;
			
			tick_1s <= '0';							
			if (tick_1ms='1') then
				scaler_1s <= scaler_1s + 1;
				if (scaler_1s="1111100111") then
					scaler_1s <= (others=>'0');	
					tick_1s   <= '1';
			    end if;
			end if;
			

		end if;
	end process;
	tick_1ms_o <= tick_1ms;
	tick_1s_o  <= tick_1s;
	tick_1us_o <= tick_1us;
end Behavioral;