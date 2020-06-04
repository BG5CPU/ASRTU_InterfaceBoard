-----------------------�ļ�����--------------------------------------------------------------------------
-- ��Ȩ(copyright)��513
-- ��Ŀ����
-- ģ����: onoff_cmd
-- ����  : 
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

entity onoff is
    Port ( 	clk_i 					: 	in  	std_logic;                          ------ʱ������-----
           	rst_i 					: 	in  	std_logic;                          ------��λ����-----

        	cmd_en_i				:	in		std_logic;
        	tick_1ms_i				:	in		std_logic;							
        	cmd_o  				    :	out		std_logic							
        );
end onoff;

architecture Behavioral of onoff is
signal		cmd_width	:	std_logic_vector(7 downto 0);							------��Ƶ��-----
signal		cmd_send	:	std_logic;

begin
	process (rst_i, clk_i)
	begin
		if (rst_i = '0') then		
			cmd_width  <= (others => '0');
			cmd_send    <= '0';

		elsif (clk_i' event and clk_i = '1') then	
		    if (cmd_en_i='1') then
		    	cmd_send<='1';
		    end if;
		    
		    if (cmd_send='1') then
		    	if (tick_1ms_i='1') then
				    cmd_width<=cmd_width+'1';
				    if (cmd_width=X"9F") then
				    	cmd_width<=(others=>'0');
				        cmd_send<='0';
				    end if;
				end if;
		    end if;
						
		end if;
	end process;
	cmd_o <= cmd_send;

end Behavioral;