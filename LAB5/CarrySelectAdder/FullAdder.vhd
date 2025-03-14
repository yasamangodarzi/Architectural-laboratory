----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:59:23 04/21/2022 
-- Design Name: 
-- Module Name:    FullAdder - Structural 
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
	port(
		input1_fullAdder, input2_fullAdder, cin: in STD_LOGIC;
		Sum, Carry : out STD_LOGIC
	);
end entity FullAdder;

architecture Structural of FullAdder is
	component ORGate is
		Port(
			a, b : in STD_LOGIC;
			c : out STD_LOGIC
		);
	end component ORGate;

	component HalfAdder is
		port(
			input1, input2: in STD_LOGIC;
			Sum, Carry : out STD_LOGIC
		);
	end component HalfAdder;

signal signal1, signal2, signal3: STD_LOGIC;

begin
	HalfAdder1: HalfAdder port map ( input1 => input1_fullAdder, input2 => input2_fullAdder, Sum => signal1, Carry => signal2);
	HalfAdder2: HalfAdder port map ( input1 => signal1, input2 => cin, Sum => Sum, Carry => signal3);
	OR1: ORGate port map ( a => signal2, b => signal3, c => Carry );
end Structural;