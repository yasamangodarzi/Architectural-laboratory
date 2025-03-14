--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:25:23 04/14/2022
-- Design Name:   
-- Module Name:   C:/Users/Asus/Desktop/LAB_4/seq_1110/TEST.vhd
-- Project Name:  seq_1110
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mealy
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
 
ENTITY TEST IS
END TEST;
 
ARCHITECTURE behavior OF TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mealy
    PORT(
         CLOCK : IN  std_logic;
         RST : IN  std_logic;
         X : IN  std_logic;
         OUTPUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLOCK : std_logic := '0';
   signal RST : std_logic := '0';
   signal X : std_logic := '0';

 	--Outputs
   signal OUTPUT : std_logic;

   -- Clock period definitions
   constant CLOCK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mealy PORT MAP (
          CLOCK => CLOCK,
          RST => RST,
          X => X,
          OUTPUT => OUTPUT
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RST <= '1' ;
		wait for CLOCK_period;
		RST <= '0' ;
		wait for CLOCK_period;
		X <= '0' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '0' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '1' ;
		wait for CLOCK_period;
		X <= '0' ;
      wait;
   end process;

END;
