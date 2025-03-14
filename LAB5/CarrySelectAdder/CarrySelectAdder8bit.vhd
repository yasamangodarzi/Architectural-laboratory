----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:10 04/21/2022 
-- Design Name: 
-- Module Name:    CarrySelectAdder8bit - Structural 
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

entity CarrySelectAdder8bit is port(a, b : in STD_LOGIC_VECTOR(7 downto 0);
		                                cin : in STD_LOGIC_VECTOR(1 downto 0);
		                                s: out STD_LOGIC_VECTOR(7 downto 0);
		                                cout : out STD_LOGIC);
end CarrySelectAdder8bit;

architecture Structural of CarrySelectAdder8bit is
component RippleCarryAdder8bit is port(a, b : in STD_LOGIC_VECTOR(7 downto 0);
		                                 cin : in STD_LOGIC;
		                                 s: out STD_LOGIC_VECTOR(7 downto 0);
		                                 cout : out STD_LOGIC);
	end component RippleCarryAdder8bit;

	component MUX2to1 is port(input : in STD_LOGIC_VECTOR (3 downto 0);
			                    sel : in STD_LOGIC_VECTOR(1 downto 0);
			                    output : out STD_LOGIC);
	end component MUX2to1;

	signal s1, s2, s3, s4 : STD_LOGIC_VECTOR(7 downto 0); --sum row 1 and 2
	signal c1, c2 : STD_LOGIC_VECTOR(3 downto 0); -- carry row 1 and 2
	signal cout1, cout2, cout3, cout4 : STD_LOGIC;
	signal sumMUX1 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX2 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX3 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX4 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX5 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX6 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX7 : STD_LOGIC_VECTOR(3 downto 0);
	signal sumMUX8 : STD_LOGIC_VECTOR(3 downto 0);
	signal FinalMux : STD_LOGIC_VECTOR(3 downto 0);
	
begin
     	RippleCarryAdder1 : RippleCarryAdder8bit port map (a => a, 
		                                                   b => b, 
	                                                      cin => '0', 
		                                                   s => s1, 
		                                                   cout => cout1);
	
	   RippleCarryAdder2 : RippleCarryAdder8bit port map (a => a, 
		                                                   b => b, 
		                                                   cin => '1', 
		                                                   s => s2, 
		                                                   cout => cout2);
																					 
	   RippleCarryAdder3 : RippleCarryAdder8bit port map (a => a, 
		                                                   b => b, 
		                                                   cin => '0', 
		                                                   s => s3, 
		                                                   cout => cout3);
																					 
	   RippleCarryAdder4 : RippleCarryAdder8bit port map (a => a, 
		                                                   b => b, 
		                                                   cin => '1', 
		                                                   s => s4, 
		                                                   cout => cout4);

	   sumMUX1(0) <= s1(0);
	   sumMUX1(1) <= s2(0);
		sumMUX1(2) <= s3(0);
	   sumMUX1(3) <= s4(0);
	   MUX2to1_1 : MUX2to1 port map (input => sumMUX1,  
		                              sel => cin, 
		                              output => s(0));
	
	
	   sumMUX2(0) <= s1(1);
	   sumMUX2(1) <= s2(1);
	   sumMUX2(2) <= s3(1);
	   sumMUX2(3) <= s4(1);
	   MUX2to1_2 : MUX2to1 port map (input => sumMUX2,  
		                              sel => cin, 
		                              output => s(1));
												
												
		sumMUX3(0) <= s1(2);
	   sumMUX3(1) <= s2(2);
	   sumMUX3(2) <= s3(2);
	   sumMUX3(3) <= s4(2);
	   MUX2to1_3 : MUX2to1 port map (input => sumMUX3,  
		                              sel => cin, 
		                              output => s(2));										
												
      sumMUX4(0) <= s1(3);
	   sumMUX4(1) <= s2(3);
	   sumMUX4(2) <= s3(3);
	   sumMUX4(3) <= s4(3);
	   MUX2to1_4 : MUX2to1 port map (input => sumMUX4,  
		                              sel => cin, 
		                              output => s(3));
												
	   sumMUX5(0) <= s1(4);
	   sumMUX5(1) <= s2(4);
	   sumMUX5(2) <= s3(4);
	   sumMUX5(3) <= s4(4);
	   MUX2to1_5 : MUX2to1 port map (input => sumMUX5,  
		                              sel => cin, 
		                              output => s(4));

	   sumMUX6(0) <= s1(5);
	   sumMUX6(1) <= s2(5);
	   sumMUX6(2) <= s3(5);
	   sumMUX6(3) <= s4(5);
	   MUX2to1_6 : MUX2to1 port map (input => sumMUX6,  
		                              sel => cin, 
		                              output => s(5));	

	   sumMUX7(0) <= s1(6);
	   sumMUX7(1) <= s2(6);
	   sumMUX7(2) <= s3(6);
	   sumMUX7(3) <= s4(6);
	   MUX2to1_7 : MUX2to1 port map (input => sumMUX7,  
		                              sel => cin, 
		                              output => s(6));

	   sumMUX8(0) <= s1(7);
	   sumMUX8(1) <= s2(7);
	   sumMUX8(2) <= s3(7);
	   sumMUX8(3) <= s4(7);
	   MUX2to1_8 : MUX2to1 port map (input => sumMUX8,  
		                              sel => cin, 
		                              output => s(7));												
	-----------
	
	   FinalMux(0) <= cout1;
	   FinalMux(1) <= cout2;
	   FinalMux(2) <= cout3;
	   FinalMux(3) <= cout4;		
	   Final : MUX2to1 port map (input => FinalMux,  
		                          sel => cin, 
		                          output => cout);	
									 
end Structural;

