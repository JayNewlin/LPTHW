# After refactoring
def centered_average(nums):
	max_num = max(nums)
	min_num = min(nums)
	total = sum(nums)
	return (total - max_num - min_num) / (len(nums) - 2)


print "centered_average([1, 2, 3, 4, 100]) = ", centered_average([1, 2, 3, 4, 100])
print "centered_average([1, 1, 5, 5, 10, 8, 7]) = ", centered_average([1, 1, 5, 5, 10, 8, 7])
print "centered_average([-10, -4, -2, -4, -2, 0]) = ", centered_average([-10, -4, -2, -4, -2, 0])
