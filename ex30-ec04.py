# Modified for Exercise 30, Extra Credit 4: Write comments to describe what the script does in plain English.
# First, set the variables to starting values.
people = 30
cars = 40
buses = 15


# Analyze "Are there more cars than people?"
if cars > people:
	# If there are more cars than people, output this line to screen.
	print "We should take the cars."
	# If there are not more cars than people, analyze "Are there fewer cars than people?"
elif cars < people:
	# If there are fewer cars than people, output this line to screen.
	print "We should not take the cars."
# If there are not more cars than people AND there are not fewer cars than people, output the next line to screen.
else:
	print "We can't decide."

# Analyze "Are there more buses than cars?"
if buses > cars:
	# If there are more buses than cars, print output this line to screen.
	print "That's too many buses."
# If there are not more buses than cars, analyze "Are there fewer buses than cars.?"
elif buses < cars:
	# If there are fewer buses than cars, output this line to screen.
	print "Maybe we could take the buses."
# If there are not more buses than cars AND theere are not fewer buses than cars, print the next line to screen.
else:
	print "We still can't decide."

# Analyze "Are there more people than buses?"
if people > buses:
	# If there are more people than buses, print this line to screen.
	print "Alright, let's just take the buses."
# If there are not more people than buses, output the next line to screen.
else:
	print "Fine, let's stay home then."
	