# Project :Determine if a string has all the same characters
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
nputStr = ["","   ","2","333",".55","tttTTT","4444 444k"]

for word in inputStr
    for x = 1 to len(word)
        for y = x + 1 to len(word)
            if word[x] != word[y]
               char = word[y]
               ? "Input = " + "'" + word + "'" + ", length = " + len(word)
               ? " First difference at position " + y + ", character = " + "'" + char + "'"
               loop 3
            ok
        next
    next

    ? "Input = " + "'" + word + "'" + ", length = " + len(word)
    ? "  All characters are the same."
next
 
