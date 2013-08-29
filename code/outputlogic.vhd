-- Mealy-Struktur
Output_Logic: process(INPUT, PRESENT_STATE)
begin
	...
end process;


-- Moore-Struktur
Output_Logic: process(PRESENT_STATE)
begin
	...
end process;	
-- Medwedjew-Struktur
Output_Logic: 
	y <= PRESENT_STATE;