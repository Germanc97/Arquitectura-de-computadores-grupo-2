library ieee;			--libreria
use ieee.std_logic_1164.all;

--Definicion entidad

entity not_v1 is port(
	x: in std_logic;
	y: out std_logic
	
);
end not_v1;

--Definicion arquitectura

architecture not_v1_arc of not_v1 is
begin
	y <= not x;
end not_v1_arc;
	