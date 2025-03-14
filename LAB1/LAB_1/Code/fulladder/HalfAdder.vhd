----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:18:48 02/19/2022 
-- Design Name:    yasaman godarzi-erfaneh khanmohammadi
-- Module Name:    HalfAdder - Behavioral 
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

entity HalfAdder is
    Port ( in1 : in  std_logic;
           in2 : in  std_logic;
           out1 : out  std_logic;
           out2 : out  std_logic);
end HalfAdder;

architecture Structural of HalfAdder is
component XOR_ALU is port(A,B: in std_logic;
                          C: out std_logic);
end component XOR_ALU;

component AND_ALU is port(A,B: in std_logic;
                          C: out std_logic);
end component AND_ALU;								  

begin
     XOR_ALU_instance: Xor_ALU port map (A=>in1, B=>in2, C=>out1);
     AND_ALU_instance: And_ALU port map (A=>in1, B=>in2, C=>out2);

end Structural;

