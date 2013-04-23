# Modified for Exercise 21, Extra Credits 3 & 4: 
# 	- Modify the puzzle to make another value. (My choice: Make the result a positive number, greater than 1,  that is a float().
#	- Use the functions to get the new result.
def add(a, b):
	print "ADDING %d + %d" % (a, b)
	return a + b

def subtract(a, b):
	print "SUBTRACTING %d - %d" % (a, b)
	return a - b

def multiply(a, b):
	print "MULTIPLYING %d * %d" % (a, b)
	return a * b

def divide(a, b):
	print "DIVIDING %d / %d" % (a, b)
	return a / b


print "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

print "Age: %d, Height: %d, Weight: %d, IQ: %d" % (age, height, weight, iq)


# A puzzle for the extra credit, type it in anyway.
print "Here is a puzzle."

#Original formula
# what = add(age, subtract(height, multiply(weight, divide(iq, 2))))
what = divide(multiply(weight, add(age, iq)), float(subtract(height, 19)))

print "That becomes: ", what, "Can you do it by hand?"
