load_library tsmc035_typ

read -technology "tsmc035_typ"  { 

    "Mux2.vhd"
    "Mux4.vhd"
    "Decoder.vhd"
    "FullAdder.vhd"
    "NBitAdder.vhd"
    "Reg.vhd"
    "Counter2.vhd"
    "Counter.vhd"
    "TriState.vhd"
    "ShiftReg.vhd"
    "ALUs/BoothStep.vhd"
    "Types.vhd"
    "Mux.vhd"
    "BinaryMux.vhd"
    "ALUs/Mul8x16.vhd"
    "TransitionDetector.vhd"
    "RowDecoder.vhd"
    "RegUnit.vhd"
    "RegRow.vhd"
    "RegFile.vhd"
    "CNNMuls.vhd"
    "ControlUnit/SliceFilterController.vhd"
    "ControlUnit/FilterController.vhd"
    "ControlUnit/LayerController.vhd"
    "ControlUnit/NetworkController.vhd"
    "ControlUnit/ControlUnit.vhd"
    "MultiStepCounter.vhd"
    "FullSubtractor.vhd"
    "NbitSubtractor.vhd"
    "DownCounter.vhd"
    "Constants.vhd"
    "WriteDMA.vhd"
    "WriteLogic.vhd"
    "DMA.vhd"
    "ReadLogic.vhd"
    "DMAController.vhd"
    "CNNShifter.vhd"
    "Adder4Values.vhd"
    "Adder8Values.vhd"
    "CNNAdders.vhd"
    "CNNCores.vhd"
    "OutputBuffer.vhd"
    "Config.vhd"
    "CNNModule.vhd"
    "Ram.vhd"
    "CNNWithRAM.vhd"
}

elaborate CNNWithRAM -architecture CNNWithRAMArch
optimize .work.CNNWithRam.CNNWithRamArch -target tsmc035_typ -macro -delay -effort quick -hierarchy preserve

set novendor_constraint_file FALSE
auto_write -format Verilog CNNWithRAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNWithRAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNWithRAM.sdf
