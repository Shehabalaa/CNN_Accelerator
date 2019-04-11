vsim -gui work.FilterController
add wave sim:/FilterController/*
force -freeze sim:/FilterController/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/FilterController/depth 011 0



force -freeze sim:/FilterController/start 1 0

force -freeze sim:/FilterController/oneConvFinish 0 0

force -freeze sim:/FilterController/resetState 0 0

force -freeze sim:/FilterController/dmaFinish 1 0

run

run
run
run
run
force -freeze sim:/filtercontroller/oneConvFinish 1 0
run
force -freeze sim:/filtercontroller/oneConvFinish 0 0
run
run
force -freeze sim:/filtercontroller/oneConvFinish 1 0
run
force -freeze sim:/filtercontroller/oneConvFinish 0 0
run


run
run
run
run

force -freeze sim:/FilterController/oneConvFinish 1 0

run


force -freeze sim:/FilterController/oneConvFinish 0 0

run

run
run
run
run

force -freeze sim:/FilterController/oneConvFinish 1 0

run


force -freeze sim:/FilterController/oneConvFinish 0 0

run

run

run
run
run
run

force -freeze sim:/FilterController/oneConvFinish 1 0

run


force -freeze sim:/FilterController/oneConvFinish 0 0

run

run
run