onerror {exit -code 1}
vlib work
vlog -work work MagnitudeComparator8Bit.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MagnitudeComparator8Bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction MagnitudeComparator8Bit.msim.vcd
vcd add -internal MagnitudeComparator8Bit_vlg_vec_tst/*
vcd add -internal MagnitudeComparator8Bit_vlg_vec_tst/i1/*
run -all
quit -f
