# Project :10001th prime
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
load "stdlib.ring"
see "working..." + nl
num = 0 pr = 0 limit = 10001

while true
      num++
      if isprime(num) pr++ ok
      if pr = limit exit ok
end

see "" + num + nl + "done..." + nl
 
