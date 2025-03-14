----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:43:09 03/10/2022 
-- Design Name: 
-- Module Name:    T_Flip_Flop - Behavioral 
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

entity T_Flip_Flop is
    Port ( T : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           CLOCK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end T_Flip_Flop;

architecture Behavioral of T_Flip_Flop is

begin
process(CLOCK, reset)
	variable item: std_logic;
		begin
		if (reset = '0') then item := '0';
		elsif (rising_edge(CLOCK)) then
		  if T = '1' then item := not item;
		  end if;
		end if;
	Q <= item;
end process;


end Behavioral;

