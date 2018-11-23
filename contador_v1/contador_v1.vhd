library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Realizado por: Alejandro Meza- German Caycedo - Dicson Quimbayo - Santiago Florian 
entity contador_v1 is
port(r,c: in std_logic;
		a: inout std_logic_vector(1 downto 0));
end entity;


architecture contador_v1_arc of contador_v1 is
begin
		process(r,c) is
		begin
			if(r = '1') then
				a <= "00";
				
			elsif(rising_edge(c)) then
				a <= a + "01";
			end if;
		end process;
end architecture;