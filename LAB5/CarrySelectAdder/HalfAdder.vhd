----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:55 04/21/2022 
-- Design Name: 
-- Module Name:    HalfAdder - Structural 
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

entity HalfAdder is port(input1, input2: in STD_LOGIC;
                         Sum, Carry: out STD_LOGIC);
end HalfAdder;

architecture Structural of HalfAdder is

component XORGate is
		port(
			A, B: in STD_LOGIC;
			C : out STD_LOGIC
		    );
	end component XORGate;
	
	component ANDGate is
		port(
			A, B: in STD_LOGIC;
			C : out STD_LOGIC
		);
	end component ANDGate;


begin
     	SumOut: XORGate port map (A => input1, B => input2, C =>Sum);
	   CarryOut: ANDGate port map (A => input1, B => input2, C =>Carry);

end Structural;



