library ieee;
use ieee.std_logic_1164.all;

use work.pkg_flipflop_D.all;

entity clock is
	port(
		A : in std_logic_vector (3 downto 0);
		S, R : in std_logic;
		Q : out std_logic_vector (3 downto 0)
	);
end clock;

architecture clock_arch of clock is
	signal c1, c2, c3, c4 : std_logic;
	begin
	lab1 : flipflop_D port map (A(0), S, R, Q => c1);
	lab2 : flipflop_D port map (A(1), S, R, Q => c2);
	lab3 : flipflop_D port map (A(2), S, R, Q => c3);
	lab4 : flipflop_D port map (A(3), S, R, Q => c4);
	Q(0) <= c1;
	Q(1) <= c2;
	Q(2) <= c3;
	Q(3) <= c4;
end clock_arch;