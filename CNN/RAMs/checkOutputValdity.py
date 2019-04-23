import sys

folderName = sys.argv[1]

trueOutput = open(folderName+"\expectedOutput.txt", "r")

CNNOutput = open(folderName+"\cnnOutput.mem", "r")

numLayers = int(sys.argv[2])

offset = 3
if numLayers %2 == 1:
    offset = 3872+3


CNNLines = CNNOutput.readlines()

trueLines = trueOutput.readlines()

identical = False

for i in range(len(trueLines)):
    CNNLines[i+offset] = CNNLines[i+offset].replace(" ", "")

    trueLines[i] = trueLines[i].replace(" ","")

    if (CNNLines[i+offset] != trueLines[i]):
        print("ERROR in Line #"+str(i)+"\n CNN = "+CNNLines[i+offset]+" true = "+trueLines[i] )
        break
    else:
        identical = True

if (identical == True):
    print("If nothing printed then identical :D")