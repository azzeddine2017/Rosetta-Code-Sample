# Project :N-queens problem
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

 
// Bert Mariani 2020-07-17
 
See "Enter value of N : "  Give n             // Ask User for Size of Board
n = 0 + n
x = 1:n
See "Possible placements: Value as Column of the Row "+ nl
 
nQueen(1,n)          //===>>>  START
 
See nl+ nl+"Enter to Exit program: "  Give m       // To Exit CMD window
 
//================================
// Returns true only and only if two queens can be placed in same row or column
 
Func Place(k,i)
 
   for j = 1 to k-1 
      if( x[j] = i   OR                  //two queens in same row
         fabs(x[j]-i) = fabs(j-k) )     //two queens in same diagonal     
         return 0;
      ok
   next
 
return 1;
 
//================================
 
Func nQueen(k,n)
 
   for i = 1 to n    
      if(place(k,i))        //===>>>  Call   
         x[k] = i       
         if(k=n)
            See nl
            for i = 1 to n
               See " "+ x[i]
            next       
         else
            nQueen(k+1,n)   //===>>>  RECURSION
         ok
      ok
   next
 
return
 
//================================
 
 