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
add wave -noupdate /accelerator/IOChip/io/Controller/doneDecomp
add wave -noupdate /accelerator/toCNN
add wave -noupdate /accelerator/toFC
add wave -noupdate /accelerator/result
add wave -noupdate /accelerator/FCDone
add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/CNNOrFC
add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/stateCounterQ_0
add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCResult
add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCDone
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/clk
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/rd
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/we
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/reset
add wave -noupdate -group ImageRam -radix hexadecimal -childformat {{/accelerator/Image/addressRead(12) -radix hexadecimal} {/accelerator/Image/addressRead(11) -radix hexadecimal} {/accelerator/Image/addressRead(10) -radix hexadecimal} {/accelerator/Image/addressRead(9) -radix hexadecimal} {/accelerator/Image/addressRead(8) -radix hexadecimal} {/accelerator/Image/addressRead(7) -radix hexadecimal} {/accelerator/Image/addressRead(6) -radix hexadecimal} {/accelerator/Image/addressRead(5) -radix hexadecimal} {/accelerator/Image/addressRead(4) -radix hexadecimal} {/accelerator/Image/addressRead(3) -radix hexadecimal} {/accelerator/Image/addressRead(2) -radix hexadecimal} {/accelerator/Image/addressRead(1) -radix hexadecimal} {/accelerator/Image/addressRead(0) -radix hexadecimal}} -subitemconfig {/accelerator/Image/addressRead(12) {-radix hexadecimal} /accelerator/Image/addressRead(11) {-radix hexadecimal} /accelerator/Image/addressRead(10) {-radix hexadecimal} /accelerator/Image/addressRead(9) {-radix hexadecimal} /accelerator/Image/addressRead(8) {-radix hexadecimal} /accelerator/Image/addressRead(7) {-radix hexadecimal} /accelerator/Image/addressRead(6) {-radix hexadecimal} /accelerator/Image/addressRead(5) {-radix hexadecimal} /accelerator/Image/addressRead(4) {-radix hexadecimal} /accelerator/Image/addressRead(3) {-radix hexadecimal} /accelerator/Image/addressRead(2) {-radix hexadecimal} /accelerator/Image/addressRead(1) {-radix hexadecimal} /accelerator/Image/addressRead(0) {-radix hexadecimal}} /accelerator/Image/addressRead
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/addressWrite
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/dataIn
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/dataOut
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/MFCReadOut
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/MFCWriteOut
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/notClk
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/currentCountRead
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/currentCountWrite
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/MFCRead
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/MFCWrite
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/counterMFCReadEn
add wave -noupdate -group ImageRam -radix hexadecimal /accelerator/Image/counterMFCWriteEn
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/din
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/clk
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/rst
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imageOrCNN
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/INTR
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/load
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/processing
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneWithPhase
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/busy
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/result
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCResult
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCDone
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imgRamWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMAFC
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMACNN
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMAImage
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNRamWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCRamWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/high
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/low
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/toCNN
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/toFC
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imgRamDin
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNRamDin
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNRamDout
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imgRamDout
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCRamDin
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCRamDout
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/FCRamAddress
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNRamAddress
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imgRamAddress
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNReadRamAddress
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/imgReadRamAddress
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/CNNReadMFC
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/ImageReadMFC
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMAImageOld
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/notClk
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMACNNOld
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/doneDMAFCOld
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/weightsRamRead
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/windowRamWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/windowRamRead
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/finishNetwork
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/finalImgRamWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/windowRamDataOutBus
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/finalImgRamDin
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/windowRamAddressWrite
add wave -noupdate -group Accelerator -radix hexadecimal /accelerator/finalImgRamWriteAddress
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {438891 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 177
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {1081700 ps}
