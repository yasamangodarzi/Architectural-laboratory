----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:33:48 05/04/2022 
-- Design Name: 
-- Module Name:    Nand2 - strucural 
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

entity Nand2 is port (IN1 : in std_logic ;
	                   IN2 : in std_logic ;
	                   OUT1 : out std_logic);
end Nand2;

architecture strucural of Nand2 is

begin
     OUT1 <= NOT(IN1 AND IN2);

end strucural;

