library verilog;
use verilog.vl_types.all;
entity logic_gates is
    port(
        x1              : in     vl_logic;
        x2              : in     vl_logic;
        y_and           : out    vl_logic;
        y_or            : out    vl_logic;
        y_not           : out    vl_logic;
        y_xor           : out    vl_logic
    );
end logic_gates;
