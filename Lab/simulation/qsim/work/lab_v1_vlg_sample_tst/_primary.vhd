library verilog;
use verilog.vl_types.all;
entity lab_v1_vlg_sample_tst is
    port(
        d               : in     vl_logic;
        l               : in     vl_logic;
        s               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab_v1_vlg_sample_tst;
