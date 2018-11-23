onerror {quit -f}
vlib work
vlog -work work Compare_add_circuit.vo
vlog -work work Compare_add_circuit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Compare_add_circuit_vlg_vec_tst
vcd file -direction Compare_add_circuit.msim.vcd
vcd add -internal Compare_add_circuit_vlg_vec_tst/*
vcd add -internal Compare_add_circuit_vlg_vec_tst/i1/*
add wave /*
run -all
