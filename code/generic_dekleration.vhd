entity genCount is
  generic(
    -- 255 ist einfach Default-Value
    MAXCOUNT: integer := 255);
  port(
    clk, nrst, ena : in bit; 
 --MAXCOUNT wird als "Konstante" verwendet
    oup : out integer range 0 to MAXCOUNT;
    overflow : out bit);
end genCount;