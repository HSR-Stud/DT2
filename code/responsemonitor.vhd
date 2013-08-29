-- Response Monitor
Response: process
  begin				-- Resultate werden kurz vor Ende des Sim_cyc
    wait for (sim_cyc - 1 ns);		-- abgefragt (Versatz 1ns)
    assert (tb_y = '0') report "error at vector 00" severity error;
    wait for sim_cyc;
    assert (tb_y = '0') report "error at vector 01" severity error;
    wait for sim_cyc;
    ...
    [wait;] -- Wiederkehrend, oder nur einfach
  end process;
  
--Assert im allgemeinen (ist condition = false, so wird assert angezeigt)
assert <condition> [report <"str_expression">] [severity note|warning|error|failure];