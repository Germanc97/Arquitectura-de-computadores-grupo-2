library verilog;
use verilog.vl_types.all;
entity multiplex_vlg_sample_tst is
    port(
        F0              : in     vl_logic;
        F1              : in     vl_logic;
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multiplex_vlg_sample_tst;
