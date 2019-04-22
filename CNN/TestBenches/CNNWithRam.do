vsim -gui work.CNNWithRam

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/networkMap/currentState
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/oneLayerMap/currentState
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/filterMap/currentState
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/sliceFilterMap/currentState

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/finalAdderMap/sum


add wave -position insertpoint sim:/cnnwithram/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/coresMap/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/controlUnitMap/*
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/sliceFilterMap/finalDMAAFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/sliceFilterMap/finalDMABFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/sliceFilterMap/finalDMACFinish
add wave -position insertpoint sim:/cnnwithram/CNNMap/DMAControllerMap/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/outbufferMap/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/configMap/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/DMAControllerMap/writeLogicEnt/dma/writeAddressRegister/*

add wave -position insertpoint sim:/cnnwithram/CNNMap/coresMap/addersMap/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/coresMap/mulsMap/*
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/coresMap/regFileMap/pagesOuts \
sim:/cnnwithram/CNNMap/coresMap/regFileMap/filtersOuts

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadLogicEnt/aluNumberCounterClk

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadLogicEnt/incUnitNumber

#add wave -position insertpoint  \
#sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadLogicEnt/realIncUnitNumber

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadLogicEnt/currentState

add wave -position insertpoint sim:/cnnwithram/CNNMap/DMAControllerMap/writeLogicEnt/dma/writecounter/*
add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/DMAControllerMap/writeLogicEnt/dma/initCounter \
sim:/cnnwithram/CNNMap/DMAControllerMap/writeLogicEnt/dma/initAddress

force -freeze sim:/cnnwithram/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/cnnwithram/rst 1 0
force -freeze sim:/cnnwithram/start 0 0

run

mem load -i ./CNN/RAMs/in/windowRAM.mem -format mti /cnnwithram/windowRam/ram
mem load -i ./CNN/RAMs/in/weightsRAM.mem -format mti /cnnwithram/weightsRam/ram




force -freeze sim:/cnnwithram/rst 0 0
force -freeze sim:/cnnwithram/start 1 0

run
force -freeze sim:/cnnwithram/start 0 0


run
run
run
run

run

run
run
run
run

run

#readBias

#run -all

#mem save -o ./CNN/RAMs/in/cnnOutput.mem -f mti -data binary -addr hex -wordsperline 1 /cnnwithram/windowRam/ram

#mem save -o ./CNN/RAMs/in/cnnOutput.mem -f mti -data binary -addr hex -startaddress 3872 -endaddress 8191 -wordsperline 1 /cnnwithram/windowRam/ram