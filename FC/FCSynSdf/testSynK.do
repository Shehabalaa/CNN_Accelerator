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

add wave -position insertpoint  \
sim:/fctest2/FCENT/mulInputWeight \
sim:/fctest2/FCENT/mulInputNeoron


run 

run
 

run 

force -freeze sim:/fctest2/reset 1 0
force -freeze sim:/fctest2/cnnDone 0 0

run

#vsim -sdfmax /=/home/ayman/Desktop/Project/CNN_Accelerator/13.36LeoNoEdit/FCSyn.sdf work.fctest2 -noglitch
#vsim -sdfnoerror -sdfmax /=/home/ayman/Desktop/Project/CNN_Accelerator/13.36LeoNoEdit/FCSyn.sdf work.fctest2 -sdfnowarn -noglitch

add wave -position insertpoint  \
sim:/fctest2/clk
add wave -position insertpoint  \
sim:/fctest2/fcDone
add wave -position insertpoint  \
sim:/fctest2/FCENT/NEORONSLASTSTAGES/count
add wave -group labelReg sim:/fctest2/FCENT/labelReg_0_0 sim:/fctest2/FCENT/labelReg_0_1 sim:/fctest2/FCENT/labelReg_0_2 sim:/fctest2/FCENT/labelReg_0_3 sim:/fctest2/FCENT/labelReg_0_4 sim:/fctest2/FCENT/labelReg_0_5 sim:/fctest2/FCENT/labelReg_0_6 sim:/fctest2/FCENT/labelReg_0_7 sim:/fctest2/FCENT/labelReg_0_8 sim:/fctest2/FCENT/labelReg_0_9 sim:/fctest2/FCENT/labelReg_0_10 sim:/fctest2/FCENT/labelReg_0_11 sim:/fctest2/FCENT/labelReg_0_12 sim:/fctest2/FCENT/labelReg_0_13 sim:/fctest2/FCENT/labelReg_0_14 sim:/fctest2/FCENT/labelReg_0_15 sim:/fctest2/FCENT/labelReg_1_0 sim:/fctest2/FCENT/labelReg_1_1 sim:/fctest2/FCENT/labelReg_1_2 sim:/fctest2/FCENT/labelReg_1_3 sim:/fctest2/FCENT/labelReg_1_4 sim:/fctest2/FCENT/labelReg_1_5 sim:/fctest2/FCENT/labelReg_1_6 sim:/fctest2/FCENT/labelReg_1_7 sim:/fctest2/FCENT/labelReg_1_8 sim:/fctest2/FCENT/labelReg_1_9 sim:/fctest2/FCENT/labelReg_1_10 sim:/fctest2/FCENT/labelReg_1_11 sim:/fctest2/FCENT/labelReg_1_12 sim:/fctest2/FCENT/labelReg_1_13 sim:/fctest2/FCENT/labelReg_1_14 sim:/fctest2/FCENT/labelReg_1_15 sim:/fctest2/FCENT/labelReg_2_0 sim:/fctest2/FCENT/labelReg_2_1 sim:/fctest2/FCENT/labelReg_2_2 sim:/fctest2/FCENT/labelReg_2_3 sim:/fctest2/FCENT/labelReg_2_4 sim:/fctest2/FCENT/labelReg_2_5 sim:/fctest2/FCENT/labelReg_2_6 sim:/fctest2/FCENT/labelReg_2_7 sim:/fctest2/FCENT/labelReg_2_8 sim:/fctest2/FCENT/labelReg_2_9 sim:/fctest2/FCENT/labelReg_2_10 sim:/fctest2/FCENT/labelReg_2_11 sim:/fctest2/FCENT/labelReg_2_12 sim:/fctest2/FCENT/labelReg_2_13 sim:/fctest2/FCENT/labelReg_2_14 sim:/fctest2/FCENT/labelReg_2_15 sim:/fctest2/FCENT/labelReg_3_0 sim:/fctest2/FCENT/labelReg_3_1 sim:/fctest2/FCENT/labelReg_3_2 sim:/fctest2/FCENT/labelReg_3_3 sim:/fctest2/FCENT/labelReg_3_4 sim:/fctest2/FCENT/labelReg_3_5 sim:/fctest2/FCENT/labelReg_3_6 sim:/fctest2/FCENT/labelReg_3_7 sim:/fctest2/FCENT/labelReg_3_8 sim:/fctest2/FCENT/labelReg_3_9 sim:/fctest2/FCENT/labelReg_3_10 sim:/fctest2/FCENT/labelReg_3_11 sim:/fctest2/FCENT/labelReg_3_12 sim:/fctest2/FCENT/labelReg_3_13 sim:/fctest2/FCENT/labelReg_3_14 sim:/fctest2/FCENT/labelReg_3_15 sim:/fctest2/FCENT/labelReg_4_0 sim:/fctest2/FCENT/labelReg_4_1 sim:/fctest2/FCENT/labelReg_4_2 sim:/fctest2/FCENT/labelReg_4_3 sim:/fctest2/FCENT/labelReg_4_4 sim:/fctest2/FCENT/labelReg_4_5 sim:/fctest2/FCENT/labelReg_4_6 sim:/fctest2/FCENT/labelReg_4_7 sim:/fctest2/FCENT/labelReg_4_8 sim:/fctest2/FCENT/labelReg_4_9 sim:/fctest2/FCENT/labelReg_4_10 sim:/fctest2/FCENT/labelReg_4_11 sim:/fctest2/FCENT/labelReg_4_12 sim:/fctest2/FCENT/labelReg_4_13 sim:/fctest2/FCENT/labelReg_4_14 sim:/fctest2/FCENT/labelReg_4_15 sim:/fctest2/FCENT/labelReg_5_0 sim:/fctest2/FCENT/labelReg_5_1 sim:/fctest2/FCENT/labelReg_5_2 sim:/fctest2/FCENT/labelReg_5_3 sim:/fctest2/FCENT/labelReg_5_4 sim:/fctest2/FCENT/labelReg_5_5 sim:/fctest2/FCENT/labelReg_5_6 sim:/fctest2/FCENT/labelReg_5_7 sim:/fctest2/FCENT/labelReg_5_8 sim:/fctest2/FCENT/labelReg_5_9 sim:/fctest2/FCENT/labelReg_5_10 sim:/fctest2/FCENT/labelReg_5_11 sim:/fctest2/FCENT/labelReg_5_12 sim:/fctest2/FCENT/labelReg_5_13 sim:/fctest2/FCENT/labelReg_5_14 sim:/fctest2/FCENT/labelReg_5_15 sim:/fctest2/FCENT/labelReg_6_0 sim:/fctest2/FCENT/labelReg_6_1 sim:/fctest2/FCENT/labelReg_6_2 sim:/fctest2/FCENT/labelReg_6_3 sim:/fctest2/FCENT/labelReg_6_4 sim:/fctest2/FCENT/labelReg_6_5 sim:/fctest2/FCENT/labelReg_6_6 sim:/fctest2/FCENT/labelReg_6_7 sim:/fctest2/FCENT/labelReg_6_8 sim:/fctest2/FCENT/labelReg_6_9 sim:/fctest2/FCENT/labelReg_6_10 sim:/fctest2/FCENT/labelReg_6_11 sim:/fctest2/FCENT/labelReg_6_12 sim:/fctest2/FCENT/labelReg_6_13 sim:/fctest2/FCENT/labelReg_6_14 sim:/fctest2/FCENT/labelReg_6_15 sim:/fctest2/FCENT/labelReg_7_0 sim:/fctest2/FCENT/labelReg_7_1 sim:/fctest2/FCENT/labelReg_7_2 sim:/fctest2/FCENT/labelReg_7_3 sim:/fctest2/FCENT/labelReg_7_4 sim:/fctest2/FCENT/labelReg_7_5 sim:/fctest2/FCENT/labelReg_7_6 sim:/fctest2/FCENT/labelReg_7_7 sim:/fctest2/FCENT/labelReg_7_8 sim:/fctest2/FCENT/labelReg_7_9 sim:/fctest2/FCENT/labelReg_7_10 sim:/fctest2/FCENT/labelReg_7_11 sim:/fctest2/FCENT/labelReg_7_12 sim:/fctest2/FCENT/labelReg_7_13 sim:/fctest2/FCENT/labelReg_7_14 sim:/fctest2/FCENT/labelReg_7_15 sim:/fctest2/FCENT/labelReg_8_0 sim:/fctest2/FCENT/labelReg_8_1 sim:/fctest2/FCENT/labelReg_8_2 sim:/fctest2/FCENT/labelReg_8_3 sim:/fctest2/FCENT/labelReg_8_4 sim:/fctest2/FCENT/labelReg_8_5 sim:/fctest2/FCENT/labelReg_8_6 sim:/fctest2/FCENT/labelReg_8_7 sim:/fctest2/FCENT/labelReg_8_8 sim:/fctest2/FCENT/labelReg_8_9 sim:/fctest2/FCENT/labelReg_8_10 sim:/fctest2/FCENT/labelReg_8_11 sim:/fctest2/FCENT/labelReg_8_12 sim:/fctest2/FCENT/labelReg_8_13 sim:/fctest2/FCENT/labelReg_8_14 sim:/fctest2/FCENT/labelReg_8_15 sim:/fctest2/FCENT/labelReg_9_0 sim:/fctest2/FCENT/labelReg_9_1 sim:/fctest2/FCENT/labelReg_9_2 sim:/fctest2/FCENT/labelReg_9_3 sim:/fctest2/FCENT/labelReg_9_4 sim:/fctest2/FCENT/labelReg_9_5 sim:/fctest2/FCENT/labelReg_9_6 sim:/fctest2/FCENT/labelReg_9_7 sim:/fctest2/FCENT/labelReg_9_8 sim:/fctest2/FCENT/labelReg_9_9 sim:/fctest2/FCENT/labelReg_9_10 sim:/fctest2/FCENT/labelReg_9_11 sim:/fctest2/FCENT/labelReg_9_12 sim:/fctest2/FCENT/labelReg_9_13 sim:/fctest2/FCENT/labelReg_9_14 sim:/fctest2/FCENT/labelReg_9_15


