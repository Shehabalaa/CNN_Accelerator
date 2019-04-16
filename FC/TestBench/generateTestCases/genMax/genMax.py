import random
import bitstring as BS
import numpy as np

word_n = 2000
word_float_bits = 8



toIntWord = lambda a : int(a.int*2**word_float_bits)
toFloat = lambda a,b : a/2.**b
truncate = lambda b: BS.pack('int:32=a',a=b)[32-16:].int


words = []
maxies = []
maxHex = []
for i in range(word_n/10):
    tc = []
    for k in range(10):
        tc.append(BS.pack('int:16=a',a=random.randint(-(1<<15),(1<<15)-1)))
    indx = np.argmax(map(toIntWord,tc))
    maxies.append(indx)
    maxHex.append(tc[indx].hex)
    words.append(tc)

print(maxies)

with open("out.txt",'w') as f:
    f.write('( ')
    for tc in words:
        f.write('( ')
        for i in range(len(tc)):
            f.write("x\"" + tc[i].hex + '\"')
            if(i != len(tc)-1):
                f.write(", ")
        
        f.write(')')
        if(tc!=words[-1]):
            f.write(", ")
    f.write(')')

    f.write('\n\n')    
    f.write('( ')

    for i in range(len(maxies)):
        f.write(str(maxies[i]))
        if(i != len(maxies)-1):
            f.write(", ")
    f.write(')')

print(maxHex)






# outputhex = [("op1 8 bit in hex",bytes),("op2 16 bit in hex",words)
#         ,("multiplication in hex",muls),("acumulation 16 bit in hex",accums)]

# with open("out.txt",'w') as f:
#     for out in outputhex:
#         f.write(str(out[0])+'\n')
#         for i in range(byte_n):
#             f.write("x\"" + str(out[1][i].hex) +"\", ")
#         f.write('\n\n')

#     outputfloat = [("op1 8 bit in float",bytes),("op2 16 bit in float",words)
#             ,("multiplication in float",muls),("acumulation 16 bit in float",accums)]

#     for out in outputfloat:
#         f.write(out[0]+'\n')
#         for i in range(byte_n):
#             fp = byte_float_bits if(out[0].find('8')!=-1) else 8
#             f.write(str(toFloat(out[1][i].int,fp))+" ")
#         f.write('\n\n')

#with open("out.txt","w") as f:
#    print [b.hex for b in words]
