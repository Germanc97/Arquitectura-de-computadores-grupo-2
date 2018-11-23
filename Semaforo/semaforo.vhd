library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--Realizado por: Alejandro Meza- German Caycedo - Dicson Quimbayo - Santiago Florian 

entity semaforo is
port(timer,clock,carro: in std_logic;
		avenida,camino,act_temporizador: out std_logic);
end entity;


architecture semaforo_arc of semaforo is
type tipo_estado is (G,R);
signal estado:tipo_estado:=G;
begin
		process(clock,carro) is
			begin
			if clock = '1' then
				if carro = '0' then
					case estado is
						when G => estado <= G;
									 avenida <= '1';
									 camino <= '0';
						when R => estado <= R;
									 avenida <= '0';
									 camino <= '1';
					end case;
				elsif carro = '1' then
					case estado is
						when G => estado <= R;
									 avenida <= '0';
									 camino <= '1';
						when R => estado <= G;
									 avenida <= '1';
									 camino <= '0';
					end case;
				end if;
			end if;
		end process;
end architecture;