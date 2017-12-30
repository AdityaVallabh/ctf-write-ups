
addXor=lambda x,y:x+(y^21)
printResult = {False: lambda: print('Almost!!'), True: lambda: print('Correct!')}

# l = reverse of the given list
l = [160,155,208,160,190,215,237,134,210,126,212,222,224,238,128,240,164,213,183,192,162,178,163,162][::-1]


def check(flag):

    if 'mo4r' in flag and '34C3_' in flag and flag.split('_')[3] == 'tzzzz':
        revFlag = flag[::-1]
        ascFlag = list(map(ord,flag))
        ascRevFlag = list(map(ord,flag))

        if [addXor(*pair) for pair in zip(ascFlag, ascRevFlag)] == l:
            return True

    return False

flag = input()
printResult[check(flag)]()
