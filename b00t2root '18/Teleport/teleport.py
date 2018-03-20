import numpy as np
import random
import codecs
from SECRET import flag

def encrypt(ptxt):
    message = np.array([int(ord(c)) for c in ptxt])
    key = np.array(random.sample(range(0, 255), len(ptxt)))
    ctxt = (''.join([chr(a^b) for (a,b) in zip(message, key)])).encode('utf-8').hex()
    return ctxt

def decrypt(ctxt):
    try:
        inp = input('Enter the key: ').split(' ')
        try:
            key = np.array(list(map(int, inp)))
        except:
            print('Key should be an array of integers!')
            return
        ctxt = np.array([ord(c) for c in codecs.decode(ctxt, 'hex').decode()])
        ptxt = ''.join(np.array([chr(a^b) for (a,b) in zip(ctxt, key)]))
        return ptxt
    except:
        return np.empty((int(len(ctxt)/2)), dtype=np.int).tolist()

print('Welcome to The Most Secure Encryption/Decryption Service')

while True:
    print('1. Encrypt')
    print('2. Decrypt')
    print('3. Get Flag')
    choice = int(input(('What do you want to do: ')))

    if choice == 1:
        ptxt = input('Enter the message: ')
        ctxt = encrypt(ptxt)
        print('Ciphertext: ' + ctxt)
    elif choice == 2:
        ctxt = input('Enter the ciphertext: ')
        ptxt = decrypt(ctxt)
        print('Plaintext: ' + str(ptxt))
    elif choice == 3:
        ctxt = encrypt(flag)
        print('Encrypted Flag: ' + ctxt)
    else:
        break
