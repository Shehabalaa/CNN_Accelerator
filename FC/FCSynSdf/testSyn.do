force -freeze sim:/fcmain/reset 1 0
force -freeze sim:/fcmain/cnnDone 0 0
mem load -i /home/ayman/Desktop/CNN_Accelerator/FC/TestBench/TestFC/100neoronsTC/RAMNEORONS.mem /fcmain/RAMNEORONS/Ram
mem load -i /home/ayman/Desktop/CNN_Accelerator/FC/TestBench/TestFC/100neoronsTC/RAMWEIGHTS.mem /fcmain/RAMWEIGHTS/Ram
force -freeze sim:/fcmain/clk 1 0, 0 {12500 ps} -r 25ns
force -freeze sim:/fcmain/cnnDone 0 0
run 20 ns
force -freeze sim:/fcmain/reset 1 0
run 20 ns
force -freeze sim:/fcmain/reset 0 0
run 20 ns
force -freeze sim:/fcmain/cnnDone 1 0
run 13000 ns	
