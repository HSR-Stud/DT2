-- Kontrollstruktur mit if.. then..
--                      elsif..else
process(E,S)
begin
	if	(S = "00") then y <= E(0);
	elsif	(S = "01") then y <= E(1);
	elsif	(S = "10") then y <= E(2);
	else	y <= E(1);
	end if;
end process;

--Kontrollstruktur mit case
process(E,S)
begin
	case S is
		when "00" => y <= E(0);
		when "01" => y <= E(1);
		when "10" => y <= E(2);
		when others => y <= E(1);
	end case;
end process;