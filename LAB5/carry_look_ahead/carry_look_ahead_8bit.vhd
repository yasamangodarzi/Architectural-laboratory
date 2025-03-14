----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:28:51 04/21/2022 
-- Design Name: 
-- Module Name:    carry_look_ahead_8bit - Behavioral 
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

entity carry_look_ahead_8bit is
 Port (    A : in  STD_LOGIC_VECTOR (0 downto 7);
           B : in  STD_LOGIC_VECTOR (0 downto 7);
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (0 downto 7);
           Cout : out  STD_LOGIC);
end carry_look_ahead_8bit;

architecture Behavioral of carry_look_ahead_8bit is
component carry_look_ahead_4bit
    Port ( first : in  STD_LOGIC_VECTOR (0 downto 3);
           second : in  STD_LOGIC_VECTOR (0 downto 3);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (0 downto 3);
           cout : out  STD_LOGIC);
end component;
signal c4: STD_LOGIC;

begin
 
cla_4bit_1: carry_look_ahead_4bit port map( first =>A(0 downto 3),
                                            second=> B(0 downto 3), 
														  cin => Cin,
														  cout=>c4,
														  sum =>Sum(0 downto 3));
														  
cla_4bit_2: carry_look_ahead_4bit port map( first =>A(4 downto 7),
                                            second=> B(4 downto 7), 
														  cin =>c4,
														  cout=> Cout,
														  sum =>Sum(4 downto 7));




end Behavioral;

