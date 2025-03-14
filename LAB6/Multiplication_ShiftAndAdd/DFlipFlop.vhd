----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:39:46 05/04/2022 
-- Design Name: 
-- Module Name:    DFlipFlop - strucural 
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

entity DFlipFlop is port (reset : in std_logic ;
	                       clk : in std_logic ;
	                       D : in std_logic ;
	                       Q : out std_logic);
end DFlipFlop;

architecture strucural of DFlipFlop is
signal NAND_temp : std_logic_vector(6 downto 1);

component NAND2 port (IN1 : in std_logic;
	                    IN2 : in std_logic;
	                    OUT1 : out std_logic);
end component;
component NAND3 port (IN1 : in std_logic;
	                    IN2 : in std_logic;
	                    IN3 : in std_logic;
	                    OUT1 : out std_logic);
end component;
begin
	NAND1: NAND2 port map (NAND_temp(4), NAND_temp(2), NAND_temp(1));
	na2: NAND3 port map (NAND_temp(1), clk, reset, NAND_temp(2));
	na3: NAND3 port map (NAND_temp(2), clk, NAND_temp(4), NAND_temp(3));
	NAND4: NAND3 port map (NAND_temp(3), D, reset, NAND_temp(4));
	NAND5: NAND2 port map (NAND_temp(2), NAND_temp(6), NAND_temp(5));
	NAND6: NAND3 port map (NAND_temp(5), NAND_temp(3), reset, NAND_temp(6));
	Q <= NAND_temp(5);

end strucural;