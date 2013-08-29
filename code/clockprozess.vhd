signal clk_tb : bit;

stimuli_clk : process
  begin
    clk_tb <= '0';
    loop
      wait for (sym_cyc / 2);
      clk_tb <= not clk_tb;
    end loop;
    wait;
  end process;