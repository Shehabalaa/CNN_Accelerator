load_library tsmc035_typ


read -technology "tsmc035_typ" { Utils/BinaryMux.vhd Utils/Utils.vhd Utils/Ram2.vhd Utils/Mux2.vhd Utils/Mux4.vhd Utils/FullAdder.vhd Utils/NBitAdder.vhd Utils/FlibFlob.vhd Utils/Tristate.vhd Utils/RisingHolderFullCycle.vhd Utils/RisingHolderHalfCycle.vhd Utils/Decoder.vhd Utils/CounterUpDown.vhd Utils/Reg.vhd Utils/ShiftRegister.vhd Utils/ShiftRegSynRst.vhd Utils/ALUs/BoothStep.vhd Utils/ALUs/Mul8x16.vhd Utils/ALUs/nMul8x16.vhd Utils/ALUs/Accumulator.vhd Utils/ALUs/Alus8x16.vhd FC/Dma.vhd FC/ngetMax.vhd FC/Comparator.vhd Utils/RegTony.vhd FC/FcMain.vhd}
#pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
#pre_optimize -extract 

elaborate FcMain -architecture FcMainArch 

set register2register 0.500000
set input2register 0.500000
set register2output 0.500000
set_clock -name .work.FcMain.FcMainArch.clk -pulse_width "0.250000"
set_clock -name .work.FcMain.FcMainArch.clk -clock_cycle "0.500000"
set_clock -name .work.FcMain.FcMainArch.clk -pulse_width "0.250000"
set_clock -name .work.FcMain.FcMainArch.clk -clock_cycle "0.500000"

optimize .work.FcMain.FcMainArch -target tsmc035_typ -macro -auto -effort quick -hierarchy preserve 
#optimize .work.FcMain.FcMainArch -target tsmc035_typ -macro -auto -effort standard -hierarchy preserve

optimize_timing .work.FcMain.FcMainArch 

report_area FcSynArea -cell_usage -all_leafs 
report_delay FcSynTime -num_paths 1 -critical_paths -clock_frequency
set novendor_constraint_file FALSE
auto_write -format VHDL FCSyn.vhd
set novendor_constraint_file FALSE
auto_write -format SDF FCSyn.sdf



