vsim work.IOInterface -gui
add wave -position insertpoint  \
sim:/iointerface/Din \
sim:/iointerface/INTR \
sim:/iointerface/clk \
sim:/iointerface/rst \
sim:/iointerface/globalCounterEnable \
sim:/iointerface/zeroState \
sim:/iointerface/Q \
sim:/iointerface/result \
sim:/iointerface/globalCounterLoad \
sim:/iointerface/myZeroState \
sim:/iointerface/myGlobalCounterEnable \
sim:/iointerface/globalCounterOutputBar \
sim:/iointerface/globalCounterOutput \
sim:/iointerface/temp
force -freeze sim:/iointerface/globalCounterEnable 0 0
force -freeze sim:/IOInterface/clk 0 0 
force -freeze sim:/IOInterface/INTR 0 0 
force -freeze sim:/IOInterface/rst 2#1 0, 2#0 50 
force -freeze sim:/IOInterface/clk 1 0, 0 {25 ns} -r 50
run 75
force -freeze sim:/iointerface/globalCounterEnable 1 0
force -freeze sim:/IOInterface/INTR 1 0, 0 {50 ns} -r 1050 
force -freeze sim:/IOInterface/Din 2'b0000000000100010 0 
run 26
noforce sim:/IOInterface/Din 
run 100