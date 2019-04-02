from cryptography.fernet import Fernet
from SECRETS import FLAG
import os
import hashlib
import base64
import binascii

LIMIT = 130
xor = lambda x,y: ''.join([chr(a^b) for a,b in zip(x,y)])

def get_key(username, password):
    try:
        user = binascii.unhexlify(input('Username: '))
        pswd = binascii.unhexlify(input('Password: '))
    except:
        print('Invalid hex input!')
        return
    ux = xor(user, username)
    px = xor(pswd, password)
    if ux == px:
        key = base64.b64encode(hashlib.md5((user + pswd)).hexdigest().encode())
        print(key)
    elif ux > px:
        print('Incorrect username/password!')
    else:
        print('Incorrect password/username!')

def get_flag(ctxt):
    key = input('Enter key: ')
    try:
        f = Fernet(key)
        ptxt = f.decrypt(ctxt)
        print(ptxt.decode())
    except:
        print('Invalid key!')

def init():
    username = os.urandom(8)
    password = os.urandom(8)
    key = base64.b64encode(hashlib.md5((username + password)).hexdigest().encode())
    f = Fernet(key)
    ctxt = f.encrypt(FLAG.encode())
    print('Welcome to the service!')
    return username, password, ctxt

def print_menu():
    print('1. Get flag')
    print('2. Get key')
    print('3. Exit')
    choice = input('Enter your choice: ')
    return choice

def main():
    username, password, ctxt = init()
    counter = 0
    while counter < LIMIT:
        choice = print_menu()
        if choice == '1':
            get_flag(ctxt)
        elif choice == '2':
            get_key(username, password)
        else:
            break
        counter += 1
    if counter >= LIMIT:
        print('Max tries exceeded!')
    print('Exiting.')

if __name__ == "__main__":
    main()