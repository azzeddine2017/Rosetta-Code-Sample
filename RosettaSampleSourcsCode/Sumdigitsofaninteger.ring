# Project :Sum digits of an integer
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
see "sum digits of 1 = " + sumDigits(1) + nl
see "sum digits of 1234 = " + sumDigits(1234) + nl

func sumDigits n
     sum = 0
     while n > 0.5 
           m = floor(n / 10)
           digit = n - m * 10
           sum = sum + digit
           n = m
     end
     return sum
 
