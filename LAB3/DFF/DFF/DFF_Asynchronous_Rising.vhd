----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:32:46 03/08/2022 
-- Design Name: 
-- Module Name:    DFF_Asynchronous_Rising - Behavioral 
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

entity DFF_Asynchronous_Rising is 
    Port( Q: out std_logic;
	       CLK: in std_logic;
			 async_reset: in std_logic;
			 D: in std_logic);
end DFF_Asynchronous_Rising;

architecture Behavioral of DFF_Asynchronous_Rising is

begin
     process(CLK, async_reset)
	                          begin
									       if (async_reset = '0') then Q <= '0';
	                               elsif (rising_edge(Clk)) then Q <= D;
	                               end if;
     end process;
end Behavioral;

