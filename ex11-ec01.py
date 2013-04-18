# Modified for Exercise 11, standard Extra Credit: Use comments to describe the code.

# First, ask the user's age and store the input in the variable 'age'
print "How old are you?",
age = raw_input ()

# Similarly ask for height and weight and store them in appropriate variables.
print "How tall are you?",
height = raw_input ()
print "How much do you weigh?",
weight = raw_input ()


# Using %r formatting, respond to what the user said. Note that the output of this section reveals that raw_input() results in a string in the variable.
print "So, you're %r old, %r tall and %r heavy." % (
	age, height, weight)
