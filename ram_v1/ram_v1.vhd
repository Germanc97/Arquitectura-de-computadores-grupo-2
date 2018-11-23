library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--entity ram
entity ram_v1 is
port(
	clk, we: in std_logic;
	data_in: in std_logic_vector(7 downto 0);
	wr_address, rd_address: in integer range 15 to 0;
	data_out: out std_logic_vector(7 downto 0)
);
end entity;

architecture ram_v1_arc of ram_v1 is
	type memory is array (0 to 15) of std_logic_vector(7 downto 0);
	signal my_ram : memory;
	attribute ram_style: string;
	attribute ram_style of my_ram: signal is "M4K";
	attribute ram_init_file: string;
	attribute ram_init_file of my_ram: signal is "ram_contents.mif";
begin
	process(clk) is
	begin
		if(rising_edge(clk)) then
			if(we = '1') then
				my_ram(wr_address) <= data_in;
			end if;
			data_out <= my_ram(rd_address);
		end if;
	end process;
end architecture;