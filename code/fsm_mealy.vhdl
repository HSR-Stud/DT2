-- Prozess F = OutputLogic
F: process(INP, PRESENT_State)
begin
	...
end process;
-- Prozess G = NextStateLogic
G: process(INP, PRESENT_State)
begin
	...
end process;
-- Prozess Z = RegisterLogic
Z: process(RST, CLK)
begin
	...
end process;