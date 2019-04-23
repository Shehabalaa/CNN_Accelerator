import os
import subprocess as sp


path = 'CNN\\RAMs\\CurrentRunning\\'

# r=root, d=directories, f = files
i = 0
for r, d, f in os.walk(path):

    if i != 0:
        print(r)
        # os.system('vsim -do '+str(r)+'\CNNWithRam.do')
        sp.Popen('vsim -do '+str(r)+'\CNNWithRam.do', shell=True)
        

    i += 1


