file = open("vsim.txt", 'w')


for i in range(25):
	for j in range(16):
		file.write("force -freeze sim:/cnnadders/inputs_{}_{} 0 0\n".format(i, j))

file.close()