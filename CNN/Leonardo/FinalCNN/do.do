vsim -gui work.CNNWithRam
#vsim -gui work.cnnwithram -sdfnoerror -sdfnowarn -sdfmax /=/media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNN/CNNWithRAM.sdf
#vsim -gui -sdfnoerror -sdfnowarn -sdfmax /=/media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNN/CNNWithRAM.sdf -sdfmax /=/media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNN/CNNWithRAM.sdf work.cnnwithram -noglitch

add wave -position insertpoint  \
sim:/cnnwithram/clk \
sim:/cnnwithram/rst \
sim:/cnnwithram/start \
sim:/cnnwithram/MFCWindowRam \
sim:/cnnwithram/MFCWeightsRam \
sim:/cnnwithram/MFCWrite
add wave -position insertpoint  \
sim:/cnnwithram/finishCNN
add wave -position insertpoint  \
sim:/cnnwithram/weightsRamDataInBus_39 \
sim:/cnnwithram/windowRamDataInBus_79
add wave -position insertpoint  \
sim:/cnnwithram/weightsRamRead
add wave -position insertpoint  \
sim:/cnnwithram/windowRamRead \
sim:/cnnwithram/windowRamWrite
add wave -position insertpoint  \
sim:/cnnwithram/weightsRam/addressRead
add wave -position insertpoint  \
sim:/cnnwithram/windowRam/addressRead \
sim:/cnnwithram/windowRam/addressWrite
add wave -position insertpoint  \
sim:/cnnwithram/weightsRam/dataOut
add wave -position insertpoint  \
sim:/cnnwithram/windowRam/dataOut

add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/coresMap/filterBus \
sim:/cnnwithram/CNNMap/coresMap/windowBus \
sim:/cnnwithram/CNNMap/coresMap/decoderRow \
sim:/cnnwithram/CNNMap/coresMap/writePage1 \
sim:/cnnwithram/CNNMap/coresMap/writePage2 \
sim:/cnnwithram/CNNMap/coresMap/writeFilter \
sim:/cnnwithram/CNNMap/coresMap/shift2To1 \
sim:/cnnwithram/CNNMap/coresMap/shift1To2 \
sim:/cnnwithram/CNNMap/coresMap/pageTurn \
sim:/cnnwithram/CNNMap/coresMap/start \
sim:/cnnwithram/CNNMap/coresMap/layerType \
sim:/cnnwithram/CNNMap/coresMap/filterType \
sim:/cnnwithram/CNNMap/coresMap/done \
sim:/cnnwithram/CNNMap/coresMap/finalSum


add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/controlUnitMap/clk \
sim:/cnnwithram/CNNMap/controlUnitMap/layersNumber \
sim:/cnnwithram/CNNMap/controlUnitMap/filtersNumber \
sim:/cnnwithram/CNNMap/controlUnitMap/filterDepth \
sim:/cnnwithram/CNNMap/controlUnitMap/filterOutputSize \
sim:/cnnwithram/CNNMap/controlUnitMap/startNetwork \
sim:/cnnwithram/CNNMap/controlUnitMap/layerType \
sim:/cnnwithram/CNNMap/controlUnitMap/convFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/dmaAFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/dmaBFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/dmaCFinish \
sim:/cnnwithram/CNNMap/controlUnitMap/resetNetwork \
sim:/cnnwithram/CNNMap/controlUnitMap/startOneLayer \
sim:/cnnwithram/CNNMap/controlUnitMap/startFilter \
sim:/cnnwithram/CNNMap/controlUnitMap/filterLastLayer \
sim:/cnnwithram/CNNMap/controlUnitMap/startSlice \
sim:/cnnwithram/CNNMap/controlUnitMap/loadLayerConfig \
sim:/cnnwithram/CNNMap/controlUnitMap/loadNetworkConfig \
sim:/cnnwithram/CNNMap/controlUnitMap/loadFilterConfig \
sim:/cnnwithram/CNNMap/controlUnitMap/loadWindow \
sim:/cnnwithram/CNNMap/controlUnitMap/loadFilter \
sim:/cnnwithram/CNNMap/controlUnitMap/conv \
sim:/cnnwithram/CNNMap/controlUnitMap/pool \
sim:/cnnwithram/CNNMap/controlUnitMap/shift12 \
sim:/cnnwithram/CNNMap/controlUnitMap/shift21 \
sim:/cnnwithram/CNNMap/controlUnitMap/readNextCol \
sim:/cnnwithram/CNNMap/controlUnitMap/addToOutputBuffer \
sim:/cnnwithram/CNNMap/controlUnitMap/outputBufferEn \
sim:/cnnwithram/CNNMap/controlUnitMap/saveToRAM \
sim:/cnnwithram/CNNMap/controlUnitMap/currentPage \
sim:/cnnwithram/CNNMap/controlUnitMap/finishCurrentSlice \
sim:/cnnwithram/CNNMap/controlUnitMap/finishFilter \
sim:/cnnwithram/CNNMap/controlUnitMap/finishOneLayer \
sim:/cnnwithram/CNNMap/controlUnitMap/finishNetwork



