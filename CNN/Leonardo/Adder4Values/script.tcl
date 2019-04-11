load_lib tsmc035_typ.syn
load_library tsmc035_typ
set_working_dir /media/sf_CNN_Accelerator/CNN/Leonardo/Adder4Values
read -technology "tsmc035_typ" -dont_elaborate { "/media/sf_CNN_Accelerator/Utils/FullAdder.vhd" "/media/sf_CNN_Accelerator/Utils/NBitAdder.vhd" "/media/sf_CNN_Accelerator/CNN/Adder4Values.vhd" }
elaborate Adder4Values -architecture Adder4ValuesArch
set sdf_type combined
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
optimize .work.Adder4Values.Adder4ValuesArch -target tsmc035_typ -macro -delay -effort standard -hierarchy auto 
optimize_timing .work.CNNAdders.CNNAddersArch -force 
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
auto_write -format Verilog Adder4Values.v
auto_write -format SDF Adder4Values.sdf
auto_write -format VHDL Adder4Values.vhd
