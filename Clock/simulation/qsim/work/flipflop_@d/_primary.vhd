library verilog;
use verilog.vl_types.all;
entity flipflop_D is
    port(
        D               : in     vl_logic;
        CLK             : in     vl_logic;
        R               : in     vl_logic;
        Q               : out    vl_logic
    );
end flipflop_D;
