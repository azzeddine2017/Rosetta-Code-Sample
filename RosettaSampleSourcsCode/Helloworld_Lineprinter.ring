# Project :Hello world_Line printer
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
   lp = fopen("/dev/lp0","w")  fputs(lp,"Hello world!")  fclose(lp)
 
