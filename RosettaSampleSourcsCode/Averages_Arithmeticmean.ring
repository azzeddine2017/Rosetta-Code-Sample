# Project :Averages_Arithmetic mean
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  
nums = [1,2,3,4,5,6,7,8,9,10]
sum = 0
see "Average = " + average(nums) + nl

func average numbers
     for i = 1 to len(numbers)
         sum = sum + nums[i]
     next
     return sum/len(numbers)
 
