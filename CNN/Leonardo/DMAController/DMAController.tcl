load_library tsmc035_typ
set_working_dir /home/ayman/Desktop/CNN_Accelerator/CNN/Leonardo/DMAController/
read -technology "tsmc035_typ"  { "/home/ayman/Desktop/CNN_Accelerator/Utils/Tristate.vhd" "/home/ayman/Desktop/CNN_Accelerator/CNN/Constants.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/Mux2.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/Reg.vhd"  "/home/ayman/Desktop/CNN_Accelerator/Utils/FullAdder.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/NBitAdder.vhd"   "/home/ayman/Desktop/CNN_Accelerator/Utils/Counter2.vhd"  "/home/ayman/Desktop/CNN_Accelerator/Utils/FullSubtractor.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/NBitSubtractor.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/DownCounter.vhd" "/home/ayman/Desktop/CNN_Accelerator/Utils/MultiStepCounter.vhd"  "/home/ayman/Desktop/CNN_Accelerator/CNN/DMA.vhd" "/home/ayman/Desktop/CNN_Accelerator/CNN/WriteDMA.vhd" "/home/ayman/Desktop/CNN_Accelerator/CNN/ReadLogic.vhd" "/home/ayman/Desktop/CNN_Accelerator/CNN/WriteLogic.vhd" "/home/ayman/Desktop/CNN_Accelerator/CNN/DmaController.vhd"}
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
