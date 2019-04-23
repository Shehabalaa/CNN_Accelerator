import os

path = 'CurrentRunning\\'

files = []

# r=root, d=directories, f = files
i = 0
for r, d, f in os.walk(path):

    if i != 0:
        print(r)
        # os.system('vsim -do '+str(r)+'\CNNWithRam.do')
        doFile = open(str(r)+"/CNNWithRAM.do","w+")
        savedDo = open("Do1.txt", "r")
        savedDoLines = savedDo.readlines()
        j = 0
        while j < 52:
            doFile.write(savedDoLines[j])
            j += 1

        j = 59
        newR = r.replace(os.sep, '/')
            
        doFile.write("mem load -i ./CNN/RAMs/"+str(newR)+"/windowRAM.mem -format mti /cnnwithram/windowRam/ram \n")
        doFile.write("mem load -i ./CNN/RAMs/"+str(newR)+"/weightsRAM.mem -format mti /cnnwithram/weightsRam/ram \n")

        while j < 69:
            doFile.write(savedDoLines[j])
            j += 1

        doFile.write("mai mem save -o ./CNN/RAMs/"+str(newR)+"/cnnOutput.mem -f mti -data binary -addr hex -wordsperline 1 /cnnwithram/windowRam/ram \n")


    i += 1

