@echo off
vcom Utils\Mux2.vhd -93 -check_synthesis
vcom Utils\Mux4.vhd -93 -check_synthesis
vcom Utils\Decoder.vhd -93 -check_synthesis
vcom Utils\FullAdder.vhd -93 -check_synthesis
vcom Utils\NBitAdder.vhd -93 -check_synthesis
vcom Utils\Reg.vhd -93 -check_synthesis
vcom Utils\Counter2.vhd -93 -check_synthesis
vcom Utils\Counter.vhd -93 -check_synthesis
vcom Utils\TriState.vhd -93 -check_synthesis
vcom Utils\TwosComplement.vhd -93 -check_synthesis
vcom Utils\ShiftRegister.vhd -93 -check_synthesis
vcom Utils\ALUs\BoothStep.vhd -93 -check_synthesis
vcom Utils\ModifiedBoothStep.vhd -93 -check_synthesis
vcom Utils\Types.vhd -93 -check_synthesis
vcom Utils\Mux.vhd -93 -check_synthesis
vcom Utils\BinaryMux.vhd -93 -check_synthesis
vcom Utils\ALUs\Mul8x16.vhd -93 -check_synthesis
vcom Utils\TransitionDetector.vhd -93 -check_synthesis

vcom CNN/RegUnit.vhd -93 -check_synthesis
vcom CNN/RegRow.vhd -93 -check_synthesis
vcom CNN/RegFile.vhd -93 -check_synthesis
vcom CNN/CNNMuls.vhd -93 -check_synthesis
vcom CNN/ControlUnit/SliceFilterController.vhd -93 -check_synthesis
vcom CNN/ControlUnit/FilterController.vhd -93 -check_synthesis
vcom CNN/ControlUnit/LayerController.vhd -93 -check_synthesis
vcom CNN/ControlUnit/NetworkController.vhd -93 -check_synthesis
vcom CNN/ControlUnit/ControlUnit.vhd -93 -check_synthesis
vcom Utils\MultiStepCounter.vhd -93 -check_synthesis
vcom Utils\FullSubtractor.vhd -93 -check_synthesis
vcom Utils\NbitSubtractor.vhd -93 -check_synthesis
vcom Utils\DownCounter.vhd -93 -check_synthesis


REM # CNN
vcom CNN\Constants.vhd -93 -check_synthesis
vcom CNN\WriteDMA.vhd -93 -check_synthesis
vcom CNN\WriteLogic.vhd -93 -check_synthesis

vcom CNN\DMA.vhd -93 -check_synthesis
vcom CNN\ReadLogic.vhd -93 -check_synthesis

vcom CNN\DmaController.vhd -93 -check_synthesis


vcom CNN\Ram.vhd -93 

vcom CNN\CNNShifter.vhd -93 -check_synthesis
vcom CNN\Adder4Values.vhd -93 -check_synthesis
vcom CNN\Adder8Values.vhd -93 -check_synthesis
vcom CNN\CNNAdders.vhd -93 -check_synthesis
vcom CNN\CNNCores.vhd -93 -check_synthesis
vcom CNN\OutputBuffer.vhd -93 -check_synthesis
vcom CNN\Config.vhd -93 -check_synthesis
vcom CNN\CNNModule.vhd -93 -check_synthesis
vcom CNN\CNNWithRAM.vhd -93 -check_synthesis
