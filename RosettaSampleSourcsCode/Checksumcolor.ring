# Project :Checksumcolor
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
load "consolecolors.ring"

str   = "#0123456789ABCDEF"
color = [CC_FG_BLACK,CC_FG_DARK_RED,CC_FG_DARK_GREEN,CC_FG_DARK_YELLOW, CC_FG_DARK_BLUE, CC_FG_DARK_MAGENTA,
         CC_FG_DARK_CYAN,CC_FG_GRAY,CC_FG_DARK_GRAY,CC_FG_RED,CC_FG_GREEN,CC_FG_YELLOW,CC_FG_BLUE,
         CC_FG_MAGENTA,CC_FG_CYAN,CC_FG_WHITE,CC_BG_DARK_RED ]

for n = 1 to len(str)
    cc_print(color[n] | CC_FG_WHITE,str[n])
next
 
