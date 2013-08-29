-- Zuweisungsoperator <=
-- type: bit
Y <= X;
A <= '0';
-- type: bit_vector
Q <= "1010";
-- logische Ausdruecke
C <= D and E;


--Selektive Signalzuweisung
architecture SELEKTIV of ... is
begin
	with S select
		Y <=	E(0) when "00",
			 		E(1) when "01",
			 		E(2) when "10",
			 		E(3) when others;
end SELEKTIV;

-- Unbedingte Signalzuweisung
architecture UNBEDINGT of ... is
begin
	U <= A;
	V <= not U;
	W <= A xor B(0);
	X <= (A and S) or (B(1) and not S);
end UNBEDINGT;


--Bedingte Signalzuweisung
architecture BEDINGT of ... is
begin
	Y <=	E(0) when S = "00" else
				E(1) when S = "01" else
				E(2) when S = "10" else
				E(3) when others;
end BEDINGT;