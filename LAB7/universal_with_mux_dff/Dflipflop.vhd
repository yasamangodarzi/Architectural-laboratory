----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:53:14 05/07/2022 
-- Design Name: 
-- Module Name:    Dflipflop - Behavioral 
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

entity Dflipflop is
Port ( D, CLK, RST : in  STD_LOGIC;
       q : out  STD_LOGIC);
end Dflipflop;

architecture Behavioral of Dflipflop is

begin
process (D, CLK, RST)
begin

if (RST = '0') then
Q <= '0';
elsif (rising_edge(CLK)) then 
Q <= D;


end if;
end process;
end Behavioral;

