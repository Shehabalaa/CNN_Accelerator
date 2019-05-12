load_library tsmc035_typ

read -technology "tsmc035_typ"  { 

    "./CNN/changed/Mux2.vhd"
    "./CNN/changed/Mux4.vhd"
    "./CNN/changed/Decoder.vhd"
    "./CNN/changed/FullAdder.vhd"
    "./CNN/changed/NBitAdder.vhd"
    "./CNN/changed/Reg.vhd"
    "./CNN/changed/Counter2.vhd"
    "./CNN/changed/Counter.vhd"
    "./CNN/changed/TriState.vhd"
    "./CNN/changed/ShiftReg.vhd"
    "./CNN/changed/BoothStep.vhd"
    "./Types.vhd"
    "./CNN/changed/Mux.vhd"
    "./CNN/changed/BinaryMux.vhd"
    "./CNN/changed/Mul8x16.vhd"
    "./CNN/changed/TransitionDetector.vhd"
    "./CNN/changed/RowDecoder.vhd"
    "./CNN/changed/RegUnit.vhd"
    "./CNN/changed/RegRow.vhd"
    "./CNN/changed/RegFile.vhd"
    "./CNN/changed/CNNMuls.vhd"
    "./CNN/changed/ControlUnit/SliceFilterController.vhd"
    "./CNN/changed/ControlUnit/FilterController.vhd"
    "./CNN/changed/ControlUnit/LayerController.vhd"
    "./CNN/changed/ControlUnit/NetworkController.vhd"
    "./CNN/changed/ControlUnit/ControlUnit.vhd"
    "./CNN/changed/MultiStepCounter.vhd"
    "./CNN/changed/FullSubtractor.vhd"
    "./CNN/changed/NbitSubtractor.vhd"
    "./CNN/changed/DownCounter.vhd"
    "./Constants.vhd"
    "./CNN/changed/WriteDMA.vhd"
    "./CNN/changed/WriteLogic.vhd"
    "./CNN/changed/DMA.vhd"
    "./CNN/changed/ReadLogic.vhd"
    "./CNN/changed/DMAController.vhd"
    "./CNN/changed/CNNShifter.vhd"
    "./CNN/changed/Adder4Values.vhd"
    "./CNN/changed/Adder8Values.vhd"
    "./CNN/changed/CNNAdders.vhd"
    "./CNN/changed/CNNCores.vhd"
    "./CNN/changed/OutputBuffer.vhd"
    "./CNN/changed/Config.vhd"
    "./CNN/changed/CNNModule.vhd"
    "./CNN/changed/Ram.vhd"
    "./CNN/changed/CNNWithRAM.vhd"
}

elaborate CNNWithRAM -architecture CNNWithRAMArch
optimize .work.CNNWithRam.CNNWithRamArch -target tsmc035_typ -macro -delay -effort quick -hierarchy preserve

set novendor_constraint_file FALSE
auto_write -format Verilog CNNWithRAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNWithRAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNWithRAM.sdf
