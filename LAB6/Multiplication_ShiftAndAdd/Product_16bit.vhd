----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:31:21 05/04/2022 
-- Design Name: 
-- Module Name:    Multiplier_Result - rtl 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Product_16bit is port (RST : in std_logic ;
                                  clk : in std_logic ;
                                  Multiplier : in std_logic_vector (7 downto 0);
                                  Logic : in std_logic ;
                                  SHIFT : in std_logic ;
                                  Add : in std_logic ;
                                  result : in std_logic_vector (7 downto 0);
                                  C_out : in std_logic ;
                                  in_3 : out std_logic_vector (15 downto 0);
                                  LSB : out std_logic ;
                                  in_2 : out std_logic_vector (7 downto 0));
end Product_16bit;

architecture rtl of Product_16bit is
signal temp_register : std_logic_vector(16 downto 0);
signal temp_Add : std_logic;

begin
process (clk, RST)
	begin
	if RST = '0' then
		temp_register <= (others =>'0'); 
		temp_Add <= '0';
	elsif (clk'event and clk='1') then
		if Logic = '1' then
			temp_register (16 downto 8) <= (others => '0');
			temp_register(7 downto 0) <= Multiplier; 
		end if;
		if Add = '1' then
			temp_Add <= '1';
		end if;
		if SHIFT = '1' then
			if temp_Add = '1' then
				temp_Add <= '0';
				temp_register <= '0' & C_out & result & temp_register (7 downto 1);
			else
				temp_register <= '0' & temp_register (16 downto 1);
			end if;
		end if;
	end if;
 end process;
 in_2 <= temp_register(15 downto 8);
 LSB <= temp_register(0);
 in_3 <= temp_register(15 downto 0);

end rtl;