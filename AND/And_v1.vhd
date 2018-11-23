library ieee;			--libreria
use ieee.std_logic_1164.all;

--Definicion entidad

entity and_v1 is port(
	x: in std_logic;
	y: in std_logic;
	z: out std_logic
);
end and_v1;

--Definicion arquitectura

architecture and_v1_arc of and_v1 is
begin
	z <= x and y;
end and_v1_arc;
	