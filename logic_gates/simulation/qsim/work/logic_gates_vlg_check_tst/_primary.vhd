library verilog;
use verilog.vl_types.all;
entity logic_gates_vlg_check_tst is
    port(
        y_and           : in     vl_logic;
        y_not           : in     vl_logic;
        y_or            : in     vl_logic;
        y_xor           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end logic_gates_vlg_check_tst;
