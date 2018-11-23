library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity ContadorB is 
port (r,c: in std_logic;
		a : inout std_logic_vector(1 downto 0)
		);
end entity;

architecture contadorB_arch of contadorB is
begin 
		process(r,c) is
		begin	
			if(r='1') then
				a<= "00";
				
			elsif(rising_edge(c)) then
				a<= a + "01";
			end if;
		end process;
end architecture;

