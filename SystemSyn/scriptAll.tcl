load_library tsmc035_typ
read -technology "tsmc035_typ"  {
    
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


./Utiles.vhd
./FC/changed/Decoder.vhd
./FC/changed/FlibFlob.vhd
./FC/changed/FullAdder.vhd
./FC/changed/NBitAdder.vhd
./FC/changed/BinaryMux.vhd
./FC/changed/Reg.vhd
./FC/changed/RisingHolderFullCylce.vhd
./FC/changed/RisingHolderHalfCycle.vhd
./FC/changed/RisingHolderFullCycle.vhd
./FC/changed/CounterUpDown.vhd
./FC/changed/ShiftReg.vhd
./FC/changed/ShiftRegSynRst.vhd
./FC/changed/Mux4.vhd
./FC/changed/Mux2.vhd
./FC/changed/Counter.vhd
./FC/changed/RegTony.vhd
./FC/changed/TwosComplement.vhd
./FC/changed/BoothStep.vhd
./FC/changed/Mul8x16.vhd
./FC/changed/nMul8x16.vhd
./FC/changed/Accumulator.vhd
./FC/changed/Alus8x16.vhd
./FC/changed/Comparator.vhd
./FC/changed/ngetMax.vhd
./FC/changed/FcMain.vhd

  "./CNN/Mux2.vhd"
    "./CNN/Mux4.vhd"
    "./CNN/Decoder.vhd"
    "./CNN/FullAdder.vhd"
    "./CNN/NBitAdder.vhd"
    "./CNN/Reg.vhd"
    "./CNN/Counter2.vhd"
    "./CNN/Counter.vhd"
    "./CNN/TriState.vhd"
    "./CNN/ShiftRegister.vhd"
    "./CNN/BoothStep.vhd"
    "Types.vhd"
    "./CNN/Mux.vhd"
    "./CNN/BinaryMux.vhd"
    "./CNN/Mul8x16.vhd"
    "./CNN/TransitionDetector.vhd"
    "./CNN/RowDecoder.vhd"
    "./CNN/RegUnit.vhd"
    "./CNN/RegRow.vhd"
    "./CNN/RegFile.vhd"
    "./CNN/CNNMuls.vhd"
    "./CNN/SliceFilterController.vhd"
    "./CNN/FilterController.vhd"
    "./CNN/LayerController.vhd"
    "./CNN/NetworkController.vhd"
    "./CNN/ControlUnit.vhd"
    "./CNN/MultiStepCounter.vhd"
    "./CNN/FullSubtractor.vhd"
    "./CNN/NbitSubtractor.vhd"
    "./CNN/DownCounter.vhd"
    "./Constants.vhd"
    "./CNN/WriteDMA.vhd"
    "./CNN/WriteLogic.vhd"
    "./CNN/DMA.vhd"
    "./CNN/ReadLogic.vhd"
    "./CNN/DMAController.vhd"
    "./CNN/CNNShifter.vhd"
    "./CNN/Adder4Values.vhd"
    "./CNN/Adder8Values.vhd"
    "./CNN/CNNAdders.vhd"
    "./CNN/CNNCores.vhd"
    "./CNN/OutputBuffer.vhd"
    "./CNN/Config.vhd"
    "./CNN/CNNModule.vhd"
    "./CNN/Ram.vhd"
    "./CNN/CNNWithRAM.vhd"


}
elaborate CNNWithRAM -architecture CNNWithRAMArch
read_constraints constraint.ctr
set sdf_type combined
optimize .work.CNNWithRam.CNNWithRamArch -target tsmc035_typ -macro -delay -effort quick -hierarchy preserve
report_area area.rep -cell_usage -hierarchy -all_leafs 
report_delay delay.rep -num_paths 1 -longest_path -clock_frequency
set novendor_constraint_file FALSE
auto_write -format Verilog CNNWithRAM.v
set novendor_constraint_file FALSE
auto_write -format VHDL CNNWithRAM.vhd
set novendor_constraint_file FALSE
auto_write -format SDF CNNWithRAM.sdf
