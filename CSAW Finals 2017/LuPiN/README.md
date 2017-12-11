# Crypto-200 LuPiN

### A post-quantum cryptosystem solvable by LayPersoNs. <br />
#### Script: [lpn_chal.py](./lpn_chal.py) <br />
#### Solution: [solve.py](./solve.py) <br /> <br />
#### The LPN Problem
The question sure does look daunting at first look. And it gets scarier when you realize that LuPiN points to the Learning Parity with Noise (LPN) problem which is conjectured to be a "hard" problem and apparently doesn't even succumb to quantum algorithms! However, no worries. This challenge seems to implement a simpler, modified version of the LPN problem making it easier to crack. <br />
#### Solution
So we're given the base64 of serialized matrices A, B, u and c. At first glance, we realize the encoding is done with a public key (A, B) and in order to decrypt the message, we require the secret key. So we either have to crack the secret key from the given parameters or somehow reverse the equations and get back the original message without it. <br />
If you look at the encryption method- MultiBitEnc(), two equations stand out.
```
1) u = f.T.dot(A) % 2
2) c = (f.T.dot(B) + np.array(v+[0]*(n-len(v))).T) % 2
```
Equation (2) is roughly,
```
3) c = f.T.dot(B) + v
```
In this equation, we know the matrices c and B. Whereas f and v are unknowns and v contains the flag. Now f can be obtained from equation (1) as we know A and u. <br />
Therefore rewriting the equations gives:
```
4) fT = u.dot(np.linalg.pinv(A)) % 2          // fT = u.dot(inv(A))
5) v = (c - fT.dot(B)) % 2
```
That's it! That's all we need for cracking this question! It's just simple math! <br />
Since nc doesn't work now that the contest is over, you can run the script against lpn_chal.py and my sim_nc() method would do that for you. <br />
Now, the outputs of lpn_chal.py were printed using the repr() method and a quick Google search reveals the reverse of it is literal_eval() and deserializing would give us back the original matrices. Plugging the values into our equations (4) and (5) and unpacking v gives:<br />
#### `flag{gl4d_y0u_d1d_n0t_turn_1nt0_a_w4r3w0lf}` <br />
However, the decryption might have to be attempted multiple times (so be patient :P) probably due to excess "noise" created during encryption (Not exactly sure, would be glad to know why). <br />
