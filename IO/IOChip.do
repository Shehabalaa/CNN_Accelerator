vsim -gui work.IOChip
add wave -position insertpoint  \
sim:/IOChip/Din \
sim:/IOChip/INTR \
sim:/IOChip/INTRDelayed \
sim:/IOChip/clk \
sim:/IOChip/processing \
sim:/IOChip/imageOrCNN \
sim:/IOChip/decompZeroState \
sim:/IOChip/load \
sim:/IOChip/busy \
sim:/IOChip/doneDMAFC \
sim:/IOChip/doneDMACNN \
sim:/IOChip/doneDMAImage \
sim:/IOChip/doneWithPhase \
sim:/IOChip/CNNCounterEnable \
sim:/IOChip/CNNRegisterEnable \
sim:/IOChip/imageCounterEnable \
sim:/IOChip/imageRegisterEnable \
sim:/IOChip/result \
sim:/IOChip/interfaceOutput \
sim:/iochip/io/Interface/GlobalCounter/counterOutput \
sim:/iochip/io/Controller/stateCounter/counterOutput \
sim:/IOChip/rst
#force -freeze sim:/IOChip/rst 2#1 0, 2#0 50 
force -freeze sim:/IOChip/rst 1 0
force -freeze sim:/IOChip/clk 1 0, 0 {25 ps} -r 50
force -freeze sim:/IOChip/INTR 0 0
force -freeze sim:/IOChip/result 2'b0000 0 
run 50
force -freeze sim:/IOChip/rst 0 0
run 25
#Setting up for the first cycle, reading number of rups
force -freeze sim:/IOChip/INTR 1 0
force -freeze sim:/IOChip/Din 2'b000000000000010 0
force -freeze sim:/IOChip/processing 0 0
force -freeze sim:/IOChip/load 1 0 
force -freeze sim:/IOChip/imageOrCNN 0 0
force -freeze sim:/IOChip/decompZeroState 1 0
force -freeze sim:/IOChip/doneDMAFC 0 0
force -freeze sim:/IOChip/doneDMACNN 0 0
force -freeze sim:/IOChip/doneDMAImage 0 0
run 25
noforce sim:/IOChip/Din 
force -freeze sim:/IOChip/INTR 0 0
run 25
#1st real input
force -freeze sim:/IOChip/INTR 1 0
force -freeze sim:/IOChip/Din 2'b0001100010000010 0 
run 25
noforce sim:/IOChip/Din 
force -freeze sim:/IOChip/INTR 0 0
run 25
run 25
#Now decompressor read 1st run
force -freeze sim:/IOChip/decompZeroState 0 0
run 50
#Now it's in DMA's register
run 50
#Should be done writing to RAM
force -freeze sim:/IOChip/doneDMAImage 1 0
run 25
noforce sim:/IOChip/Din 
force -freeze sim:/IOChip/INTR 0 0
run 25
noforce sim:/IOChip/Din 
force -freeze sim:/IOChip/INTR 0 0
force -freeze sim:/IOChip/doneDMAImage 0 0
#2nd white pixel in run
run 75
force -freeze sim:/IOChip/doneDMAImage 1 0
force -freeze sim:/IOChip/decompZeroState 1 0
run 25
force -freeze sim:/IOChip/doneDMAImage 0 0
run 25
#Start second run
force -freeze sim:/IOChip/INTR 1 0
force -freeze sim:/IOChip/Din 2'b0001111101000001 0
run 25
noforce sim:/IOChip/Din 
force -freeze sim:/IOChip/INTR 0 0
run 25
run 25
#At rising edge now, decomp read the value
run 50
#DMA read the value
run 50
#Now we're at the beginning of the write cycle
run 25
#Half way through the cycle, RAM is done
force -freeze sim:/IOChip/doneDMAImage 1 0
run 25
force -freeze sim:/IOChip/doneDMAImage 0 0
run 25
force -freeze sim:/IOChip/imageOrCNN 1 0
force -freeze sim:/IOChip/INTR 1 0
force -freeze sim:/IOChip/Din 2'b0000001011100000 0
run 25
force -freeze sim:/IOChip/INTR 0 0
noforce sim:/IOChip/Din 
run 25
force -freeze sim:/IOChip/INTR 1 0
force -freeze sim:/IOChip/Din 2'b0001111101000111 0
run 25
force -freeze sim:/IOChip/INTR 0 0
noforce sim:/IOChip/Din 
run 25
run 50
run 50
force -freeze sim:/IOChip/doneDMACNN 1 0
run 25
run 50