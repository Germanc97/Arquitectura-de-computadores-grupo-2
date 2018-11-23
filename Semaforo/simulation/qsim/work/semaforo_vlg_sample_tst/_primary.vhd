library verilog;
use verilog.vl_types.all;
entity semaforo_vlg_sample_tst is
    port(
        carro           : in     vl_logic;
        clock           : in     vl_logic;
        timer           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end semaforo_vlg_sample_tst;
