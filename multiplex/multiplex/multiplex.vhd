library ieee;
use ieee.std_logic_1164.all;
entity multiplex is
port(
	S, F0, F1 : in std_logic;
	O : out std_logic);
end entity;
architecture multiplex_arch of multiplex is
begin
	--O <= ((not(S)) and F0 and F1) xor (not(S) and F0 and not(F1)) xor (S and (not(F0))and F1) xor (S and F0 and F1);
	O <= (F0 and (not S)) xor (F1 and S);
end architecture;


