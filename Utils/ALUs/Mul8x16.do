vcom Utils/ALUs/Mul8x16.vhd
vsim -gui work.Mul8x16 

add wave -position insertpoint sim:/mul8x16/*
add wave -position insertpoint sim:/mul8x16/BSCmp/*

vcom Utils/ALUs/Mul8x16.vhd
restart -f

force -freeze sim:/mul8x16/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/mul8x16/rst 1 0
force -freeze sim:/mul8x16/Accumelate 1 0
force -freeze sim:/mul8x16/start 0 0
force -freeze sim:/mul8x16/m 16'h0044 0
force -freeze sim:/mul8x16/q 8'h60 0

run 200
force -freeze sim:/mul8x16/start 1 0
force -freeze sim:/mul8x16/rst 0 0
run 50 
force -freeze sim:/mul8x16/start 0 0
run 350



