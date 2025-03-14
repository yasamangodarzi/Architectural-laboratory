 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:47:22 04/14/2022 
-- Design Name:    Erfaneh Khanmohammadi-Yasaman Godarzi
-- Module Name:    Moore_NonOver1010 - Behavioral
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

entity moore_1010 is Port ( clk : in STD_LOGIC;
                                   data_in : in STD_LOGIC;
                                   rst : in STD_LOGIC;
                                   dout : out STD_LOGIC);
end moore_1010;

architecture Behavioral of moore_1010 is
type state is (s0, s1, s2, s3, s4);
signal present_state, next_state : state;
begin
  process (clk)
begin
      if rising_edge(clk) then
         if (rst = '1') then
             present_state <= s0;
         else
             present_state <= next_state;
         end if;
       end if;
end process;
 process(present_state)
begin
     next_state <= s0;
     case (present_state) is
           when s0 =>
                if (data_in = '1') then
                    next_state <= s1;
                else
                    next_state <= s0;
                end if;
           when s1 =>
                if (data_in = '1') then
                    next_state <= s1;
                else
                    next_state <= s2;
                end if;
           when s2 =>
                if (data_in= '1') then
                    next_state <= s3;
                else
                    next_state <= s0;
                end if;
           when s3 =>
                if (data_in = '1') then
                    next_state <= s1;
                else
                    next_state <= s4;
                end if;
 when s4 =>
                if (data_in= '1') then
                    next_state <= s3;
                else
                    next_state <= s0;
                end if;
           when others =>
                next_state <= s0;
        end case;
end process;
 process(present_state)
begin
     case (present_state) is
           when s0 =>
                dout <= '0';
           when s1 =>
                dout <= '0';
           when s2 =>
                dout <= '0';
           when s3 =>
                dout <= '0';
 when s4 =>
                dout <= '1';
           when others =>
                dout <= '0';
       end case;
end process;

end Behavioral;