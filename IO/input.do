    vsim -gui work.Accelerator
    add wave -position insertpoint  \
    sim:/Accelerator/Din \
    sim:/Accelerator/INTR \
    sim:/Accelerator/processing \
    sim:/Accelerator/imageOrCNN \
    sim:/Accelerator/load \
    sim:/Accelerator/busy \
    sim:/Accelerator/doneDMAFC \
    sim:/Accelerator/doneDMACNN \
    sim:/Accelerator/doneWithPhase \
    sim:/accelerator/IOChip/io/Controller/anyDone \
    sim:/accelerator/IOChip/io/Controller/INTRDelayedSq \
    sim:/accelerator/IOChip/io/Controller/INTRDelayed \
    sim:/Accelerator/iochip/interfaceOutput \
    sim:/Accelerator/iochip/io/Interface/GlobalCounter/counterOutput \
    sim:/accelerator/IOChip/io/Interface/zeroState \
    sim:/accelerator/IOChip/io/Controller/zeroStateDelayed \
    sim:/Accelerator/iochip/io/Controller/stateCounter/counterOutput \
    sim:/accelerator/IOChip/decomp/countOut \
    sim:/accelerator/IOChip/io/Controller/decompDecrementorEnable \
    sim:/accelerator/IOChip/decompZeroState \
    sim:/accelerator/Image/address \
    sim:/accelerator/Image/dataIn \
    sim:/accelerator/IOChip/imageDMA/enableImageRegister \
    sim:/accelerator/Image/currentCount \
    sim:/accelerator/IOChip/io/Controller/DMAImageOrINTRDelayed \
    sim:/accelerator/IOChip/io/Controller/DMAImageOrINTRDelayedSq \
    sim:/Accelerator/clk \
    sim:/Accelerator/rst \
    sim:/accelerator/IOChip/fcDMA/ModuloCounter/currentCount \
    sim:/accelerator/IOChip/io/Controller/FCRegisterEnable \
    sim:/accelerator/FCRamWrite \
    sim:/accelerator/IOChip/io/Controller/zeroStateDelayedSq

   
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
    set runTime 50
    set halfRunTime [expr {$runTime / 2}]

    force -freeze sim:/Accelerator/rst 1 0
    force -freeze sim:/Accelerator/clk 1 0, 0 {25 ps} -r 50
    force -freeze sim:/Accelerator/INTR 0 0
    force -freeze sim:/Accelerator/result 2'b0000 0 
    run $runTime
    force -freeze sim:/Accelerator/rst 0 0
    run $halfRunTime


    force -freeze sim:/Accelerator/processing 0 0
    force -freeze sim:/Accelerator/load 1 0 
    force -freeze sim:/Accelerator/imageOrCNN 0 0


    for {set i 0} {$i < 3} {incr i} {
        set boolean 1
        set phaseDone 0
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
        }
        foreach line $lines {
            force -freeze sim:/Accelerator/INTR 1 0
            force -freeze sim:/Accelerator/Din $line 0
            run $runTime
            noforce sim:/Accelerator/Din 
            force -freeze sim:/Accelerator/INTR 0 0
            set busy [examine -binary /Accelerator/busy]
            while { $busy } {
                run $halfRunTime
                set busy [examine -binary /Accelerator/busy]
                if { $busy == 0 } {
                    set doneDMACNN [examine -binary /Accelerator/doneDMACNN]
                    if { $doneDMACNN == 1} {
                        run $halfRunTime
                        }
                    }
            }
            run $halfRunTime
            if { $i == 2} {
                run $halfRunTime
                set busy [examine -binary /Accelerator/busy] 
                while { $busy } {
                    set FCRamWrite [examine -binary /Accelerator/FCRamWrite]
                    run $halfRunTime
                    set busy [examine -binary /Accelerator/busy]
                    if { $busy == 0 } {
                        if { $FCRamWrite == 1} {
                            run $halfRunTime
                        }
                    }
                }
                run $halfRunTime 
            }
            set donePhase [examine -binary /Accelerator/doneWithPhase]
            if { $donePhase == 1 } {
                    puts "done with current phase"
                    force -freeze sim:/Accelerator/processing 0 0
                    force -freeze sim:/Accelerator/load 1 0 
                    force -freeze sim:/Accelerator/imageOrCNN 1 0
                    run $halfRunTime
                    run $runTime
                    run $runTime
                    break
                }
        }
    }
    close $fileImage



    
mem save -o Image.mem -f mti -noaddress -data decimal -addr decimal -startaddress 0 -endaddress 784 -wordsperline 1 /accelerator/Image/ram
mem save -o CNN.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 106 -wordsperline 1 /accelerator/Weights/ram
mem save -o FC.mem -f mti -noaddress -data binary -addr hex -startaddress 0 -endaddress 4 -wordsperline 1 /accelerator/FC/ram