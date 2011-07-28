--Deklaration
entity COUNTX is                        
  generic(
  MAXCOUNT: integer := 127);
  port(
  CLK, NRST, ENA in st_logic;
  OUP: out integer range to MAXCOUNT);
end;

--Instanzierung
architecture to of COUNTX_TB is         
  constant sim_cyc: time := 100ns;
  constant maxcount1: integer := 14;
  constant maxcount2: integer := 16;
  signal tb_clk, tb_nrst, tb_ena: std_logic;
  signal tb_oup1: integer range 0 to maxcount1;
  signal tb_oup2: integer range 0 to maxcount2;
 
 --Komponente mit generic deklarieren  
 component countx                      
  generic(maxcount: integer := 227);
  port(
    clk, nrst, ena: in std_logic;
    oup: oup integer range 0 to maxcount);
end component;

--Instanz mit generic map
begin
dut1: countx
  generic map(maxcount1)
  port map(tb_clk, tb_nrst, tb_ena, tb_oup1);
dut1: countx
  generic map(maxcount2)
  port map(tb_clk, tb_nrst, tb_ena, tb_oup2);