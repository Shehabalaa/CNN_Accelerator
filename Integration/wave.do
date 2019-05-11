onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /accelerator/rst
add wave -noupdate /accelerator/din
add wave -noupdate /accelerator/INTR
add wave -noupdate /accelerator/clk
add wave -noupdate /accelerator/imageOrCNN
add wave -noupdate /accelerator/processing
add wave -noupdate /accelerator/load
add wave -noupdate /accelerator/busy
add wave -noupdate /accelerator/doneDMAFC
add wave -noupdate /accelerator/doneDMACNN
add wave -noupdate /accelerator/doneDMAImage
add wave -noupdate /accelerator/IOChip/decompZeroState
add wave -noupdate /accelerator/doneWithPhase
add wave -noupdate /accelerator/IOChip/io/Interface/GlobalCounter/counterOutput
add wave -noupdate /accelerator/IOChip/io/Interface/zeroState
add wave -noupdate /accelerator/IOChip/io/Controller/zeroStateDelayed
add wave -noupdate /accelerator/IOChip/io/Controller/decompDecrementorEnable
add wave -noupdate /accelerator/IOChip/decomp/Counter/counterReg/Q
add wave -noupdate /accelerator/IOChip/imageDMA/enableImageRegister
add wave -noupdate /accelerator/Image/currentCount
add wave -noupdate /accelerator/IOChip/io/Controller/doneDecomp
add wave -noupdate /accelerator/toCNN
add wave -noupdate /accelerator/toFC
add wave -noupdate /accelerator/result
add wave -noupdate /accelerator/FCDone
add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/CNNOrFC
add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/stateCounterQ_0
add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCResult
add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCDone
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3762295 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3070835 ps} {4180483 ps}
