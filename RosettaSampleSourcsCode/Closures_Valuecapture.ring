# Project :Closures_Value capture
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
x = funcs(7)
see x + nl

func funcs n
     fn = list(n)
     for i = 1 to n    
         fn[i] =i*i
     next 
     return fn      
 
