 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:41:33 04/20/2022 
-- Design Name: 
-- Module Name:    carry_look_ahead _4bit - Behavioral 
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

entity carry_look_ahead_4bit is
    Port ( first : in  STD_LOGIC_VECTOR (0 downto 3);
           second : in  STD_LOGIC_VECTOR (0 downto 3);
           cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (0 downto 3);
           cout : out  STD_LOGIC);
end carry_look_ahead_4bit;

architecture Behavioral of carry_look_ahead_4bit is

component full_adder Port ( First : in STD_LOGIC;
                            second : in STD_LOGIC;
                            cin : in STD_LOGIC;
                            sum : out STD_LOGIC;
                            p : out STD_LOGIC;
                            g : out STD_LOGIC);
end component full_adder;
signal p,g: STD_LOGIC_VECTOR(0 downto 3);
signal c :STD_LOGIC_VECTOR(0 downto 3);
begin
 
full_adder_1: full_adder port map( First=>first(0), second =>second(0),   cin =>cin,   Sum=>sum(0),  p=>p(0), g=>g(0));
full_adder_2: full_adder port map( First => first(1), second => second(1),cin =>c(1), Sum=>sum(1),  p=>p(1), g=>g(1));
full_adder_3: full_adder port map( First => first(2), second => second(2),cin =>c(2), Sum=>sum(2),  p=>p(2), g=>g(2));
full_adder_4: full_adder port map( First => first(3), second => second(3),cin =>c(3), Sum=>sum(3),  p=>p(3), g=>g(3));

c(1) <= g(0) OR (p(0) AND cin);
c(2) <= g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND cin);
c(3) <= g(2) OR (p(2) AND g(1)) OR (p(2) AND p(1) AND g(0)) OR (p(2) AND p(1) AND p(0) AND cin);
cout <= g(3) OR (p(3) AND g(2)) OR  (p(3) AND p(2) AND g(1)) OR (p(3) AND p(2) AND p(1) AND g(0)) OR (p(3) AND p(2) AND p(1) AND p(0) AND cin);
 



end Behavioral;

