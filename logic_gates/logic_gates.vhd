library ieee;
use ieee.std_logic_1164.all;

entity logic_gates is
port(x1,x2 : in std_logic;
		y_and,y_or,y_not,y_xor: out std_logic);
end entity;


architecture logicg_gates_arc of logic_gates is
begin
	y_and <= x1 and x2;
	y_not <= not x2;
	y_or 	<= x1 or x2;
	y_xor <= x1 xor x2;
end architecture;