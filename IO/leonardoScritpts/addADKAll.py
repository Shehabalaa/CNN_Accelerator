import sys
import os

dirs = [ name for name in os.listdir() if os.path.isdir(name) ]
for directory in dirs:
	os.chdir("./" + directory)
	vhds = [ fileName for fileName in os.listdir() if fileName[-3] == "vhd"]
	for vhdFile in vhds:
		with open(vhdFile,'r') as f1:
		lines = f1.read().split('\n')
		with open(vhdFile[:-4]+'1'+'.vhd','w') as f2:
			for line in lines:
				f2.write(line+'\n')
				if(line == "use IEEE.STD_LOGIC_1164.all;"):
					f2.write("use work.adk_components.all;\n")
	os.chdir("..")
		
