# Project :Sum of a series
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

 
sum = 0
for i =1 to 1000
    sum = sum + 1 /(pow(i,2))
next
decimals(8)
see sum 
