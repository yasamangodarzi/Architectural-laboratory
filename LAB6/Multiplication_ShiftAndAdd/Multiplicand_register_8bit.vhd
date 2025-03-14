----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:21:30 05/04/2022 
-- Design Name: 
-- Module Name:    Multiplicand - structural 
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

entity Multiplicand_register_8bit is port (RST : in std_logic ;
	                          Multiplicand : in std_logic_vector (7 downto 0);
	                          Logic : in std_logic ;
	                          in_1 : out std_logic_vector (7 downto 0));
end Multiplicand_register_8bit;

architecture structural of Multiplicand_register_8bit is
component DFlipFlop port (reset : in std_logic;
		                    clk : in std_logic;
		                    D : in std_logic;
		                    Q : out std_logic);
end component;
begin
	DFlipFlops: for i in 7 downto 0 generate
	DFlipFlop_res: DFlipFlop port map (RST, Logic, Multiplicand(i), in_1(i));
end generate;
end structural;

