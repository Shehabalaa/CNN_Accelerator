
file = open('ram.txt', 'w')
for i in range(24 * 24):
	file.write("mem load -filltype value -filldata {} -fillradix hexadecimal /cnnwithram/windowRam/ram({})\n".format("{0200}", i))

file.close()