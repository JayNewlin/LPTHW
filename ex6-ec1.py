# Modified for Exercise 6, Extra Credit 1: Add comments explaining each line of code.
#
# Lines 5-7 and 10 set a series of variables, all of which are strings.
# %d establishes the string '10' as a signed integer, decimal
x = "There are %d types of people." % 10
binary = "binary"
do_not = "don't"
# y is a concatenation using the two string variables above, represented as
# text strings.
y = "Those who know %s and those who %s." % (binary, do_not)

# The following two lines simply print the values in variables x and y to the screen.
print x
print y

# The next two lines cat x and y onto other (leading) strings, but single quotes
# are added to x by the %r string formatting indicator. The single quotes around y
# in the output are added "manually" by the code.
print "I said: %r" % x
print "I also said: '%s'," % y

# The next two lines establish two more variables. The first is an evaluation (TRUE/FALSE)
# and the second is text containing a string conversion type (%r).
hilarious = False
joke_evaluation = "Isn't that joke so funny?! %r"

# Now we print the above two variables to the screen, formatting 'hilarious' based on the %r
# "tucked into" 'joke_evaluation'.
print joke_evaluation % hilarious

# 32 and 33 establish two more string variables.
w = "This is the left side of..."
e = "a string with a right side."

# 36 prints the two sides of the statement by concatenating w and e using +
print w + e
