type ENUM_TYPE is (VALUE_1,...,VALUE_N);     --"Aufz�hlungsdatentyp" Objekte k�nnen eine  
type STATE-TYPE is (ST_Normal, ST_Sync,      --bestimmete endliche Anzahl von Werten aufnehmen
                    ST_Rset,...);
signal PRESENT_State, NEXT_State: STATE_TYPE

process(INPUTS, PRESENT_State)               --Kom.Logik gerneriert aus Eing�ngen und Zust�nden
begin ...                                    --die Ausg�nge und Sensitivity list, diese 
  ...                                        --beinhaltet Eing�nge und PRESENT_State
  NEXT_State <= ...;
  OUTPUTS <= ...;
end process;

process(CLK,RST)                             --Neuer Zustand wird in Zustandsspeicher geladen
begin                                        --durch Sensitivity list getriggert.
  if (RST = '1') then
    PRESENT_State <= INITIAL_State;
  elsif (CLK'event AND (CLK = '1')) then
    PRESENT_State <= NEXT_State;
  end if;
end process;