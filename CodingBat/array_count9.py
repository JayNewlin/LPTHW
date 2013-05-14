def array_count9(nums):
	n = 1
	counter = 0

	while n <= len(nums):

		if nums[n-1] == 9:
			counter += 1
			n += 1
		else:
			n += 1

	return counter

print "array_count9([1, 2, 9]) yields: ", array_count9([1, 2, 9])
print "array_count9([1, 9, 9]) yields: ", array_count9([1, 9, 9])
print "array_count9([1, 9, 9, 3, 9]) yields: ", array_count9([1, 9, 9, 3, 9])
print "array_count9([]) yields: ", array_count9([])