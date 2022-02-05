# Project :Input loop
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
fp = fopen("C:\Ring\ReadMe.txt","r")

r = fgetc(fp)
while isstring(r)
      r = fgetc(fp)
      if r = char(10) see nl
      else see r ok
end
fclose(fp)

 
