----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:11:44 03/09/2022 
-- Design Name: 
-- Module Name:    TFF - Behavioral 
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

entity TFF is
port (T,async_reset,CLOCK : in std_logic;
		 Q : out std_logic;
		 QNOT : out std_logic);
end TFF;

architecture Behavioral of TFF is
begin
	  process(ClOCK, async_reset)
	   variable temp: std_logic;
		begin
		    if (async_reset = '0') then temp := '0';
	     	 elsif (rising_edge(ClOCK)) then
		       if T = '1' then temp := not temp;
		       end if;
		    end if;
	       Q <= temp;
			 QNOT <= not temp;
     end process;

end Behavioral;