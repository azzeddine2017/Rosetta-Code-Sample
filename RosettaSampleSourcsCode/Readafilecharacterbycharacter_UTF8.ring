# Project :Read a file character by character_UTF8
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
fp = fopen("C:\Ring\ReadMe.txt","r")
r = fgetc(fp)
while isstring(r)
      r = fgetc(fp)
      see r
end
fclose(fp)
 
