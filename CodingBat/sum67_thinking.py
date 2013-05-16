def sum67(nums):
    total = 0
#    print "nums.count(6) is %r and nums.index(6) is %r" % (nums.count(6), nums.index(6))
#    print "nums.count(7) is %r and nums.index(7) is %r" % (nums.count(7), nums.index(7))
    #, nums.count(7) is %r, nums.index(7) is %r, and nums.index(6) is %r" (nums.count('6'), nums.count('7'), nums.index('7'), nums.index('6'))

    try:
        while (nums.count(6) == nums.count(7)) and (nums.index(7) > nums.index(6)):
 #           print "I made it this far."
            i = nums.index(6)
            j = nums.index(7)
            del nums[i:j+1]
#            print "nums is now", nums 
    
            for i in nums:
#                print "Before adding, total is ", total
                total += i
            print "Section 1 total is ", total
            break

    except:
        for i in nums:
            total += i
            print "Section 2 total is ", total

    finally:
        print "finally total is ", total
        return total


#def popper(series, index_6, index_7):
#    print "series is %r, index_6 is %d, index_7 is %d" % (series, index_6, index_7)
#    for i in range(index_6, index_7):
#        print "Before popping, i is %d and series is currently %r" % (i, series)
#        del series[i]
#        print "After popping, series is ", series
#    return series

#print "sum67([1, 2, 2]) = ", sum67([1, 2, 2])
#print "sum67([1, 2, 2, 6, 99, 99, 7]) = ", sum67([1, 2, 2, 6, 99, 99, 7])
#print "sum67([1, 1, 6, 7, 2]) = ", sum67([1, 1, 6, 7, 2])
#print "sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2]) = ", 
sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2])
