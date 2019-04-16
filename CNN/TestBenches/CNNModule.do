vsim -gui work.cnnmodule

sim:/cnnmodule/filterSize \
sim:/cnnmodule/windowSize \
sim:/cnnmodule/numUnits \
sim:/cnnmodule/numRows \
sim:/cnnmodule/decoderSize \
sim:/cnnmodule/startCNN \
sim:/cnnmodule/clk \
sim:/cnnmodule/rst \
sim:/cnnmodule/layerType \
sim:/cnnmodule/filterType \
sim:/cnnmodule/finishNetwork \
sim:/cnnmodule/startProduct \
sim:/cnnmodule/conv \
sim:/cnnmodule/pool \
sim:/cnnmodule/currentPage \
sim:/cnnmodule/filterBus \
sim:/cnnmodule/windowBus \
sim:/cnnmodule/decoderRow \
sim:/cnnmodule/writePage1 \
sim:/cnnmodule/writePage2 \
sim:/cnnmodule/writeFilter \
sim:/cnnmodule/shift2To1 \
sim:/cnnmodule/shift1To2 \
sim:/cnnmodule/pageTurn \
sim:/cnnmodule/doneCores \
sim:/cnnmodule/startConv \
sim:/cnnmodule/dmaFilterFinish \
sim:/cnnmodule/dmaWindowFinish \
sim:/cnnmodule/sumOutCores \
sim:/cnnmodule/loadLayerConfig \
sim:/cnnmodule/loadNetworkConfig \
sim:/cnnmodule/loadFilterConfig \
sim:/cnnmodule/loadBias \
sim:/cnnmodule/loadWindow \
sim:/cnnmodule/loadFilter \
sim:/cnnmodule/readNextCol \
sim:/cnnmodule/layersNumber \
sim:/cnnmodule/filtersNumber \
sim:/cnnmodule/filterDepth \
sim:/cnnmodule/filterOutputSize \
sim:/cnnmodule/addToOutputBuffer \
sim:/cnnmodule/outputBufferEn \
sim:/cnnmodule/saveToRAM

force -freeze sim:/cnnmodule/startCNN 0 0
force -freeze sim:/cnnmodule/clk 0 0, 1 {50 ps} -r 100
force -freeze sim:/cnnmodule/rst 1 0
force -freeze sim:/cnnmodule/layerType 0 0
force -freeze sim:/cnnmodule/filterType 0 0