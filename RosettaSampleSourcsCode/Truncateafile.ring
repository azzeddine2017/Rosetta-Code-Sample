# Project :Truncate a file
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
file = "C:\Ring\ReadMe.txt"
fp = read(file)
fpstr = left(fp, 100)
see fpstr + nl
write(file, fpstr)
 
