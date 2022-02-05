# Project :Split a character string based on change of character
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
see split("gHHH5YY++///\")

func split(s )
     c =left (s, 1)
     split = ""
     for i = 1 to len(s)
         d = substr(s, i, 1)
         if d != c
            split = split + ", "
            c = d 
         ok
         split = split + d 
     next
     return split 
 
