vsim work.Decompressor -sdftyp /=/home/ayman/Desktop/project/CNN_Accelerator-IO/CNN_Accelerator-IO/IO/leonardoScritpts/Decompressor.sdf
add wave -position insertpoint sim:/Decompressor/*
force -freeze sim:/Decompressor/clk 1 0, 0 {3050 ps} -r 100
force -freeze sim:/Decompressor/en 1 0
force -freeze sim:/Decompressor/rst 1 0
run
run
force -freeze sim:/Decompressor/rst 0 0
force -freeze sim:/Decompressor/intrDelayed 1 0
force -freeze sim:/Decompressor/imageLoad 1 0
force -freeze sim:/Decompressor/dataIn 6'h35 0
run
force -freeze sim:/Decompressor/intrDelayed 0 0
run
