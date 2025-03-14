library ieee;
use ieee.std_logic_1164.all ;
entity fsm_eg is

	port (
			clk, reset: in std_logic;
			a, b: in std_logic;
			y0, y1: out std_logic
	);

end fsm_eg;


architecture mult_seg_arch of fsm_eg is
	type eg_state_type is (s0, s1, s2);
	signal state_reg , state_next : eg_state_type ;
begin
-- state register
	process(clk,reset)
	begin
		if (reset=’1’) then 
			state_reg <= SO;
		e1sif (clk’event and clk=’1’) then
			state_reg <= state_next;
		end if;
	end process;
-- next-state logic
process (state_reg ,a,b)
begin
	case state_reg is
		when SO =>
		if a=’1’ then
		if b=’1' then
			state_next <= s2;
		else
			state_next <= sl;
		end if;
	else
			state_next <= S0;
		end if;
	when s1 =>
		if (a=’1’) then
			state_next <= S0;
		else
			state_next <= s1;
		end if;
	when s2 =>
	state_next <= S0;
	end case;
end process;
-- Moore output logic
process(state_reg)
begin
	case state_reg is
		when s0|s2 =>
			y1 <= ’0’;
		when s1 =>
			y1 <=’1’;
	end case;
end process
-- Mealy output logic 
process(state_reg ,a,b)
begin
	case state_reg is
		when S0 =>
			if (a='1') and (b='1') then
				y1 <= '1';
			end if;
		when s1 | s2 =>
			yo <= ’0’;
		end case;
	end process;
end mult_seg_arch;