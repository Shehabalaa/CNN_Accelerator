vsim -gui work.Accelerator
add wave -position insertpoint  \
sim:/Accelerator/Din \
sim:/Accelerator/INTR \
sim:/Accelerator/clk \
sim:/Accelerator/imageOrCNN \
sim:/Accelerator/load \
sim:/Accelerator/busy \
sim:/Accelerator/doneDMAFC \
sim:/accelerator/IOChip/io/Controller/anyDone \
sim:/Accelerator/doneWithPhase \
sim:/accelerator/FCRamWrite \
sim:/accelerator/IOChip/io/Controller/FCRegisterEnable \
sim:/accelerator/IOChip/fcDMA/moduloCounterSignal \
sim:/accelerator/IOChip/io/Controller/INTRDelayedSq \
sim:/accelerator/IOChip/io/Controller/INTRDelayed \
sim:/Accelerator/iochip/interfaceOutput \
sim:/Accelerator/iochip/io/Interface/GlobalCounter/counterOutput \
sim:/accelerator/IOChip/io/Interface/zeroState \
sim:/accelerator/IOChip/io/Controller/zeroStateDelayed \
sim:/accelerator/IOChip/io/Controller/zeroStateDelayedSq \
sim:/Accelerator/iochip/io/Controller/stateCounter/counterOutput \
sim:/accelerator/IOChip/io/Interface/GlobalCounter/muxloadOrCurrent/* \
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
force -freeze sim:/Accelerator/Din 2'b0000000000000010 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000001011100000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 250
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1100000011111100 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 250
#Checking FC
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000010010000001 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111110111111110 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111111110000000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111110000000001 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000000111111111 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111111000000101 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 400




#SECOND INPUT WORD
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111111100000000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000001000000001 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111110000000000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000000000000000 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b0000001011111110 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 50
force -freeze sim:/Accelerator/INTR 1 0
force -freeze sim:/Accelerator/Din 2'b1111111000000101 0
run 50
force -freeze sim:/Accelerator/INTR 0 0
noforce sim:/Accelerator/Din 
run 400