# Project :Formatted numeric output
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
decimals(3)
see fixedprint(7.125, 5) + nl

func fixedprint num, digs
     for i = 1 to digs - len(string(floor(num)))
         see "0"
     next
     see num + nl 
 
