# Project :Strip a set of characters from a string
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
aList = "She was a soul stripper. She took my heart!"
bList = "aei"
see aList + nl
see stripChars(aList,bList)

func stripChars cList, dList
     for n = 1 to len(dList)
         cList = substr(cList,dList[n],"") + nl
     next 
     return cList      
 
