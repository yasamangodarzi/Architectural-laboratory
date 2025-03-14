--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:29:22 06/07/2022
-- Design Name:   
-- Module Name:   C:/Users/Asus/Desktop/lab_10/basic_computer/test.vhd
-- Project Name:  basic_computer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BasicComputer
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
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BasicComputer
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         program_counter_out : OUT  std_logic_vector(7 downto 0);
         register_ac_out : OUT  std_logic_vector(15 downto 0);
         memory_data_register_out : OUT  std_logic_vector(15 downto 0);
         memory_address_register_out : OUT  std_logic_vector(7 downto 0);
         memory_write_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal program_counter_out : std_logic_vector(7 downto 0);
   signal register_ac_out : std_logic_vector(15 downto 0);
   signal memory_data_register_out : std_logic_vector(15 downto 0);
   signal memory_address_register_out : std_logic_vector(7 downto 0);
   signal memory_write_out : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BasicComputer PORT MAP (
          clock => clock,
          reset => reset,
          program_counter_out => program_counter_out,
          register_ac_out => register_ac_out,
          memory_data_register_out => memory_data_register_out,
          memory_address_register_out => memory_address_register_out,
          memory_write_out => memory_write_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
             
      wait for clock_period*10;
		--store 
		register_ac <= "11111111";
		memory_address_register <="0000000100000001";
      memory_write <=  1 ;
		wait for clock_period*10;
		memory_write <=  0;
		--load
		memory_address_register <="0000000100000010";
		wait for clock_period*10;
		-- add 
		memory_address_register <="0000000100000000";
		wait for clock_period*10;
		-- jump
		memory_address_register <="0000000100000011";
		wait for clock_period*10;
		-- execute_jneg
		memory_address_register <="0000000100000100";
		wait for clock_period*10;

      wait;
   end process;

END;
