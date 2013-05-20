def sum13(nums):
    total = 0
    i = 0
    r = len(nums)
    while i < r:
        if nums[i] == 13:
            i += 2
        else:
            total += nums[i]
            i += 1
    return total

print "sum13([1, 2, 2, 1]) is ", sum13([1, 2, 2, 1])
print "sum13([1, 1]) is ", sum13([1, 1])
print "sum13([1, 2, 2, 1, 13]) is ", sum13([1, 2, 2, 1, 13])
print "sum13([1, 2, 13, 2, 1, 13]) is ", sum13([1, 2, 13, 2, 1, 13])
print "sum13([13, 1, 2, 13, 2, 1, 13]) is ", sum13([13, 1, 2, 13, 2, 1, 13])

