import json
import bitstring as bs 

Byte_float_bits = 6
toIntByte = lambda a : int(a*2**Byte_float_bits)
truncateTo8 = lambda b: bs.pack('int:8=c',c=bs.pack('int:16=d',d=b)[16-8:].int)
floatToBitStreamByte = lambda a: truncateTo8(toIntByte(a))

def transpose(array):
	return [list(i) for i in zip(*array)]

def readWeightsBiases(weightsFile):
	neoronsNum = 0
	weights = []
	biases = []
	with open(weightsFile) as json_file:  
		data = json.load(json_file)
		neoronsNum = data['layers'][4]['num_inputs']	
        print(data['layers'][4]['layer_type'])	
        for i in range(10):
            weights.append([ floatToBitStreamByte(data['layers'][4]['filters'][i]['w'][str(num)]) for num in range(neoronsNum)])
        tmp = data['layers'][4]['biases']['w']
        biases = [ floatToBitStreamByte(tmp[str(num)]) for num in range(10)]
        weights = transpose(weights)
        weights.insert(0,biases)
	return weights,neoronsNum



def readNeorons(num,neoronsFile):
    neorons = []
    with open(neoronsFile) as f:
        for line in f.readlines()[3:]:
            neorons.append(line.split(': ')[1].split()[0])
            if(num==1):
                break  
            else:
                num-=1
    print(len(neorons))
    return [bs.pack('bin:16=a',a=i) for i in neorons]


if __name__ == "__main__":
	readNeorons(2592)

