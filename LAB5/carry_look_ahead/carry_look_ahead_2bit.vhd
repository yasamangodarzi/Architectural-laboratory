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

entity carry_look_ahead_2bit is
    Port ( first : in  STD_LOGIC_VECTOR (0 downto 4);
           second : in  STD_LOGIC_VECTOR (0 downto 4);
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (0 downto 1);
           cout : out  STD_LOGIC);
end carry_look_ahead_2bit;

architecture Behavioral of carry_look_ahead_2bit is

begin
component full_adder
Port ( first : in STD_LOGIC;
second : in STD_LOGIC;
cin : in STD_LOGIC;
sum : out STD_LOGIC;
p : out STD_LOGIC;
g : out STD_LOGIC);
end component;
signal p,g: STD_LOGIC_VECTOR(0 downto 1);
signal ci :STD_LOGIC;
begin
 
full_adder_1: full_adder port map( first(0), second(0), cin,sum(0), p(0), g(0));
full_adder_2: full_adder port map( first(1), second(1), ci, sum(1), p(1), g(1));


ci  <= g(0) OR (p(0) AND cin);
cout <= g(1) OR (p(1) AND g(0)) OR (p(1) AND p(0) AND cin);

end Behavioral;

