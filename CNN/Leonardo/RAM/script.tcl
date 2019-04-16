load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/RAM
read -technology "tsmc035_typ"  { "/media/sf_CNN_Accelerator/CNN/RAM.vhd" }
elaborate RAM -architecture RAMArch
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.RAM.RAMArch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.RAM.RAMArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog RAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL RAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF RAM.sdf
