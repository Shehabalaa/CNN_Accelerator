load_library tsmc035_typ


read -technology "tsmc035_typ"  { /home/ayman/Desktop/CNN_Accelerator/Utils/BinaryMux.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Utils.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Ram.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Mux2.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Mux4.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/FullAdder.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/NBitAdder.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/FlibFlob.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Tristate.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/RisingHolderFullCycle.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/RisingHolderHalfCycle.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Decoder.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/CounterUpDown.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/Reg.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ShiftRegister.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ShiftRegSynRst.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ALUs/BoothStep.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ALUs/Mul8x16.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ALUs/nMul8x16.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ALUs/Accumulator.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/ALUs/Alus8x16.vhd /home/ayman/Desktop/CNN_Accelerator/FC/Dma.vhd /home/ayman/Desktop/CNN_Accelerator/FC/ngetMax.vhd /home/ayman/Desktop/CNN_Accelerator/FC/FcMain.vhd /home/ayman/Desktop/CNN_Accelerator/FC/Comparator.vhd /home/ayman/Desktop/CNN_Accelerator/Utils/RegTony.vhd }


elaborate FcMain -architecture FcMainArch 

set register2register 20.000000
set input2register 20.000000
set register2output 20.000000
set_clock -name .work.FcMain.FcMainArch.clk -pulse_width "10.000000"
set_clock -name .work.FcMain.FcMainArch.clk -clock_cycle "20.000000"
set_clock -name .work.FcMain.FcMainArch.clk -pulse_width "10.000000"
set_clock -name .work.FcMain.FcMainArch.clk -clock_cycle "20.000000"

optimize .work.FcMain.FcMainArch -target tsmc035_typ -macro -auto -effort quick -hierarchy preserve 
optimize_timing .work.FcMain.FcMainArch 

report_area FcSynArea -cell_usage -all_leafs 
report_delay FcSynTime -num_paths 1 -critical_paths -clock_frequency
set novendor_constraint_file FALSE
auto_write -format VHDL FCSyn.vhd
set novendor_constraint_file FALSE
auto_write -format SDF FCSyn.sdf



