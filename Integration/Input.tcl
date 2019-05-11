    vsim -gui work.Accelerator
    add wave -position insertpoint  \
	sim:/Accelerator/rst \
    sim:/Accelerator/Din \
    sim:/Accelerator/INTR \
    sim:/Accelerator/clk \
    sim:/Accelerator/imageOrCNN \
	sim:/Accelerator/processing \
    sim:/Accelerator/load \
    sim:/Accelerator/busy \
    sim:/Accelerator/doneDMAFC \
    sim:/Accelerator/doneDMACNN \
    sim:/accelerator/doneDMAImage \
    sim:/accelerator/IOChip/decompZeroState \
    sim:/Accelerator/doneWithPhase \
    sim:/Accelerator/iochip/io/Interface/GlobalCounter/counterOutput \
    sim:/accelerator/IOChip/io/Interface/zeroState \
    sim:/accelerator/IOChip/io/Controller/zeroStateDelayed \
    sim:/accelerator/IOChip/io/Controller/decompDecrementorEnable \
    sim:/accelerator/IOChip/decomp/Counter/counterReg/Q \
    sim:/accelerator/IOChip/imageDMA/enableImageRegister \
    sim:/accelerator/Image/currentCount
	add wave -position insertpoint  \
	sim:/accelerator/IOChip/io/Controller/doneDecomp \
	sim:/accelerator/toCNN \
	sim:/accelerator/toFC \
	sim:/accelerator/result \
	sim:/accelerator/FCDone
	add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/CNNOrFC
	add wave -noupdate -group StateCounter /accelerator/IOChip/io/Controller/stateCounterQ_0
	add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCResult
	add wave -noupdate -group IOInterface /accelerator/IOChip/io/Interface/FCDone


   
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
    force -freeze sim:/Accelerator/rst 0 0
    run $halfRunTime


    force -freeze sim:/Accelerator/processing 0 0
    force -freeze sim:/Accelerator/load 1 0 
    force -freeze sim:/Accelerator/imageOrCNN 0 0

	
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
        } else {
            set lines [split $inputFC "\n"]
			set boolean 1
        }
        foreach line $lines {
            force -freeze sim:/Accelerator/INTR 1 0
            force -freeze sim:/Accelerator/Din $line 0
            run $runTime
			if { $i == 2 } {
				set FCCycles [expr {$FCCycles + 2}]
			}
            noforce sim:/Accelerator/Din 
            force -freeze sim:/Accelerator/INTR 0 0
            set busy [examine -binary /Accelerator/busy]
			set donePhase [examine -binary /Accelerator/doneWithPhase]
            while { $busy } {
                run $halfRunTime
				if { $i == 2 } {
					set FCCycles [expr {$FCCycles + 1}]
				}
                set busy [examine -binary /Accelerator/busy]
                if { $busy == 0 } {
                    set doneDMACNN [examine -binary /Accelerator/doneDMACNN]
                    if { $doneDMACNN == 1} {
                        run $halfRunTime
                        }
                    set doneDecomp [examine -binary /accelerator/IOChip/io/CONTROLLER/doneDecomp]
					
                    if { $doneDecomp == 1 && $donePhase == 0} {
                        run $halfRunTime
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
	force -freeze sim:/Accelerator/FCDone 0 0
	run $runTime
	force -freeze sim:/Accelerator/FCResult 2'b1000 0
	run $runTime
	force -freeze sim:/Accelerator/FCDone 1 0
	force -freeze sim:/Accelerator/FCResult 2'b1001 0
	run $runTime

    
mem save -o Image.mem -f mti -noaddress -data decimal -addr decimal -startaddress 0 -endaddress 576 -wordsperline 1 /accelerator/Image/ram
mem save -o ImageSamir.mem -f mti -noaddress -data binary -addr decimal -startaddress 0 -endaddress 576 -wordsperline 1 /accelerator/Image/ram
mem save -o CNN.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 107 -wordsperline 1 /accelerator/Weights/ram
mem save -o FC.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 1154 -wordsperline 1 /accelerator/FC/ram
