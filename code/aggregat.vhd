signal DATABUS : bit_vector(3 downto 0);
signal D1, D2, D3, D4 : bit;
...
-- implizit
DATABUS <= (D1, D2, D3, D4);
-- explizit
DATABUS <= (1=> D3, 0=> D4, 3=> D1, 2=> D2); 
-- ist identisch mit:
DATABUS(3) <= D1;
DATABUS(2) <= D2;
DATABUS(1) <= D3;
DATABUS(0) <= D4;

--oder mit Werten
DATABUS <= ('1', '0', '1', '0');
DATABUS <= (3 => '1', 1 => '1', others => '0');
DATABUS <= "1010";