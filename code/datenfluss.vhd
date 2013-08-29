-- Beispiel fuer NAND3
Y <= not (A and B and C);
-- Beispiel fuer bit_vector(Q,R,S)
R <= S(3 downto 0);
X <= not Q(2);

-- Falsch, Syntaxfehler:
Y <= A nand B nand C;
-- Erlaubt (aber nicht NAND3):
Y <= (A nand B) nand C;
