--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:34 04/14/2022
-- Design Name:   
-- Module Name:   C:/Users/Asus/Desktop/LAB_4/seq_1010_moore_ovelap/test.vhd
-- Project Name:  seq_1010_moore_ovelap
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: moore_1010
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
 
    COMPONENT moore_1010
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic;
         rst : IN  std_logic;
         dout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal dout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: moore_1010 PORT MAP (
          clk => clk,
          data_in => data_in,
          rst => rst,
          dout => dout
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
               rst <= '1' ;
wait for clk_period;
rst <= '0' ;
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
