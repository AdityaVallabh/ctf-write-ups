# Message - 50

<b>I just typed this secret [message](./message.txt) with my new encoding algorithm.</b>

## Solution

The message consists of lowercase letters, a few digits, periods, commas and spaces. It starts out with `wsxcvasdfghrfvbnhyt...`. This string is a concatenation of `wsxcv`, `asdfgh`, `rfvbnhyt`. Why did I split the message in this way? Well, these letters are adjacent to each other in the `qwerty-style` keyboard layout.

We notice that these strings appear a lot of times in the message so looks like we need to substitute each one with something more meaningful. Now, if we trace out the motion of the letters on the keyboard, `wsxcv` looks like an `L`, `asdfgh` is probably `_` and `rfvbnhyt` looks like an `O`. Let's decrypt more and see what we get:
```
wsxcv       -> L
rfvbnhyt    -> O
mnbvcdrtghu -> R
wsxcde      -> ?
zaqwdrtgb   -> M

wsx         -> I
nbvcxswefr  -> ?
iuyhnbv     -> S
wsxcvfr     -> U
zaqwdrtgb   -> M

asdfgh, qwerty, zxcvbn -> _
```

Turns out our guess is right! Ignoring the underscores, the first two words are `LOR?M I?SUM` which is obviously the popular dummy text `LOREM IPSUM`!

Replacing the strings with the letters in this manner, we obtain the final decrypted message:

<pre>
LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY 
LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S, WHEN AN UNKNOWN PRINTER TOOK A GALLEY OF TYPE AND SCRAMBLED IT TO MAKE A TYPE SPECIMEN BOOK 
IT HAS SURVIVED NOT ONLY FIVE CENTURIES, BUT ALSO THE LEAP INTO ELECTRONIC TYPESETTING, REMAINING ESSENTIALLY UNCHANGED 
IT WAS POPULARISED IN THE 1960S WITH THE RELEASE OF LETRASET SHEETS CONTAINING LOREM IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE LIKE ALDUS PAGEMAKER INCLUDING VERSIONS OF LOREM IPSUM 
<b>DCTF{B66ECAAA90AD05DF5DAB33D71A8F70934408F3A5847A4C5C38DB75891B0F0E32}</b>LOREM IPSUM IS SIMPLY DUMMY TEXT OF THE PRINTING AND TYPESETTING INDUSTRY 
LOREM IPSUM HAS BEEN THE INDUSTRY'S STANDARD DUMMY TEXT EVER SINCE THE 1500S, WHEN AN UNKNOWN PRINTER TOOK A GALLEY OF TYPE AND SCRAMBLED IT TO MAKE A TYPE SPECIMEN BOOK 
IT HAS SURVIVED NOT ONLY FIVE CENTURIES, BUT ALSO THE LEAP INTO ELECTRONIC TYPESETTING, REMAINING ESSENTIALLY UNCHANGED 
IT WAS POPULARISED IN THE 1960S WITH THE RELEASE OF LETRASET SHEETS CONTAINING LOREM IPSUM PASSAGES, AND MORE RECENTLY WITH DESKTOP PUBLISHING SOFTWARE LIKE ALDUS PAGEMAKER INCLUDING VERSIONS OF LOREM IPSUM.
</pre>

And we have our flag:
**`DCTF{B66ECAAA90AD05DF5DAB33D71A8F70934408F3A5847A4C5C38DB75891B0F0E32}`**
