library verilog;
use verilog.vl_types.all;
entity ram_v1 is
    port(
        clk             : in     vl_logic;
        we              : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        wr_address      : in     vl_logic_vector(3 downto 0);
        rd_address      : in     vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end ram_v1;
