-- INP nur bei Moore
F: process(INP, PRESENT_State)
begin
	OUP <= '0'		-- Defaultwert
	IF(PRESENT_State = ST_1 and INP = i)
		then OUP <= ...;
	ELSIF(PRESENT_State=...;
		...
	end if;
end process;