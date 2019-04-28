vsim -gui work.dmaimage
add wave -position insertpoint sim:/dmaimage/*
force -freeze sim:/dmaimage/clk 1 0, 0 {25 ps} -r 50
force -freeze sim:/dmaimage/rst 1 0
run
force -freeze sim:/dmaimage/rst 0 0
force -freeze sim:/dmaimage/dataIn 8'h01 0
force -freeze sim:/dmaimage/addressIn 10'h001 0
force -freeze sim:/dmaimage/intrDelayed 1 0
force -freeze sim:/dmaimage/enableImageCounter 1 0
force -freeze sim:/dmaimage/enableImageRegister 1 0
run
force -freeze sim:/dmaimage/intrDelayed 0 0
run
run