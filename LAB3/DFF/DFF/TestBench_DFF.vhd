--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:19:30 03/09/2022
-- Design Name:   
-- Module Name:   I:/AZ_memari/DFF/DFF/TestBench_DFF.vhd
-- Project Name:  DFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DFF_Asynchronous_Rising
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
 
ENTITY TestBench_DFF IS
END TestBench_DFF;
 
ARCHITECTURE Behavioral OF TestBench_DFF IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DFF_Asynchronous_Rising
    PORT(
         Q : OUT  std_logic;
         CLK : IN  std_logic;
         async_reset : IN  std_logic;
         D : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal async_reset : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   --constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DFF_Asynchronous_Rising PORT MAP (
          Q => Q,
          CLK => CLK,
          async_reset => async_reset,
          D => D
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for 60 ns;
		CLK <= '1';
		wait for 60 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 30 ns;
		D <= '1';
		wait for 60 ns;
		D <= '0';
		wait for 60 ns;
		D <= '1';
		wait for 60 ns;
		async_reset <= '0';
		wait for 100 ns;
		async_reset <= '1';
		wait for 100 ns;
      -- insert stimulus here 

      wait;
   end process;

END;
