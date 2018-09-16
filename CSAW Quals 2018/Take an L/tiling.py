
from pwn import remote

sol = ''

def get_quad(n,o,p):
    if p[0]-o[0] < n/2 and p[1]-o[1] < n/2:
        return 1
    if p[0]-o[0] < n/2 and p[1]-o[1] >= n/2:
        return 2
    if p[0]-o[0] >= n/2 and p[1]-o[1] < n/2:
        return 3
    if p[0]-o[0] >= n/2 and p[1]-o[1] >= n/2:
        return 4

def fill_tiles(n, o, p):
    assert (p[0]-o[0] < n and p[1]-o[1] < n)
    global sol
    if n == 2:
        blocks = [
            (o[0], o[1]),
            (o[0]+1, o[1]),
            (o[0], o[1]+1),
            (o[0]+1, o[1]+1)
        ]
        l = []
        for block in blocks:
            if not block == p:
                l.append(block)
        sol += '({},{}), ({},{}), ({},{})\n'.format(l[0][0],l[0][1], l[1][0],l[1][1], l[2][0],l[2][1])
        return

    quad = get_quad(n,o,p)
    o1 = o
    o2 = (o[0],o[1]+n/2)
    o3 = (o[0]+n/2,o[1])
    o4 = (o[0]+n/2,o[1]+n/2)

    p1 = (o[0]+n/2-1, o[1]+n/2-1)
    p2 = (o[0]+n/2-1, o[1]+n/2)
    p3 = (o[0]+n/2, o[1]+n/2-1)
    p4 = (o[0]+n/2, o[1]+n/2)

    if quad == 1:
        sol += '({},{}), ({},{}), ({},{})\n'.format(p2[0],p2[1], p3[0],p3[1], p4[0],p4[1])
        fill_tiles(n/2, o1, p)
        fill_tiles(n/2, o2, p2)
        fill_tiles(n/2, o3, p3)
        fill_tiles(n/2, o4, p4)
    elif quad == 2:
        sol += '({},{}), ({},{}), ({},{})\n'.format(p1[0],p1[1], p3[0],p3[1], p4[0],p4[1])
        fill_tiles(n/2, o1, p1)
        fill_tiles(n/2, o2, p)
        fill_tiles(n/2, o3, p3)
        fill_tiles(n/2, o4, p4)
    elif quad == 3:
        sol += '({},{}), ({},{}), ({},{})\n'.format(p1[0],p1[1], p2[0],p2[1], p4[0],p4[1])
        fill_tiles(n/2, o1, p1)
        fill_tiles(n/2, o2, p2)
        fill_tiles(n/2, o3, p)
        fill_tiles(n/2, o4, p4)
    elif quad == 4:
        sol += '({},{}), ({},{}), ({},{})\n'.format(p1[0],p1[1] ,p2[0],p2[1], p3[0],p3[1])
        fill_tiles(n/2, o1, p1)
        fill_tiles(n/2, o2, p2)
        fill_tiles(n/2, o3, p3)
        fill_tiles(n/2, o4, p)


sh = remote('misc.chal.csaw.io', 9000)
print(sh.recvuntil('dimensions '))
n = int(sh.recvline().split('x')[0])
print(sh.recvuntil(': '))
p = eval(sh.recvline())

sol = ''
fill_tiles(n, (0,0), p)
for tile in sol.split('\n')[:-1]:
    print(tile)
    sh.sendline(tile)
print(sh.recv())

