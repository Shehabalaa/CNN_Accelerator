load_library tsmc035_typ
set_working_dir /home/ayman/Desktop/CNN_Accelerator-IO//IO/leonardoScritpts
read -technology "tsmc035_typ" {/home/ayman/Desktop/CNN_Accelerator-IO//IO/Mux2.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/Reg.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/FullAdder.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/FullSubtractor.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/InverseMux.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/NBitAdder.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/NBitSubtractor.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IOCounter.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IOCounter2.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IOCounter5.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IODFF.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/ModuloCounter.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/UpCounterSyncLoad.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/DownCounterSyncLoad.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/Controller.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IOInterface.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IO.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/Decompressor.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/DMACNN.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/FCDMA.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/DMAImage.vhd /home/ayman/Desktop/CNN_Accelerator-IO//IO/IOChip.vhd}
optimize .work.IOChip.IOChipArch -target tsmc035_typ -macro -auto -effort standard -hierarchy preserve 
optimize_timing .work.IOChip.IOChipArch 
report_area ./IOChipSynthesized/IOChipArea.txt -cell_usage -all_leafs 
report_delay ./IOChipSynthesized/IOChipDelay.txt -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format VHDL ./IOChipSynthesized/IOChip.vhd
set novendor_constraint_file FALSE
auto_write -format SDF ./IOChipSynthesized/IOChip.sdf
set novendor_constraint_file FALSE
auto_write -format Verilog ./IOChipSynthesized/IOChip.v

