import sys
import os

path = 'CurrentRunning\\'

# r=root, d=directories, f = files
i = 0
for r, d, f in os.walk(path):

    if i != 0:
        print(r)
        
        trueOutput = open(r+"\expectedOutput.txt", "r")

        CNNOutput = open(r+"\cnnOutput.mem", "r")

        # Find first index of this string.
        i = r.find("_")
        # print(i)

        # Find first index (of this string) after previous index.
        b = r.find("_", i + 1)

        numLayers = int(r[b+1])

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
        
        print("-----------------------")
    i += 1



