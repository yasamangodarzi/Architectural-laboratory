----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:18:36 04/21/2022 
-- Design Name: 
-- Module Name:    RippleCarryAdder8bit - Structural 
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

entity RippleCarryAdder8bit is port(a, b : in STD_LOGIC_VECTOR(7 downto 0);
		                              cin : in STD_LOGIC;
		                              s: out STD_LOGIC_VECTOR(7 downto 0);
		                              cout : out STD_LOGIC);
end RippleCarryAdder8bit;

architecture Structural of RippleCarryAdder8bit is

component FullAdder is port(input1_fullAdder, input2_fullAdder, Cin: in STD_LOGIC;
		                          Sum, Carry : out STD_LOGIC);
end component FullAdder;


signal c : STD_LOGIC_VECTOR(7 downto 0);

begin
     	c(0) <= Cin;
	   FullAdder1 : FullAdder port map (input1_fullAdder => a(0), 
		                                 input2_fullAdder => b(0), 
		                                 Cin => c(0), 
	                                 	Sum => s(0), 
	                                 	Carry => c(1));

	   FullAdder2 : FullAdder port map (input1_fullAdder => a(1), 
		                                 input2_fullAdder => b(1), 
	                                 	Cin => c(1), 
	                                 	Sum => s(1), 
		                                 Carry => c(2));

	   FullAdder3 : FullAdder port map (input1_fullAdder => a(2), 
	                                  	input2_fullAdder => b(2), 
	                                 	Cin => c(2), 
                                  		Sum => s(2), 
		                                 Carry => c(3));

	   FullAdder4 : FullAdder port map (input1_fullAdder => a(3), 
		                                 input2_fullAdder => b(3), 
	                                 	Cin => c(3), 
		                                 Sum => s(3), 
		                                 Carry => c(4));
													
      FullAdder5 : FullAdder port map (input1_fullAdder => a(4), 
		                                 input2_fullAdder => b(4), 
	                                 	Cin => c(4), 
		                                 Sum => s(4), 
		                                 Carry => c(5));

	   FullAdder6 : FullAdder port map (input1_fullAdder => a(5), 
		                                 input2_fullAdder => b(5), 
	                                 	Cin => c(5), 
		                                 Sum => s(5), 
		                                 Carry => c(6));

	   FullAdder7 : FullAdder port map (input1_fullAdder => a(6), 
		                                 input2_fullAdder => b(6), 
	                                 	Cin => c(6), 
		                                 Sum => s(6), 
		                                 Carry => c(7));

	   FullAdder8 : FullAdder port map (input1_fullAdder => a(7), 
		                                 input2_fullAdder => b(7), 
	                                 	Cin => c(7), 
		                                 Sum => s(7), 
		                                 Carry => cout);													
end Structural;



