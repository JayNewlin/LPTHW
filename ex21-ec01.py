# Modified for Exercise 21, Extra Credit 1: Create a few functions and return values from them.
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

# These are my functions.
def user_name_cat(user_first_name, user_last_name):
	return user_first_name + " " + user_last_name

# def 



input_first_name = raw_input("What is your first name? ")
input_last_name = raw_input("What is your last name? ")
catted_username = user_name_cat(input_first_name, input_last_name)
print "Hi, %s!" % catted_username
print "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

print "Age: %d, Height: %d, Weight: %d, IQ: %d" % (age, height, weight, iq)


# A puzzle for the extra credit, type it in anyway.
print "Here is a puzzle."

what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

print "That becomes: ", what, "Can you do it by hand, %s?" % input_first_name
