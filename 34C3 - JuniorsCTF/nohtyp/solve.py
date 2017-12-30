import hashlib
import string

l = [160, 155, 208, 160, 190, 215, 237, 134, 210, 126, 212, 222, 224, 238, 128, 240, 164, 213, 183, 192, 162, 178, 163, 162][::-1]
#l = [162, 163, 178, 162, 192, 183, 213, 164, 240, 128, 238, 224, 222, 212, 126, 210, 134, 237, 215, 190, 160, 208, 155, 160]

# returns a list of flags containing the given substr
def getFlags(flag, substr):
    flags = []
    for i in range(24 - len(substr)):
        tmp = ""
        for j in range(len(substr)):
            tmp += chr((l[i+j]-ord(substr[j]))^21)
        if all(c in string.printable and c not in string.whitespace for c in tmp):
            tmp = tmp[::-1]
            tmpIdx = 23-i-len(tmp)+1
            
            newFlag = list(flag)
            newFlag[i:i+len(substr)] = list(substr)
            newFlag[tmpIdx:tmpIdx+len(substr)] = list(tmp)
            newFlag = ''.join(newFlag)

            flags += [newFlag]
    return flags

# returns a list of possible pairs of chars at given index
def findPairs(idx):
    pairs = []
    for i in range(128):
        j = (l[idx]-i)^21
        if (l[23-idx]-j)^21 == i:
            pairs += [[chr(i),chr(j)]]
    return pairs

# computes the md5sum of given file
def md5(fname):
    hash_md5 = hashlib.md5()
    with open(fname, "rb") as f:
        for chunk in iter(lambda: f.read(4096), b""):
            hash_md5.update(chunk)
    return hash_md5.hexdigest()

# method to find letters at index 10, 11, 12, 13
def bruteForce(flag): 

    msg = list(flag)
    p1 = findPairs(10)
    p2 = findPairs(11)

    for i in p1:
        msg[10] = i[0]
        msg[13] = i[1]
        for j in p2:
            msg[11] = j[0]
            msg[12] = j[1]
            flag = ''.join(msg) + '\n'
            with open("tmp","w") as f:
                f.write(flag)
            if md5("tmp") == "5a76c600c2ca0f179b643a4fcd4bc7ac":
                print('\nFlag found: ' + flag)
                return True

    return False

def main():
    flag = '*'*24
    subs = []

    # flag should contain '34C3_'
    flags1 = getFlags(flag, "34C3_")
    subs += ['34C3_', 'tzzzz']

    # discard flags not having both '34C3_' and 'tzzzz'
    flags1 = list(filter(lambda f: all(sub in f for sub in subs), flags1))
    print('flags1 = ' + str(flags1))

    for flag1 in flags1:
        # flag should contain 'm04r'
        flags2 = getFlags(flag1, "mo4r")
        subs += ['mo4r']

        # discard flags not having any of '34C3_', 'tzzzz' and 'mo4r'
        flags2 = list(filter(lambda f: all(sub in f for sub in subs), flags2))
        print('flags2 = ' + str(flags2))

        for flag2 in flags2:
            # flag should contain totally 3 undersores, 2 we already have
            flags3 = getFlags(flag2, "_")

            # discard flags not having any of '34C3_', 'tzzzz' and 'mo4r' and discard those not having 3 underscores
            flags3 = list(filter(lambda f: all(sub in f for sub in subs), flags3))
            flags3 = list(filter(lambda f: f.count('_') == 3, flags3))
            print('flags3 = ' + str(flags3))
            for flag3 in flags3:                
                # bruteforce remaining characters (only 4 left at this stage)
                if bruteForce(flag3):
                    return

if __name__ == '__main__':
    main()
