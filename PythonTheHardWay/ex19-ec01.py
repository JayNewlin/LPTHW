# Modified for Exercise 19, Extra Credit 1: Add comments explaining the script.

# This first section defines (def) a function named "cheese_and_crackers," which has/needs two arguments: "cheese_count" and "boxes of crackers".
# The "work" of this function is to output four lines to the screen, using the function's arguments.
def cheese_and_crackers(cheese_count, boxes_of_crackers):
	print "You have %d cheeses!" % cheese_count
	print "You have %d boxes of crackers!" % boxes_of_crackers
	print "Man that's enough for a party!"
	print "Get a blanket.\n"


# Now the script outputs a description to the screen
print "We can just give the function numbers directly:"
# This line calls/runs/uses the "cheese_and_crackers" function, passing it two numbers:
#	- 20 for the cheese_count [first variable]
#	- 30 for the boxes_of_crackers [second variable]
# The function will receive these two numbers and output the four lines to the screen, using the numbers passed to the function's arguments.
cheese_and_crackers(20,30)


# The next line outputs a second description of what is happening within the script to the screen.
print "OR, we can use variables from our script:"
# These two lines create two new variables (amount_of_cheese and amount_of crackers) and set them to the numbers after the =.
amount_of_cheese = 10
amount_of_crackers = 50

# The next line calls/uses/runs cheese_and_crackers, passing it the two new variables as the arguments.
# The function will print the four lines again, using the two variables.
cheese_and_crackers(amount_of_cheese, amount_of_crackers)


# Yet one more line describing what's happening in the script.
print "We can even do math inside too:"
# Call the function, and pass it two numbers as the arguments, but the numbers this time are simmple addition formulae.
cheese_and_crackers(10 + 20, 5 +6)


# The last description of what's happening
print "And we can combine the two, variables and math:"
# Call cheese_and_crackers, passing it two "compound formulae":
# - cheese_count = amount_of_cheese [a variable established at Line 24 with a value of 10] plus 100
# - boxes_of_crackers = amount_of_crackers [established at Line 25 as 50]
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
