def centered_average(nums):
	nums.sort()
	nums.pop()
	nums.pop(0)
	total = 0
	for i in nums:
		total += i
	return total / len(nums)

print "centered_average([1, 2, 3, 4, 100]) = ", centered_average([1, 2, 3, 4, 100])
print "centered_average([1, 1, 5, 5, 10, 8, 7]) = ", centered_average([1, 1, 5, 5, 10, 8, 7])
print "centered_average([-10, -4, -2, -4, -2, 0]) = ", centered_average([-10, -4, -2, -4, -2, 0])
