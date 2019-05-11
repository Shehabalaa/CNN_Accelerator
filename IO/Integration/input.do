    vsim -gui work.Accelerator
    add wave -position insertpoint  \
	sim:/Accelerator/rst \
	sim:/Accelerator/toFC 
	add wave -noupdate -group toCNN /accelerator/IOChip/io/Controller/toCNNComb
	add wave -noupdate -group toCNN /accelerator/IOChip/io/Controller/delayedToCNN
	add wave -noupdate -group toCNN /accelerator/IOChip/io/Controller/delayedToCNNSq
	add wave -noupdate -group toCNN /accelerator/IOChip/io/Controller/delayedToCNNCube
	add wave -noupdate -group toCNN /accelerator/IOChip/io/Controller/toCNN
	
	
	add wave -position insertpoint  \
sim:/Accelerator/CNNModule/coresMap/filterBus \
sim:/Accelerator/CNNModule/coresMap/windowBus \
sim:/Accelerator/CNNModule/coresMap/decoderRow \
sim:/Accelerator/CNNModule/coresMap/writePage1 \
sim:/Accelerator/CNNModule/coresMap/writePage2 \
sim:/Accelerator/CNNModule/coresMap/writeFilter \
sim:/Accelerator/CNNModule/coresMap/shift2To1 \
sim:/Accelerator/CNNModule/coresMap/shift1To2 \
sim:/Accelerator/CNNModule/coresMap/pageTurn \
sim:/Accelerator/CNNModule/coresMap/start \
sim:/Accelerator/CNNModule/coresMap/layerType \
sim:/Accelerator/CNNModule/coresMap/filterType


add wave -position insertpoint  \
sim:/Accelerator/CNNModule/controlUnitMap/clk \
sim:/Accelerator/CNNModule/controlUnitMap/layersNumber \
sim:/Accelerator/CNNModule/controlUnitMap/filtersNumber \
sim:/Accelerator/CNNModule/controlUnitMap/filterDepth \
sim:/Accelerator/CNNModule/controlUnitMap/filterOutputSize \
sim:/Accelerator/CNNModule/controlUnitMap/startNetwork \
sim:/Accelerator/CNNModule/controlUnitMap/layerType \
sim:/Accelerator/CNNModule/controlUnitMap/convFinish \
sim:/Accelerator/CNNModule/controlUnitMap/dmaAFinish \
sim:/Accelerator/CNNModule/controlUnitMap/dmaBFinish \
sim:/Accelerator/CNNModule/controlUnitMap/dmaCFinish \
sim:/Accelerator/CNNModule/controlUnitMap/resetNetwork \
sim:/Accelerator/CNNModule/controlUnitMap/startOneLayer \
sim:/Accelerator/CNNModule/controlUnitMap/startFilter \
sim:/Accelerator/CNNModule/controlUnitMap/filterLastLayer \
sim:/Accelerator/CNNModule/controlUnitMap/startSlice \
sim:/Accelerator/CNNModule/controlUnitMap/loadLayerConfig \
sim:/Accelerator/CNNModule/controlUnitMap/loadNetworkConfig \
sim:/Accelerator/CNNModule/controlUnitMap/loadFilterConfig \
sim:/Accelerator/CNNModule/controlUnitMap/loadWindow \
sim:/Accelerator/CNNModule/controlUnitMap/loadFilter \
sim:/Accelerator/CNNModule/controlUnitMap/conv \
sim:/Accelerator/CNNModule/controlUnitMap/pool \
sim:/Accelerator/CNNModule/controlUnitMap/shift12 \
sim:/Accelerator/CNNModule/controlUnitMap/shift21 \
sim:/Accelerator/CNNModule/controlUnitMap/readNextCol \
sim:/Accelerator/CNNModule/controlUnitMap/addToOutputBuffer \
sim:/Accelerator/CNNModule/controlUnitMap/outputBufferEn \
sim:/Accelerator/CNNModule/controlUnitMap/saveToRAM \
sim:/Accelerator/CNNModule/controlUnitMap/currentPage \
sim:/Accelerator/CNNModule/controlUnitMap/finishCurrentSlice \
sim:/Accelerator/CNNModule/controlUnitMap/finishFilter \
sim:/Accelerator/CNNModule/controlUnitMap/finishOneLayer \
sim:/Accelerator/CNNModule/controlUnitMap/finishNetwork



