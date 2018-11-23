library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_bit.all;

entity flipflop_D is
	PORT(
		D, CLK, R : in std_logic;
		Q, NQ : out std_logic
	);
end flipflop_D;

architecture flipflop_D_arch of flipflop_D is
	begin
		process(CLK, R)
			begin
				if (R = '1') then
					Q <= '0';
					NQ <= '1'; 
				elsif (rising_edge(CLK)) then
					Q <= D;
					NQ <= NOT D;
						
				end if;
		end process;
end flipflop_D_arch;