import sympy
from sympy.solvers import solve
from pwn import remote

def find(a):
    X = sympy.Symbol('X')
    left, right = a.split('=')
    eqn = left + '-(' + right + ')'
    try:
        sol = solve(eval(eqn), X)[0]
    except:
        sol = 0
    return str(eval(str(sol)))

def recv(sh):
    return sh.recvline().decode('ascii')[:-1]

def main():
    sh = remote('misc.chal.csaw.io', 9002)
    print(recv(sh)); print(recv(sh)); print(recv(sh)); print(recv(sh)); print(recv(sh)); print(recv(sh))
    i = 0
    while True:
        i += 1
        print(recv(sh))
        data = recv(sh)
        print(sh.recv().decode('ascii'))
        print(data)
        if 'flag' in data:
            break
        r = find(data)
        print(r)
        sh.sendline(r)
        print('Solved: ' + str(i))

if __name__ == '__main__':
    main()