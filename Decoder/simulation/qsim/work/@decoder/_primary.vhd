library verilog;
use verilog.vl_types.all;
entity Decoder is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        salida1         : out    vl_logic;
        salida2         : out    vl_logic;
        salida3         : out    vl_logic;
        salida4         : out    vl_logic
    );
end Decoder;
