from pwn import remote, log
import hashlib

cmd = 'nc 127.0.0.1 3002'
nc, host, port = cmd.split()
sh = remote(host, port)

def oracle(a, b):
    # import time; time.sleep(.5)
    oracle.counter += 1
    ha = '{:016x}'.format(a)
    hb = '{:016x}'.format(b)
    (sh.recvuntil('choice: ')),
    sh.sendline('2')
    (sh.recvuntil('Username: ')),
    sh.sendline(ha)
    (sh.recvuntil('Password: ')),
    sh.sendline(hb)
    data = sh.recvline()
    if 'username/password' in data:
        return 1
    elif 'password/username' in data:
        return -1
    return 0

def solve():
    a, b = 0, 0
    big = oracle(0,0);
    for i in range(63, -1, -1):
        f = oracle(a^(1<<i),b)
        s = oracle(a,b^(1<<i))
        if f == s:
            if big == 1:
                a ^= (1<<i)
            else:
                b ^= (1<<i)
            big = f
        elif f == -1:
            a ^= (1<<i)
            b ^= (1<<i)
        p.status('['+'='*(64-i) + '.'*i+'] ' + '{:.0f}%'.format((100.0*(64-i)/64)))
        ta = '{:064b}'.format(a)[:(64-i)] + '*'*i
        tb = '{:064b}'.format(b)[:(64-i)] + '*'*i
        pu.status(ta)
        pp.status(tb)
    p.success('['+'='*(64-i) + '.'*i+'] 100%')
    pu.success('{:016x}'.format(a))
    pp.success('{:016x}'.format(b))
    return a, b

oracle.counter = 0
p  = log.progress('Progress')
pu = log.progress('Username')
pp = log.progress('Password')
p.status('['+'.'*64+'] 0%')
pu.status('waiting')
pp.status('waiting')

username, password = solve()
token = hashlib.md5(('{:016x}'.format(username).decode('hex') + '{:016x}'.format(password).decode('hex'))).hexdigest().encode('base64')[:-1]
sh.recvuntil('choice: ')
sh.sendline('1')
sh.recvuntil(': ')
sh.sendline(token)
flag = sh.recvline()
log.success(flag)
log.info(str(oracle.counter+1) + ' queries performed')

'''
OUTPUT:
[+] Opening connection to 127.0.0.1 on port 3002: Done
[+] Progress: [================================================================] 100%
[+] Username: a3ade6b47fb4c0e3
[+] Password: f091ab5f3346a294
[+] b00t2root{wh47_k1nd_0f_x0rx3ry_15_th15_o_O}
[*] 130 queries performed
[*] Closed connection to 127.0.0.1 port 3002
'''
