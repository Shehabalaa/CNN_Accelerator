vsim -gui work.NetworkController
add wave sim:/NetworkController/*
force -freeze sim:/NetworkController/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/NetworkController/LayersNumber 11 0

force -freeze sim:/NetworkController/start 1 0
force -freeze sim:/NetworkController/dmaFinish 0 0
force -freeze sim:/NetworkController/oneLayerFinish 0 0
force -freeze sim:/NetworkController/resetState 0 0

run

force -freeze sim:/NetworkController/dmaFinish 1 0

run
run
run
run

force -freeze sim:/NetworkController/oneLayerFinish 1 0

run


force -freeze sim:/NetworkController/oneLayerFinish 0 0

run

run
run
run
run

force -freeze sim:/NetworkController/oneLayerFinish 1 0

run


force -freeze sim:/NetworkController/oneLayerFinish 0 0

run

run

run
run
run
run

force -freeze sim:/NetworkController/oneLayerFinish 1 0

run


force -freeze sim:/NetworkController/oneLayerFinish 0 0

run

run
run
force -freeze sim:/NetworkController/oneLayerFinish 1 0

run


force -freeze sim:/NetworkController/oneLayerFinish 0 0

run
run
run

force -freeze sim:/NetworkController/oneLayerFinish 1 0

run


force -freeze sim:/NetworkController/oneLayerFinish 0 0

run
run
run