add wave -position insertpoint \
sim:/fctest2/FCENT/MAXPrediction

add wave -position insertpoint  \
sim:/fctest2/FCENT/dataOutRamNeorons
add wave -position insertpoint  \
sim:/fctest2/FCENT/dataOutRamWeights

add wave -position insertpoint  \
sim:/fctest2/readRamNeorons \
sim:/fctest2/finishRamNeorons
add wave -position insertpoint  \
sim:/fctest2/readRamWeights \
sim:/fctest2/finishRamWeights

# restart -r
force -freeze sim:/fctest2/clk 1 0, 0 {7500 ps} -r 15ns
force -freeze sim:/fctest2/cnnDone 0 0
run 15 ns
force -freeze sim:/fctest2/reset 1 0
run 15 ns
force -freeze sim:/fctest2/reset 0 0
run 15 ns
force -freeze sim:/fctest2/cnnDone 1 0
force -freeze sim:/fctest2/ioDone 1 0
run 15 ns	
mem load -i /home/ayman/Desktop/Project/CNN_Accelerator/FC/TestBench/generateTestCases/genFC/TestCaseFC/RAMWEIGHTS.mem /fctest2/RAMWEIGHTS/ram
mem load -i /home/ayman/Desktop/Project/CNN_Accelerator/FC/TestBench/generateTestCases/genFC/TestCaseFC/RAMNEORONS.mem /fctest2/RAMNEORONS/ram
run 15 ns
run 15 ns
#run 350 ns
run 270000 ns
