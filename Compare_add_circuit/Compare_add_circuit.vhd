library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compare_add_circuit is 

	port (
			sa : inout std_logic_vector(2 DOWNTO 0);
			sb : inout std_logic_vector(2 DOWNTO 0);
			c : inout std_logic_vector(2 DOWNTO 0);
			salidaComp: out std_logic;
			salidadSum: out std_logic_vector(3 DOWNTO 0);
			Num1 : integer;
			Num2 : integer
	
			);
			
end Compare_add_circuit;

architecture Compare_add_circuit_arc of Compare_add_circuit is
begin 

	sa <= std_logic_vector(to_unsigned(Num1, sa'length));
	sb <= std_logic_vector(to_unsigned(Num2, sb'length));
	
	process (sa,sb)
	begin
	
		salidaComp <= '0';
		
			if (sa > sb) then 
		
				salidaComp <= '1';
		
			end if;
	end process;
	
	
		
	salidadSum(0) <= sa(0) xor sb(0);
	c(0) <= sa(0) and sb(0);
	salidadSum(1) <= (sa(1) xor sb(1)) xor c(0) ;
	c(1) <= (sa(1) and sb(1))or (c(0) and (sa(1) xor sb(1)));
	salidadSum(2) <= (sa(2) xor sb(2)) xor c(1); 
	c(2) <= (sa(2) and sb(2))or (c(1) and (sa(2) xor sb(2)));
	
	process (c)
	begin
			if (c(2) = '1')  then 
		
				salidadSum(3) <= '1';
		
			end if;
	end process;
		
	
end architecture;

			