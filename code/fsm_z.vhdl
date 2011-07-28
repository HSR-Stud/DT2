Z: process(RST, CLK)
	begin					 	-- Zustandswechsel
    if (RST = '1') then		-- Reset
        PRESENT_State <= ST_RESET;
	elsif (CLK = '1') and CLK'event then
		PRESENT_State <= NEXT_State;
    end if;
 end process;