vsim -gui work.Controller
add wave -position ipsertpoint  \
sim:/controller/INTR \
sim:/controller/clk \
sim:/controller/processing \
sim:/controller/imageOrCNN \
sim:/controller/zeroState \
sim:/controller/rst \
sim:/controller/load \
sim:/controller/busy \
sim:/controller/interfaceRegEnable \
sim:/controller/interfaceMuxSel \
sim:/controller/interfaceMuxEnable \
sim:/controller/globalCounterLoad \
sim:/controller/globalCounterEnable \
sim:/controller/imageLatcherD \
sim:/controller/doneImage \
sim:/controller/stateCounterQ \
sim:/controller/doneDMAFC \
sim:/controller/doneDMACNN \
sim:/controller/doneDMAImage \
sim:/controller/doneDecomp \
sim:/controller/anyDone \
sim:/controller/CNNCounterEnable \
sim:/controller/CNNRegisterEnable \
sim:/controller/imageCounterEnable \
sim:/controller/imageRegisterEnable
#force -freeze sim:/Controller/rst 2#1 0, 2#0 50 
force -freeze sim:/Controller/clk 1 0, 0 {25 ps} -r 50
force -freeze sim:/Controller/zeroState 1 0
force -freeze sim:/Controller/INTR 0 0
force -freeze sim:/Controller/rst 1 0
run 25
run 25
force -freeze sim:/Controller/rst 0 0
run 25
force -freeze sim:/Controller/INTR 1 0, 0 {50 ps} -r 150
force -freeze sim:/Controller/processing 0 0
force -freeze sim:/Controller/load 1 0 
force -freeze sim:/Controller/imageOrCNN 0 0
force -freeze sim:/Controller/decompZeroState 1 0
force -freeze sim:/Controller/doneDMAFC 0 0
force -freeze sim:/Controller/doneDMACNN 0 0
force -freeze sim:/Controller/doneDMAImage 0 0
#Write input to global counter
run 26 
#Just after rising edge
force -freeze sim:/Controller/zeroState 0 0
#No force
run 24
#Write input
run 26
#No force
run 24
run 25
#Write input
force -freeze sim:/Controller/doneDecomp 1 0, 0 {50 ps} -r 150
force -freeze sim:/Controller/doneDMAImage 1 0, 0 {50 ps} -r 150
run 26
#No force
run 24
run 125
run 25
run 75
force -freeze sim:/Controller/zeroState 1 0
run 25
force -freeze sim:/Controller/imageOrCNN 1 0 
run 50
force -freeze sim:/Controller/zeroState 0 0
force -freeze sim:/Controller/doneDecomp 1 0, 0 {0 ps} -r 150
force -freeze sim:/Controller/doneDMAImage 1 0, 0 {0 ps} -r 150
run 100

#run a lot

force -freeze sim:/Controller/processing 1 0
force -freeze sim:/Controller/INTR 0 0 
run 50
