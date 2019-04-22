import sys

folderName = sys.argv[1]

trueOutput = open(folderName+"\expectedOutput.txt", "r")

CNNOutput = open(folderName+"\cnnOutput.mem", "r")


# start = 3872

# CNNOutput.seek(start+3,0)

CNNLines = CNNOutput.readlines()

trueLines = trueOutput.readlines()


for i in range(len(trueLines)):
#     print("before = " +CNNLines[i])
    CNNLines[i+3] = CNNLines[i+3].replace(" ", "")
#     print("after = " +CNNLines[i])
    trueLines[i] = trueLines[i].replace(" ","")
    if (CNNLines[i+3] != trueLines[i]):
        print("ERROR in Line #"+str(i)+" CNN = "+CNNLines[i+3]+" true = "+trueLines[i] )

print("If nothing printed then identical :D")