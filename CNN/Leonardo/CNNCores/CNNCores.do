vsim -sdfmax /=/media/sf_CNN_Accelerator/CNN/Leonardo/CNNCores/CNNCores.sdf work.cnncores
add wave -position insertpoint  \
sim:/cnncores/clk \
sim:/cnncores/decoderRow \
sim:/cnncores/filterBus \
sim:/cnncores/filterType \
sim:/cnncores/layerType \
sim:/cnncores/pageTurn \
sim:/cnncores/rst \
sim:/cnncores/shift1To2 \
sim:/cnncores/shift2To1 \
sim:/cnncores/start \
sim:/cnncores/windowBus \
sim:/cnncores/writeFilter \
sim:/cnncores/writePage1 \
sim:/cnncores/writePage2 \
sim:/cnncores/done \
sim:/cnncores/finalSum

force -freeze sim:/cnncores/clk 0 0, 1 {6500 ps} -r 13000
force -freeze sim:/cnncores/rst 1 0
run

force -freeze sim:/cnncores/decoderRow 3'h0 0
force -freeze sim:/cnncores/filterBus 40'h4040404040 0
force -freeze sim:/cnncores/filterType 0 0
force -freeze sim:/cnncores/layerType 0 0
force -freeze sim:/cnncores/pageTurn 0 0
force -freeze sim:/cnncores/rst 0 0
force -freeze sim:/cnncores/shift1To2 0 0
force -freeze sim:/cnncores/shift2To1 0 0
force -freeze sim:/cnncores/start 0 0
force -freeze sim:/cnncores/windowBus 80'h01000100010001000100 0
force -freeze sim:/cnncores/writeFilter 1 0
force -freeze sim:/cnncores/writePage1 1 0
force -freeze sim:/cnncores/writePage2 0 0
run
force -freeze sim:/cnncores/decoderRow 3'h1 0
run
force -freeze sim:/cnncores/decoderRow 3'h2 0
run
force -freeze sim:/cnncores/decoderRow 3'h3 0
run
force -freeze sim:/cnncores/decoderRow 3'h4 0
run
force -freeze sim:/cnncores/start 1 0
force -freeze sim:/cnncores/writeFilter 0 0
force -freeze sim:/cnncores/writePage1 0 0
run
run
run
run
force -freeze sim:/cnncores/start 0 0

force -freeze sim:/cnncores/layerType 1 0
run
force -freeze sim:/cnncores/filterType 1 0
run
force -freeze sim:/cnncores/layerType 0 0
run
