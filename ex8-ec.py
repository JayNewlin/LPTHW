# Modified for Exercise 8, Extra Credit:
#	- Current printing and string exercises require comments at each line as an extra credit.
# 	- Exercise 8, Extra Credit 2 asks about the last line of output.

# Line 7 establishes a variable called 'formatter', which is a string variable
# containing four %r placeholders. %r converts the object passed to it using repr().
formatter = "%r %r %r %r"

# Line 10 passes four digits, 1 through 4, to the 'formatter'. Each will be outputted with single quotes around it.
print formatter % (1, 2, 3, 4)
# Line 12 passes the words "one" through "four" to the 'formatter'. Since they are text strings, it will also output them each enclosed in single quotes.
print formatter % ("one", "two", "three", "four")
# Line 15 passes four Booleans to the formatter. %r just outputs them as "themselves" without single quotes.
# They are not strings, even though they might "look like" strings. They are Boolean Operators.
print formatter % (True, False, False, True)
# Line 18 passes 'formatter' "to itself," but the formatter variable/function outputs the exact string four times, each enclosed in double quotes,
# since %r reads the variable and converts it back into a string.
print formatter % (formatter, formatter, formatter, formatter)
# In this last section, four separate strings are passed to the formatter. Since they are all contained within a single set of parentheses, they are all analyzed as the four elements (strings) that 'formatter' is expecting.
# They output one right after the other on-screen because that is how 'formatter' is set up (as all the above strings came out).
# The third string ("But it didn't sing.") outputs on-screen with *DOUBLE QUOTES* around it because a single quote is included inside the string itself.
# The statement at Line 21 answers Exercise 8, Extra Credit 2.
print formatter % (
	"I had this thing.",
	"That you could type up right.",
	"But it didn't sing.",
	"So I said goodnight."
	)
