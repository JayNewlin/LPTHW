# Modified for Exercise 33 Extra Credit: Various modifications as specified by the Extra Credit
def loop_function(top_number):
	i = 0
	numbers = []

	while i < top_number:
		print "At the top i is %d" % i
		numbers.append(i)

		i = i + 1
		print "Numbers now: ", numbers
		print "At the bottom i is %d" % i


	print "The numbers: "

	for num in numbers:
		print num
	
print "\nDoing my loop function for 8 elements:"
loop_function(8)

print "\nNow doing the loop function for 5 elements:"
loop_function(5)

print "\nLastly, doing my loop function for 12 elements:"
loop_function(12)
