import random
import bitstring as BS
import sys
import numpy as np
import copy


byte_n = 200
word_n = 200
byte_float_bits = 6
word_float_bits = 8


toFloatByte = lambda a : a.int/2.**byte_float_bits
toFloatWord = lambda a : a.int/2.**word_float_bits
toInt = lambda a,b : int(a.int*2**b)
truncate = lambda b: BS.pack('int:16=c',c=BS.pack('int:32=d',d=b)[32-16:].int)
mul8x16 = lambda a,b: truncate((a.int * b.int)>>byte_float_bits)
sum16 = lambda a,b:truncate(a.int + b.int)


def printPredictions(predictions):
    with open("FCtest.txt",'a') as f:
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


def generate(cnn_out_dims):
    weights = [[ BS.pack('int:8=a',a=random.randint(-(1<<5),(1<<5)-1)) for i in range(10)] for j in range(cnn_out_dims)]
    cnn_out = [ BS.pack('int:16=a',a=random.randint(-(1<<15),(1<<15)-1)) for i in range(cnn_out_dims)]
    biases = [ BS.pack('int:16=a',a=random.randint(-(1<<15),(1<<15)-1)) for i in range(10)]
    predictions = copy.copy(biases)
    for neur in range(cnn_out_dims):
        printPredictions(predictions)
        for i in range(len(weights[neur])):
            predictions[i] = sum16(predictions[i],mul8x16(cnn_out[neur],weights[neur][i]))
            
    printPredictions(predictions)



    cnn_out = np.array(map(toFloatWord,cnn_out))
    biases = np.array(map(toFloatWord,biases))
    weights = np.array([map(toFloatByte,i) for i in weights])
    print(np.dot(cnn_out,weights) + biases)
    

generate(int(sys.argv[1]))