add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/DMAControllerMap/clk \
sim:/cnnwithram/CNNMap/DMAControllerMap/reset \
sim:/cnnwithram/CNNMap/DMAControllerMap/writeInternalBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsRamDataInBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamDataInBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/MFCWindowRam \
sim:/cnnwithram/CNNMap/DMAControllerMap/MFCWeightsRam \
sim:/cnnwithram/CNNMap/DMAControllerMap/MFCWrite \
sim:/cnnwithram/CNNMap/DMAControllerMap/loadNextFilter \
sim:/cnnwithram/CNNMap/DMAControllerMap/loadNextWindow \
sim:/cnnwithram/CNNMap/DMAControllerMap/loadNextRow \
sim:/cnnwithram/CNNMap/DMAControllerMap/loadOneWord \
sim:/cnnwithram/CNNMap/DMAControllerMap/loadThreeWord \
sim:/cnnwithram/CNNMap/DMAControllerMap/filterFinished \
sim:/cnnwithram/CNNMap/DMAControllerMap/sliceFinished \
sim:/cnnwithram/CNNMap/DMAControllerMap/layerFinished \
sim:/cnnwithram/CNNMap/DMAControllerMap/layerType \
sim:/cnnwithram/CNNMap/DMAControllerMap/write \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsSizeType \
sim:/cnnwithram/CNNMap/DMAControllerMap/inputSize \
sim:/cnnwithram/CNNMap/DMAControllerMap/outputSize \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamBaseAddress1 \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamBaseAddress2 \
sim:/cnnwithram/CNNMap/DMAControllerMap/filterRamBaseAddress \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsInternalBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowInternalBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsRamAddress \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamAddressRead \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamAddressWrite \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsRamRead \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamRead \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamWrite \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowRamDataOutBus \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadOne \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowReadFinal \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsReadOne \
sim:/cnnwithram/CNNMap/DMAControllerMap/weightsReadFinal \
sim:/cnnwithram/CNNMap/DMAControllerMap/writeDoneAll \
sim:/cnnwithram/CNNMap/DMAControllerMap/writeDoneOne \
sim:/cnnwithram/CNNMap/DMAControllerMap/filterAluNumber \
sim:/cnnwithram/CNNMap/DMAControllerMap/windowAluNumber


add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/finalAdderMap/a \
sim:/cnnwithram/CNNMap/finalAdderMap/b \
sim:/cnnwithram/CNNMap/finalAdderMap/carryIn \
sim:/cnnwithram/CNNMap/finalAdderMap/sum



add wave -position insertpoint  \
sim:/cnnwithram/CNNMap/configMap/filterBus \
sim:/cnnwithram/CNNMap/configMap/clk \
sim:/cnnwithram/CNNMap/configMap/rst \
sim:/cnnwithram/CNNMap/configMap/readNumLayers \
sim:/cnnwithram/CNNMap/configMap/readLayerConfig \
sim:/cnnwithram/CNNMap/configMap/numLayers \
sim:/cnnwithram/CNNMap/configMap/layerType \
sim:/cnnwithram/CNNMap/configMap/filterType \
sim:/cnnwithram/CNNMap/configMap/numFilters \
sim:/cnnwithram/CNNMap/configMap/filterDepth \
sim:/cnnwithram/CNNMap/configMap/inputSize \
sim:/cnnwithram/CNNMap/configMap/outputSize


add wave -position insertpoint sim:/cnnwithram/CNNMap/DMAControllerMap/filterReadLogicEnt/dma/*
add wave -position insertpoint sim:/cnnwithram/CNNMap/DMAControllerMap/filterReadLogicEnt/*


force -freeze sim:/cnnwithram/clk 0 0, 1 {25000 ps} -r {50 ns}
force -freeze sim:/cnnwithram/rst 1 0
force -freeze sim:/cnnwithram/start 0 0

run

mem load -i /media/sf_CNN_Accelerator/CNN/RAMs/PassedTests/1layer2filter3x3/windowRAM.mem -format mti /cnnwithram/windowRam/ram
mem load -i /media/sf_CNN_Accelerator/CNN/RAMs/PassedTests/1layer2filter3x3/weightsRAM.mem -format mti /cnnwithram/weightsRam/ram




force -freeze sim:/cnnwithram/rst 0 0
force -freeze sim:/cnnwithram/start 1 0
run
run
force -freeze sim:/cnnwithram/start 0 0


run


