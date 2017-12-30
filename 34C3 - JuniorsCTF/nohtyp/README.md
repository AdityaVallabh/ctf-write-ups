# nohtyp - easy

<b>We love [snakes](./nohtyp.py). </b>

Hints:
```
    $ cat flag | md5sum

    5a76c600c2ca0f179b643a4fcd4bc7ac
```

## Solution

The question looks very daunting with everything written in a single line and variable names consisting of only underscores.
So let's edit it first by splitting it into multiple lines.

#Edit 1
![edit1](./images/edit1.png)

Now let's give the variables some meaningful names and convert the hex values to normal characters.

#Edit 2
![edit2](./images/edit2.png)

After reorganizing the code and cleaning it up a bit, we get the following:

#Edit 3
![edit3](./images/edit3.png)

[Here's](./modified.py) the more readable version of the question.

The script is accepting user input as the flag and checking if it contains these strings:

1)`34C3_`

2)`mo4r`

3)`tzzzz`

Moreover the `split('_')[3]` implies there must be 3 underscores. Along with these checks, the script is performing the `addXor()` function on the flag and reverse(flag) and checking if this list of values is equal to the reverse of a list of numbers (given by `l` in the above image).

Now we can check the strings (1), (2), (3) stated above at each position of the flag and perform the reverse of the `addXor()` function by using the corresponding values from `l` and deduce the flag step by step.

Following these steps, we'll end up with something like `34C3_mo4r_****4kes_tzzzz`. We can simply bruteforce the remaining 4 characters and check if the flag's md5 matches with `5a76c600c2ca0f179b643a4fcd4bc7ac`.

The bruteforce and md5 check might require a script, but the previous steps can be done manually. Here's a snippet of the reverse of `addXor()` function for generating possible pairs of characters in the flag:
```
def findPairs(idx):
    pairs = []
    for i in range(128):
        j = (l[idx]-i)^21
        if (l[23-idx]-j)^21 == i:
            pairs += [[chr(i),chr(j)]]
return pairs
```

However I automated everything in my script and here's the flag it gave: `34C3_mo4r_schn4kes_tzzzz`

<b>Script: [solve.py](./solve.py)</b>
