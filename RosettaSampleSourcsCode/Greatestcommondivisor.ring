# Project :Greatest common divisor
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

 

see gcd (24, 32)
func gcd gcd, b
     while b
           c   = gcd
           gcd = b
           b   = c % b
     end
     return gcd
 
