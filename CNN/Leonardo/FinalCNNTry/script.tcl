load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/FinalCNN
read -technology "tsmc035_typ"  { "/media/sf_CNN_Accelerator/Utils/Mux2.vhd" "/media/sf_CNN_Accelerator/Utils/Mux4.vhd" "/media/sf_CNN_Accelerator/Utils/Decoder.vhd" "/media/sf_CNN_Accelerator/Utils/FullAdder.vhd" "/media/sf_CNN_Accelerator/Utils/NBitAdder.vhd" "/media/sf_CNN_Accelerator/Utils/Reg.vhd" "/media/sf_CNN_Accelerator/Utils/Counter2.vhd" "/media/sf_CNN_Accelerator/Utils/Counter.vhd" "/media/sf_CNN_Accelerator/Utils/TriState.vhd" "/media/sf_CNN_Accelerator/Utils/ShiftRegister.vhd" "/media/sf_CNN_Accelerator/Utils/ALUs/BoothStep.vhd" "/media/sf_CNN_Accelerator/Utils/Types.vhd" "/media/sf_CNN_Accelerator/Utils/Mux.vhd" "/media/sf_CNN_Accelerator/Utils/BinaryMux.vhd" "/media/sf_CNN_Accelerator/Utils/ALUs/Mul8x16.vhd" "/media/sf_CNN_Accelerator/Utils/TransitionDetector.vhd" "/media/sf_CNN_Accelerator/CNN/RowDecoder.vhd" "/media/sf_CNN_Accelerator/CNN/RegUnit.vhd" "/media/sf_CNN_Accelerator/CNN/RegRow.vhd" "/media/sf_CNN_Accelerator/CNN/RegFile.vhd" "/media/sf_CNN_Accelerator/CNN/CNNMuls.vhd" "/media/sf_CNN_Accelerator/CNN/ControlUnit/SliceFilterController.vhd" "/media/sf_CNN_Accelerator/CNN/ControlUnit/FilterController.vhd" "/media/sf_CNN_Accelerator/CNN/ControlUnit/LayerController.vhd" "/media/sf_CNN_Accelerator/CNN/ControlUnit/NetworkController.vhd" "/media/sf_CNN_Accelerator/CNN/ControlUnit/ControlUnit.vhd" "/media/sf_CNN_Accelerator/Utils/MultiStepCounter.vhd" "/media/sf_CNN_Accelerator/Utils/FullSubtractor.vhd" "/media/sf_CNN_Accelerator/Utils/NbitSubtractor.vhd" "/media/sf_CNN_Accelerator/Utils/DownCounter.vhd" "/media/sf_CNN_Accelerator/CNN/Constants.vhd" "/media/sf_CNN_Accelerator/CNN/WriteDMA.vhd" "/media/sf_CNN_Accelerator/CNN/WriteLogic.vhd" "/media/sf_CNN_Accelerator/CNN/DMA.vhd" "/media/sf_CNN_Accelerator/CNN/ReadLogic.vhd" "/media/sf_CNN_Accelerator/CNN/DMAController.vhd" "/media/sf_CNN_Accelerator/CNN/CNNShifter.vhd" "/media/sf_CNN_Accelerator/CNN/Adder4Values.vhd" "/media/sf_CNN_Accelerator/CNN/Adder8Values.vhd" "/media/sf_CNN_Accelerator/CNN/CNNAdders.vhd" "/media/sf_CNN_Accelerator/CNN/CNNCores.vhd" "/media/sf_CNN_Accelerator/CNN/OutputBuffer.vhd" "/media/sf_CNN_Accelerator/CNN/Config.vhd" "/media/sf_CNN_Accelerator/CNN/CNNModule.vhd" "/media/sf_CNN_Accelerator/CNN/Ram.vhd" "/media/sf_CNN_Accelerator/CNN/CNNWithRAM.vhd" }
elaborate CNNWithRAM -architecture CNNWithRAMArch
read_constraints constraint.ctr
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.CNNWithRAM.CNNWithRAMArch -target tsmc035_typ -macro -delay -effort standard -hierarchy preserve 
optimize_timing .work.CNNWithRAM.CNNWithRAMArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog CNNWithRAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNWithRAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNWithRAM.sdf
