library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--entity rom
entity memoria_v2 is
port(
	clk: std_logic;
	address: in integer range 0 to 15;
	data_out: out std_logic_vector(7 downto 0)
);
end entity;

architecture memoria_v2_arc of memoria_v2 is
signal reg_address: integer range 0 to 15;
type mem is array (0 to 15) of std_logic_vector(7 downto 0);
signal rom : mem;
attribute ram_init_file: string;
attribute ram_init_file of rom: signal is "rom_contents.mif";
begin
--registrar direccion
	process (clk) is
	begin
		if(rising_edge(clk)) then
			reg_address <=  address;
		end if;
	end process;
	data_out <= rom(reg_address);
end architecture;