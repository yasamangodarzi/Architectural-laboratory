----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:23:11 04/21/2022 
-- Design Name: 
-- Module Name:    MUX2to1 - Structural 
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

entity MUX2to1 is port(input : in STD_LOGIC_VECTOR (3 downto 0);
		                 sel : in STD_LOGIC_VECTOR (1 downto 0);
		                 output : out STD_LOGIC);
end MUX2to1;

architecture Structural of MUX2to1 is
signal signal1, signal2, signal3, signal4 : STD_LOGIC;
begin
     	--signal1 <= not sel and input(0);
	   --signal2 <= sel and input(1);
	   --output <= signal1 or signal2;
		
		output <= (input(0) and (not sel(1)) and (not sel(0))) or (input(1) and (not sel(1)) and sel(0)) or
	   (input(2) and sel(1) and (not sel(0))) or (input(3) and sel(1) and sel(0));
 
end Structural;

