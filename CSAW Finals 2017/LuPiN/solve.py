#!/usr/bin/env python2
import numpy as np
import socket
from ast import literal_eval

# Taken as it is from lpn_chal.py
unpack = lambda s: list(__import__('itertools').chain(*[[1&(ord(c)>>i) for i in range(8)] for c in s]))
pack = lambda x: (lambda t: ''.join(chr(sum(t[8*i:8*i+8])) for i in range(len(t)/8)))([(b<<(i%8)) for i,b in enumerate(x)])
deserialize_mat = lambda s: (lambda (dims,data): np.array(unpack(data.decode('base64'))).reshape(map(int,dims.split(','))))(s.split(';'))

# The actual decryption method ;)
def crackTheCipher(A, B, u, c):
    fT = u.dot(np.linalg.pinv(A)) % 2
    v = np.int_(c - fT.dot(B)) % 2
    flag = pack(v)
    return flag

# To get the data from the live server and write to a file
def nc():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("crypto.chal.csaw.io", 1922))
    f = open("lpnData","w")
    while 1:
        data = s.recv(1024)
        if data == "":
            break
        f.write(data)
    f.close()

# To get the data from local lpn_chal.py instead of the live server
def sim_nc():
    import subprocess
    with open("lpnData", "w+") as output:
        subprocess.call(["python", "./lpn_chal.py"], stdout=output);

# Reads the variables from the file
def readFile():
    f = open("lpnData", "r")
    As = literal_eval(f.readline()[3:])
    Bs = literal_eval(f.readline()[3:])
    us = literal_eval(f.readline()[3:])
    cs = literal_eval(f.readline()[3:])
    f.close()
    return As, Bs, us, cs

if __name__ == '__main__':
    print("Decrypting...")
    while True:
        #nc()
        sim_nc()
        As, Bs, us, cs = readFile()

        As = deserialize_mat(As)
        Bs = deserialize_mat(Bs)
        us = deserialize_mat(us)
        cs = deserialize_mat(cs)
        
        flag = crackTheCipher(As, Bs, us, cs)

        if(flag.startswith("flag{")):
            print("Success!\n\n" + flag.split("}")[0] + "}\n")
            break
        else:
            print("Attempting decryption again...")
