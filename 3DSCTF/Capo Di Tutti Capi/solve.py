#!/usr/bin/env python3

import socket

def nc():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("capoditutticapi01.3dsctf.org", 8001))
    data = s.recv(1024).decode("utf-8")
    print(data, end='')
    s.send(str.encode("start"))
    print("start")
    count = 1
    for page in range(1, 11, 1):
        data = s.recv(1024).decode("utf-8")
        print(data, end='')
        data = s.recv(1024).decode("utf-8")
        print(data, end='')
        crt = data[36+len(str(page)):-22].split()
        c = crt[0][:-1]
        r = int(crt[1][:-1])
        t = ""

        for st in range(2, len(crt)):
            t += crt[st] + " "

        cipher = [[c, r, t]]
        ptxt = normC(normR(cipher))[0][2]
        print(ptxt)
        s.send(str.encode(ptxt))
        count += 1
    data = s.recv(1024).decode("utf-8")
    print(data, end='')
    data = s.recv(1024).decode("utf-8")
    print(data, end='')

def normR(lis):
    newLis = []
    for s in lis:
        a = s[0]
        a += a[:s[1]]
        a = a[s[1]:]
        newLis += [[a, 0, s[2]]]
    return newLis

def normC(lis):
    alpha = "abcdefghijklmnopqrstuvwxyz"
    for s in lis:
        for i in range(26):
            s[2] = s[2].replace(s[0][i], alpha[i])
            s[0] = s[0].replace(s[0][i], alpha[i])
        for i in range(26):
            s[2] = s[2].replace(s[0][i], s[0][i].upper())
            s[0] = s[0].replace(s[0][i], s[0][i].upper())
    return lis

if __name__ == "__main__":
    nc()