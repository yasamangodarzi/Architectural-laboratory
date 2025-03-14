----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:32:37 04/20/2022 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity full_adder is
    Port ( First : in  STD_LOGIC;
           second : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           p : out  STD_LOGIC;
           g : out  STD_LOGIC;
           cin : in  STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is

begin
sum <= First xor second xor cin;
p <= First xor second;
g <= First and second;



end Behavioral;

