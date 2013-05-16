def count_evens(nums):
	count = 0
	for i in range(len(nums)):
		if nums[i-1] % 2 == 0:
			count += 1
	return count

print "count_evens([2, 1, 2, 3, 4]) = ", count_evens([2, 1, 2, 3, 4])
print "count_evens([2, 2, 0]) = ", count_evens([2, 2, 0])
print "count_evens([1, 3, 5]) = ", count_evens([1, 3, 5])
