-----------------------�ļ�����--------------------------------------------------------------------------
-- ��Ȩ(copyright)���й��ռ似���о�Ժ513��
-- ��Ŀ�����з��������غ����ݴ�������
-- ģ����: mcu
-- ����  : zhangp
-- ����  : ʵ���ڲ���Ϣ���Ŀ���
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

entity can_if is
    Port ( 	clk_i 				: 	in  	std_logic;                          ------ʱ������-----
           	rst_i 				: 	in  	std_logic;                          ------��λ����-----
        	
        	-----CAN�ڲ��ӿ�-----
        	can_addr_i			:	in		std_logic_vector(6 downto 0);		------SJA1000��ַ----
        	can_wen_i			:	in		std_logic;							------SJA1000дʹ��----
        	can_wdata_i			:	in		std_logic_vector(7 downto 0);		------SJA1000д����----
        	can_ren_i			:	in		std_logic;							------SJA1000��ʹ��----
        	can_rdata_o			:	out		std_logic_vector(7 downto 0);		------SJA1000������----
        	can_done_o			:	out		std_logic;							------SJA1000����ź�----    
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
		if (rst_i = '0') then																	----��λֵ-----            
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