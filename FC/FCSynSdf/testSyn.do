force -freeze sim:/fcmain/reset 1 0
force -freeze sim:/fcmain/cnnDone 0 0
mem load -i /home/ayman/Desktop/CNNRamy/FC/TestBench/TestFC/100neoronsTC/RAMNEORONS.mem /fcmain/RAMNEORONS/Ram
mem load -i /home/ayman/Desktop/CNNRamy/FC/TestBench/TestFC/100neoronsTC/RAMWEIGHTS.mem /fcmain/RAMWEIGHTS/Ram
force -freeze sim:/fcmain/clk 1 0, 0 {15000 ps} -r 30ns
run 30 ns
run 30 ns
run 30 ns
force -freeze sim:/fcmain/reset 0 0
run 30 ns
run 30 ns
force -freeze sim:/fcmain/cnnDone 1 0
run 30 ns
force -freeze sim:/fcmain/cnnDone 0 0
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
run 30 ns
