library ieee;                                   -- Library declaration
library work; 
use ieee.std_logic_1164.ALL; 

entity BEISPIEL_TB is                           -- Entity declaration
end BEISPIEL_T                                  -- Entity hat keine Schnittstelle 

architecture TESTBENCH of BEISPIEL_TB is        -- Architecture declaration
                      
  signal TB_stimuli : std_logic;                -- Testsignal declaration 
  signal TB_response : std_logic;

  constant SIMULATIOSPERIODE : time := 400 us;  -- Constant declaration
  
  component BEISPIEL                            -- Component declaration
  port (
    INPUTS: in std_logic;
    OUTPUTS: out std_logic);
  end component;

  -- Welche Architektur verwendet wird
  for all : BEISPIEL use entity work.BEISPIEL(behavioral);
  
begin
  BEISPIEL_DUT : BEISPIEL                        -- Instanzierung des DUT
  port map (
    INPUTS => TB_stimuli,
    OUTPUTS => TB_response);
  
  clock : process                               -- Systemtakt
  begin
    Clock_Loop : loop
      tb_clk <= '0';
      wait for clk_period / 2;
      tb_clk <= '1';
      wait for clk_period / 2;
    end loop Clock_Loop;
  end process;
  
  stimuli : process                             -- Prozess legt Stimuli nach
  begin                                         -- vordefiniertem Zeitmuster an
    TB_stimuli <= '0';                          -- anlegen
    wait for SIMULATIONSPERIODE;                -- warten
    TB_stimuli <= '0';                          -- anlegen
    wait;                                       -- wait forever
  end process;
  
  response: process
  begin
    wait for (SIMULATIONSPERIODE - 1 ns);
    assert(TB_response = "00111") report "Error at Vector 00" severity error;
  end process;
end TESTBENCH;
    