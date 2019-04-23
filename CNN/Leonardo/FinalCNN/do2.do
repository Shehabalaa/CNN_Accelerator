vsim -gui work.CNNWithRam2
#vsim -gui work.cnnwithram2 -sdfnoerror -sdfnowarn -sdfmax /=/media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNN/CNNWithRAM.sdf

add wave -position insertpoint  \
sim:/cnnwithram2/clk \
sim:/cnnwithram2/rst \
sim:/cnnwithram2/start \
sim:/cnnwithram2/MFCWindowRam \
sim:/cnnwithram2/MFCWeightsRam \
sim:/cnnwithram2/MFCWrite
add wave -position insertpoint  \
sim:/cnnwithram2/finishCNN
add wave -position insertpoint  \
sim:/cnnwithram2/weightsRamDataInBus_39 \
sim:/cnnwithram2/windowRamDataInBus_79
add wave -position insertpoint  \
sim:/cnnwithram2/weightsRamRead
add wave -position insertpoint  \
sim:/cnnwithram2/windowRamRead \
sim:/cnnwithram2/windowRamWrite
add wave -position insertpoint  \
sim:/cnnwithram2/weightsRam/addressRead
add wave -position insertpoint  \
sim:/cnnwithram2/windowRam/addressRead \
sim:/cnnwithram2/windowRam/addressWrite
add wave -position insertpoint  \
sim:/cnnwithram2/weightsRam/dataOut
add wave -position insertpoint  \
sim:/cnnwithram2/windowRam/dataOut

add wave -position insertpoint  \
sim:/cnnwithram2/CNNMap/coresMap/filterBus \
sim:/cnnwithram2/CNNMap/coresMap/windowBus \
sim:/cnnwithram2/CNNMap/coresMap/decoderRow \
sim:/cnnwithram2/CNNMap/coresMap/writePage1 \
sim:/cnnwithram2/CNNMap/coresMap/writePage2 \
sim:/cnnwithram2/CNNMap/coresMap/writeFilter \
sim:/cnnwithram2/CNNMap/coresMap/shift2To1 \
sim:/cnnwithram2/CNNMap/coresMap/shift1To2 \
sim:/cnnwithram2/CNNMap/coresMap/pageTurn \
sim:/cnnwithram2/CNNMap/coresMap/start \
sim:/cnnwithram2/CNNMap/coresMap/layerType \
sim:/cnnwithram2/CNNMap/coresMap/filterType \
sim:/cnnwithram2/CNNMap/coresMap/done \
sim:/cnnwithram2/CNNMap/coresMap/finalSum


add wave -position insertpoint  \
sim:/cnnwithram2/CNNMap/controlUnitMap/clk \
sim:/cnnwithram2/CNNMap/controlUnitMap/layersNumber \
sim:/cnnwithram2/CNNMap/controlUnitMap/filtersNumber \
sim:/cnnwithram2/CNNMap/controlUnitMap/filterDepth \
sim:/cnnwithram2/CNNMap/controlUnitMap/filterOutputSize \
sim:/cnnwithram2/CNNMap/controlUnitMap/startNetwork \
sim:/cnnwithram2/CNNMap/controlUnitMap/layerType \
sim:/cnnwithram2/CNNMap/controlUnitMap/convFinish \
sim:/cnnwithram2/CNNMap/controlUnitMap/dmaAFinish \
sim:/cnnwithram2/CNNMap/controlUnitMap/dmaBFinish \
sim:/cnnwithram2/CNNMap/controlUnitMap/dmaCFinish \
sim:/cnnwithram2/CNNMap/controlUnitMap/resetNetwork \
sim:/cnnwithram2/CNNMap/controlUnitMap/startOneLayer \
sim:/cnnwithram2/CNNMap/controlUnitMap/startFilter \
sim:/cnnwithram2/CNNMap/controlUnitMap/filterLastLayer \
sim:/cnnwithram2/CNNMap/controlUnitMap/startSlice \
sim:/cnnwithram2/CNNMap/controlUnitMap/loadLayerConfig \
sim:/cnnwithram2/CNNMap/controlUnitMap/loadNetworkConfig \
sim:/cnnwithram2/CNNMap/controlUnitMap/loadFilterConfig \
sim:/cnnwithram2/CNNMap/controlUnitMap/loadWindow \
sim:/cnnwithram2/CNNMap/controlUnitMap/loadFilter \
sim:/cnnwithram2/CNNMap/controlUnitMap/conv \
sim:/cnnwithram2/CNNMap/controlUnitMap/pool \
sim:/cnnwithram2/CNNMap/controlUnitMap/shift12 \
sim:/cnnwithram2/CNNMap/controlUnitMap/shift21 \
sim:/cnnwithram2/CNNMap/controlUnitMap/readNextCol \
sim:/cnnwithram2/CNNMap/controlUnitMap/addToOutputBuffer \
sim:/cnnwithram2/CNNMap/controlUnitMap/outputBufferEn \
sim:/cnnwithram2/CNNMap/controlUnitMap/saveToRAM \
sim:/cnnwithram2/CNNMap/controlUnitMap/currentPage \
sim:/cnnwithram2/CNNMap/controlUnitMap/finishCurrentSlice \
sim:/cnnwithram2/CNNMap/controlUnitMap/finishFilter \
sim:/cnnwithram2/CNNMap/controlUnitMap/finishOneLayer \
sim:/cnnwithram2/CNNMap/controlUnitMap/finishNetwork



