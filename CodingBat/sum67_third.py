def sum67(nums):
    total = 0
    if nums.count(6) == 0:
        for i in nums:
            total += i
        return total

    else:
        try:
            while (nums.index(7) > nums.index(6)):
                i = nums.index(6)
                j = nums.index(7)
                del nums[i:j+1]
        
        except:
            pass

        finally:
            for i in nums:
                total += i
            return total


print "sum67([1, 2, 2]) SB 5 is ", sum67([1, 2, 2])
print "sum67([1, 2, 2, 6, 99, 99, 7]) SB 5 is", sum67([1, 2, 2, 6, 99, 99, 7])
print "sum67([1, 1, 6, 7, 2]) SB 4 is ", sum67([1, 1, 6, 7, 2])
print "sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2]) SB 8 is ", sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2])
print "sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7])
print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
print "sum67([2, 7, 6, 2, 6, 7, 2, 7]) SB 18 is ", sum67([2, 7, 6, 2, 6, 7, 2, 7])
print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
