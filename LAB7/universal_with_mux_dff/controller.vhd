----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:21:38 05/07/2022 
-- Design Name: 
-- Module Name:    controller - Behavioral 
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

entity controller is Port ( Select_parametr: in STD_LOGIC_VECTOR(1 downto 0);
	                         clk :in STD_LOGIC;
			                   Reset: in STD_LOGIC;
	                         Q : out  STD_LOGIC_VECTOR (3 downto 0);
                            SR : in  STD_LOGIC;
                            SL : in  STD_LOGIC;
                            input_4bit : in  STD_LOGIC_VECTOR (3 downto 0));
end controller;

architecture Behavioral of controller is
component mux Port( S : in  STD_LOGIC_VECTOR (1 downto 0);
                     I : in  STD_LOGIC_VECTOR (3 downto 0);
                     Y : out STD_LOGIC);
end component; 


component Dflipflop Port( D: in  STD_LOGIC;
                          CLK: in  STD_LOGIC;
								  RST : in  STD_LOGIC;
                           q: out  STD_LOGIC;
									Qb : out  STD_LOGIC);
end component;
signal mux_output :STD_LOGIC_VECTOR (3 downto 0);
signal output_p :STD_LOGIC_VECTOR (3 downto 0);
signal h_2 :STD_LOGIC_VECTOR (3 downto 0);
signal h_3:STD_LOGIC_VECTOR (3 downto 0);
signal h_4:STD_LOGIC_VECTOR (3 downto 0);
signal h_1:STD_LOGIC_VECTOR (3 downto 0);

	--signal internal_reg : std_logic_vector(3 downto 0);
	--signal sign_bit : std_logic;
begin
		if Reset = '1' then
			Q <= "0000";
		elsif rising_edge(clk)  then
			h_1(0) <= output_p(3);
					h_1(1) <=SL;
					h_1(2) <= output_p(2);
					h_1(3) <=(input_4bit(0));
					
					h_2(0) <= output_p(3);
					h_2(1) <=output_p(2);
					h_2(2) <= output_p(3);
					h_2(3) <=input_4bit(1);
					
					h_3(0) <= output_p(1);
					h_3(1) <=output_p(2);
					h_3(2) <= output_p(0);
					h_3(3) <= input_4bit(2);
					
					h_4(0) <= output_p(0);
					h_4(1) <=output_p(1);
					h_4(2) <= SR;
					h_4(3) <=input_4bit(3);
				
					M1: mux port map(S=>Select_parametr ,I=> h_1, Y=> mux_output(3));
					M2: mux port map(S=>Select_parametr ,I=>h_2, Y=>mux_output(2));
					M3: mux port map(S=>Select_parametr ,I=>h_3, Y=> mux_output(1));
					M4: mux port map(S=>Select_parametr ,I=>h_4 , Y=>mux_output(0));
					dff1: Dflipflop port map(D=>mux_output(3), CLK=>clk ,RST=>Reset ,q=>output_p(3));
					dff2: Dflipflop port map(D=>mux_output(2), CLK=>clk ,RST=>Reset ,q=>output_p(2)); 
					dff3: Dflipflop port map(D=>mux_output(1), CLK=>clk ,RST=>Reset ,q=>output_p(1));
					dff4: Dflipflop port map(D=>mux_output(0), CLK=>clk ,RST=>Reset ,q=>output_p(0)));
			end if;
		end if;
	Q<=output_p
					
					

end Behavioral;

