----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:01 02/20/2022 
-- Design Name:    yasaman godarzi-erfaneh khanmohammadi
-- Module Name:    FullAdder - Behavioral 
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

entity FullAdder is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FullAdder;

architecture Structural of FullAdder is
component HalfAdder is port (in1, in2: in std_logic;
                              out1, out2: out std_logic);
end component HalfAdder;


component OR_ALU is port (A,B: in std_logic;
                          C: out std_logic);
								  
end component OR_ALU;

signal internal_signal0, internal_signal1, internal_signal2: std_logic;
begin
     HalfAdder_instance1 : HalfAdder port map (in1=>I1, in2=>I0, out1=>internal_signal0, out2=>internal_signal1);
	  HalfAdder_instance2 : HalfAdder port map (in1=>internal_signal0, in2=>Cin, out1=>S, out2=>internal_signal2);
	  OR_ALU_instance : OR_ALU port map (A=> internal_signal1, B=>internal_signal2, C=>Cout);


end Structural;

