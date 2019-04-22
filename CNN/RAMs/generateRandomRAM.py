import numpy as np
import random
import sys
import bitstring as bs
import os



################################Constants###########################################

windowRAMMemSize = 8191
weightsRAMMemSize = 4095

################################Variables###########################################
windowRAMCount = 0
weightsRAMCount = 0

################################CreateFiles#########################################

inputFileName = input("Enter input file name without .txt:")

try:
    if not os.path.exists(inputFileName):
        os.makedirs(inputFileName)
except OSError:
    print ('Error: Creating directory. ' +  inputFileName)


imageFile = open(inputFileName+"/image.txt","w+")
weightsRAM = open(inputFileName+"/weightsRAM.mem","w+")
windowRAM = open(inputFileName+"/windowRAM.mem","w+")
filtersFile = open(inputFileName+"/filters.txt","w+")
outputFile = open(inputFileName+"/expectedOutput.txt","w+")


f = open(inputFileName+".txt", "r")
f1 = f.readlines()


layersNumber = int(f1[0])
inputImageSize = int(f1[1])
# finalOutputSize = int(f1[2])

startindex = 3872

if layersNumber % 2 == 0:
    startindex = 0

##################################### BITS #########################################

byte_float_bits = 6
word_float_bits = 8
toFloatByte = lambda a : a.int/2.**byte_float_bits # take bitStream as 8 bits: 2 int and 6 float and return float
toFloatWord = lambda a : a.int/2.**word_float_bits # take bitStream as 16 bits: 8 int and 8 float and return float
truncateTo16 = lambda b: bs.pack('int:16=c',c=bs.pack('int:32=d',d=b)[32-16:].int) # utilty function to trucnate big results to 16 bits 

truncateTo8 = lambda b: bs.pack('int:8=c',c=bs.pack('int:16=d',d=b)[16-8:].int) # utilty function to trucnate big results to 16 bits

mul8x16 = lambda a,b: truncateTo16((a.int * b.int)>>byte_float_bits)# mutliply two nums 8*16 zay fromat al project bta3na bzbt we deh btsimulate al multiplier bzbt

sum16 = lambda a,b:truncateTo16(a.int + b.int)# sum two nums 16 bits zay fromat al project bta3na bzbt 8 int we 8 float

toIntByte = lambda a : int(a*2**byte_float_bits)
toIntWord = lambda a : int(a*2**word_float_bits)

floatToBitStreamByte = lambda a: truncateTo8(toIntByte(a) )
floatToBitStreamWord = lambda a: truncateTo16(toIntWord(a))



def generateRandom8():
    num = int(random.getrandbits(1))

    # num += (-1*int(random.getrandbits(1)))

    power = -1
    for k in range(6):
        num += ( pow(2,power) * int(random.getrandbits(1)) )
        power -= 1

    return num


################################# Image Generation #################################

# def num_after_point(x):
#     s = str(x)
#     if not '.' in s:
#         return 0
#     return len(s) - s.index('.') - 1


windowRAM.write("// memory data file (do not edit the following line - required for mem load use)"+"\n")
windowRAM.write("// instance=/cnnwithram/windowRAM/ram\n")
windowRAM.write("// format=mti addressradix=h dataradix=b version=1.0 wordsperline=1"+"\n")


# Generate Image First
image = np.zeros([inputImageSize,inputImageSize])

for i in range(inputImageSize):
    for j in range(inputImageSize):
        # from -1.984375   to 1.984375

        image[i,j] = generateRandom8()
        

        windowRAM.write(str(format(windowRAMCount, 'x'))+": "+ "000000"+str(floatToBitStreamByte(image[i,j]).bin)+"00"+"\n")
        windowRAMCount += 1
        imageFile.write(str(image[i,j])+"\t\t")
        
    imageFile.write("\n")


while windowRAMCount <= windowRAMMemSize:
    windowRAM.write(str(format(windowRAMCount, 'x'))+": "+ "0000000000000000"+"\n")
    windowRAMCount += 1

#######################################################################################################
#######################################################################################################
#######################################################################################################
#######################################################################################################
#######################################################################################################

###################################### Filters Generation #############################################

def pooling(inputImage,currentFilterSize,outputSize,currentFilterDepth):
    outputImage = np.zeros([outputSize,outputSize])

    outputImage[:,:] = 0.0

    for l in range(currentFilterDepth):
        for m in range(outputSize):
            for n in range(outputSize):
                mat = inputImage[l][n:n+currentFilterSize,m : m+currentFilterSize] 

                sum = 0
                for num1 in range(currentFilterSize):
                    for num2 in range(currentFilterSize):
                        # num =  toFloatWord(mul8x16(floatToBitStreamByte(filterMat[l][num1,num2]) ,floatToBitStreamWord(mat[num1,num2])))
                        sum = toFloatWord(sum16(floatToBitStreamWord(sum),floatToBitStreamWord(mat[num1][num2])))
                        
                finalResult = toFloatWord(sum16(floatToBitStreamWord(outputImage[n,m]),floatToBitStreamWord(sum)))
                

                print(floatToBitStreamWord(finalResult).bin)

                for shift in range(currentFilterSize):
                    finalResult /= (2)

                print(floatToBitStreamWord(finalResult).bin)
                print()
                

                if (finalResult < 0):
                    outputImage[n,m] = 0
                else:
                    outputImage[n,m] = finalResult

    return outputImage



