load_library tsmc035_typ
set_working_dir /home/ayman/Desktop/CNN_Accelerator-IO//IO/leonardoScritpts
read -technology "tsmc035_typ" {
    
   ./IO/changed/Mux2.vhd
   ./IO/changed/Reg.vhd
   ./IO/changed/FullAdder.vhd
   ./IO/changed/FullSubtractor.vhd
   ./IO/changed/InverseMux.vhd
   ./IO/changed/NBitAdder.vhd
   ./IO/changed/NBitSubtractor.vhd
   ./IO/changed/IOCounter.vhd
   ./IO/changed/IOCounter2.vhd
   ./IO/changed/IOCounter5.vhd
   ./IO/changed/IODFF.vhd
   ./IO/changed/ModuloCounter.vhd
   ./IO/changed/UpCounterSyncLoad.vhd
   ./IO/changed/DownCounterSyncLoad.vhd
   ./IO/changed/Controller.vhd
   ./IO/changed/IOInterface.vhd
   ./IO/changed/IO.vhd
   ./IO/changed/Decompressor.vhd
   ./IO/changed/DMACNN.vhd
   ./IO/changed/FCDMA.vhd
   ./IO/changed/DMAImage.vhd
   ./IO/changed/IOChip.vhd
    
}

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

