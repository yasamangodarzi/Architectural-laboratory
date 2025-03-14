----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:06:57 04/14/2022 
-- Design Name: 
-- Module Name:    mealy - Behavioral 
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

entity mealy is
    Port ( CLOCK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           X : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end mealy;

architecture Behavioral of mealy is
        type state is (s0, s1, s2, s3);
        signal state_present, next_state : state;
        begin
         process (CLOCK)
        begin
                if rising_edge(CLOCK) then
                        if (RST = '1') then
                                 state_present <= s0;
                        else
                                state_present <= next_state;
                        end if;
                end if;
        end process;
   process(state_present, X)
        begin
                next_state <= s0;
                case (state_present) is
                        when s0 =>
                                if (X = '1') then
                                        next_state <= s1;
													 OUTPUT <= '0';
                                else
                                        next_state <= s0;
													 OUTPUT <= '0';
                                end if;
                        when s1 =>
                                if (X = '1') then
                                        next_state <= s2;
													 OUTPUT <= '0';
                                else
                                        next_state <= s0;
													 OUTPUT <= '0';
                                end if;
                        when s2 =>
                                if (X = '1') then
                                        next_state <= s3;
													 OUTPUT <= '0';
                                else
                                        next_state <= s0;
													 OUTPUT <= '0';
                                end if;
                        when s3 =>
                                if (X = '1') then
                                        next_state <= s3;
													 OUTPUT <= '0';
                                else
                                        next_state <= s0;
													 OUTPUT <= '1';
                                end if;
                        when others =>
                                next_state <= s0;
                end case;
        end process;


end Behavioral;

