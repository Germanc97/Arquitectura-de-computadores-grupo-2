library verilog;
use verilog.vl_types.all;
entity semaforo_vlg_check_tst is
    port(
        act_temporizador: in     vl_logic;
        avenida         : in     vl_logic;
        camino          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end semaforo_vlg_check_tst;
