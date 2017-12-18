#!/usr/bin/python3

import socket

# The main method
def main():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect(("capoditutticapi01.3dsctf.org", 8001))   # Connect to host
    data = s.recv(1024).decode("utf-8")
    print(data, end='')
    s.send(str.encode("start"))
    print("start")

    # Iterate through the Pages
    for _ in range(10):
        data = s.recv(1024).decode("utf-8")
        print(data, end='')
        data = s.recv(1024).decode("utf-8")             # Get the question
        print(data, end='')
        crt = extractTuple(data)                        # Get the tuple [c, r, t]
        ptxt = substituteCipher(caesarShift(crt))[2]    # Apply decryption algo
        print(ptxt)
        s.send(str.encode(ptxt))                        # Send the answer

    data = s.recv(1024).decode("utf-8")
    print(data, end='')
    data = s.recv(1024).decode("utf-8")                 
    print(data, end='')                                 # Print the flag

# The ROT() function
def caesarShift(s):
    a = s[0]
    a += a[:s[1]]
    a = a[s[1]:]
    return [a, 0, s[2]]

# The Substitution function
def substituteCipher(s):
    alpha = "abcdefghijklmnopqrstuvwxyz"
    for i in range(26):
        s[2] = s[2].replace(s[0][i], alpha[i])
        s[0] = s[0].replace(s[0][i], alpha[i])
    for i in range(26):
        s[2] = s[2].replace(s[0][i], s[0][i].upper())
        s[0] = s[0].replace(s[0][i], s[0][i].upper())
    return s

# Extract the tuple from the data reeceived
def extractTuple(text):
    crt = text.split("[c, r, p]: [",2)[1]               # Get the tuple part
    crt = crt.split("]")[0].split(", ", 2)              # Get the c, r, p values
    crt[1] = int(crt[1])                                # Typecast r
    return crt

if __name__ == "__main__":
    main()
    