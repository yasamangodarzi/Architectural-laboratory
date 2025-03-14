----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:01:12 05/05/2022 
-- Design Name: 
-- Module Name:    Multiplier - Behavioral 
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
------------------------------------------------------
--
-- Library Name : DSD
-- Unit Name : Multiplier
--
-- Description : Complete multiplier
--
------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
--library synplify; -- required for synthesis
--use synplify.attributes.all; -- required for synthesis
entity Multiplier is
 port (
 Multiplicand : in std_logic_vector(7 downto 0 );
 Multiplier : in std_logic_vector(7 downto 0 );
 clk : in std_logic;
 RST : in std_logic;
 START : in std_logic;
 in_3 : out std_logic_vector(15 downto 0 );
 Ready : out std_logic);
end Multiplier;
use work.all;
architecture rtl of Multiplier is
 signal ADD_cmd : std_logic;
 signal Add_out : std_logic_vector(7 downto 0 );
 signal C_out_1 : std_logic;
 signal LOAD_cmd : std_logic;
 signal LSB : std_logic;
 signal RA : std_logic_vector(7 downto 0 );
 signal RB : std_logic_vector(7 downto 0 );
 signal SHIFT_cmd : std_logic;
 component ripple_carry_adder_new
 port (
 RA : in std_logic_vector(7 downto 0 );
 RB : in std_logic_vector(7 downto 0 );
 C_out : out std_logic;
 Add_out : out std_logic_vector(7 downto 0 )
 );
 end component;
 component Controller_unit
 port (
 RST : in std_logic;
 clk : in std_logic;
 START : in std_logic;
 LSB : in std_logic;
 Add : out std_logic;
 Shift : out std_logic;
 LOAD : out std_logic;
 Ready : out std_logic
 );
 end component;
 component Multiplicand_register_8bit
 port (
 RST : in std_logic ;
 Multiplicand : in std_logic_vector (7 downto 0);
 Logic : in std_logic ;
 in_1 : out std_logic_vector (7 downto 0));
 end component;
 component Product_16bit
 port (
 RST : in std_logic ;
 clk : in std_logic ;
 Multiplier : in std_logic_vector (7 downto 0);
 Logic : in std_logic ;
 SHIFT : in std_logic ;
 Add : in std_logic ;
 result : in std_logic_vector (7 downto 0);
 C_out : in std_logic ;
 in_3 : out std_logic_vector (15 downto 0);
 LSB : out std_logic ;
 in_2 : out std_logic_vector (7 downto 0));
 end component;
begin
 inst_RCA: ripple_carry_adder_new
 port map (
 RA => RA(7 downto 0),
 RB => RB(7 downto 0),
 C_out => C_out_1 ,
 Add_out => Add_out(7 downto 0)
 );
 inst_Controller: Controller_unit
 port map (
RST => RST,
 clk => clk,
 START => START,
 LSB => LSB,
 Add => ADD_cmd,
 Shift => SHIFT_cmd,
 LOAD => LOAD_cmd,
 Ready => Ready
 );
inst_Multiplicand: Multiplicand_register_8bit
 port map (
RST => RST,
 Multiplicand =>  Multiplicand(7 downto 0),
 Logic => LOAD_cmd,
 in_1 => RA(7 downto 0)
 );
 inst_Multiplier_Result: Product_16bit
 port map (
 RST=> RST,
 clk => clk,
 Multiplier =>  Multiplier (7 downto 0),
Logic => LOAD_cmd,
 SHIFT => SHIFT_cmd,
 Add => ADD_cmd,
 result => Add_out(7 downto 0),
 C_out => C_out_1,
 in_3 => in_3 (15 downto 0),
 LSB => LSB,
 in_2 => RB(7 downto 0)
 );
end rtl;
