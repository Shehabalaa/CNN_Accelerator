import os
import re
import sys

files = []

def changeEntities():
    entites = [n.strip('.vhd').lower() for n in files]
    add = r.strip("./")
    toWrite = ''
    for f in files:
        toWrite+='\n'+r+'/changed/'+f
        with open(sys.argv[1]+'/'+f,'r') as ff:
            with open(sys.argv[1]+'/changed/'+f,'w') as ff2:
                lines = ff.readlines()
                for line in lines:
                    line = line.lower()
                    if (all([s in line for s in ["port","map"]])):
                        for e in entites:
                            arr = line.split(':')
                            try:
                                arr[1] = arr[1].replace(e+' ',e+add +' ')
                                line = ':'.join(arr)
                            except:
                                line = arr[0].replace(e+' ',e+add +' ')

                    elif(all([s in line for s in ["end"]])):
                        for e in entites:
                            line = line.replace(' '+e+';',' '+e+add +';')
                            line = line.replace(' '+e+' ',' '+e+add+' ')
                    elif(any([s in line for s in ["entity","architecture","component"]])):
                        for e in entites:
                            line = line.replace(' '+e+' ',' '+e+add+' ')
                    ff2.write(line)
    return toWrite

def changeArchs():
    archPassed =False
    for f in files:
        with open(sys.argv[1]+'/changed/'+f,'rw+') as ff:
            lines = ff.readlines()
            ff.seek(0)
            a=''
            b=''
            add = 'arch'
            for line in lines:
                line = line.lower()
                if(all([s in line.lower() for s in ["of","architecture","is"]])):
                    archPassed = True
                    s = line.split()
                    a,b = s[1].lower(),s[3].lower()
                    line = line.replace(' '+a+' ',' '+b+add +' ',1)
                elif(all([s in line for s in ["end"]])):
                    if(archPassed and a !=''  and line.find(a)>=0):
                        line = line.replace(' '+a+' ',' '+b+add +' ',1)
                        line = line.replace(' '+a+';',' '+b+add +';',1)
                        archPassed = False
                ff.write(line)


# r=root, d=directories, f = files
for r, _, files in os.walk("./"):
    if(r == "./"+sys.argv[1]):
        toWrite = changeEntities()
        changeArchs()

        # with open('script.tcl','rw+') as ff:
        #     fileStr = ff.read()
        #     fileStr = fileStr.replace('}',toWrite+'\n'+'}')
        #     ff.seek(0)
        #     ff.write(fileStr)

            
                