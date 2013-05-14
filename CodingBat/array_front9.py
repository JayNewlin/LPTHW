def array_front9(nums):
	n = 1

	if len(nums) < 4:
		top_index = len(nums)
	else:
		top_index = 4

	while n <= top_index:

		if nums[n-1] == 9:
			return True
		else:
			n += 1

	return False

print "array_front9([1, 2, 9, 3, 4]) yields ", array_front9([1, 2, 9, 3, 4])
print "array_front9([1, 2, 3, 4, 9]) yields ", array_front9([1, 2, 3, 4, 9])
print "array_front9([1, 2, 3, 4, 5]) yields ", array_front9([1, 2, 3, 4, 5])
print "array_front9([1, 2, 3, 9, 5]) yields ", array_front9([1, 2, 3, 9, 5])
print "array_front9([1, 9, 2]) yields ", array_front9([1, 9, 2])
print "array_front9([9]) yields ", array_front9([9])
print "array_front9([0]) yields ", array_front9([0])
print "array_front9([]) yields ", array_front9([])
print "array_front9([1, 9]) yields ", array_front9([1, 9])
