vsim -gui work.RegFileTest

add wave sim:/RegFileTest/*

add wave -position insertpoint  \
sim:/regfiletest/regFileMap/page1Enables
add wave -position insertpoint  \
sim:/regfiletest/regFileMap/page2Enables
add wave -position insertpoint  \
sim:/regfiletest/regFileMap/page2Enables
add wave -position insertpoint  \
sim:/regfiletest/regFileMap/filterEnables
add wave -position insertpoint  \
sim:/regfiletest/regFileMap/decodedRow

run -all