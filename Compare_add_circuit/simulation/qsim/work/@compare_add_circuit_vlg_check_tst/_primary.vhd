library verilog;
use verilog.vl_types.all;
entity Compare_add_circuit_vlg_check_tst is
    port(
        c               : in     vl_logic_vector(2 downto 0);
        sa              : in     vl_logic_vector(2 downto 0);
        salidaComp      : in     vl_logic;
        salidadSum      : in     vl_logic_vector(3 downto 0);
        sb              : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end Compare_add_circuit_vlg_check_tst;
