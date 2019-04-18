load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/CNNCores
read -technology "tsmc035_typ"  { "/media/sf_CNN_Accelerator/Utils/Types.vhd" "/media/sf_CNN_Accelerator/Utils/Mux2.vhd" "/media/sf_CNN_Accelerator/Utils/Reg.vhd" "/media/sf_CNN_Accelerator/CNN/RegUnit.vhd" "/media/sf_CNN_Accelerator/CNN/RegRow.vhd" "/media/sf_CNN_Accelerator/Utils/Decoder.vhd" "/media/sf_CNN_Accelerator/CNN/RegFile.vhd" "/media/sf_CNN_Accelerator/Utils/FullAdder.vhd" "/media/sf_CNN_Accelerator/Utils/NBitAdder.vhd" "/media/sf_CNN_Accelerator/Utils/BinaryMux.vhd" "/media/sf_CNN_Accelerator/Utils/ShiftRegister.vhd" "/media/sf_CNN_Accelerator/Utils/TransitionDetector.vhd" "/media/sf_CNN_Accelerator/Utils/ALUs/BoothStep.vhd" "/media/sf_CNN_Accelerator/Utils/ALUs/Mul8X16.vhd" "/media/sf_CNN_Accelerator/CNN/CNNMuls.vhd" "/media/sf_CNN_Accelerator/CNN/Adder4Values.vhd" "/media/sf_CNN_Accelerator/CNN/Adder8Values.vhd" "/media/sf_CNN_Accelerator/CNN/CNNAdders.vhd" "/media/sf_CNN_Accelerator/CNN/CNNShifter.vhd" "/media/sf_CNN_Accelerator/CNN/CNNCores.vhd" }
elaborate CNNCores -architecture CNNCoresArch
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.CNNCores.CNNCoresArch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.CNNCores.CNNCoresArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog CNNCores.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNCores.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNCores.sdf