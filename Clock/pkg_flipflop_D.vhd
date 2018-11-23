library ieee;
use ieee.std_logic_1164.all;

package pkg_flipflop_D is
	component flipflop_D is
		port(
			D, CLK, R : in std_logic;
			Q : out std_logic
		);
	end component;
end pkg_flipflop_D;