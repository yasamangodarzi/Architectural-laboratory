 ----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:51 04/14/2022 
-- Design Name:    Erfaneh Khanmohammadi-Yasaman Godarzi
-- Module Name:    Mealy_NonOver1010 - Behavioral 
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

entity Mealy_NonOver1010 is Port ( clk : in STD_LOGIC;
                                   data_in : in STD_LOGIC;
                                   reset : in STD_LOGIC;
                                   data_out : out STD_LOGIC);
end Mealy_NonOver1010;

architecture Behavioral of Mealy_NonOver1010 is
type state is (S0, S1, S2, S3);
signal present_state, next_state : state;
begin
      process (clk)
     begin
          if rising_edge(clk) then
             if (reset = '1') then
                present_state <= S0;
             else
                present_state <= next_state;
             end if;
          end if;
     end process;

 process(present_state, data_in)
begin
     next_state <= S0;
     case (present_state) is
           when S0 =>
                 if (data_in = '1') then
                     next_state <= S1;
data_out <= '0';
                 else
                     next_state <= S0;
data_out <= '0';
                 end if;
           when S1 =>
                 if (data_in = '1') then
                     next_state <= S1;
data_out <= '0';
                 else
                     next_state <= S2;
data_out <= '0';
                 end if;
           when S2 =>
                if (data_in = '1') then
                    next_state <= S3;
 data_out <= '0';
                else
                    next_state <= S0;
 data_out <= '0';
                end if;
            when S3 =>
                if (data_in = '1') then
                    next_state <= S1;
 data_out <= '0';
                else
                    next_state <= S0;
 data_out <= '1';
                end if;
            when others =>
                    next_state <= S0;
      end case;
end process;
        

end Behavioral;