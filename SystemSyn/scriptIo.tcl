load_library tsmc035_typ
read -technology "tsmc035_typ" {
    
   ./IO/Mux2.vhd
   ./IO/Reg.vhd
   ./IO/FullAdder.vhd
   ./IO/FullSubtractor.vhd
   ./IO/InverseMux.vhd
   ./IO/NBitAdder.vhd
   ./IO/NBitSubtractor.vhd
   ./IO/IOCounter.vhd
   ./IO/IOCounter2.vhd
   ./IO/IOCounter5.vhd
   ./IO/IODFF.vhd
   ./IO/ModuloCounter.vhd
   ./IO/UpCounterSyncLoad.vhd
   ./IO/DownCounterSyncLoad.vhd
   ./IO/Controller.vhd
   ./IO/IOInterface.vhd
   ./IO/IO.vhd
   ./IO/Decompressor.vhd
   ./IO/DMACNN.vhd
   ./IO/FCDMA.vhd
   ./IO/DMAImage.vhd
   ./IO/IOChip.vhd
    
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

