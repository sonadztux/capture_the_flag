encflag = open('enc', 'r').read()
for s in encflag:
    print('{}{}'.format(chr(ord(s)>>8),chr((ord(s))-((ord(s)>>8)<<8))), end='')