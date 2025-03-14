----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:10:12 05/04/2022 
-- Design Name: 
-- Module Name:    Controller - rtl 
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Controller_unit is port (RST : in std_logic ;
                           clk : in std_logic ;
                           START : in std_logic ;
                           LSB : in std_logic ;
                           Add : out std_logic ;
                           Shift : out std_logic ;
                           LOAD : out std_logic ;
                           Ready : out std_logic);
end Controller_unit;


architecture rtl of Controller_unit is
signal temp_count : std_logic_vector(2 downto 0);
type state_typ is (S0, S1, TEST, ADD_1, SHIFT_1);
signal state : state_typ;

begin
process (clk, RST)
	begin
		if RST='0' then
			state <= S0;
			temp_count <= "000";
		elsif (clk'event and clk='1') then
			case state is
				when S0 =>
					if START = '1' then
						state <= S1;
					else
						state <= S0;
					end if;
				when S1 =>
					state <= TEST;
				when TEST =>
					if LSB = '0' then
						state <= SHIFT_1;
					else
						state <= ADD_1;
					end if;
				when ADD_1 =>
						state <= SHIFT_1;
				when SHIFT_1 =>
						if temp_count = "111" then  
							temp_count <= "000";  
							state <= S0;  
						else
							temp_count <= temp_count + 1; 
							state <= TEST;
						end if;
					end case;
				end if;
			end process;
		Ready <= '1' when state = S0 else '0';
		Add <= '1' when state = ADD_1 else '0';
		Shift <= '1' when state = SHIFT_1 else '0';
		LOAD <= '1' when state = S1 else '0';
end rtl;