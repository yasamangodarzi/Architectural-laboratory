----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:36:43 03/10/2022 
-- Design Name: 
-- Module Name:    Ripple_Counter_4_bit - Behavioral 
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

entity Ripple_Counter_4_bit is
    Port ( CLOCK : in  std_logic;
           reset : in  std_logic;
           Counter : out  std_logic_vector (3 downto 0)
	);
end Ripple_Counter_4_bit;

architecture Behavioral of Ripple_Counter_4_bit is
component T_Flip_Flop
		 Port (    T : in std_logic;
		          reset: in std_logic;
		         CLOCK : in std_logic;
		         Q : out std_logic
			);
end component;
signal internal : std_logic_vector (3 downto 0) := "0000";

begin
	T_0: T_Flip_Flop port map(T=>'1', CLOCK=>CLOCK, reset => reset, Q=>internal(0));
	T_1: T_Flip_Flop port map(T=>'1', CLOCK=>internal(0), reset => reset, Q=>internal(1));
	T_2: T_Flip_Flop port map(T=>'1', CLOCK=>internal(1), reset => reset, Q=>internal(2));
	T_3: T_Flip_Flop port map(T=>'1', CLOCK=>internal(2), reset => reset, Q=>internal(3));
	Counter <= internal;
end Behavioral;
