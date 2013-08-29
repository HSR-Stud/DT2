State_Register : process(CLK, NRST)
  begin
  
  	--Asynchroner Reset
    if NRST = '0' then 
      PRESENT_STATE <= Reset_State;
      
    --taktsynchroner Zustandswechsel
    elsif CLK'event and CLK = '1' then
      PRESENT_STATE <= NEXT_STATE;
    end if;
  end process;
  
  
  
  
  
  
  