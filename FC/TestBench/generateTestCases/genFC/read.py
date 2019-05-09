import json
import bitstring as bs 

Byte_float_bits = 6
toFloatByte = lambda a : a.int/2.**Byte_float_bits # take bitStream as 16 bits: 8 int and 8 float and return float

toIntByte = lambda a : int(a*2**Byte_float_bits)

truncateTo8 = lambda b: bs.pack('int:8=c',c=bs.pack('int:32=d',d=b)[32-8:].int) # utilty function to trucnate big results to 16 bits 


floatToBitStreamByte = lambda a: truncateTo8(toIntByte(a))

def transpose(array):
	return [list(i) for i in zip(*array)]

def readWeightsBiases():
	neoronsNum = 0
	weights = []
	biases = []
	with open('data.json') as json_file:  
		data = json.load(json_file)
		neoronsNum = data['layers'][4]['num_inputs']		
		for i in range(10):
			tmp = data['layers'][4]['filters'][i]['w']
			weights.append([ floatToBitStreamByte(tmp[str(num)]) for num in range(neoronsNum)])

		tmp = data['layers'][4]['biases']['w']
		biases = [ floatToBitStreamByte(tmp[str(num)]) for num in range(10)]
		
		weights = transpose(weights)
		weights.insert(0,biases)


	return weights,neoronsNum



def readNeorons():
	#TODO
	pass


if __name__ == "__main__":
	readWeightsBiases()

