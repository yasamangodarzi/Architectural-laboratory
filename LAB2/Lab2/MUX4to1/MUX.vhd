----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:11:12 03/01/2022 
-- Design Name:    yasaman godarzi-erfaneh khanmohammadi
-- Module Name:    MUX - Structural 
-- Project Name:   session2
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

entity MUX is
    Port ( input : in  STD_LOGIC_VECTOR(3 downto 0);
	        S : in STD_LOGIC_vector(1 downto 0);
           output : out  STD_LOGIC);
end MUX;

architecture Structural of MUX is

signal out_AND1, out_AND2, out_AND3, out_AND4: std_logic;
begin
     out_AND1 <= (not S(0)) and (not S(1)) and input(0);
     out_AND2 <= (S(0)) and (not S(1)) and input(1);
	  out_AND3 <= (not S(0)) and (S(1)) and input(2);
     out_AND4 <= (S(0)) and (S(1)) and input(3);
	  output   <= out_AND4 or out_AND3 or out_AND2 or out_AND1;
end Structural;

