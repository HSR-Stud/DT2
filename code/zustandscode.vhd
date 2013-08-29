-- Implizite Form:
-- Darstellung mit Aufzaehltyp 
type STATE_TYPE is (S0, S1, ..., Sn);
signal PRESENT_STATE, NEXT_STATE: STATE_TYPE;



	
--Explizite Form:
--Mit ENUM_ENCODING
type STATE_TYPE is (S0, S1, ..., Sn);
attribute ENUM_ENCODING: STRING;
attribute ENUM_ENCODING of STATE_TYPE:
	type is "0001 0010 0100 ...";
signal PRESENT_STATE, NEXT_STATE: STATE_TYPE;

-- Mit Konstanten
subtype STATE_TYPE is bit_vector(3 downto 0);
constant S0: STATE_TYPE:= "0001";
constant S1: STATE_TYPE:= "0010";
...
signal PRESENT_STATE, NEXT_STATE: STATE_TYPE;	