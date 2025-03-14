----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:26:23 05/21/2022 
-- Design Name: 
-- Module Name:    ram - Behavioral 
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

 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ram is
port(   clock: in std_logic; 
        write_enable_first : in std_logic:='0';  
		write_enable_second : in std_logic:='0'; --write enable for port 0
        data_in_first : in std_logic_vector(7 downto 0); 
		data_in_second : in std_logic_vector(7 downto 0); --Input data to port 0.
        address_input_first :in std_logic_vector(7 downto 0);    --address for port 0
        address_input_second : in std_logic_vector(7 downto 0);    --address for port 1
        read_en_first : in std_logic:='0';   --enable port 0.
        read_en_second : in std_logic:='0';   --enable port 1.
        data_out_first : out std_logic_vector(7 downto 0);  --output data from port 0.
        data_out_second : out std_logic_vector(7 downto 0)   --output data from port 1.
    );
end ram;

architecture rtl of ram is

--type and signal declaration for RAM.
subtype word_t is std_logic_vector(7 downto 0);
type ram_type is array(127 downto 0) of word_t;
signal ram_1 : ram_type ;
signal ram_2 : ram_type ;


begin

process(clock)
begin
    if(rising_edge(clock)) then
        --For port 0. Writing.
       -- if(port_en_0 = '1') then    --check enable signal
            if(write_enable_first = '1') then    --see if write enable is ON.
                ram_1(conv_integer(address_input_first)) <= data_in_first;
            end if;
				
       -- end if;
    end if;
end process;
process(clock)
begin
    if(rising_edge(clock)) then
        --For port 0. Writing.
       -- if(port_en_0 = '1') then    --check enable signal
            if(write_enable_second = '1') then    --see if write enable is ON.
                ram_2(conv_integer(address_input_second)) <= data_in_second;
            end if;
			
       -- end if;
    end if;
end process;

--always read when port is enabled.
data_out_first <= ram_1(conv_integer(address_input_first)) when (read_en_first = '1') else
            (others => 'Z');
data_out_second <= ram_2(conv_integer(address_input_second)) when ( read_en_second = '1') else
            (others => 'Z');
            
end rtl;

