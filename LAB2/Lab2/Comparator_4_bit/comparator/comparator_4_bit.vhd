----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:43:40 03/01/2022 
-- Design Name: 
-- Module Name:    comparator_4_bit - Structural 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparator_4_bit is
    Port ( First : in  STD_LOGIC_VECTOR (3 downto 0);
           Second : in  STD_LOGIC_VECTOR (3 downto 0);
           Equal   : out  STD_LOGIC;
           Greater  : out  STD_LOGIC;
           Smaller : out  STD_LOGIC);
end comparator_4_bit;

architecture Structural of comparator_4_bit is
signal internal: std_logic_vector(3 downto 0);
begin
internal(0)<= First(0) xnor Second(0);
internal(1)<= First(1) xnor Second(1);
internal(2)<= First(2) xnor Second(2);
internal(3)<= First(3) xnor Second(3);

Equal <= internal(3) and internal(2) and internal(1) and internal(0);

Greater <= ( First(3) and (not Second(3)) ) or
    ( internal(3) and First(2) and (not Second(2)) ) or
    ( internal(3) and internal(2) and First(1)and (not Second(1))) or
    (internal(3) and internal(2) and internal(1) and First(0) and (not Second(0)));

Smaller <=( (not First(3)) and Second(3)) or
    (internal(3) and (not First (2)) and Second(2))or
    (internal(3) and internal(2) and (not First(1)) and Second(1)) or
    (internal(3) and internal(2) and internal(1) and (not First(0)) and Second(0));

end structural;
