vsim -gui work.fctest2

add wave -position insertpoint  \
sim:/fctest2/cnnDone \
sim:/fctest2/ioDone \
sim:/fctest2/clk \
sim:/fctest2/reset \
sim:/fctest2/fcDone \
sim:/fctest2/MAXPrediction \
sim:/fctest2/dmaAddRamNeorons \
sim:/fctest2/readRamNeorons \
sim:/fctest2/finishRamNeorons \
sim:/fctest2/dataOutRamNeorons \
sim:/fctest2/dmaAddRamWeights \
sim:/fctest2/readRamWeights \
sim:/fctest2/finishRamWeights \
sim:/fctest2/dataOutRamWeights

add wave -group  State  sim:/fctest2/FCENT/state sim:/fctest2/FCENT/labelreg sim:/fctest2/FCENT/numberOFNeorons



force -freeze sim:/fctest2/reset 1 0
force -freeze sim:/fctest2/cnnDone 0 0

run



force -freeze sim:/fctest2/clk 1 0, 0 {50 ns} -r 100ns
force -freeze sim:/fctest2/cnnDone 0 0
run 100 ns
force -freeze sim:/fctest2/reset 1 0
run 100 ns
force -freeze sim:/fctest2/reset 0 0
run 100 ns
force -freeze sim:/fctest2/cnnDone 1 0
force -freeze sim:/fctest2/ioDone 1 0
run 100 ns	
mem load -i C:/Users/ramym/Desktop/SecondTerm/VLSI/project/CNN_Accelerator/FC/TestBench/osama/RAMWEIGHTS.mem /fctest2/RAMWEIGHTS/ram
mem load -i C:/Users/ramym/Desktop/SecondTerm/VLSI/project/CNN_Accelerator/FC/TestBench/osama/RAMNEORONS.mem /fctest2/RAMNEORONS/ram
run 100 ns
run 100 ns
