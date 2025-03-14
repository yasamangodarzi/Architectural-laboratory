 --------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:17:54 04/14/2022
-- Design Name:   Erfaneh Khanmohammadi-Yasaman Godarzi
-- Module Name:   I:/AZ_memari/session4/Sequence_Detector_1010_main/mealy_NonOver_1010/TestBench_Mealy_NonOver1010.vhd
-- Project Name:  mealy_NonOver_1010
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mealy_NonOver1010
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TestBench_Mealy_NonOver1010 IS
END TestBench_Mealy_NonOver1010;
 
ARCHITECTURE behavior OF TestBench_Mealy_NonOver1010 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mealy_NonOver1010
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic;
         reset : IN  std_logic;
         data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic := '0';
   signal reset : std_logic := '0';

  --Outputs
   signal data_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
   uut: Mealy_NonOver1010 PORT MAP (
          clk => clk,
          data_in => data_in,
          reset => reset,
          data_out => data_out
        );

   -- Clock process definitions
   clk_process :process
   begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin 
      -- hold reset state for 100 ns.
      wait for 100 ns; 

      wait for clk_period*10;

      -- insert stimulus here 
      --begin 
      reset <= '1' ;
wait for clk_period;
reset <= '0' ;
wait for clk_period;
data_in <= '0' ;
wait for clk_period;
data_in <= '1' ;
wait for clk_period;
data_in <= '1' ;
wait for clk_period;
data_in <= '0' ;
wait for clk_period;
data_in <= '1' ;
wait for clk_period;
data_in <= '1' ;
wait for clk_period;
data_in <= '0' ;
wait for clk_period;
data_in <= '1' ;
      wait;
   end process;

END;