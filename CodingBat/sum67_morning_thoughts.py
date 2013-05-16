def sum67(nums):
    total = 0
    while nums.count(6) > 0:
        print "nums is", nums, " and nums.count(6) is ", nums.count(6)
        for i in range(len(nums)):
            print "i is", i, " and nums[i] is", nums[i]
            if nums[i] == 6:
                print "Here I'm looking at nums", nums
                index_6 = i
                index_7 = (nums.index(7, i) + 1)
            else:
                pass

        print "Now index_6 is", index_6, " and index_7 is ", index_7
        del nums[index_6:index_7]

    print "Before summing, nums is", nums
    for j in nums:
        total += j

    return total


#print "sum67([1, 2, 2]) SB 5 is ", sum67([1, 2, 2])
#print "sum67([1, 2, 2, 6, 99, 99, 7]) SB 5 is", sum67([1, 2, 2, 6, 99, 99, 7])
#print "sum67([1, 1, 6, 7, 2]) SB 4 is ", sum67([1, 1, 6, 7, 2])
#print "sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2]) SB 8 is ", sum67([1, 1, 6, 4, 7, 2, 1, 1, 6, 4, 7, 2])
#print "sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 2, 7, 1, 6, 99, 99, 7])
#print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is ", sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
#print "sum67([2, 7, 6, 2, 6, 7, 2, 7]) SB 18 is ", sum67([2, 7, 6, 2, 6, 7, 2, 7])
#print "sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7]) SB 2 is", 
sum67([1, 6, 2, 6, 2, 7, 1, 6, 99, 99, 7])
