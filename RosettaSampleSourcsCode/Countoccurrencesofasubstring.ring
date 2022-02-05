# Project :Count occurrences of a substring
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

aString = "Ring Welcome Ring to the Ring Ring Programming Ring Language Ring"
bString = "Ring"
see count(aString,bString)
 
func count cString,dString
     sum = 0
     while substr(cString,dString) > 0
           sum++
           cString = substr(cString,substr(cString,dString)+len(string(sum)))
     end
     return sum
