vsim -gui work.accelerator
add wave -position insertpoint  \
sim:/accelerator/Din \
sim:/accelerator/INTR \
sim:/accelerator/clk \
sim:/accelerator/loadOrProcess \
sim:/accelerator/rst \
sim:/accelerator/imageOrCNN 
force -freeze sim:/accelerator/clk 0 0
force -freeze sim:/accelerator/INTR 0 0
force -freeze sim:/accelerator/rst 2#1 0, 2#0 50
force -freeze sim:/accelerator/clk 1 0, 0 {25 ns} -r 50
run 75
force -freeze sim:/accelerator/INTR 1 0, 0 {50 ns} -r 1050
force -freeze sim:/accelerator/loadOrProcess 0 0
force -freeze sim:/accelerator/imageOrCNN 0 0
force -freeze sim:/accelerator/Din 2'b1100000011111100 0
run 26
noforce sim:/accelerator/Din
run 1024
force -freeze sim:/accelerator/Din 2'b0000000000100010 0
run 26
noforce sim:/accelerator/Din
run 1024
force -freeze sim:/accelerator/Din 2'b0001100010000101 0
run 26
noforce sim:/accelerator/Din
run 1024
force -freeze sim:/accelerator/imageOrCNN 1 0
force -freeze sim:/accelerator/INTR 1 0, 0 {50 ns} -r 250
force -freeze sim:/accelerator/Din 2'b0000000001101010 0
run 26
noforce sim:/accelerator/Din
run 224
force -freeze sim:/accelerator/Din 2'b0000001011100000 0
run 26
noforce sim:/accelerator/Din
run 224