def convolution(inputImage,filterMat,outputSize,filterBias,currentFilterDepth):

    print("CONVOLUUUUUTTTTTION")
    outputImage = np.zeros([outputSize,outputSize])

    outputImage[:,:] = filterBias

    for l in range(currentFilterDepth):
        print("filter = ")
        print(filterMat[l])
        print("Image = ")
        print(inputImage[l])
        for m in range(outputSize):
            for n in range(outputSize):
                # print(inputImage[l])
                # print(filterMat)
                mat = inputImage[l][n:n+filterMat[l].shape[0],m : m+filterMat[l].shape[0]] 
                # mult =(mat * filterMat)
                # # print(mult)
                # print("n={} m={}".format(n, m))
                # print("mat = ")
                # print(mat)

                sum = 0
                for num1 in range(filterMat[l].shape[0]):
                    for num2 in range(filterMat[l].shape[0]):
                        num =  toFloatWord(mul8x16(floatToBitStreamByte(filterMat[l][num1,num2]) ,floatToBitStreamWord(mat[num1,num2])))
                        sum = toFloatWord(sum16(floatToBitStreamWord(sum),floatToBitStreamWord(num)))
                        
                finalResult = toFloatWord(sum16(floatToBitStreamWord(outputImage[n,m]),floatToBitStreamWord(sum)))
                
                if (finalResult < 0):
                    outputImage[n,m] = 0
                else:
                    outputImage[n,m] = finalResult

    return outputImage




weightsRAM.write("// memory data file (do not edit the following line - required for mem load use"+"\n")
weightsRAM.write("// instance=/cnnwithram/weightsRam/ram"+"\n")
weightsRAM.write("// format=mti addressradix=h dataradix=b version=1.0 wordsperline="+str(5)+"\n")


# 0: layersNumber
weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+(format(layersNumber-1,'02b'))+"000000"+"\n")
weightsRAMCount += 1

lineNumber = 2


inputs = []

inputs.append(image)

for layer in range(layersNumber):

    outputs = []

    filtersFile.write("Layer #"+str(layer+1)+"\n")

    layerInputImageSize = int(f1[lineNumber])
    lineNumber += 1
    filtersNumber = int(f1[lineNumber])
    lineNumber += 1
    filterSize = int(f1[lineNumber])
    lineNumber += 1
    outputImageSize = int(f1[lineNumber])
    lineNumber += 1
    filterType = (f1[lineNumber])
    lineNumber += 1
    filterDepth = int(f1[lineNumber])
    lineNumber += 1

    #1: ConvPool(1)|filterSize(1)|numOfFilters(3)|filterDepth(3)

    toWrite = ""

    if filterType == "conv\n":
        toWrite += "0"
    else:
        toWrite += "1"

    if filterSize == 3:
        toWrite += "0"
    else:
        toWrite += "1"
        
    toWrite += format(filtersNumber-1, '03b')
    toWrite += format(filterDepth-1,'03b')

    weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+toWrite+"\n")
    weightsRAMCount += 1

    #2: Input size
    weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+(format(layerInputImageSize,'05b'))+"000"+"\n")
    weightsRAMCount += 1

    #3: OutputSize
    weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+(format(outputImageSize-1,'05b'))+"000"+"\n")
    weightsRAMCount += 1


    currentFilter = 0
    # for currentFilter in range(filtersNumber):
    while currentFilter < filtersNumber and filterType == "conv\n":
        filtersFile.write("Filter #"+str(currentFilter+1)+"\n")

        filtersArray = []

   

        #4: Bias
        bias = generateRandom8()
        filtersFile.write(str(bias)+"\n")
        
        weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+str(floatToBitStreamByte(bias).bin)+"\n")
        weightsRAMCount += 1

        #5: Filter
        for k in range(filterDepth):
            filterArray = np.zeros([filterSize,filterSize])
            for i in range(filterSize):
                for j in range(filterSize):

                                       
                    filterArray[i,j] = generateRandom8()
                    
                    filtersFile.write(str(filterArray[i,j])+" \t")

                    weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+ str(floatToBitStreamByte(filterArray[i,j]).bin) +"\n")
                    weightsRAMCount += 1


                
                filtersFile.write("\n")
            filtersArray.append(filterArray)

        outputs.append(convolution(inputs,filtersArray,outputImageSize,bias,filterDepth))
        currentFilter += 1
        print("outputs = ")
        print(outputs)

    if filterType != "conv\n":
        outputs.append(pooling(inputs,filterSize,outputImageSize,filterDepth))
    
    inputs = outputs

    


    

    
# Fill Rest of the RAM
while weightsRAMCount <= weightsRAMMemSize:
    weightsRAM.write(str(format(weightsRAMCount, 'x'))+": "+ "00000000"+"\n")
    weightsRAMCount += 1

################################### Generate Output #######################################

# print(len(inputs))
for k in range(len(inputs)):
    for i in range(inputs[k].shape[0]):
        for j in range(inputs[k].shape[1]):
            outputFile.write(str(format(startindex, 'x'))+": "+ str(floatToBitStreamWord(inputs[k][i,j]).bin) +"\n")
            startindex += 1

##########################################################################################


windowRAM.close()
weightsRAM.close()
imageFile.close()
filtersFile.close()
outputFile.close()