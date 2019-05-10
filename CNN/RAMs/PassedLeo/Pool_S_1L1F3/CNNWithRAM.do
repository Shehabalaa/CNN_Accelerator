vsim -gui work.CNNWithRam

add wave -position insertpoint  \
sim:/CNNWithRam/clk \
sim:/CNNWithRam/rst \
sim:/CNNWithRam/start \
sim:/CNNWithRam/MFCWindowRam \
sim:/CNNWithRam/MFCWeightsRam \
sim:/CNNWithRam/MFCWrite
add wave -position insertpoint  \
sim:/CNNWithRam/finishCNN

add wave -position insertpoint  \
sim:/CNNWithRam/weightsRamRead
add wave -position insertpoint  \
sim:/CNNWithRam/windowRamRead \
sim:/CNNWithRam/windowRamWrite
add wave -position insertpoint  \
sim:/CNNWithRam/weightsRam/addressRead
add wave -position insertpoint  \
sim:/CNNWithRam/windowRam/addressRead \
sim:/CNNWithRam/windowRam/addressWrite
add wave -position insertpoint  \
sim:/CNNWithRam/weightsRam/dataOut
add wave -position insertpoint  \
sim:/CNNWithRam/windowRam/dataOut

add wave -position insertpoint  \
sim:/CNNWithRam/CNNMap/coresMap/filterBus \
sim:/CNNWithRam/CNNMap/coresMap/windowBus \
sim:/CNNWithRam/CNNMap/coresMap/decoderRow \
sim:/CNNWithRam/CNNMap/coresMap/writePage1 \
sim:/CNNWithRam/CNNMap/coresMap/writePage2 \
sim:/CNNWithRam/CNNMap/coresMap/writeFilter \
sim:/CNNWithRam/CNNMap/coresMap/shift2To1 \
sim:/CNNWithRam/CNNMap/coresMap/shift1To2 \
sim:/CNNWithRam/CNNMap/coresMap/pageTurn \
sim:/CNNWithRam/CNNMap/coresMap/start \
sim:/CNNWithRam/CNNMap/coresMap/layerType \
sim:/CNNWithRam/CNNMap/coresMap/filterType


add wave -position insertpoint  \
sim:/CNNWithRam/CNNMap/controlUnitMap/clk \
sim:/CNNWithRam/CNNMap/controlUnitMap/layersNumber \
sim:/CNNWithRam/CNNMap/controlUnitMap/filtersNumber \
sim:/CNNWithRam/CNNMap/controlUnitMap/filterDepth \
sim:/CNNWithRam/CNNMap/controlUnitMap/filterOutputSize \
sim:/CNNWithRam/CNNMap/controlUnitMap/startNetwork \
sim:/CNNWithRam/CNNMap/controlUnitMap/layerType \
sim:/CNNWithRam/CNNMap/controlUnitMap/convFinish \
sim:/CNNWithRam/CNNMap/controlUnitMap/dmaAFinish \
sim:/CNNWithRam/CNNMap/controlUnitMap/dmaBFinish \
sim:/CNNWithRam/CNNMap/controlUnitMap/dmaCFinish \
sim:/CNNWithRam/CNNMap/controlUnitMap/resetNetwork \
sim:/CNNWithRam/CNNMap/controlUnitMap/startOneLayer \
sim:/CNNWithRam/CNNMap/controlUnitMap/startFilter \
sim:/CNNWithRam/CNNMap/controlUnitMap/filterLastLayer \
sim:/CNNWithRam/CNNMap/controlUnitMap/startSlice \
sim:/CNNWithRam/CNNMap/controlUnitMap/loadLayerConfig \
sim:/CNNWithRam/CNNMap/controlUnitMap/loadNetworkConfig \
sim:/CNNWithRam/CNNMap/controlUnitMap/loadFilterConfig \
sim:/CNNWithRam/CNNMap/controlUnitMap/loadWindow \
sim:/CNNWithRam/CNNMap/controlUnitMap/loadFilter \
sim:/CNNWithRam/CNNMap/controlUnitMap/conv \
sim:/CNNWithRam/CNNMap/controlUnitMap/pool \
sim:/CNNWithRam/CNNMap/controlUnitMap/shift12 \
sim:/CNNWithRam/CNNMap/controlUnitMap/shift21 \
sim:/CNNWithRam/CNNMap/controlUnitMap/readNextCol \
sim:/CNNWithRam/CNNMap/controlUnitMap/addToOutputBuffer \
sim:/CNNWithRam/CNNMap/controlUnitMap/outputBufferEn \
sim:/CNNWithRam/CNNMap/controlUnitMap/saveToRAM \
sim:/CNNWithRam/CNNMap/controlUnitMap/currentPage \
sim:/CNNWithRam/CNNMap/controlUnitMap/finishCurrentSlice \
sim:/CNNWithRam/CNNMap/controlUnitMap/finishFilter \
sim:/CNNWithRam/CNNMap/controlUnitMap/finishOneLayer \
sim:/CNNWithRam/CNNMap/controlUnitMap/finishNetwork



