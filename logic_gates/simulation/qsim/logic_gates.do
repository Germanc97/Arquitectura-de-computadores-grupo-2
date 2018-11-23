onerror {quit -f}
vlib work
vlog -work work logic_gates.vo
vlog -work work logic_gates.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.logic_gates_vlg_vec_tst
vcd file -direction logic_gates.msim.vcd
vcd add -internal logic_gates_vlg_vec_tst/*
vcd add -internal logic_gates_vlg_vec_tst/i1/*
add wave /*
run -all
