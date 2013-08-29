library ieee;
use ieee.std_logic_1164.all;
entity COUNTER4 is
	port(
		ENABLE, EP, CLK: in std_logic;
		OUTPUT: out std_logic_vector(3 downto 0);
		CARRY2: out std_logic);
	end;

architecture STRUCTURAL of COUNTER4 is
	
signal CARRY1: std_logic;
component COUNTER2_BIDIR
	port(
		ENA, DIR, CLK: in std_logic;
		CARRY: out std_logic;
		OUP: out std_logic_vector(1 downto 0));
end component;
	
begin
	
Inst1: COUNTER2_BIDIR
	port map(
		ENA => ENABLE,
		DIR => UP,
		CLK => CLK,
		CARRY => CARRY1,
		OUP => OUTPUT(1 downto 0));
	
Inst2: COUNTER2_BIDIR
	port map(
		ENA => CARRY1,
		DIR => UP,
		CLK => CLK,
		CARRY => CARRY2,
		OUP => OUTPUT(3 downto 2));
end STRUCTURAL;