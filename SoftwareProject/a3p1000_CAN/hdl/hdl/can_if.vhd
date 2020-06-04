-----------------------文件描述--------------------------------------------------------------------------
-- 版权(copyright)：中国空间技术研究院513所
-- 项目名：中法天文星载荷数据处理计算机
-- 模块名: mcu
-- 作者  : zhangp
-- 功能  : 实现内部信息流的控制
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

entity can_if is
    Port ( 	clk_i 				: 	in  	std_logic;                          ------时钟输入-----
           	rst_i 				: 	in  	std_logic;                          ------复位输入-----
        	
        	-----CAN内部接口-----
        	can_addr_i			:	in		std_logic_vector(6 downto 0);		------SJA1000地址----
        	can_wen_i			:	in		std_logic;							------SJA1000写使能----
        	can_wdata_i			:	in		std_logic_vector(7 downto 0);		------SJA1000写数据----
        	can_ren_i			:	in		std_logic;							------SJA1000读使能----
        	can_rdata_o			:	out		std_logic_vector(7 downto 0);		------SJA1000读数据----
        	can_done_o			:	out		std_logic;							------SJA1000完成信号----    
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
end can_if;

architecture Behavioral of can_if is

signal		wen					:	std_logic;
signal		ren					:	std_logic;

begin
	process (rst_i, clk_i)
	begin
		if (rst_i = '0') then																	----复位值-----            
			cana_addr_o <= (others => '0');
			cana_data_o <= (others => '0');		
			cana_cs_o <= '1';
			cana_wr_o <= '1';
			cana_rd_o <= '1';

			canb_addr_o <= (others => '0');
			canb_data_o <= (others => '0');		
			canb_cs_o <= '1';
			canb_wr_o <= '1';
			canb_rd_o <= '1';

			can_rdata_o <= (others => '0');				
			can_done_o <= '0';
			
			wen <= '0';
			ren <= '0';

		elsif (clk_i' event and clk_i = '1') then			
			can_done_o <= '0';
			
			wen <= can_wen_i;
			ren <= can_ren_i;
			if (can_wen_i = '1') then
				cana_addr_o<= can_addr_i(5 downto 0);
				cana_data_o<= can_wdata_i;
				cana_cs_o  <= can_addr_i(6);
				cana_wr_o  <= can_addr_i(6);	
				cana_rd_o  <= '1';
				
				canb_addr_o<= can_addr_i(5 downto 0);
				canb_data_o<= can_wdata_i;
				canb_cs_o  <= not can_addr_i(6);
				canb_wr_o  <= not can_addr_i(6);		
				canb_rd_o  <= '1';
	        elsif (can_ren_i = '1') then
	        	cana_addr_o<= can_addr_i(5 downto 0);
				cana_data_o<= can_wdata_i;
				cana_cs_o  <= can_addr_i(6);
				cana_rd_o  <= can_addr_i(6);	
				cana_wr_o  <= '1';
				
				canb_addr_o<= can_addr_i(5 downto 0);
				canb_data_o<= can_wdata_i;
				canb_cs_o  <= not can_addr_i(6);
				canb_rd_o  <= not can_addr_i(6);		
				canb_wr_o  <= '1';				
			else
				cana_cs_o <= '1';
				cana_wr_o <= '1';
				cana_rd_o <= '1';
				canb_cs_o <= '1';
				canb_wr_o <= '1';	
				canb_rd_o <= '1';							
			end if;
			
			if (wen = '1') then
				can_done_o <= '1';
			end if;

			
			if (ren = '1') then
				if (can_addr_i(6) = '0') then
					can_rdata_o <= cana_data_i;
				else
					can_rdata_o <= canb_data_i;
				end if;
				
				can_done_o <= '1';
			end if;
			
        end if;
	end process;

end Behavioral;