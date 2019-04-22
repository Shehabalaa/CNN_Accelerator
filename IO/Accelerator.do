vsim -gui work.Accelerator
add wave -position insertpoint  \
sim:/Accelerator/Din \
sim:/Accelerator/INTR \
sim:/Accelerator/processing \
sim:/Accelerator/imageOrCNN \
sim:/Accelerator/load \
sim:/Accelerator/busy \
sim:/Accelerator/doneDMAFC \
sim:/Accelerator/doneDMACNN \
sim:/Accelerator/doneDMAImage \
sim:/accelerator/IOChip/io/Controller/doneDMAImageDelayed \
sim:/Accelerator/doneWithPhase \
sim:/accelerator/IOChip/io/Controller/anyDone \
sim:/accelerator/imgRamWrite \
sim:/accelerator/IOChip/io/Controller/INTRDelayedSq \
sim:/accelerator/IOChip/io/Controller/INTRDelayed \
sim:/Accelerator/iochip/interfaceOutput \
sim:/Accelerator/iochip/io/Interface/GlobalCounter/counterOutput \
sim:/accelerator/IOChip/io/Interface/zeroState \
sim:/accelerator/IOChip/io/Controller/zeroStateDelayed \
sim:/Accelerator/iochip/io/Controller/stateCounter/counterOutput \
sim:/accelerator/IOChip/decomp/countOut \
sim:/accelerator/IOChip/io/Controller/decompDecrementorEnable \
sim:/accelerator/IOChip/decompZeroState \
sim:/accelerator/Image/address \
sim:/accelerator/Image/dataIn \
sim:/accelerator/IOChip/imageDMA/enableImageRegister \
sim:/accelerator/Image/currentCount \
sim:/accelerator/IOChip/io/Controller/DMAImageOrINTRDelayed \
sim:/accelerator/IOChip/io/Controller/DMAImageOrINTRDelayedSq \
sim:/Accelerator/clk \
sim:/Accelerator/rst
#force -freeze sim:/Accelerator/rst 2#1 0, 2#0 50 
force -freeze sim:/Accelerator/rst 1 0
force -freeze sim:/Accelerator/clk 1 0, 0 {25 ps} -r 50
force -freeze sim:/Accelerator/INTR 0 0
force -freeze sim:/Accelerator/result 2'b0000 0 
run 50
force -freeze sim:/Accelerator/rst 0 0
run 25
#Setting up for the first cycle, reading number of rups
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000000000000010 0
force -freeze sim:/Accelerator/processing 0 0
force -freeze sim:/Accelerator/load 1 0 
force -freeze sim:/Accelerator/imageOrCNN 0 0
run 50
noforce sim:/Accelerator/Din 
force -freeze sim:/Accelerator/INTR 0 0
run 50
#1st real input
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0001100010000010 0 
run 50
noforce sim:/Accelerator/Din 
force -freeze sim:/Accelerator/INTR 0 0
run 50
#Now decompressor read 1st run
run 50
#Now it's in DMA's register
run 50
#Should be done writing to RAM
run 50
run 50
run 50
run 50
run 50
run 50
run 50
#Idle time
run 50
run 50
run 50
run 50
run 100
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0001111101000001 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
run 275
force -freeze sim:/Accelerator/imageOrCNN 1 0
run 125
#Checking CNN
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000001011100000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50