add wave -position insertpoint  \
sim:/Accelerator/CNNModule/DMAControllerMap/clk \
sim:/Accelerator/CNNModule/DMAControllerMap/reset \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsInternalBus \
sim:/Accelerator/CNNModule/DMAControllerMap/windowInternalBus \
sim:/Accelerator/CNNModule/DMAControllerMap/writeInternalBus \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsRamAddress \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamAddressRead \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamAddressWrite \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsRamDataInBus \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamDataInBus \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsRamRead \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamRead \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamWrite \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamDataOutBus \
sim:/Accelerator/CNNModule/DMAControllerMap/MFCWindowRam \
sim:/Accelerator/CNNModule/DMAControllerMap/MFCWeightsRam \
sim:/Accelerator/CNNModule/DMAControllerMap/MFCWrite \
sim:/Accelerator/CNNModule/DMAControllerMap/loadNextFilter \
sim:/Accelerator/CNNModule/DMAControllerMap/loadNextWindow \
sim:/Accelerator/CNNModule/DMAControllerMap/loadNextRow \
sim:/Accelerator/CNNModule/DMAControllerMap/loadOneWord \
sim:/Accelerator/CNNModule/DMAControllerMap/loadThreeWord \
sim:/Accelerator/CNNModule/DMAControllerMap/filterFinished \
sim:/Accelerator/CNNModule/DMAControllerMap/sliceFinished \
sim:/Accelerator/CNNModule/DMAControllerMap/layerFinished \
sim:/Accelerator/CNNModule/DMAControllerMap/layerType \
sim:/Accelerator/CNNModule/DMAControllerMap/write \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsSizeType \
sim:/Accelerator/CNNModule/DMAControllerMap/inputSize \
sim:/Accelerator/CNNModule/DMAControllerMap/outputSize \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamBaseAddress1 \
sim:/Accelerator/CNNModule/DMAControllerMap/windowRamBaseAddress2 \
sim:/Accelerator/CNNModule/DMAControllerMap/filterRamBaseAddress \
sim:/Accelerator/CNNModule/DMAControllerMap/windowReadOne \
sim:/Accelerator/CNNModule/DMAControllerMap/windowReadFinal \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsReadOne \
sim:/Accelerator/CNNModule/DMAControllerMap/weightsReadFinal \
sim:/Accelerator/CNNModule/DMAControllerMap/writeDoneOne




add wave -position insertpoint  \
sim:/Accelerator/CNNModule/finalAdderMap/a \
sim:/Accelerator/CNNModule/finalAdderMap/b \
sim:/Accelerator/CNNModule/finalAdderMap/carryIn \
sim:/Accelerator/CNNModule/finalAdderMap/sum



add wave -position insertpoint  \
sim:/Accelerator/CNNModule/configMap/filterBus \
sim:/Accelerator/CNNModule/configMap/clk \
sim:/Accelerator/CNNModule/configMap/rst \
sim:/Accelerator/CNNModule/configMap/readNumLayers \
sim:/Accelerator/CNNModule/configMap/readLayerConfig \
sim:/Accelerator/CNNModule/configMap/numLayers \
sim:/Accelerator/CNNModule/configMap/layerType \
sim:/Accelerator/CNNModule/configMap/filterType \
sim:/Accelerator/CNNModule/configMap/numFilters \
sim:/Accelerator/CNNModule/configMap/filterDepth \
sim:/Accelerator/CNNModule/configMap/inputSize \
sim:/Accelerator/CNNModule/configMap/outputSize

