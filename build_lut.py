
codes = { 
    "1101100" : "A",
    "1101101" : "B",
    "110111" : "C",
    "110101" : "D",
    "110100" : "E",
    "01011" : "F",
    "01010" : "G",
    "0100" : "H",
    "0110" : "I",
    "0111" : "J",
    "1100" : "K",
    "000" : "L",
    "001" : "M",
    "100" : "N",
    "101" : "O",
    "111" : "P",
}

def to_binary(n, bits):
    binary = bin(n)[2:]
    # Pad left with zeros to fill out to full bits
    return (bits - len(binary)) * '0' + binary


entries = []

for i in range(128):
    b = to_binary(i, 7)
    
    found = False
    for k in codes:
        if b.startswith(k):
            found = True
            val = ord(codes[k]) - 0x41
            val <<= 4
            val |= len(k)
            entries.append(val)
            break
            
    if not found:
        entries.append(0)
        
#print "{",
#for e in entries:
#    print hex(e) + ",",
#print "}"

for i in range(128):
    print "%3d => \"%s\"," % (i, to_binary(entries[i], 8))
