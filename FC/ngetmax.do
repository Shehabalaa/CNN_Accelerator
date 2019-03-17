vsim -gui work.ngetMax 
add wave -position insertpoint  \
sim:/ngetmax/*

force -freeze sim:/ngetmax/inputArray(0) -10 0
force -freeze sim:/ngetmax/inputArray(1) -12 0
force -freeze sim:/ngetmax/inputArray(2) -2 0
force -freeze sim:/ngetmax/inputArray(3) -45 0
force -freeze sim:/ngetmax/inputArray(4) -14 0
force -freeze sim:/ngetmax/inputArray(5) -3 0
force -freeze sim:/ngetmax/inputArray(6) -61 0
force -freeze sim:/ngetmax/inputArray(7) -71 0
force -freeze sim:/ngetmax/inputArray(8) -31 0
force -freeze sim:/ngetmax/inputArray(9) -1 0
force -freeze sim:/ngetmax/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/ngetmax/en 0 0
force -freeze sim:/ngetmax/rst 1 0

run
force -freeze sim:/ngetmax/rst 0 0
force -freeze sim:/ngetmax/en 1 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run


force -freeze sim:/ngetmax/inputArray(0) 10 0
force -freeze sim:/ngetmax/inputArray(1) 12 0
force -freeze sim:/ngetmax/inputArray(2) -2 0
force -freeze sim:/ngetmax/inputArray(3) 45 0
force -freeze sim:/ngetmax/inputArray(4) -14 0
force -freeze sim:/ngetmax/inputArray(5) -3 0
force -freeze sim:/ngetmax/inputArray(6) -61 0
force -freeze sim:/ngetmax/inputArray(7) -71 0
force -freeze sim:/ngetmax/inputArray(8) -31 0
force -freeze sim:/ngetmax/inputArray(9) -1 0
force -freeze sim:/ngetmax/rst 1 0

run
force -freeze sim:/ngetmax/rst 0 0
force -freeze sim:/ngetmax/en 1 0
run
