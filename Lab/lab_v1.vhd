library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;
--Realizado por: Alejandro Meza- German Caycedo - Dicson Quimbayo - Santiago Florian 
entity lab_v1 is
port(l,s,d : in std_logic;
		a: out std_logic);
end entity;


architecture lab_v1_arc of lab_v1 is
begin
		a <= (l or s) and d;
	
end architecture;