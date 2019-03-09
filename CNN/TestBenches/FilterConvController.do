vsim -gui work.FilterConvController
add wave sim:/FilterConvController/*
force -freeze sim:/FilterConvController/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/FilterConvController/depth 011 0

run

force -freeze sim:/FilterConvController/start 1 0

run

run
run
run
run

force -freeze sim:/FilterConvController/oneConvFinish 1 0

run


force -freeze sim:/FilterConvController/oneConvFinish 0 0

run

run
run
run
run

force -freeze sim:/FilterConvController/oneConvFinish 1 0

run


force -freeze sim:/FilterConvController/oneConvFinish 0 0

run

run

run
run
run
run

force -freeze sim:/FilterConvController/oneConvFinish 1 0

run


force -freeze sim:/FilterConvController/oneConvFinish 0 0

run

run
run