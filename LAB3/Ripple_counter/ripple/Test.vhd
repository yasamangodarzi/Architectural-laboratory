--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:49:44 03/10/2022
-- Design Name:   
-- Module Name:   C:/Users/Asus/Downloads/session3/New folder/ripple/Test.vhd
-- Project Name:  ripple
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ripple_Counter_4_bit
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
 
ENTITY Test IS
END Test;
 
ARCHITECTURE behavior OF Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ripple_Counter_4_bit
    PORT(
         CLOCK : IN  std_logic;
         reset : IN  std_logic;
         Counter : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal reset : std_logic := '1';

 	--Outputs
   signal Counter : std_logic_vector(3 downto 0);

   -- Clock period definitions
    constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ripple_Counter_4_bit PORT MAP (
          CLOCK => CLOCK,
          reset => reset,
          Counter => Counter
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		 wait for CLOCK_period/2;
		--wait for 25 ns;
		CLOCK <= '1';
		 wait for CLOCK_period/2;
		--wait for 25 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLOCK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
