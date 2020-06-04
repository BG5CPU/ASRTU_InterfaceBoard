-----------------------�ļ�����------------------------------------------------------------------------------------------------------------
-- ��Ȩ(copyright)���й��ռ似���о�Ժ513��
-- ��Ŀ����
-- ģ����: ��λ����ģ��
-- �ļ�����RST_IF
-- ����  ��luanxn
-- ���ܺ��ص����: 
---��ʼ�汾�ͷ���ʱ��: 1.00��2016-11
-------------------------------------------------------------------------------------------------------------------------------------------
-- ������ʷ:
-------------------------------------------------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned."+";
use IEEE.std_logic_unsigned."-";

entity RST_IF is
  port  (     
             rst_i         :   in   std_logic;
             clk_i         :   in   std_logic;   
                                    
             rst_o         :   out  std_logic;
             piu_rst_cnt_o :   out  std_logic_vector(7 downto 0)

         );  
end RST_IF;

architecture rtl of RST_IF is
 
signal   rst_c      :   std_logic;
signal   rst_reg    :   std_logic_vector(3 downto 0); 
signal   hot_en     :   std_logic;
signal   piu_rst_cnt:   std_logic_vector(7 downto 0); 
begin

  
pro1: process(rst_i,clk_i)  
      begin
        if rst_i='0' then
           rst_reg<=(others=>'0');
        elsif rising_edge(clk_i) then
           rst_reg<=rst_reg(2 downto 0) & '1';
--           
--           if (rst_reg(2 downto 1)="01") then
--           	   hot_en<='1';
--           end if;
--           if (hot_en='1') then
--           	   if (rst_reg(2 downto 1)="01") then
--           	       piu_rst_cnt<=piu_rst_cnt+'1';
--           	   end if;
--           end if;
        end if;
      end process;
 piu_rst_cnt_o<=(others=>'0');       
 rst_o  <=rst_reg(3);
end rtl; 