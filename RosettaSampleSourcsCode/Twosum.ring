# Project :Two sum
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
# Project : Two Sum

numbers = [0, 2, 11, 19, 90]
sum = 21

see "order list: "          
for n=1 to len(numbers)
    see " " + numbers[n] 
next
see " (using a zero index.)" + nl
for n=1 to len(numbers)
    for m=n to len(numbers)
        if numbers[n] + numbers[m] = sum
           see "target sum:  " + sum + nl
           see "a solution: ["
           see  "" + (n-1) + " " + (m-1) + "]" + nl
        ok
    next
next 
 
