
import itertools

def dec(ctxt, key):
    groups = []
    i = 0

    # split the ctxt into 8 groups
    for k in range(8):
        grp = []
        tmp = 0
        if key[k] < len(ctxt)%8: tmp = 1
        for j in range(int(len(ctxt)/8) + tmp):
            grp += [ctxt[i+j]]
        groups += [grp]
        i += j+1
    
    # arrange the letters wrt key
    m = ['*']*len(ctxt)
    for k in range(8):
        i = 0
        for j in range(key[k], len(ctxt), 8):
            m[j] = groups[k][i]
            i += 1

    return ''.join(m)

ctxt = "03_duCbr5e_i_rY_or cou14:L4G f313_Th_etrph00 Wh03UBl_oo?n07!_e"
allPossibleKeys = list(itertools.permutations([0, 1, 2, 3, 4, 5, 6, 7]))
print('Possible Flags: ')

# bruteforce the key
for key in allPossibleKeys:
    m = dec(ctxt, key)
    m = dec(m, key)
    if "34C3_" in m:
        print(m)
