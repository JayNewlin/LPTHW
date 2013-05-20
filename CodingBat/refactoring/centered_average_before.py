# Before refactoring
def centered_average(nums):
	nums.sort()
	nums.pop()
	nums.pop(0)
	total = 0
	for i in nums:
		total += i
	return total / len(nums)