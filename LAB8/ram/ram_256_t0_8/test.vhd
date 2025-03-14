--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:36:12 05/26/2022
-- Design Name:   
-- Module Name:   C:/Users/Asus/Desktop/Lab_8/ram/ram_256_t0_8/test.vhd
-- Project Name:  ram_256_t0_8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ram
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
use IEEE.STD_LOGIC_ARITH.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ram
    PORT(
         clock : IN  std_logic;
         write_enable_first : IN  std_logic;
         write_enable_second : IN  std_logic;
         data_in_first : IN  std_logic_vector(7 downto 0);
         data_in_second : IN  std_logic_vector(7 downto 0);
         address_input_first : IN  std_logic_vector(7 downto 0);
         address_input_second : IN  std_logic_vector(7 downto 0);
         read_en_first : IN  std_logic;
         read_en_second : IN  std_logic;
         data_out_first : OUT  std_logic_vector(7 downto 0);
         data_out_second : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal write_enable_first : std_logic := '0';
   signal write_enable_second : std_logic := '0';
   signal data_in_first : std_logic_vector(7 downto 0) := (others => '0');
   signal data_in_second : std_logic_vector(7 downto 0) := (others => '0');
   signal address_input_first : std_logic_vector(7 downto 0) := (others => '0');
   signal address_input_second : std_logic_vector(7 downto 0) := (others => '0');
   signal read_en_first : std_logic := '0';
   signal read_en_second : std_logic := '0';

 	--Outputs
   signal data_out_first : std_logic_vector(7 downto 0);
   signal data_out_second : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ram PORT MAP (
          clock => clock,
          write_enable_first => write_enable_first,
          write_enable_second => write_enable_second,
          data_in_first => data_in_first,
          data_in_second => data_in_second,
          address_input_first => address_input_first,
          address_input_second => address_input_second,
          read_en_first => read_en_first,
          read_en_second => read_en_second,
          data_out_first => data_out_first,
          data_out_second => data_out_second
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
        read_en_first <= '0';
        read_en_second <= '0';
        write_enable_first <= '1';
        write_enable_second <= '1';
        data_in_first <= "11000000";
        data_in_second <= "00001100";
        address_input_first <=conv_std_logic_vector(12,8);
        address_input_second <= conv_std_logic_vector(3,8);
        wait for 100 ns;
		  read_en_first <= '1';
        read_en_second <= '1';
		  wait for 100 ns;
 
      wait;
   end process;

END;
