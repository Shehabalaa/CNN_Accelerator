vsim work.decompressor -sdftyp /=/home/ayman/Desktop/project/CNN_Accelerator-IO/CNN_Accelerator-IO/IO/leonardoScritpts/decompressor.sdf
add wave -position insertpoint sim:/decompressor/*
force -freeze sim:/decompressor/clk 1 0, 0 {1525 ps} -r 3050
force -freeze sim:/decompressor/en 1 0
force -freeze sim:/decompressor/rst 1 0
run
run
run
run
force -freeze sim:/decompressor/rst 0 0
run
force -freeze sim:/decompressor/intrDelayed 1 0
force -freeze sim:/decompressor/imageLoad 1 0
force -freeze sim:/decompressor/dataIn 6'h35 0
run
force -freeze sim:/decompressor/intrDelayed 0 0
run
