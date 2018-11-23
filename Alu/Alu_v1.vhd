-------------------------------------------------------------------------------------------------------------------------------
-- Actividad :
-- Autor : Alejandro Meza	
-- Fecha : 19/10/2018
--
-- archivo : Alu_v1.vhd
-------------------------------------------------------------------------------------------------------------------------------
-- Descripción :
-------------------------------------------------------------------------------------------------------------------------------
-- cambios :
-------------------------------------------------------------------------------------------------------------------------------	
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity Alu_v1 is
generic( ancho: natural:=1);
port( A, B : IN std_logic;
		S: IN std_logic_vector(1 DOWNTO 0);
		C: OUT std_logic_vector (1 DOWNTO 0)

);
		
end entity;


architecture Alu_v1_arc of Alu_v1 is
	
begin
	C <= ('0' & A) + B when S = "00" else
			 ('0'&A)+1 when S = "01" else
			 '0' & (A and B) when S= "10" else
			 '0' & (A xor B) when S = "11";
		
end architecture;