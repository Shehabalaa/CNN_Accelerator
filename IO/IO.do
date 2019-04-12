vsim -gui work.IO
add wave -position insertpoint  \
sim:/IO/INTR \
sim:/IO/INTRDelayed \
sim:/IO/INTRDelayedSq \
sim:/IO/clk \
sim:/IO/processing \
sim:/IO/imageOrCNN \
sim:/IO/zeroState \
sim:/IO/decompZeroState \
sim:/IO/load \
sim:/IO/busy \
sim:/IO/interfaceRegEnable \
sim:/IO/globalCounterLoad \
sim:/IO/globalCounterEnable \
sim:/IO/stateCounterQ \
sim:/IO/doneDMAFC \
sim:/IO/doneDMACNN \
sim:/IO/doneDMAImage \
sim:/IO/doneDecomp \
sim:/IO/anyDone \
sim:/IO/doneWithPhase \
sim:/IO/CNNCounterEnable \
sim:/IO/CNNRegisterEnable \
sim:/IO/imageCounterEnable \
sim:/IO/imageRegisterEnable \
sim:/IO/rst
force -freeze sim:/IO/rst 2#1 0, 2#0 50 
force -freeze sim:/IO/clk 1 0, 0 {25 ns} -r 50
force -freeze sim:/IO/zeroState 1 0
force -freeze sim:/IO/INTR 0 0
run 75
#Setting up for the first cycle, reading number of runs
force -freeze sim:/IO/INTR 1 0
force -freeze sim:/IOInterface/Din 2'b0000000000000001 0
force -freeze sim:/IO/processing 0 0
force -freeze sim:/IO/load 1 0 
force -freeze sim:/IO/imageOrCNN 0 0
force -freeze sim:/IO/decompZeroState 1 0
force -freeze sim:/IO/doneDMAFC 0 0
force -freeze sim:/IO/doneDMACNN 0 0
force -freeze sim:/IO/doneDMAImage 0 0
run 25
force -freeze sim:/IO/INTR 0 0
force -freeze sim:/IO/zeroState 0 0
run 25
#1st real input
force -freeze sim:/IO/INTR 1 0
force -freeze sim:/IOInterface/Din 2'b0001100010000010 0 
run 25
force -freeze sim:/IO/INTR 0 0
run 25
run 25
#Now decompressor read 1st run
force -freeze sim:/IO/decompZeroState 0 0
run 50
#Now it's in DMA's register
run 50
#Should be done writing to RAM
force -freeze sim:/IO/doneDMAImage 1 0
run 25
force -freeze sim:/IO/INTR 0 0
run 25
force -freeze sim:/IO/INTR 0 0
force -freeze sim:/IO/doneDMAImage 0 0
#2nd white pixel in run
run 75
force -freeze sim:/IO/doneDMAImage 1 0
force -freeze sim:/IO/zeroState 1 0
force -freeze sim:/IO/decompZeroState 1 0
force -freeze sim:/IO/imageOrCNN 1 0
run 25
run 25