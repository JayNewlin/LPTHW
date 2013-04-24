# Modified for Exercise 33 Extra Credit: Various modifications as specified by the Extra Credit
# Inspired by Extra Credit 3 and 4, I choose to ask the user for the starting number, increment, and top number.

def loop_function(starting_number, increment, top_number):
	i = starting_number
	numbers = []

	while i <= top_number:
		print "At the top i is %d" % i
		numbers.append(i)

		i += increment
		print "Numbers now: ", numbers
		print "At the bottom i is %d" % i


	print "The numbers: "

	for num in numbers:
		print num
	
print "Hello! I'm a script that creates a list of numbers according to your specifications."
user_start_number = int(raw_input("What number should I begin the series with? "))
user_top_number = int(raw_input("What number do you want this series to end with? "))
user_increment = int(raw_input("What increment shall I use (i.e., 'count by twos' would be 2; 'count by fives' would be 5)? "))
if ( (user_top_number - user_start_number) % user_increment) != 0:
	print "WARNING! %d will not be included in this sequence because I can't count from %d exactly to %d when counting by %ds!" % (user_top_number, user_start_number, user_top_number, user_increment)
	raw_input("Press Return to continue or Control-C to quit.")

loop_function(user_start_number, user_increment, user_top_number)