add wave -position insertpoint  \
sim:/CNNWithRam/CNNMap/DMAControllerMap/clk \
sim:/CNNWithRam/CNNMap/DMAControllerMap/reset \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsInternalBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowInternalBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/writeInternalBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsRamAddress \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamAddressRead \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamAddressWrite \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsRamDataInBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamDataInBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsRamRead \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamRead \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamWrite \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamDataOutBus \
sim:/CNNWithRam/CNNMap/DMAControllerMap/MFCWindowRam \
sim:/CNNWithRam/CNNMap/DMAControllerMap/MFCWeightsRam \
sim:/CNNWithRam/CNNMap/DMAControllerMap/MFCWrite \
sim:/CNNWithRam/CNNMap/DMAControllerMap/loadNextFilter \
sim:/CNNWithRam/CNNMap/DMAControllerMap/loadNextWindow \
sim:/CNNWithRam/CNNMap/DMAControllerMap/loadNextRow \
sim:/CNNWithRam/CNNMap/DMAControllerMap/loadOneWord \
sim:/CNNWithRam/CNNMap/DMAControllerMap/loadThreeWord \
sim:/CNNWithRam/CNNMap/DMAControllerMap/filterFinished \
sim:/CNNWithRam/CNNMap/DMAControllerMap/sliceFinished \
sim:/CNNWithRam/CNNMap/DMAControllerMap/layerFinished \
sim:/CNNWithRam/CNNMap/DMAControllerMap/layerType \
sim:/CNNWithRam/CNNMap/DMAControllerMap/write \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsSizeType \
sim:/CNNWithRam/CNNMap/DMAControllerMap/inputSize \
sim:/CNNWithRam/CNNMap/DMAControllerMap/outputSize \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamBaseAddress1 \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowRamBaseAddress2 \
sim:/CNNWithRam/CNNMap/DMAControllerMap/filterRamBaseAddress \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowReadOne \
sim:/CNNWithRam/CNNMap/DMAControllerMap/windowReadFinal \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsReadOne \
sim:/CNNWithRam/CNNMap/DMAControllerMap/weightsReadFinal \
sim:/CNNWithRam/CNNMap/DMAControllerMap/writeDoneOne




add wave -position insertpoint  \
sim:/CNNWithRam/CNNMap/finalAdderMap/a \
sim:/CNNWithRam/CNNMap/finalAdderMap/b \
sim:/CNNWithRam/CNNMap/finalAdderMap/carryIn \
sim:/CNNWithRam/CNNMap/finalAdderMap/sum



add wave -position insertpoint  \
sim:/CNNWithRam/CNNMap/configMap/filterBus \
sim:/CNNWithRam/CNNMap/configMap/clk \
sim:/CNNWithRam/CNNMap/configMap/rst \
sim:/CNNWithRam/CNNMap/configMap/readNumLayers \
sim:/CNNWithRam/CNNMap/configMap/readLayerConfig \
sim:/CNNWithRam/CNNMap/configMap/numLayers \
sim:/CNNWithRam/CNNMap/configMap/layerType \
sim:/CNNWithRam/CNNMap/configMap/filterType \
sim:/CNNWithRam/CNNMap/configMap/numFilters \
sim:/CNNWithRam/CNNMap/configMap/filterDepth \
sim:/CNNWithRam/CNNMap/configMap/inputSize \
sim:/CNNWithRam/CNNMap/configMap/outputSize




force -freeze sim:/cnnwithram/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/CNNWithRam/rst 1 0
force -freeze sim:/CNNWithRam/start 0 0

run

mem load -i ../RAMs/CurrentRunning/Pool_S_1L1F3/windowRAM.mem -format mti /cnnwithram/windowRam/ram 
mem load -i ../RAMs/CurrentRunning/Pool_S_1L1F3/weightsRAM.mem -format mti /cnnwithram/weightsRam/ram 

force -freeze sim:/CNNWithRam/rst 0 0
force -freeze sim:/CNNWithRam/start 1 0
run
run
force -freeze sim:/CNNWithRam/start 0 0


run

mai mem save -o ../RAMs/CurrentRunning/Pool_S_1L1F3/cnnOutput.mem -f mti -data binary -addr hex -wordsperline 1 /cnnwithram/windowRam/ram 
