import random


def encrypt(msg, key):
    keylen = len(key)
    k = [x[1] for x in sorted(zip(key[:keylen], range(keylen)))]

    m = ''
    for i in k:
        for j in range(i, len(msg), keylen):
            m += msg[j]

    return m



m = input()
while True:
    k = [random.randrange(256) for _ in range(16)]  # generate 2 keys
    if len(k) == len(set(k)):
        break

m = encrypt(m, k[:8])
m = encrypt(m, k[:8])

print(m)

