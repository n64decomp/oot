import os

def ReadAllLines(fileName):
    lineList = list()
    with open(fileName) as f:
        lineList = f.readlines()

    return lineList

def GetFiles(path):
    files = []
    
    for r, d, f in os.walk(path):
        for file in f:
            if '.s' in file:
                files.append(os.path.join(r, file))

    return files

def GetNonMatchingSize(path):
    size = 0

    asmFiles = GetFiles(path)

    for asmFilePath in asmFiles:
        asmLines = ReadAllLines(asmFilePath)

        for asmLine in asmLines:
            if (asmLine.startswith("/*")):
                size += 4

    return size


mapFile = ReadAllLines("build/z64.map")
src = 0
code = 0
boot = 0
ovl = 0
asm = 0

for line in mapFile:
    lineSplit =  list(filter(None, line.split(" ")))

    if (len(lineSplit) == 4 and lineSplit[0].startswith(".")):
        section = lineSplit[0]
        size = int(lineSplit[2], 16)
        objFile = lineSplit[3]

        if (section == ".text"):
            if (objFile.startswith("build/src")):
                src += size
            elif (objFile.startswith("build/asm")):
                asm += size

            if (objFile.startswith("build/src/code")):
                code += size
            elif (objFile.startswith("build/src/boot")):
                boot += size
            elif (objFile.startswith("build/src/overlays")):
                ovl += size

nonMatchingASM = GetNonMatchingSize("asm/non_matchings")
nonMatchingASMBoot = GetNonMatchingSize("asm/non_matchings/boot")
nonMatchingASMCode = GetNonMatchingSize("asm/non_matchings/code")

#code_size = 1290032 # 1.29mb
#boot_size = 73488
#ovl_size = 3727584 # 3.727mb
ovl_size = 2812000 # .text section only
libultra_size = 40816 # This is temp
audio_size = 0 # This is temp
handwritten = 0 # This is temp

src -= nonMatchingASM
code -= nonMatchingASMCode
boot -= nonMatchingASMBoot
#asm += nonMatchingASM
#print(nonMatchingASM)

#asm = asm - (libultra_size + audio_size + handwritten - boot_size - code_size - ovl_size)
#asm = asm - (libultra_size + audio_size + handwritten)
#asm = -(libultra_size + audio_size + handwritten - boot_size - code_size - ovl_size)
asm += ovl_size

total = src + asm
srcPct = 100 * src / total
asmPct = 100 * asm / total
compiled_bytes = total
bytesPerHeartPiece = compiled_bytes / 80

print(str(total) + " total bytes of decompilable code\n")
print(str(src) + " bytes of code in src " + str(srcPct) + "%\n")
print(str(asm) + " bytes of code in asm " + str(asmPct) + "%\n")
print(str(boot) + " bytes of code in boot.\n")
print(str(code) + " bytes of code in code.\n")
print(str(ovl) + " bytes of code in overlays.\n")
print("------------------------------------\n")

heartPieces = int(src / bytesPerHeartPiece)
rupees = int(((src % bytesPerHeartPiece) * 100) / bytesPerHeartPiece)

if (rupees > 0):
    print("You have " + str(heartPieces) + "/80 heart pieces and " + str(rupees) + " rupee(s).\n");
else:
    print("You have " + str(heartPieces) + "/80 heart pieces.\n");