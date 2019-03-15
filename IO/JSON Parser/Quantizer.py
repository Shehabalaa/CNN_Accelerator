def makeFixedStrings(Arr, integers,floating):
    Arr2 = []
    for j in range(0,len(Arr)):
        curr = Arr[j]
        string = ''
        if(curr<0):
            string += '1'
        else:
            string += '0'
        curr = abs(curr)
        for i in range(integers-2,-1,-1):
            if(curr > np.power(2,i,dtype = float)):
                curr -= np.power(2,i,dtype = float)
                string += '1'
            else:
                string += '0'
        curr -= int(curr)
        for i in range(1,floating):
            if(curr > np.power(2,-i,dtype = float)):
                curr -= np.power(2,-i,dtype = float)
                string +='1'
            else:
                string +='0'
        Arr2.append(string)
    return Arr2
print(makeFixedStrings([-21.45],8,8))