--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: division_synthesis.vhd
-- /___/   /\     Timestamp: Fri May 27 11:10:05 2022
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm division -w -dir netgen/synthesis -ofmt vhdl -sim division.ngc division_synthesis.vhd 
-- Device	: xc6slx4-3-tqg144
-- Input file	: division.ngc
-- Output file	: C:\Users\Asus\Desktop\lab_9\divisor_8_4\netgen\synthesis\division_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: division
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity division is
  port (
    overflow : out STD_LOGIC; 
    dividend : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    divisor : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    remainder : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    quotient : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end division;

architecture Structure of division is
  signal dividend_7_IBUF_0 : STD_LOGIC; 
  signal dividend_6_IBUF_1 : STD_LOGIC; 
  signal dividend_5_IBUF_2 : STD_LOGIC; 
  signal dividend_4_IBUF_3 : STD_LOGIC; 
  signal dividend_3_IBUF_4 : STD_LOGIC; 
  signal dividend_2_IBUF_5 : STD_LOGIC; 
  signal dividend_1_IBUF_6 : STD_LOGIC; 
  signal dividend_0_IBUF_7 : STD_LOGIC; 
  signal divisor_3_IBUF_8 : STD_LOGIC; 
  signal divisor_2_IBUF_9 : STD_LOGIC; 
  signal divisor_1_IBUF_10 : STD_LOGIC; 
  signal divisor_0_IBUF_11 : STD_LOGIC; 
  signal divisor_3_dividend_6_LessThan_4_o : STD_LOGIC; 
  signal divisor_3_dividend_6_LessThan_11_o : STD_LOGIC; 
  signal divisor_3_dividend_6_LessThan_18_o : STD_LOGIC; 
  signal divisor_3_dividend_6_LessThan_25_o : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_7_OUT_3_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_7_OUT_2_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_7_OUT_1_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_7_OUT_0_Q : STD_LOGIC; 
  signal quotient_3_OBUFT_20 : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_14_OUT_3_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_14_OUT_2_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_14_OUT_1_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_14_OUT_0_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_21_OUT_3_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_21_OUT_2_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_21_OUT_1_Q : STD_LOGIC; 
  signal dividend_6_GND_6_o_mux_21_OUT_0_Q : STD_LOGIC; 
  signal remainder_3_OBUFT_29 : STD_LOGIC; 
  signal remainder_2_OBUFT_30 : STD_LOGIC; 
  signal remainder_1_OBUFT_31 : STD_LOGIC; 
  signal remainder_0_OBUFT_32 : STD_LOGIC; 
  signal quotient_2_OBUFT_41 : STD_LOGIC; 
  signal quotient_1_OBUFT_42 : STD_LOGIC; 
  signal quotient_0_OBUFT_43 : STD_LOGIC; 
  signal divisor_3_INV_18_o_inv1 : STD_LOGIC; 
  signal Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_Q : STD_LOGIC; 
  signal Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_2_Q : STD_LOGIC; 
  signal divisor_3_INV_18_o1_47 : STD_LOGIC; 
  signal Msub_GND_6_o_GND_6_o_sub_12_OUT_3_0_cy_2_Q : STD_LOGIC; 
  signal Msub_GND_6_o_GND_6_o_sub_19_OUT_3_0_cy_2_Q : STD_LOGIC; 
  signal Msub_GND_6_o_GND_6_o_sub_26_OUT_3_0_cy_2_Q : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
begin
  Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => divisor_0_IBUF_11,
      I1 => dividend_3_IBUF_4,
      O => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_10_o11 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => dividend_7_IBUF_0,
      I1 => divisor_3_dividend_6_LessThan_4_o,
      O => quotient_3_OBUFT_20
    );
  divisor_3_INV_18_o_inv11 : LUT3
    generic map(
      INIT => X"4D"
    )
    port map (
      I0 => divisor_3_IBUF_8,
      I1 => dividend_7_IBUF_0,
      I2 => divisor_3_INV_18_o1_47,
      O => divisor_3_INV_18_o_inv1
    );
  divisor_3_INV_18_o1 : LUT6
    generic map(
      INIT => X"4D44DD4D4D444D44"
    )
    port map (
      I0 => dividend_6_IBUF_1,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_5_IBUF_2,
      I3 => divisor_1_IBUF_10,
      I4 => dividend_4_IBUF_3,
      I5 => divisor_0_IBUF_11,
      O => divisor_3_INV_18_o1_47
    );
  divisor_3_dividend_6_LessThan_11_o1 : LUT5
    generic map(
      INIT => X"088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_7_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_7_OUT_1_Q,
      I2 => N6,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      O => divisor_3_dividend_6_LessThan_11_o
    );
  divisor_3_dividend_6_LessThan_18_o1 : LUT5
    generic map(
      INIT => X"088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_14_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_14_OUT_1_Q,
      I2 => N8,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      O => divisor_3_dividend_6_LessThan_18_o
    );
  divisor_3_dividend_6_LessThan_25_o1 : LUT5
    generic map(
      INIT => X"088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_21_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_21_OUT_1_Q,
      I2 => N10,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      O => divisor_3_dividend_6_LessThan_25_o
    );
  dividend_7_IBUF : IBUF
    port map (
      I => dividend(7),
      O => dividend_7_IBUF_0
    );
  dividend_6_IBUF : IBUF
    port map (
      I => dividend(6),
      O => dividend_6_IBUF_1
    );
  dividend_5_IBUF : IBUF
    port map (
      I => dividend(5),
      O => dividend_5_IBUF_2
    );
  dividend_4_IBUF : IBUF
    port map (
      I => dividend(4),
      O => dividend_4_IBUF_3
    );
  dividend_3_IBUF : IBUF
    port map (
      I => dividend(3),
      O => dividend_3_IBUF_4
    );
  dividend_2_IBUF : IBUF
    port map (
      I => dividend(2),
      O => dividend_2_IBUF_5
    );
  dividend_1_IBUF : IBUF
    port map (
      I => dividend(1),
      O => dividend_1_IBUF_6
    );
  dividend_0_IBUF : IBUF
    port map (
      I => dividend(0),
      O => dividend_0_IBUF_7
    );
  divisor_3_IBUF : IBUF
    port map (
      I => divisor(3),
      O => divisor_3_IBUF_8
    );
  divisor_2_IBUF : IBUF
    port map (
      I => divisor(2),
      O => divisor_2_IBUF_9
    );
  divisor_1_IBUF : IBUF
    port map (
      I => divisor(1),
      O => divisor_1_IBUF_10
    );
  divisor_0_IBUF : IBUF
    port map (
      I => divisor(0),
      O => divisor_0_IBUF_11
    );
  remainder_3_OBUFT : OBUFT
    port map (
      I => remainder_3_OBUFT_29,
      T => divisor_3_INV_18_o_inv1,
      O => remainder(3)
    );
  remainder_2_OBUFT : OBUFT
    port map (
      I => remainder_2_OBUFT_30,
      T => divisor_3_INV_18_o_inv1,
      O => remainder(2)
    );
  remainder_1_OBUFT : OBUFT
    port map (
      I => remainder_1_OBUFT_31,
      T => divisor_3_INV_18_o_inv1,
      O => remainder(1)
    );
  remainder_0_OBUFT : OBUFT
    port map (
      I => remainder_0_OBUFT_32,
      T => divisor_3_INV_18_o_inv1,
      O => remainder(0)
    );
  quotient_3_OBUFT : OBUFT
    port map (
      I => quotient_3_OBUFT_20,
      T => divisor_3_INV_18_o_inv1,
      O => quotient(3)
    );
  quotient_2_OBUFT : OBUFT
    port map (
      I => quotient_2_OBUFT_41,
      T => divisor_3_INV_18_o_inv1,
      O => quotient(2)
    );
  quotient_1_OBUFT : OBUFT
    port map (
      I => quotient_1_OBUFT_42,
      T => divisor_3_INV_18_o_inv1,
      O => quotient(1)
    );
  quotient_0_OBUFT : OBUFT
    port map (
      I => quotient_0_OBUFT_43,
      T => divisor_3_INV_18_o_inv1,
      O => quotient(0)
    );
  overflow_OBUF : OBUF
    port map (
      I => divisor_3_INV_18_o_inv1,
      O => overflow
    );
  Mmux_dividend_6_GND_6_o_mux_7_OUT41 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_IBUF_1,
      I1 => dividend_7_IBUF_0,
      I2 => divisor_3_dividend_6_LessThan_4_o,
      I3 => divisor_3_IBUF_8,
      I4 => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_2_Q,
      O => dividend_6_GND_6_o_mux_7_OUT_3_Q
    );
  Mmux_dividend_6_GND_6_o_mux_7_OUT11 : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => dividend_3_IBUF_4,
      I1 => dividend_7_IBUF_0,
      I2 => divisor_3_dividend_6_LessThan_4_o,
      I3 => divisor_0_IBUF_11,
      O => dividend_6_GND_6_o_mux_7_OUT_0_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o141 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_7_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_11_o,
      I3 => divisor_3_IBUF_8,
      I4 => Msub_GND_6_o_GND_6_o_sub_12_OUT_3_0_cy_2_Q,
      O => dividend_6_GND_6_o_mux_14_OUT_3_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o111 : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => dividend_2_IBUF_5,
      I1 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_11_o,
      I3 => divisor_0_IBUF_11,
      O => dividend_6_GND_6_o_mux_14_OUT_0_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o141 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_14_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_18_o,
      I3 => divisor_3_IBUF_8,
      I4 => Msub_GND_6_o_GND_6_o_sub_19_OUT_3_0_cy_2_Q,
      O => dividend_6_GND_6_o_mux_21_OUT_3_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o111 : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => dividend_1_IBUF_6,
      I1 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_18_o,
      I3 => divisor_0_IBUF_11,
      O => dividend_6_GND_6_o_mux_21_OUT_0_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o141 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_21_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_21_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_25_o,
      I3 => divisor_3_IBUF_8,
      I4 => Msub_GND_6_o_GND_6_o_sub_26_OUT_3_0_cy_2_Q,
      O => remainder_3_OBUFT_29
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o111 : LUT4
    generic map(
      INIT => X"56AA"
    )
    port map (
      I0 => dividend_0_IBUF_7,
      I1 => dividend_6_GND_6_o_mux_21_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_25_o,
      I3 => divisor_0_IBUF_11,
      O => remainder_0_OBUFT_32
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o13 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_21_OUT_1_Q,
      I1 => divisor_3_dividend_6_LessThan_25_o,
      I2 => dividend_6_GND_6_o_mux_21_OUT_3_Q,
      I3 => N15,
      I4 => divisor_2_IBUF_9,
      O => remainder_2_OBUFT_30
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o13 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_7_OUT_1_Q,
      I1 => divisor_3_dividend_6_LessThan_11_o,
      I2 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I3 => N17,
      I4 => divisor_2_IBUF_9,
      O => dividend_6_GND_6_o_mux_14_OUT_2_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o13 : LUT5
    generic map(
      INIT => X"56AAAA56"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_14_OUT_1_Q,
      I1 => divisor_3_dividend_6_LessThan_18_o,
      I2 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I3 => N19,
      I4 => divisor_2_IBUF_9,
      O => dividend_6_GND_6_o_mux_21_OUT_2_Q
    );
  Mmux_dividend_6_GND_6_o_mux_7_OUT3_SW1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => dividend_7_IBUF_0,
      I1 => divisor_3_dividend_6_LessThan_4_o,
      O => N23
    );
  Mmux_dividend_6_GND_6_o_mux_7_OUT3 : LUT6
    generic map(
      INIT => X"AAAAAAAA69996669"
    )
    port map (
      I0 => dividend_5_IBUF_2,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_4_IBUF_3,
      I3 => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_Q,
      I4 => divisor_1_IBUF_10,
      I5 => N23,
      O => dividend_6_GND_6_o_mux_7_OUT_2_Q
    );
  divisor_3_dividend_6_LessThan_11_o1_SW0 : LUT6
    generic map(
      INIT => X"A955FF550000A900"
    )
    port map (
      I0 => dividend_3_IBUF_4,
      I1 => dividend_7_IBUF_0,
      I2 => divisor_3_dividend_6_LessThan_4_o,
      I3 => divisor_0_IBUF_11,
      I4 => dividend_2_IBUF_5,
      I5 => divisor_1_IBUF_10,
      O => N6
    );
  divisor_3_dividend_6_LessThan_18_o1_SW0 : LUT6
    generic map(
      INIT => X"A955FF550000A900"
    )
    port map (
      I0 => dividend_2_IBUF_5,
      I1 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_11_o,
      I3 => divisor_0_IBUF_11,
      I4 => dividend_1_IBUF_6,
      I5 => divisor_1_IBUF_10,
      O => N8
    );
  divisor_3_dividend_6_LessThan_25_o1_SW0 : LUT6
    generic map(
      INIT => X"A955FF550000A900"
    )
    port map (
      I0 => dividend_1_IBUF_6,
      I1 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I2 => divisor_3_dividend_6_LessThan_18_o,
      I3 => divisor_0_IBUF_11,
      I4 => dividend_0_IBUF_7,
      I5 => divisor_1_IBUF_10,
      O => N10
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_7_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_7_OUT_1_Q,
      I2 => N6,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      I5 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      O => quotient_2_OBUFT_41
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_14_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_14_OUT_1_Q,
      I2 => N8,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      I5 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      O => quotient_1_OBUFT_42
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFF088AAEEF"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_21_OUT_2_Q,
      I1 => dividend_6_GND_6_o_mux_21_OUT_1_Q,
      I2 => N10,
      I3 => divisor_2_IBUF_9,
      I4 => divisor_3_IBUF_8,
      I5 => dividend_6_GND_6_o_mux_21_OUT_3_Q,
      O => quotient_0_OBUFT_43
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o13_SW0 : LUT6
    generic map(
      INIT => X"777D1114DDDDDDDD"
    )
    port map (
      I0 => divisor_1_IBUF_10,
      I1 => dividend_1_IBUF_6,
      I2 => divisor_3_dividend_6_LessThan_18_o,
      I3 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I4 => dividend_0_IBUF_7,
      I5 => divisor_0_IBUF_11,
      O => N15
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o13_SW0 : LUT6
    generic map(
      INIT => X"777D1114DDDDDDDD"
    )
    port map (
      I0 => divisor_1_IBUF_10,
      I1 => dividend_3_IBUF_4,
      I2 => divisor_3_dividend_6_LessThan_4_o,
      I3 => dividend_7_IBUF_0,
      I4 => dividend_2_IBUF_5,
      I5 => divisor_0_IBUF_11,
      O => N17
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o13_SW0 : LUT6
    generic map(
      INIT => X"777D1114DDDDDDDD"
    )
    port map (
      I0 => divisor_1_IBUF_10,
      I1 => dividend_2_IBUF_5,
      I2 => divisor_3_dividend_6_LessThan_11_o,
      I3 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I4 => dividend_1_IBUF_6,
      I5 => divisor_0_IBUF_11,
      O => N19
    );
  Mmux_dividend_6_GND_6_o_mux_7_OUT21 : LUT6
    generic map(
      INIT => X"11F1EE0EFF1F00E0"
    )
    port map (
      I0 => dividend_7_IBUF_0,
      I1 => divisor_3_dividend_6_LessThan_4_o,
      I2 => divisor_0_IBUF_11,
      I3 => dividend_3_IBUF_4,
      I4 => dividend_4_IBUF_3,
      I5 => divisor_1_IBUF_10,
      O => dividend_6_GND_6_o_mux_7_OUT_1_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_12_o121 : LUT6
    generic map(
      INIT => X"11F1EE0EFF1F00E0"
    )
    port map (
      I0 => divisor_3_dividend_6_LessThan_11_o,
      I1 => dividend_6_GND_6_o_mux_7_OUT_3_Q,
      I2 => divisor_0_IBUF_11,
      I3 => dividend_2_IBUF_5,
      I4 => dividend_6_GND_6_o_mux_7_OUT_0_Q,
      I5 => divisor_1_IBUF_10,
      O => dividend_6_GND_6_o_mux_14_OUT_1_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_14_o121 : LUT6
    generic map(
      INIT => X"11F1EE0EFF1F00E0"
    )
    port map (
      I0 => divisor_3_dividend_6_LessThan_18_o,
      I1 => dividend_6_GND_6_o_mux_14_OUT_3_Q,
      I2 => divisor_0_IBUF_11,
      I3 => dividend_1_IBUF_6,
      I4 => dividend_6_GND_6_o_mux_14_OUT_0_Q,
      I5 => divisor_1_IBUF_10,
      O => dividend_6_GND_6_o_mux_21_OUT_1_Q
    );
  Mmux_GND_6_o_PWR_6_o_MUX_16_o121 : LUT6
    generic map(
      INIT => X"11F1EE0EFF1F00E0"
    )
    port map (
      I0 => divisor_3_dividend_6_LessThan_25_o,
      I1 => dividend_6_GND_6_o_mux_21_OUT_3_Q,
      I2 => divisor_0_IBUF_11,
      I3 => dividend_0_IBUF_7,
      I4 => dividend_6_GND_6_o_mux_21_OUT_0_Q,
      I5 => divisor_1_IBUF_10,
      O => remainder_1_OBUFT_31
    );
  Msub_GND_6_o_GND_6_o_sub_26_OUT_3_0_cy_2_11 : LUT6
    generic map(
      INIT => X"B2BBB2BB22B2B2BB"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_21_OUT_1_Q,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_6_GND_6_o_mux_21_OUT_0_Q,
      I3 => divisor_1_IBUF_10,
      I4 => divisor_0_IBUF_11,
      I5 => dividend_0_IBUF_7,
      O => Msub_GND_6_o_GND_6_o_sub_26_OUT_3_0_cy_2_Q
    );
  Msub_GND_6_o_GND_6_o_sub_12_OUT_3_0_cy_2_11 : LUT6
    generic map(
      INIT => X"B2BBB2BB22B2B2BB"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_7_OUT_1_Q,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_6_GND_6_o_mux_7_OUT_0_Q,
      I3 => divisor_1_IBUF_10,
      I4 => divisor_0_IBUF_11,
      I5 => dividend_2_IBUF_5,
      O => Msub_GND_6_o_GND_6_o_sub_12_OUT_3_0_cy_2_Q
    );
  Msub_GND_6_o_GND_6_o_sub_19_OUT_3_0_cy_2_11 : LUT6
    generic map(
      INIT => X"B2BBB2BB22B2B2BB"
    )
    port map (
      I0 => dividend_6_GND_6_o_mux_14_OUT_1_Q,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_6_GND_6_o_mux_14_OUT_0_Q,
      I3 => divisor_1_IBUF_10,
      I4 => divisor_0_IBUF_11,
      I5 => dividend_1_IBUF_6,
      O => Msub_GND_6_o_GND_6_o_sub_19_OUT_3_0_cy_2_Q
    );
  Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_2_11 : LUT6
    generic map(
      INIT => X"B2BBB2BB22B2B2BB"
    )
    port map (
      I0 => dividend_5_IBUF_2,
      I1 => divisor_2_IBUF_9,
      I2 => dividend_4_IBUF_3,
      I3 => divisor_1_IBUF_10,
      I4 => divisor_0_IBUF_11,
      I5 => dividend_3_IBUF_4,
      O => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_2_Q
    );
  divisor_3_dividend_6_LessThan_4_o1 : MUXF7
    port map (
      I0 => N25,
      I1 => N26,
      S => divisor_3_IBUF_8,
      O => divisor_3_dividend_6_LessThan_4_o
    );
  divisor_3_dividend_6_LessThan_4_o1_F : LUT6
    generic map(
      INIT => X"FFFFFFFFBF3B2302"
    )
    port map (
      I0 => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_Q,
      I1 => divisor_2_IBUF_9,
      I2 => divisor_1_IBUF_10,
      I3 => dividend_4_IBUF_3,
      I4 => dividend_5_IBUF_2,
      I5 => dividend_6_IBUF_1,
      O => N25
    );
  divisor_3_dividend_6_LessThan_4_o1_G : LUT6
    generic map(
      INIT => X"8AAA0A8A080A0008"
    )
    port map (
      I0 => dividend_6_IBUF_1,
      I1 => Msub_GND_6_o_GND_6_o_sub_5_OUT_3_0_cy_0_Q,
      I2 => divisor_2_IBUF_9,
      I3 => divisor_1_IBUF_10,
      I4 => dividend_4_IBUF_3,
      I5 => dividend_5_IBUF_2,
      O => N26
    );

end Structure;

