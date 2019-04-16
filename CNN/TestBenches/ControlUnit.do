vsim -gui work.ControlUnit

add wave sim:/ControlUnit/*
force -freeze sim:/ControlUnit/clk 0 0, 1 {50 ps} -r 100
add wave sim:/sliceFilterMap/outerCounterOut
#add wave sim:/sliceFilterMap/innerCounterOut
add wave sim:/networkMap/counterOut
add wave sim:/oneLayerMap/counterOut
add wave sim:/filterMap/counterOut

force -freeze sim:/controlunit/layersNumber 10 0
force -freeze sim:/controlunit/filtersNumber 010 0
force -freeze sim:/controlunit/filterDepth 010 0
force -freeze sim:/controlunit/filterOutputSize 00010 0

force -freeze sim:/controlunit/startNetwork 0 0
force -freeze sim:/controlunit/layerType 0 0
force -freeze sim:/controlunit/convFinish 0 0
force -freeze sim:/controlunit/dmaAFinish 0 0
force -freeze sim:/controlunit/dmaBFinish 0 0
force -freeze sim:/controlunit/resetNetwork 1 0

run
force -freeze sim:/controlunit/resetNetwork 0 0
run

force -freeze sim:/ControlUnit/startNetwork 1 0
run

force -freeze sim:/ControlUnit/startNetwork 0 0
run

run
run
run

######################################Network
#load network configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
run

#####################################Layer 1
#load layer configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
run

#####################################Filter 1
#load Filter configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
run

######################################filter depth 1
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run
run
run

#####################################Filter 2
#load Filter configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
run
######################################filter depth 1
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

run
run
run
run
run

#####################################Layer 2
#load layer configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run

#####################################Filter 1
#load Filter configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
######################################filter depth 1
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run
run
run
run

#####################################Filter 2
#load Filter configuration
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
run

######################################filter depth 1
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/ControlUnit/dmaAFinish 1 0
run
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/ControlUnit/dmaAFinish 1 0
force -freeze sim:/ControlUnit/dmaBFinish 1 0
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/ControlUnit/dmaBFinish 1 0
force -freeze sim:/ControlUnit/convFinish 1 0
run
run
force -freeze sim:/ControlUnit/dmaBFinish 0 0
force -freeze sim:/ControlUnit/convFinish 0 0
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
run
run
run
run
run
run
run
force -freeze sim:/controlunit/dmaAFinish 1 0
force -freeze sim:/controlunit/dmaBFinish 1 0
force -freeze sim:/controlunit/convFinish 1 0
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