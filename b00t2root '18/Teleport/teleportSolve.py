from pwn import *

conn = remote('159.89.167.13', 1234)        # connect to the service


print conn.recvuntil('do:'),                # execute Get Flag()
print('3')
conn.send('3\n')
data = conn.recvline()
print data,
ctxt = data.split(' ')[3]                   # store the ciphertxt


print conn.recvuntil('do:'),                # execute Decrypt()
print('2')
conn.send('2\n')
print conn.recvuntil('ciphertext:'),        
print('a'*64)
conn.send('a'*64+'\n')                      # input dummy ciphertext
print conn.recvuntil('key:'),
print('\x80')
conn.send('\x80\n')                         # send a non-unicode character to cause an exception in Decrypt()
data = conn.recvuntil(']') 
print data,
key = data[13:-1].replace(',','')           # an empty array pointing to the actual key used during encryption of flag above is returned


print conn.recvuntil('do:'),                # execute Decrypt()
print('2')
conn.send('2\n')
print conn.recvuntil('ciphertext:'),        # enter the ciphertext obtained above
print ctxt,
conn.send(ctxt)
print conn.recvuntil('key:'),               # enter the key obtained above
print(key)
conn.send(key + '\n')

print conn.recvline(),                      # get the Flag ;)
conn.recv()
conn.send('4\n')
