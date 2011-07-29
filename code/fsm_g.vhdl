G: process(INP, PRESENT_State)
begin
  -- Default Folgezustand
	NEXT_State <= ST_RESET;
	-- Folgezustand berechnen
	case PRESENT_State  is	  
		when  ST_1 =>  	
			if (Bedingung 1 als Fkt. der Eingänge)
				then  NEXT_State <= ST_x1;
			else NEXT_State <= ST_y1;
			end if;
		when  ST_2 => 	
			if (Bedingung 2 als Fkt. der Eingänge)
				then NEXT_State <= ST_x2;
			else NEXT_State <= ST_y2;
			end if;
		when ...
		when others  =>	null; 	-- ERROR state
	end case;
end process;