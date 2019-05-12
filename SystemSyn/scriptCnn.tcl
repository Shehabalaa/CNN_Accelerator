load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNNNewDMA
read -technology "tsmc035_typ"  {
    "./CNN/Mux2.vhd"
    "./CNN/Mux4.vhd"
    "./CNN/Decoder.vhd"
    "./CNN/FullAdder.vhd"
    "./CNN/NBitAdder.vhd"
    "./CNN/Reg.vhd"
    "./CNN/Counter2.vhd"
    "./CNN/Counter.vhd"
    "./CNN/TriState.vhd"
    "./CNN/ShiftRegister.vhd"
    "./CNN/BoothStep.vhd"
    "Types.vhd"
    "./CNN/Mux.vhd"
    "./CNN/BinaryMux.vhd"
    "./CNN/Mul8x16.vhd"
    "./CNN/TransitionDetector.vhd"
    "./CNN/RowDecoder.vhd"
    "./CNN/RegUnit.vhd"
    "./CNN/RegRow.vhd"
    "./CNN/RegFile.vhd"
    "./CNN/CNNMuls.vhd"
    "./CNN/SliceFilterController.vhd"
    "./CNN/FilterController.vhd"
    "./CNN/LayerController.vhd"
    "./CNN/NetworkController.vhd"
    "./CNN/ControlUnit.vhd"
    "./CNN/MultiStepCounter.vhd"
    "./CNN/FullSubtractor.vhd"
    "./CNN/NbitSubtractor.vhd"
    "./CNN/DownCounter.vhd"
    "./Constants.vhd"
    "./CNN/WriteDMA.vhd"
    "./CNN/WriteLogic.vhd"
    "./CNN/DMA.vhd"
    "./CNN/ReadLogic.vhd"
    "./CNN/DMAController.vhd"
    "./CNN/CNNShifter.vhd"
    "./CNN/Adder4Values.vhd"
    "./CNN/Adder8Values.vhd"
    "./CNN/CNNAdders.vhd"
    "./CNN/CNNCores.vhd"
    "./CNN/OutputBuffer.vhd"
    "./CNN/Config.vhd"
    "./CNN/CNNModule.vhd"
    "./CNN/Ram.vhd"
    "./CNN/CNNWithRAM.vhd"
}
elaborate CNNWithRAM -architecture CNNWithRAMArch
read_constraints constraint.ctr
set sdf_type combined
optimize .work.CNNWithRam.CNNWithRamArch -target tsmc035_typ -macro -delay -effort quick -hierarchy preserve
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog CNNWithRAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNWithRAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNWithRAM.sdf
