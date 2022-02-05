# Project :Permutations
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
load "stdlib.ring"

list = 1:4
lenList = len(list)
permut = []
for perm = 1 to factorial(len(list))
    for i = 1 to len(list)
        add(permut,list[i])
    next
    perm(list)
next
for n = 1 to len(permut)/lenList 
    for m = (n-1)*lenList+1 to n*lenList
        see "" + permut[m]
        if m < n*lenList
           see ","
        ok
    next
    see nl
next
 
func perm a
     elementcount = len(a)
     if elementcount < 1 then return ok
     pos = elementcount-1
     while a[pos] >= a[pos+1] 
           pos -= 1
           if pos <= 0 permutationReverse(a, 1, elementcount)
              return ok
     end
     last = elementcount
     while a[last] <= a[pos]
           last -= 1
     end
     temp = a[pos]
     a[pos] = a[last]
     a[last] = temp
     permReverse(a, pos+1, elementcount)
 
 func permReverse a, first, last
      while first < last
            temp = a[first]
            a[first] = a[last]
            a[last] = temp
            first += 1
            last -= 1
      end
 