add wave -position insertpoint  \
sim:/cnnwithram2/CNNMap/DMAControllerMap/clk \
sim:/cnnwithram2/CNNMap/DMAControllerMap/reset \
sim:/cnnwithram2/CNNMap/DMAControllerMap/writeInternalBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsRamDataInBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamDataInBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/MFCWindowRam \
sim:/cnnwithram2/CNNMap/DMAControllerMap/MFCWeightsRam \
sim:/cnnwithram2/CNNMap/DMAControllerMap/MFCWrite \
sim:/cnnwithram2/CNNMap/DMAControllerMap/loadNextFilter \
sim:/cnnwithram2/CNNMap/DMAControllerMap/loadNextWindow \
sim:/cnnwithram2/CNNMap/DMAControllerMap/loadNextRow \
sim:/cnnwithram2/CNNMap/DMAControllerMap/loadOneWord \
sim:/cnnwithram2/CNNMap/DMAControllerMap/loadThreeWord \
sim:/cnnwithram2/CNNMap/DMAControllerMap/filterFinished \
sim:/cnnwithram2/CNNMap/DMAControllerMap/sliceFinished \
sim:/cnnwithram2/CNNMap/DMAControllerMap/layerFinished \
sim:/cnnwithram2/CNNMap/DMAControllerMap/layerType \
sim:/cnnwithram2/CNNMap/DMAControllerMap/write \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsSizeType \
sim:/cnnwithram2/CNNMap/DMAControllerMap/inputSize \
sim:/cnnwithram2/CNNMap/DMAControllerMap/outputSize \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamBaseAddress1 \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamBaseAddress2 \
sim:/cnnwithram2/CNNMap/DMAControllerMap/filterRamBaseAddress \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsInternalBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowInternalBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsRamAddress \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamAddressRead \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamAddressWrite \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsRamRead \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamRead \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamWrite \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowRamDataOutBus \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowReadOne \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowReadFinal \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsReadOne \
sim:/cnnwithram2/CNNMap/DMAControllerMap/weightsReadFinal \
sim:/cnnwithram2/CNNMap/DMAControllerMap/writeDoneAll \
sim:/cnnwithram2/CNNMap/DMAControllerMap/writeDoneOne \
sim:/cnnwithram2/CNNMap/DMAControllerMap/filterAluNumber \
sim:/cnnwithram2/CNNMap/DMAControllerMap/windowAluNumber


add wave -position insertpoint  \
sim:/cnnwithram2/CNNMap/finalAdderMap/a \
sim:/cnnwithram2/CNNMap/finalAdderMap/b \
sim:/cnnwithram2/CNNMap/finalAdderMap/carryIn \
sim:/cnnwithram2/CNNMap/finalAdderMap/sum



add wave -position insertpoint  \
sim:/cnnwithram2/CNNMap/configMap/filterBus \
sim:/cnnwithram2/CNNMap/configMap/clk \
sim:/cnnwithram2/CNNMap/configMap/rst \
sim:/cnnwithram2/CNNMap/configMap/readNumLayers \
sim:/cnnwithram2/CNNMap/configMap/readLayerConfig \
sim:/cnnwithram2/CNNMap/configMap/numLayers \
sim:/cnnwithram2/CNNMap/configMap/layerType \
sim:/cnnwithram2/CNNMap/configMap/filterType \
sim:/cnnwithram2/CNNMap/configMap/numFilters \
sim:/cnnwithram2/CNNMap/configMap/filterDepth \
sim:/cnnwithram2/CNNMap/configMap/inputSize \
sim:/cnnwithram2/CNNMap/configMap/outputSize




force -freeze sim:/cnnwithram2/clk 0 0, 1 {15000 ps} -r {30 ns}
force -freeze sim:/cnnwithram2/rst 1 0
force -freeze sim:/cnnwithram2/start 0 0

run

mem load -i /media/sf_CNN_Accelerator/CNN/RAMs/PassedTests/1layer2filter3x3/windowRAM.mem -format mti /cnnwithram2/windowRam/ram
mem load -i /media/sf_CNN_Accelerator/CNN/RAMs/PassedTests/1layer2filter3x3/weightsRAM.mem -format mti /cnnwithram2/weightsRam/ram




force -freeze sim:/cnnwithram2/rst 0 0
force -freeze sim:/cnnwithram2/start 1 0

run
force -freeze sim:/cnnwithram2/start 0 0


run


