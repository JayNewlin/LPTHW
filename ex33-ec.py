# Modified for Exercise 33 Extra Credit: Various modifications as specified by the Extra Credit
def loop_function():
	i = 0
	numbers = []

	while i < 6:
		print "At the top i is %d" % i
		numbers.append(i)

		i = i + 1
		print "Numbers now: ", numbers
		print "At the bottom i is %d" % i


	print "The numbers: "

	for num in numbers:
		print num
	
loop_function()
