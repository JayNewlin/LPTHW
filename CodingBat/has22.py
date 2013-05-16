def has22(nums):
    if nums.count(2) == 0:
        return False
    elif len(nums) < 2:
        return False
    elif len(nums) == 2:
        return nums[0] == 2 and nums[1] == 2
    else:
        i = 1
        while i <= (len(nums) - 2):
            if nums[i] == 2 and (nums[i+1] == 2 or nums[i-1] == 2):
                return True
                break
            else:
                i += 1
        return False

print "has22([1, 2, 2]) says ", has22([1, 2, 2])
print "has22([1, 2, 1, 2]) says ", has22([1, 2, 1, 2])
print "has22([2, 1, 2]) says ", has22([2, 1, 2])
print "has22([1, 3, 2, 2]) says ", has22([1, 3, 2, 2])
print "has22([2, 3, 2, 2]) says ", has22([2, 3, 2, 2])
print "has22([4, 2, 4, 2, 2, 5]) says ", has22([4, 2, 4, 2, 2, 5])
