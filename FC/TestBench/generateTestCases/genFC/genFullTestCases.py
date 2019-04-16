import random
import bitstring as BS
import sys
import numpy as np
import copy
import os



byte_float_bits = 6
word_float_bits = 8
toFloatByte = lambda a : a.int/2.**byte_float_bits
toFloatWord = lambda a : a.int/2.**word_float_bits
toIntByte = lambda a : int(a.int*2**byte_float_bits)
toIntWord = lambda a : int(a.int*2**word_float_bits)
truncate = lambda b: BS.pack('int:16=c',c=BS.pack('int:32=d',d=b)[32-16:].int)
mul8x16 = lambda a,b: truncate((a.int * b.int)>>byte_float_bits)
sum16 = lambda a,b:truncate(a.int + b.int)

ramymaxi = -1

def printPredictions(predictions):
    param = 'a' if printPredictions.step >0 else 'w' 
    with open("./TestCaseFC/FCtest.txt",param) as f:
        f.write("predictions in hex at step: " + str(printPredictions.step) +'\n')
        for p in predictions: 
            f.write(p.hex+"\n")
        f.write('\n')   
        
        f.write("predictions in float at step: " + str(printPredictions.step) + "\n")
        for p in predictions: 
            f.write(str(toFloatWord(p)) + "\n")
        f.write('\n\n')
        printPredictions.step += 1;
printPredictions.step = 0


def generateTestCase(cnn_out_dims):
    global ramymaxi
    weights = [[ BS.pack('int:8=a',a=random.randint(-(1<<5),(1<<5)-1)) for i in range(10)] for j in range(cnn_out_dims+1)]
    cnn_out = [ BS.pack('int:16=a',a=random.randint(-(20<<8),(20<<8)-1)) for i in range(cnn_out_dims)]
    cnn_out = [BS.pack('int:16=a',a=1<<8)] + cnn_out #first raw is biases

    predictions = [ BS.pack('int:16=a',a=0) for i in range(10)]
    for neur in range(cnn_out_dims+1):
        #printPredictions(predictions)
        for i in range(len(weights[neur])):
            predictions[i] = sum16(predictions[i],mul8x16(cnn_out[neur],weights[neur][i]))
        printPredictions(predictions)
    maxi = np.argmax(map(toIntWord,predictions))

    biases = weights[0]
    weights = weights[1:]
    cnn_out = cnn_out[1:]

    cnn_out_valid = np.array(map(toFloatWord,cnn_out))
    biases_valid = np.array(map(toFloatByte,biases))
    weights_valid = np.array([map(toFloatByte,i) for i in weights])
    result_valid = np.dot(cnn_out_valid,weights_valid) + biases_valid;
    max_valid = np.max(result_valid)
    print(result_valid)
    with open("./TestCaseFC/FCtest.txt",'a') as f:
        f.write("\nValid Answer is: ")
        np.savetxt(f,result_valid,newline=" ",fmt="%.6f")
        ramymaxi = maxi
        print(9 - maxi)
        f.write("\nAnd valid maximuim is : {} in float".format(max_valid))
        f.write("\nFC answer is {} in float and {} in hex".format( toFloatWord( predictions[maxi] ), predictions[maxi].hex ) )

    return weights,cnn_out,biases

    
weights,cnn_out,biases = generateTestCase(int(sys.argv[1]))

def createTestCase():
    try:
        os.mkdir("TestCaseFC")
    except:
        print("folder already exist")

    os.chdir("./TestCaseFC")
    os.system("bash -c \"cp ../*.mem . \"")
    with open("RAMWEIGHTS.mem",'r+w') as f:
        lines = f.readlines();
        lines[3] = lines[3].replace('X'*4,BS.pack("int:16=a",a=len(cnn_out)+1).hex,1)
        lines[4] = lines[4].replace('X'*len(biases)*2,''.join([b.hex for b in biases]),1)
        for i in range(len(weights)):
            lines[5+i] = lines[5+i].replace('X'*len(weights[i])*2,''.join([w.hex for w in weights[i]]),1)
        f.seek(0)
        f.writelines(lines)  

    with open("RAMNEORONS.mem",'r+w') as f:
        lines = f.readlines();
        for i in range(len(cnn_out)):
            lines[3+i] = lines[3+i].replace('X'*4,cnn_out[i].hex, 1)
        f.seek(0)
        f.writelines(lines)   

    pathOfTC =  "../../../TestFC/"+sys.argv[1]+"neoronsTC";
    os.makedirs(pathOfTC)
    os.system("bash -c \"cp * {}/. \"".format(pathOfTC))

createTestCase()




