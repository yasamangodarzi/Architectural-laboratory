----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:10:13 05/04/2022 
-- Design Name: 
-- Module Name:    ripple_carry_adder_new - rtl 
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

entity ripple_carry_adder_new is port (RA : in std_logic_vector (7 downto 0);
                                       RB : in std_logic_vector (7 downto 0);
                                       C_out : out std_logic;
                                       Add_out : out std_logic_vector (7 downto 0));
 
end ripple_carry_adder_new;

architecture struc of ripple_carry_adder_new is
signal c_temp : std_logic_vector(7 downto 0);

component FullAdder port (X : in std_logic;
	                       Y : in std_logic;
	                       C_in : in std_logic;
	                       Sum : out std_logic;
	                       C_out : out std_logic);
end component;
begin
	c_temp(0) <= '0'; 
Adders: for i in 7 downto 0 generate
	Level1: if i/=7 generate
	FA:FullAdder port map (RA(i), RB(i), c_temp(i), Add_out(i), c_temp(i+1));
 end generate;
	Level2: if i=7 generate
	FA:FullAdder port map (RA(7), RB(7), c_temp(i), Add_out(7), C_out);
 end generate;
end generate;
end  struc;
