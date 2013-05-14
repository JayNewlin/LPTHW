def array123(nums):

	if len(nums) < 3:
		return False

	else:
		n = 2

		while n <= (len(nums)-1):

			if nums[(n-2):(n+1)] == [1, 2, 3]:
				return True

			else:
				n += 1
		return False

print "array123([1, 1, 2, 3, 1]) is ", array123([1, 1, 2, 3, 1])
print "array123([1, 1, 2, 4, 1]) is ", array123([1, 1, 2, 4, 1])
print "array123([1, 1, 2, 1, 2, 3]) is ", array123([1, 1, 2, 1, 2, 3])
print "array123([1, 2, 3]) is ", array123([1, 2, 3])
print "array123([0, 0, 0]) is ", array123([0, 0, 0])
print "array123([1]) is ", array123([1])
print "array123([]) is ", array123([])
