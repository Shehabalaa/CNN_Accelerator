vsim -gui work.LayerController
add wave sim:/LayerController/*
force -freeze sim:/LayerController/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/LayerController/FiltersNumber 011 0

force -freeze sim:/LayerController/start 1 0
force -freeze sim:/LayerController/dmaFinish 0 0
force -freeze sim:/LayerController/filterFinish 0 0
force -freeze sim:/LayerController/resetState 0 0

run

force -freeze sim:/LayerController/dmaFinish 1 0

run
run
run
run

force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run

run
run
run
run

force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run

run

run
run
run
run

force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run

run
run
force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run
run
run

force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run
run
run

force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run
run
run
force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run
run
run
force -freeze sim:/LayerController/filterFinish 1 0

run


force -freeze sim:/LayerController/filterFinish 0 0

run
run
run
