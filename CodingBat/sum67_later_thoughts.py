def sum67(nums):
    total = 0
#    print "nums.count(6) is ", nums.count(6)
#    print "nums.count(7) is ", nums.count(7)
    if nums.count(6) == 0:
#        print "I'm working in the first counting loop"
        for i in nums:
            total += i
        return total
#        break

    else:                       # (nums.count(6) == nums.count(7)) and nums.count(6) > 0:
        try:
            while (nums.index(7) > nums.index(6)):              # (nums.count(6) == nums.count(7)) and 
#                print "I'm working in the while loop"
                i = nums.index(6)
                j = nums.index(7)
                del nums[i:j+1]
        
        except:
 #           print "I landed in except"
            pass


        finally:
#            print "This is finally"
#            print "After trimming, nums is ", nums
            for i in nums:
                total += i
            return total


#            return total
    
#    else:
#        print "I'm working in the else"
#        for i in nums:
#            total += i
#        return total

print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) = ", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])

