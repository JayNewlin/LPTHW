# Modified from Extra Credit script for Exercise 33, Extra Credit 5: Use for-loops and range instead of the while loop

def loop_function(starting_number, increment, top_number):
	numbers = []

	for x in range(starting_number, (top_number + 1), increment):
		print "At the start of my function, x is %d" % x
		if x <= top_number:
			numbers.append(x)
			print "Numbers now: ", numbers
			print "At the bottom x is %d" % x

		else:
			pass	


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
