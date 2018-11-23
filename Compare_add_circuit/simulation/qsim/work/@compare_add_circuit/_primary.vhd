library verilog;
use verilog.vl_types.all;
entity Compare_add_circuit is
    port(
        sa              : inout  vl_logic_vector(2 downto 0);
        sb              : inout  vl_logic_vector(2 downto 0);
        c               : inout  vl_logic_vector(2 downto 0);
        salidaComp      : out    vl_logic;
        salidadSum      : out    vl_logic_vector(3 downto 0);
        Num1            : in     vl_logic_vector(31 downto 0);
        Num2            : in     vl_logic_vector(31 downto 0)
    );
end Compare_add_circuit;
