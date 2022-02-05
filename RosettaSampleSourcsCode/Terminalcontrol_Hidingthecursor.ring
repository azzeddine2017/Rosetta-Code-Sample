# Project :Terminal control_Hiding the cursor
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
# Project : Terminal control/Hiding the cursor

load "stdlib.ring"
# Linux 
? "Hide Cursor using tput utility"
system("tput civis")     # Invisible
sleep(10)
? "Show Cursor using tput utility"
system("tput cnorm")   # Normal
 
