-- Deklaration des Komponenten
  component genCount
    generic(MAXCOUNT : integer := 255);
    port(
      clk, nrst, ena : in bit;
      oup : out integer range 0 to MAXCOUNT;
      overflow : out bit);
  end component;
  
-- Instanzierung des Komponenten
count_TIME : genCount
  generic map(MAXCOUNT_TIME)
  port map(clk => clk, 
           ...);