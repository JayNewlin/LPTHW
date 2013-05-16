def sum67(nums):
    total = 0
    while nums.count(6) > 0:
        index_first_6 =  nums.index(6)
        index_next_7 = nums.index(7, index_first_6)
        index_to_del = index_next_7 + 1
        del nums[index_first_6:index_to_del]

    for j in nums:
        total += j

    return total


print "sum67([1, 2, 2]) SB 5 is ", sum67([1, 2, 2])
print "sum67([1, 2, 2, 6, 99, 99, 7]) SB 5 is", sum67([1, 2, 2, 6, 99, 99, 7])
print "sum67([1, 1, 6, 7, 2]) SB 4 is ", sum67([1, 1, 6, 7, 2])
print "sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2]) SB 8 is ", sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2])
print "sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7])
print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
print "sum67([2, 7, 6, 2, 6, 7, 2, 7]) SB 18 is ", sum67([2, 7, 6, 2, 6, 7, 2, 7])
print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
