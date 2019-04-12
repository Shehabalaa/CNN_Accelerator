import os
out = os.popen('compileUtils.bat').read()
res = ""
lines = out.splitlines(True)
for line in lines:
    line = line.strip()
    if (line[0:4] == "vcom" or line[0:2] == "**"):
        res += line + "\n"
    if (line[0:6] == "Errors"):
        res += line + "\n\n"

print(res)