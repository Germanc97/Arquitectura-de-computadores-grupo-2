library verilog;
use verilog.vl_types.all;
entity Compare_add_circuit_vlg_sample_tst is
    port(
        c               : in     vl_logic_vector(2 downto 0);
        Num1            : in     vl_logic_vector(31 downto 0);
        Num2            : in     vl_logic_vector(31 downto 0);
        sa              : in     vl_logic_vector(2 downto 0);
        sb              : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Compare_add_circuit_vlg_sample_tst;
