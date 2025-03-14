----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:23:07 05/13/2022 
-- Design Name: 
-- Module Name:    contoroll - Behavioral 
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
entity contoroll is port( Select_parametr: in STD_LOGIC_VECTOR(1 downto 0);
	                         clk :in STD_LOGIC;
			                   Reset: in STD_LOGIC;
	                         Q : out  STD_LOGIC_VECTOR (3 downto 0);
                            SR : in  STD_LOGIC;
                            SL : in  STD_LOGIC;
                            load : in  STD_LOGIC;
                            input_4bit : in  STD_LOGIC_VECTOR (3 downto 0));
end contoroll;

architecture behavioural of contoroll is
	signal reg_middle : STD_LOGIC_VECTOR(3 downto 0);
	--signal sign_bit : std_logic;
begin
	process (clk)
	begin
		if Reset = '1' then
			reg_middle <= "0000";
		elsif rising_edge(clk)  then
			if load = '1' then
				reg_middle <= input_4bit;
			else
				case Select_parametr is
					when "00" =>
					null;
					when "01" => 
						reg_middle(3 downto 1) <= reg_middle(2 downto 0);
						reg_middle(0) <= SR;
					when "10" => 
						reg_middle(2 downto 0) <= reg_middle(3 downto 1);
						reg_middle(3) <= SL;
					when "11" => 
					    reg_middle <= input_4bit;
						--internal_reg(2 downto 0) <= internal_reg(3 downto 1);
						--internal_reg(3) <= '0';
					when others => null;
				end case;
			end if;
		end if;
		Q <= reg_middle;
	end process;
end behavioural;