add wave -position insertpoint  \
sim:/accelerator/CNNReadMFC \
sim:/accelerator/ImageReadMFC \
sim:/accelerator/doneDMAImageOld \
sim:/accelerator/weightsRamRead \
sim:/accelerator/windowRamWrite \
sim:/accelerator/finalImgRamWrite \
sim:/accelerator/windowRamDataOutBus \
sim:/accelerator/finalImgRamDin \
sim:/accelerator/windowRamAddressWrite \
sim:/accelerator/finalImgRamWriteAddress \
sim:/accelerator/CNNReadRamAddress \
sim:/accelerator/finishNetwork

   
    # $fileImage will contain the fileImage pointer to test.txt (fileImage must exist)
    set fileImage [open testImage.txt]
    set fileCNN [open testCNN.txt]
    set fileFC [open testFC.txt]
    # $input will contain the contents of the fileImage
    set inputImage [read $fileImage]    
    set inputCNN [read $fileCNN]
    set inputFC [read $fileFC]
    # $lines will be an array containing each line of test.txt

    # $runTime will be the period of the clk cycle
    set runTime 50ns
    #set halfRunTime [expr {$runTime / 2}]
	set halfRunTime 25ns
	WaveRestoreZoom {0 ps} {1109648 ps}

    force -freeze sim:/Accelerator/rst 1 0
    force -freeze sim:/Accelerator/clk 1 0, 0 {25 ns} -r 50ns
    force -freeze sim:/Accelerator/INTR 0 0
	force -freeze sim:/Accelerator/IOChip/io/CONTROLLER/doneDecomp 0 0
	noforce sim:/Accelerator/result
    run $runTime
	noforce sim:/Accelerator/IOChip/io/CONTROLLER/doneDecomp
	run $runTime
	#run $runTime
    force -freeze sim:/Accelerator/rst 0 0
    run $halfRunTime
	
	#run $halfRunTime

    force -freeze sim:/Accelerator/processing 0 0
    force -freeze sim:/Accelerator/load 1 0 
    force -freeze sim:/Accelerator/imageOrCNN 0 0

	set Cycles 0
    for {set i 0} {$i < 3} {incr i} {
        set phaseDone 0
		set FCCycles 0
        if { $i == 0} {
            set lines [split $inputImage "\n"]
            force -freeze sim:/Accelerator/processing 0 0
            force -freeze sim:/Accelerator/load 1 0 
            force -freeze sim:/Accelerator/imageOrCNN 0 0
        } elseif { $i == 1} {
            set lines [split $inputCNN "\n"]
            run $runTime
            run $runTime
			set Cycles [expr {$Cycles + 4}]
        } else {
            set lines [split $inputFC "\n"]
			set boolean 1
        }
        foreach line $lines {
            force -freeze sim:/Accelerator/INTR 1 0
            force -freeze sim:/Accelerator/Din $line 0
            run $runTime
			set Cycles [expr {$Cycles + 2}]
			if { $i == 2 } {
				set FCCycles [expr {$FCCycles + 2}]
			}
            noforce sim:/Accelerator/Din 
            force -freeze sim:/Accelerator/INTR 0 0
            set busy [examine -binary /Accelerator/busy]
			set donePhase [examine -binary /Accelerator/doneWithPhase]
            while { $busy } {
                run $halfRunTime
				set Cycles [expr {$Cycles + 1}]
				if { $Cycles > 30 } {
					stop
				}
				if { $i == 2 } {
					set FCCycles [expr {$FCCycles + 1}]
				}
                set busy [examine -binary /Accelerator/busy]
                if { $busy == 0 } {
                    set doneDMACNN [examine -binary /Accelerator/doneDMACNN]
                    if { $doneDMACNN == 1} {
                        run $halfRunTime
						set FCCycles [expr {$Cycles + 1}]
                        }
                    set doneDecomp [examine -binary /accelerator/IOChip/io/CONTROLLER/doneDecomp]
					
                    if { $doneDecomp == 1 && $donePhase == 0} {
                        run $halfRunTime
						set FCCycles [expr {$Cycles + 1}]
                        }
                    }
            }
			set donePhase [examine -binary /Accelerator/doneWithPhase]
			if { $donePhase == 0} {
                run $halfRunTime
				if { $i == 2 } {
					set FCCycles [expr {$FCCycles + 1}]
				}
            }
            if { $i == 2} {
                run $halfRunTime
				set FCCycles [expr {$FCCycles + 1}]
                set busy [examine -binary /Accelerator/busy] 
                while { $busy } {
                    set FCRamWrite [examine -binary /Accelerator/FCRamWrite]
                    run $halfRunTime
					set FCCycles [expr {$FCCycles + 1}]
                    set busy [examine -binary /Accelerator/busy]
                    if { $busy == 0 } {
                        if { $FCRamWrite == 1} {
                            run $halfRunTime
							set FCCycles [expr {$FCCycles + 1}]
                        }
                    }
                }
                run $halfRunTime 
				set FCCycles [expr {$FCCycles + 1}]
            }
            set donePhase [examine -binary /Accelerator/doneWithPhase]
            if { $donePhase == 1 } {
					if { $i == 0 } {
						puts "done with image phase"
					}
					if { $i == 1 } {
						force -freeze sim:/Accelerator/processing 1 0
						puts "done with CNN weights phase"
						mem save -o CNN.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 107 -wordsperline 1 /accelerator/Weights/ram
					}
                    force -freeze sim:/Accelerator/imageOrCNN 1 0
                    run $halfRunTime
                    run $runTime
                    run $runTime
                    break
                }
        }
    }
	puts "done with FC phase"
    close $fileImage
	set FCCycles [expr {$FCCycles + 5}]
	puts "FC cycles taken"
	puts $FCCycles
	run $runTime

    
mem save -o Image.mem -f mti -noaddress -data decimal -addr decimal -startaddress 0 -endaddress 576 -wordsperline 1 /accelerator/Image/ram
mem save -o ImageSamir.mem -f mti -noaddress -data binary -addr decimal -startaddress 0 -endaddress 576 -wordsperline 1 /accelerator/Image/ram
#mem save -o CNN.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 107 -wordsperline 1 /accelerator/Weights/ram
mem save -o FC.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 1154 -wordsperline 1 /accelerator/FC/ram
