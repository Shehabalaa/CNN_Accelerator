vsim -gui work.NetworkControllerTest
add wave sim:/NetworkControllerTest/*

run
force -freeze sim:/networkcontrollertest/startNetwork 1 0
run

force -freeze sim:/networkcontrollertest/startNetwork 0 0
run

######################################Network
#load network configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
run

#####################################Layer 1
#load layer configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
run

#####################################Filter 1
#load Filter configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
run

######################################filter depth 1
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run
run
run

#####################################Filter 2
#load Filter configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
run
######################################filter depth 1
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
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
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run

#####################################Filter 1
#load Filter configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
######################################filter depth 1
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run
run
run
run

#####################################Filter 2
#load Filter configuration
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
run

######################################filter depth 1
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

######################################filter depth 2
#loadBias
run
run
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run

#finish load filter and window
force -freeze sim:/networkcontrollertest/dmaAFinish 1 0
force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/dmaAFinish 0 0
run
run
run
#finish convolution and load next col 1

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 2

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 3

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run

#finish convolution and load next col 4

force -freeze sim:/networkcontrollertest/dmaBFinish 1 0
force -freeze sim:/networkcontrollertest/convFinish 1 0
run
run
force -freeze sim:/networkcontrollertest/dmaBFinish 0 0
force -freeze sim:/networkcontrollertest/convFinish 0 0
run
run
run
run
run