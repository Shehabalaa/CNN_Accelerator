@echo off
vcom Utils\Mux2.vhd -93
vcom Utils\Mux4.vhd -93
vcom Utils\Mux.vhd -93
vcom Utils\FullAdder.vhd -93
vcom Utils\NBitAdder.vhd -93
vcom Utils\Reg.vhd -93
vcom Utils\Counter2.vhd -93
vcom Utils\Counter.vhd -93
vcom Utils\TriState.vhd -93
vcom Utils\TwosComplement.vhd -93
vcom Utils\ShiftRegister.vhd -93
vcom Utils\BoothStep.vhd -93
vcom Utils\ModifiedBoothStep.vhd -93
vcom Utils\Types.vhd -93
vcom Utils/*.vhd -93
vcom CNN/RegFile.vhd -93
vcom CNN/CNNMuls.vhd -93
vcom CNN/*.vhd -93
vcom CNN/ControlUnit/NetworkController.vhd -93
vcom CNN/ControlUnit/LayerController.vhd -93
vcom CNN/ControlUnit/FilterController.vhd -93
vcom CNN/ControlUnit/SliceFilterController.vhd -93
vcom CNN/RegUnit.vhd -93
vcom CNN/ControlUnit/*.vhd -93
vcom CNN/ControlUnit/ControlUnit.vhd -93
vcom Utils\MultiStepCounter.vhd -93
vcom Utils\FullSubtractor.vhd -93
vcom Utils\NbitSubtractor.vhd -93
vcom Utils\DownCounter.vhd -93

vcom Utils/*.vhd -93

REM # CNN
vcom CNN\Constants.vhd -93
vcom CNN\WriteDMA.vhd -93
vcom CNN\WriteLogic.vhd -93

vcom CNN\DMA.vhd -93
vcom CNN\ReadLogic.vhd -93

vcom CNN\DmaController.vhd -93

REM vcom CNN/*.vhd -93
