-- Einfacher Signalverlauf
s <= transport '0',
	'1' after 20ns,
	'0' after 30ns,
	'1' after 60ns;


-- Wiederkehrender Signalverlauf
stimuli : process
  begin
    s <= '0';
    wait for 20 ns;
    s <= '1';
    wait for 10 ns;
-- Mit [wait;] ebenfalls nur einfach
  end process;