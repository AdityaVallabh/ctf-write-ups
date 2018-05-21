
import itertools
from pwn import remote
from hashlib import sha256
import string
from itertools import permutations, izip
from random import shuffle

# helper function for the cows and bulls game
def parse_score(score):
    score = score.strip().split(', ')
    return tuple(int(s.strip()) for s in score)

# helper function for the cows and bulls game
def scorecalc(guess, chosen):
    bulls = cows = 0
    for g,c in izip(guess, chosen):
        if g == c:
            bulls += 1
        elif g in chosen:
            cows += 1
    return bulls, cows

# keep trying until you find the flag
while True:
    try:
        sh = remote("149.28.139.172", 10002)
        data= sh.recvline()[:-1]
        print(data)
        text, hash = data.split(' == ')
        text = text[12:-1]
        alpha = string.uppercase + string.lowercase + string.digits
        print('Bruteforcing input...')
        pos = map(''.join, itertools.product(alpha, repeat=4))
        
        # bruteforce all possibilities
        for x in pos:
            if sha256(x + text).hexdigest() == hash:
                print('Match found: sha256(%s) == %s' % (x+text, hash))
                print(sh.recvuntil(':'))
                print(x)
                sh.send(x+'\n')
                break

        # start playing the cows and bulls game
        digits = '0123456789'
        size = 4
        
        for _ in range(8):
            print(sh.recvuntil('6 times\n'))
            choices = list(permutations(digits, size))
            shuffle(choices)
            answers = []
            scores  = []
            while True:
                ans = choices[0]
                answers.append(ans)
                print(' '.join(ans))
                sh.send(' '.join(ans)+'\n')
                data = sh.recvline()
                print(data)
                if 'You got it!' in data:
                    break
                score = data[-5:-1]
                score = parse_score(score)
                scores.append(score)
                found =  score == (size, 0)
                choices = [c for c in choices if scorecalc(c, ans) == score]

        # get the flag
        print(sh.recv())
        break
    except EOFError:
        print('\nFailed. Attempting again...\n')
        