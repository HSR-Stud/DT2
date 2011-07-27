type ENUM_TYPE is (VALUE_1,...,VALUE_N);
type STATE-TYPE is (ST_Normal, ST_Sync,
					ST_Rset,...);
signal PRESENT_State, NEXT_State: STATE_TYPE

process(INPUTS, PRESENT_State)
begin ...
	...
	NEXT_State <= ...;
	OUTPUTS <= ...;
end process;

process(CLK,RST)
begin
	if (RST = '1') then
		PRESENT_State <= INITIAL_State;
	elsif (CLK'event AND (CLK = '1')) then
		PRESENT_State <= NEXT_State;
	end if;
end process;