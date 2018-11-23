library verilog;
use verilog.vl_types.all;
entity clock is
    port(
        A               : in     vl_logic_vector(3 downto 0);
        S               : in     vl_logic;
        R               : in     vl_logic;
        Q               : out    vl_logic_vector(3 downto 0)
    );
end clock;
