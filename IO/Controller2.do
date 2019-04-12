vsim -gui work.Controller
add wave -position insertpoint  \
sim:/controller/INTR \
sim:/controller/INTRDelayed \
sim:/controller/INTRDelayedSq \
sim:/controller/clk \
sim:/controller/processing \
sim:/controller/imageOrCNN \
sim:/controller/zeroState \
sim:/controller/decompZeroState \
sim:/controller/load \
sim:/controller/busy \
sim:/controller/interfaceRegEnable \
sim:/controller/globalCounterLoad \
sim:/controller/globalCounterEnable \
sim:/controller/stateCounterQ \
sim:/controller/doneDMAFC \
sim:/controller/doneDMACNN \
sim:/controller/doneDMAImage \
sim:/controller/doneDecomp \
sim:/controller/anyDone \
sim:/controller/doneWithPhase \
sim:/controller/CNNCounterEnable \
sim:/controller/CNNRegisterEnable \
sim:/controller/imageCounterEnable \
sim:/controller/imageRegisterEnable \
sim:/controller/rst
force -freeze sim:/Controller/rst 2#1 0, 2#0 50 
force -freeze sim:/Controller/clk 1 0, 0 {25 ns} -r 50
force -freeze sim:/Controller/zeroState 1 0
force -freeze sim:/Controller/INTR 0 0
run 75
#Setting up for the first cycle, reading number of runs
force -freeze sim:/Controller/INTR 1 0
force -freeze sim:/Controller/processing 0 0
force -freeze sim:/Controller/load 1 0 
force -freeze sim:/Controller/imageOrCNN 0 0
force -freeze sim:/Controller/decompZeroState 1 0
force -freeze sim:/Controller/doneDMAFC 0 0
force -freeze sim:/Controller/doneDMACNN 0 0
force -freeze sim:/Controller/doneDMAImage 0 0
run 25
force -freeze sim:/Controller/INTR 0 0
force -freeze sim:/Controller/zeroState 0 0
run 25
#1st real input
force -freeze sim:/Controller/INTR 1 0
run 25
force -freeze sim:/Controller/INTR 0 0
run 25
run 25
#Now decompressor read 1st run
force -freeze sim:/Controller/decompZeroState 0 0
run 50
#Now it's in DMA's register
run 50
#Should be done writing to RAM
force -freeze sim:/Controller/doneDMAImage 1 0
run 25
force -freeze sim:/Controller/INTR 0 0
run 25
force -freeze sim:/Controller/INTR 0 0
force -freeze sim:/Controller/doneDMAImage 0 0
#2nd white pixel in run
run 75
force -freeze sim:/Controller/doneDMAImage 1 0
force -freeze sim:/Controller/zeroState 1 0
force -freeze sim:/Controller/decompZeroState 1 0
force -freeze sim:/Controller/imageOrCNN 1 0
run 25
run 25