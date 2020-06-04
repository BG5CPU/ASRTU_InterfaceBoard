-----------------------�ļ�����--------------------------------------------------------------------------
-- ��Ȩ(copyright)��CAST 513
-- ��Ŀ����
-- ģ����: tick
-- ����  : zhangp
-- ����  : ʵ�ֶ�ʱ��������
-- ��ʼ�汾�ͷ���ʱ��: 1.10,2014.02
---------------------------------------------------------------------------------------------------------
-- ������ʷ:
---------------------------------------------------------------------------------------------------------
-- ���İ汾�͸���ʱ�䣺
-- ������Ա��
-- ��������:                          
---------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tick is
    Port ( 	clk_i 					: 	in  	std_logic;                          ------ʱ������-----
           	rst_i 					: 	in  	std_logic;                          ------��λ����-----
        	
        	-----�ڲ��ӿ�-----
        	tick_1us_o				:	out		std_logic;
        	tick_1ms_o				:	out		std_logic;							------1ms��ʱ�������----
        	tick_1s_o				:	out		std_logic							------1s��ʱ�������----
        );
end tick;

architecture Behavioral of tick is
signal		scaler_1us	:	std_logic_vector(5 downto 0);							------��Ƶ��-----
signal		tick_1us	:	std_logic;

signal		scaler_1ms	:	std_logic_vector(9 downto 0);							------��Ƶ��-----
signal		tick_1ms	:	std_logic;

signal		scaler_1s	:	std_logic_vector(9 downto 0);
signal		tick_1s  	:	std_logic;      

begin
	process (rst_i, clk_i)
	begin
		if (rst_i = '0') then		
			scaler_1us <= (others => '0');												----��λֵ-----
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