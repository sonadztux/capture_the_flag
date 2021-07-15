# author: sonadztux
# github: https://github.com/sonadztux
import string

LOWERCASE_OFFSET = ord("a")
ALPHABET = string.ascii_lowercase[:16]
FULL_CHAR_STRING = string.printable # I decide to use this to avoid error substring not found on b16_decode process

encflag = 'kjlijdliljhdjdhfkfkhhjkkhhkihlhnhghekfhmhjhkhfhekfkkkjkghghjhlhghmhhhfkikfkfhm'

def b16_decode(plain):
    decoded_char = ''
    for i in range(0, len(plain), 2):
        char1_idx = FULL_CHAR_STRING.index(plain[i])
        char2_idx = FULL_CHAR_STRING.index(plain[i+1])
        char1_binary = "{0:08b}".format(char1_idx)[4:]
        char2_binary = "{0:08b}".format(char2_idx)[4:]
        decoded_char_binary = char1_binary + char2_binary
        decoded_char += chr(int(decoded_char_binary, 2))
    return decoded_char

def unshift(char, key):
    char_idx = FULL_CHAR_STRING.index(char)
    t2 = ord(key) - LOWERCASE_OFFSET
    t1 = char_idx - t2
    char_unshifted = chr(t1 + LOWERCASE_OFFSET)

    return char_unshifted

for key in ALPHABET:
    unshifted = ''
    for char in encflag:
        unshifted += unshift(char, key)

    print('KEY:', key)
    print('FLAG:', b16_decode(unshifted), '\n')

# all outputs include invalid characters 
# except the output from key 'i' and it was the flag