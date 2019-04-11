 Checked it will do nothing if other input comes with 1 
 Small Clock makes problem when it comes to dmaFinish

vsim -gui work.OneConvController
add wave sim:/OneConvController/*
force -freeze sim:/oneconvcontroller/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/oneconvcontroller/outputSize 00001 0

run
run

force -freeze sim:/oneconvcontroller/start 1 0

run
run

force -freeze sim:/oneconvcontroller/dmaAFinish 1 0

run
force -freeze sim:/oneconvcontroller/dmaBFinish 1 0
run

force -freeze sim:/oneconvcontroller/dmaAFinish 0 0

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
force -freeze sim:/oneconvcontroller/finishConv 1 0
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