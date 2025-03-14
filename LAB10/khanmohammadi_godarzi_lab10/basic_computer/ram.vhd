----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:00:48 06/07/2022 
-- Design Name: 
-- Module Name:    ram - Behavioral 
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
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram is
    generic ( w : integer := 8 ; --word bit 
				  d : integer := 32 ; --number of words 
				  c : integer := 5  --address bit
				  
				  ) ;
	 
	 Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           wr : in  STD_LOGIC;
           rd : in  STD_LOGIC;
           data_in_ram : in  STD_LOGIC_VECTOR (w-1 downto 0);
           addr : in  STD_LOGIC_VECTOR (c-1 downto 0);
           data_out_ram : out  STD_LOGIC_VECTOR (w-1 downto 0));
end ram;

architecture Behavioral of ram is


type mem_type is array ( d-1 downto 0 ) of std_logic_vector(w-1 downto 0) ;  
signal Ram : mem_type := (		 "00000001",
										 "11000101",
										 "00110111",
										 "10111100",
										 "11100011",
										 "10001111",
										 "00110000",
										 "01001010",
										 "00111011",
										 "11000011",
										 "10011100",
										 "01101101",
										 "01111110",
										 "00011111",
										 "11100000",
										 "00000000",
										 "00110011",
										 "11101111",
										 "00111100",
										 "00110011",
										 "01100111",
										 "00111001",
										 "01011100",
										 "10010010",
										 "00011010",
										"11100101",
										"10101000",
										 "01001100",
										"01110011",
										 "11110001",
										 "11000011",
										 "01111000");

								
begin


process ( clk , rst )
begin 
	
	if rst = '0' then 
		RAM (0) <= "00000001";
		RAM (1) <= "11000101";
		RAM (2) <= "00110111";
		RAM (3) <= "10111100";
		RAM (4) <= "11100011";
		RAM (5) <= "10001111";
		RAM (6) <= "00110000";
		RAM (7) <= "01001010";
		RAM (8) <= "00111011";
		RAM (9) <= "11000011";
		RAM (10) <= "10011100";
		RAM (11) <= "01101101";
		RAM (12) <= "01111110";
		RAM (13) <= "00011111";
		RAM (14) <= "11100000";
		RAM (15) <= "00000000";
		RAM (16) <= "00110011";
		RAM (17) <= "11101111";
		RAM (18) <= "00111100";
		RAM (19) <= "00110011";
		RAM (20) <= "01100111";
		RAM (21) <= "00111001";
		RAM (22) <= "01011100";
		RAM (23) <= "10010010";
		RAM (24) <= "00011010";
		RAM (25) <= "11100101";
		RAM (26) <= "10101000";
		RAM (27) <= "01001100";
		RAM (28) <= "01110011";
		RAM (29) <= "11110001";
		RAM (30) <= "11000011";
		RAM (31) <= "01111000";
		data_out_ram <= "00000000" ;
			
			
	elsif  rising_edge(clk) then
		
			if wr = '1' then 
				ram(to_integer(unsigned(addr)))<= data_in_ram ;
				
			elsif rd = '1' then 
				data_out_ram <= ram(to_integer(unsigned(addr)));
				end if ;
				
			end if ;
		end process ;
	
	

end Behavioral;
