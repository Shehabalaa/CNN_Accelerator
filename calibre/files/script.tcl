load_library tsmc035_typ


read -technology "tsmc035_typ"  { 
	./IOChip.vhd
	./CNNRam.vhd
	./ImageRam.vhd
	./IODFF.vhd
	./DFFZ.vhd
	./FCRam.vhd
	./CNNWithRAM.vhd
	./FcMain.vhd
	./Accelerator.vhd

}






