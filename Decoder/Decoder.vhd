library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is 

	port (a : in std_logic;
			b : in std_logic;
			salida1: out std_logic;
			salida2: out std_logic;
			salida3: out std_logic;
			salida4: out std_logic
			
			);
			
end Decoder;

architecture Decoder_arc of Decoder is 
begin 
		salida1 <= (not a) and (not b);
		salida2 <= (not a) and b;
		salida3 <= a and (not b);
		salida4 <= a and b;
		
end architecture;