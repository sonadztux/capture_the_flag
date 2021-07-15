alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
numbers = [16,9,3,15,3,20,6,20,8,5,14,21,13,2,5,18,19,13,1,19,15,14]

flag = ''
for num in numbers:
    conv = alphabet[num-1].upper()
    flag += conv
    if conv == 'F':
        flag += '{'
flag += '}'

print(flag)
