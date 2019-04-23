load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/DMAController/
read -technology "tsmc035_typ"  { "/media/sf_CNN_Accelerator/Utils/Tristate.vhd" "/media/sf_CNN_Accelerator/CNN/Constants.vhd" "/media/sf_CNN_Accelerator/Utils/Mux2.vhd" "/media/sf_CNN_Accelerator/Utils/Reg.vhd" "/media/sf_CNN_Accelerator/Utils/FullAdder.vhd" "/media/sf_CNN_Accelerator/Utils/NBitAdder.vhd" "/media/sf_CNN_Accelerator/Utils/Counter2.vhd" "/media/sf_CNN_Accelerator/Utils/FullSubtractor.vhd" "/media/sf_CNN_Accelerator/Utils/NBitSubtractor.vhd" "/media/sf_CNN_Accelerator/Utils/DownCounter.vhd" "/media/sf_CNN_Accelerator/Utils/MultiStepCounter.vhd" "/media/sf_CNN_Accelerator/CNN/DMA.vhd" "/media/sf_CNN_Accelerator/CNN/WriteDMA.vhd" "/media/sf_CNN_Accelerator/CNN/ReadLogic.vhd" "/media/sf_CNN_Accelerator/CNN/WriteLogic.vhd" "/media/sf_CNN_Accelerator/CNN/DmaController.vhd"}
elaborate DMAController -architecture DMAControllerArch
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.DMAController.DMAControllerArch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.DMAController.DMAControllerArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog DMAController.v
set novendor_constraint_file FALSE
auto_write -format VHDL DMAController.vhd
set novendor_constraint_file FALSE
auto_write -format SDF DMAController.sdf