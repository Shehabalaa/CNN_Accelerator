load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/OutputBuffer
read -technology "tsmc035_typ"  { "/media/sf_CNN_Accelerator/Utils/Types.vhd" "/media/sf_CNN_Accelerator/Utils/Decoder.vhd" "/media/sf_CNN_Accelerator/Utils/Mux2.vhd" "/media/sf_CNN_Accelerator/Utils/Reg.vhd" "/media/sf_CNN_Accelerator/Utils/Mux.vhd" "/media/sf_CNN_Accelerator/Utils/TriState.vhd" "/media/sf_CNN_Accelerator/Utils/FullAdder.vhd" "/media/sf_CNN_Accelerator/Utils/NBitAdder.vhd" "/media/sf_CNN_Accelerator/Utils/Counter.vhd" "/media/sf_CNN_Accelerator/CNN/OutputBuffer.vhd"  }
elaborate OutputBuffer -architecture OutputBufferArch
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.OutputBuffer.OutputBufferArch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.OutputBuffer.OutputBufferArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog OutputBuffer.v
set novendor_constraint_file FALSE
auto_write -format VHDL OutputBuffer.vhd
set novendor_constraint_file FALSE
auto_write -format SDF OutputBuffer.sdf
