----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:15:13 05/04/2022 
-- Design Name: 
-- Module Name:    RippleCarryAdder - strucural 
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

entity RippleCarryAdder is port (C_in : in std_logic;
                                 in_1 : in std_logic_vector (3 downto 0);
                                 in_2 : in std_logic_vector (3 downto 0);
                                 C_out : out std_logic ;
                                 Add_out : out std_logic_vector (3 downto 0));
--8-by-8 Bit Shift/Add Multiplier
--Giovanni DíAliesio
--32

--end RippleCarryAdder;
end;

architecture rtl of RippleCarryAdder is
signal c_temp : std_logic_vector(3 downto 1);
component FullAdder port (X : in std_logic;
                          Y : in std_logic;
                          C_in : in std_logic;
                          Sum : out std_logic;
								  C_out : out std_logic);
end component;
begin
Adders: for i in 3 downto 0 generate
 Level1: if i=0 generate
 FA:FullAdder port map (in_1(0), in_2(0), C_in, Add_out(0), c_temp(i+1));
 end generate;
 Level2: if (i>0 and i<3) generate
 FA:FullAdder port map (in_1(i), in_2(i), c_temp(i), Add_out(i), c_temp(i+1));
 end generate;
 Level3: if i=3 generate
 FA:FullAdder port map (in_1(3), in_2(3), c_temp(i), Add_out(3), C_out);
 end generate;
end generate;
end rtl;