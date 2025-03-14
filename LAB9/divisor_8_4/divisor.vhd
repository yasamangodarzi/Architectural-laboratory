----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:36 05/27/2022 
-- Design Name: 
-- Module Name:    divisor - Behavioral 
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
--8-4 bit division
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity division is
port (
	dividend : in std_logic_vector (7 downto 0);
	divisor : in std_logic_vector (3 downto 0);
	remainder : out std_logic_vector(3 downto 0);
	quotient : out std_logic_vector(3 downto 0);
	overflow : out std_logic
 );
end division;

architecture Behavioral of division is


begin

    process(dividend , divisor)
	variable r: std_logic_vector(3 downto 0);
        variable a: std_logic_vector(3 downto 0);
        variable E: std_logic;
  
 begin
    r := dividend (7 downto 4);
    a := dividend (3 downto 0);
	 
	
       if(r >= divisor) then
           overflow <= '1';
	   r := "ZZZZ";
           a := "ZZZZ";

      else
	
	overflow <= '0';
	for i in 0 to 3 loop 
	
		E := r(3);
		
		r := r(2 downto 0) & a(3);
        	a := a(2 downto 0) & '0';
				
		if (E = '1') then 
			r := r - divisor;
			a(0):= '1';
		elsif (E = '0') then
			if(r < divisor) then
				a(0) := '0';
			end if;
			if (r >= divisor) then 
				r := r - divisor ;
			 	a(0):= '1'; 
			end if;
				
		end if;
		end loop;
		end if;
remainder <= r;
quotient <= a;

end process;	
end Behavioral;


