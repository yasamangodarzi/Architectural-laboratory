----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:29:27 05/04/2022 
-- Design Name: 
-- Module Name:    CarrySelectAdder - strucural 
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

entity CarrySelectAdder is port (in_1 : in std_logic_vector (7 downto 0);
                                 in_2 : in std_logic_vector (7 downto 0);
                                 C_out : out std_logic ;
                                 Add_out : out std_logic_vector (7 downto 0));
end CarrySelectAdder;

architecture rtl of CarrySelectAdder is

signal temp : std_logic_vector(5 downto 0);
signal add_temp0 : std_logic_vector(3 downto 0);
signal add_temp1 : std_logic_vector(3 downto 0);

component RippleCarryAdder port (C_in : in std_logic;
	                  in_1 : in std_logic_vector(3 downto 0);
	                  in_2 : in std_logic_vector(3 downto 0);
	                  Add_out : out std_logic_vector(3 downto 0);
	                  C_out : out std_logic);
end component;
begin
	  temp(0) <= '0';
	  temp(2) <= '0';
	  temp(3) <= '1';
	  RCA1: RippleCarryAdder
	  port map (C_in => temp(0),
	            in_1 => in_1(3 downto 0),
	            in_2 => in_2(3 downto 0),
	            Add_out => Add_out(3 downto 0),
	            C_out => temp(1));
	  RCA2: RippleCarryAdder
	  port map (C_in => temp(2),
	            in_1 => in_1(7 downto 4),
	            in_2 => in_2(7 downto 4),
	            Add_out => add_temp0,
	            C_out => temp(4));
	  RCA3: RippleCarryAdder
	  port map (C_in => temp(3),
	            in_1 => in_1(7 downto 4),
	            in_2 => in_2(7 downto 4),
	            Add_out => add_temp1,
	            C_out => temp(5));
	  Add_out (7 downto 4) <= add_temp0 when temp(1)='0' else
	  add_temp1 when temp(1)='1' else
		         "ZZZZ";
	  C_out <= (temp(1) and temp(5)) or temp(4);

end rtl;

