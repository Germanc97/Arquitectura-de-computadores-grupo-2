library verilog;
use verilog.vl_types.all;
entity multiplex is
    port(
        S               : in     vl_logic;
        F0              : in     vl_logic;
        F1              : in     vl_logic;
        O               : out    vl_logic
    );
end multiplex;
