library verilog;
use verilog.vl_types.all;
entity semaforo is
    port(
        timer           : in     vl_logic;
        clock           : in     vl_logic;
        carro           : in     vl_logic;
        avenida         : out    vl_logic;
        camino          : out    vl_logic;
        act_temporizador: out    vl_logic
    );
end semaforo;
