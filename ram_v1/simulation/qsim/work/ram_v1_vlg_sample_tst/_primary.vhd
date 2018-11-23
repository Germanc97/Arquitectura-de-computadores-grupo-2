library verilog;
use verilog.vl_types.all;
entity ram_v1_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        rd_address      : in     vl_logic_vector(3 downto 0);
        we              : in     vl_logic;
        wr_address      : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end ram_v1_vlg_sample_tst;
