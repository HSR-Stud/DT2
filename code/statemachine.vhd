architecture tool_codierung of driver is
type state_type is (reset, s1, s2);
signal present_state, next_state : state_type;
begin
	State_Register: process(nrst, clk)
	begin
		if nrst = '0' then
			present_state <= reset;	
		elsif clk = '1' and clk'event then
			present_state <= next_state;
		end if;	
	end process;
	Next_state: process(present_state, <other>)
	begin
		case present_state is
			when reset => 	<Do something>;
			when s1 => 			<Do something>;
			when s2 => 			<Do something>;
			when others => 	<Do something>;
		end case;	
	end process;
	Output: process(present_state, <other>)
	begin
		case present_state is
			when reset => 	<Do something>;
			when s1	=>			<Do something>;
			when s2	=>			<Do something>;
			when others => 	<Do something>;
		end case;	
	end process;
end tool_codierung;