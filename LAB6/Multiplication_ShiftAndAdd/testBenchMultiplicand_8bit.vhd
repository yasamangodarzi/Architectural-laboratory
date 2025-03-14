--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:09:55 05/05/2022
-- Design Name:   
-- Module Name:   C:/Users/sadr system/Downloads/AZ6/Multiplication_ShiftAndAdd/testBenchMultiplicand_8bit.vhd
-- Project Name:  Multiplication_ShiftAndAdd
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Product_16bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all; --required for file I/O
use ieee.std_logic_textio.all; --required for file I/O
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY testBenchMultiplicand_8bit IS
END testBenchMultiplicand_8bit;
 
ARCHITECTURE behavior OF testBenchMultiplicand_8bit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT Multiplier PORT(Multiplicand : in std_logic_vector(7 downto 0 );
                             Multiplier : in std_logic_vector(7 downto 0 );
                             clk : in std_logic;
                             in_3 : out std_logic_vector(15 downto 0 );
                             RST : in std_logic;
                             START : in std_logic;
                             Ready : out std_logic);
END COMPONENT;
 

signal A_in_TB, B_in_TB : std_logic_vector(7 downto 0 );
signal clk_TB, reset_TB, START_TB : std_logic;
signal STOP_TB : std_logic;
signal RC_TB: std_logic_vector(15 downto 0);
begin
-- instantiate the Device Under Test
inst_DUT : Multiplier port map (
 Multiplicand => A_in_TB,
 Multiplier => B_in_TB,
 clk => clk_TB,
 RST => reset_TB,
 in_3 => RC_TB,
 START => START_TB,
 Ready => STOP_TB);

STIMULUS_CLK : process
begin
 clk_TB <= '0';
 wait for 10 ns;
 clk_TB <= '1';
 wait for 10 ns;
end process STIMULUS_CLK;

STIMULUS_RST : process
begin
 reset_TB <= '0';
 wait for 50 ns;
 reset_TB <= '1';
 wait;
end process STIMULUS_RST;

STIMULUS_START : process

variable A_temp, B_temp, i : integer;
begin
 A_temp := 75;
 B_temp := 164; 
 i := 1;
 for i in 1 to 256 loop
 A_in_TB <= STD_LOGIC_VECTOR(to_unsigned(A_temp,8));
 B_in_TB <= STD_LOGIC_VECTOR(to_unsigned(B_temp,8));
 START_TB <= '0';
 wait for 100 ns;
 START_TB <= '1'; 
 wait for 100 ns;
 START_TB <= '0';
 wait until STOP_TB = '1'; 
 end loop;
 wait;
end process STIMULUS_START;
end;
