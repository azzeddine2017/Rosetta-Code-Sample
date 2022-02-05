# Project :Spinning rod animation_Text
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  load "stdlib.ring"
rod = ["|", "/", "-", "\"]
for n = 1 to len(rod)  
     see rod[n] + nl
     sleep(0.25)
     system("cls")
next 
