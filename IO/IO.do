vsim -gui work.IO
add wave -position insertpoint  \
sim:/IO/Din \
sim:/IO/INTR \
sim:/IO/clk \
sim:/IO/loadOrProcess \
sim:/IO/rst \
sim:/IO/imageOrCNN 
force -freeze sim:/IO/clk 0 0
force -freeze sim:/IO/INTR 0 0
force -freeze sim:/IO/rst 2#1 0, 2#0 50
force -freeze sim:/IO/clk 1 0, 0 {25 ns} -r 50
run 75
force -freeze sim:/IO/INTR 1 0, 0 {50 ns} -r 1050
force -freeze sim:/IO/loadOrProcess 0 0
force -freeze sim:/IO/imageOrCNN 0 0
force -freeze sim:/IO/Din 2'b1100000011111100 0
run 26
noforce sim:/IO/Din
run 1024
force -freeze sim:/IO/Din 2'b0000000000100010 0
run 26
noforce sim:/IO/Din
run 1024
force -freeze sim:/IO/Din 2'b0001100010000101 0
run 26
noforce sim:/IO/Din
run 1024
force -freeze sim:/IO/imageOrCNN 1 0
force -freeze sim:/IO/INTR 1 0, 0 {50 ns} -r 250
force -freeze sim:/IO/Din 2'b0000000001101010 0
run 26
noforce sim:/IO/Din
run 224
force -freeze sim:/IO/Din 2'b0000001011100000 0
run 26
noforce sim:/IO/Din
run 224
