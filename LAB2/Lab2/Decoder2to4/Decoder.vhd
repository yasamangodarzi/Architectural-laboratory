----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:25 03/01/2022 
-- Design Name:    yasaman godarzi-erfaneh khanmohammadi
-- Module Name:    Decoder - Structural 
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

entity Decoder is
    Port ( input : in  STD_LOGIC_VECTOR(1 downto 0);
           output : out  STD_LOGIC_VECTOR(3 downto 0));
end Decoder;

architecture Structural of Decoder is

begin
     output(0) <= (not input(0)) and (not input(1));
     output(1) <= (not input(0)) and input(1);
     output(2) <= input(0) and (not input(1));
     output(3) <= input(0) and input(1);
end Structural;

