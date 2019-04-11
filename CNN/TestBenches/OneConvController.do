
vsim -gui work.SliceFilterController
add wave sim:/SliceFilterController/*
force -freeze sim:/SliceFilterController/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/SliceFilterController/outputSize 00001 0

run
run

force -freeze sim:/SliceFilterController/start 1 0

run
run

force -freeze sim:/SliceFilterController/dmaAFinish 1 0

run
force -freeze sim:/SliceFilterController/dmaBFinish 1 0
run

force -freeze sim:/SliceFilterController/dmaAFinish 0 0

run


DMA FINISH BUT NOT CONV
force -freeze sim:/oneconvcontroller/dmaAFinish 1 0
run

Now Convolution finished
force -freeze sim:/oneconvcontroller/finishConv 1 0
run

run
force -freeze sim:/oneconvcontroller/finishConv 0 0
run
force -freeze sim:/SliceFilterController/finishConv 1 0
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