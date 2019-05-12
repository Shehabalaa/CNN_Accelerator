load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNNNewDMA
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
    "./CNN/changed/ShiftRegister.vhd"
    "./CNN/changed/BoothStep.vhd"
    "Types.vhd"
    "./CNN/changed/Mux.vhd"
    "./CNN/changed/BinaryMux.vhd"
    "./CNN/changed/Mul8x16.vhd"
    "./CNN/changed/TransitionDetector.vhd"
    "./CNN/changed/RowDecoder.vhd"
    "./CNN/changed/RegUnit.vhd"
    "./CNN/changed/RegRow.vhd"
    "./CNN/changed/RegFile.vhd"
    "./CNN/changed/CNNMuls.vhd"
    "./CNN/changed/SliceFilterController.vhd"
    "./CNN/changed/FilterController.vhd"
    "./CNN/changed/LayerController.vhd"
    "./CNN/changed/NetworkController.vhd"
    "./CNN/changed/ControlUnit.vhd"
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
