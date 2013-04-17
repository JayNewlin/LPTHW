# Exercise 5, Extra Credit 2: Try more format characters, especially %r
# I also decided to personalize it.
my_name ='Jay R. Newlin'
my_age = 48				# not a lie
my_height = 72 			# inches
my_weight = 190			# lbs - Personalized and optimized :-)
my_eyes = 'brown'
my_teeth = 'white'
my_hair = 'brown with flecks of gray around the temples'

print "Let's talk about %r." % my_name						# Experiment with %r instead of %s
print "He's %d inches tall." % my_height
print "He's %X pounds heavy (in hex)." % my_weight					# Weight expressed in hex
print "Actually that's not too heavy."
print "He's got %s eyes, and his hair is %s." % (my_eyes, my_hair)
print "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right
print "If I add %d, %d, and %d I get %o. (The total is in octal.)" % (
	my_age, my_height, my_weight, my_age + my_height + my_weight)	#Result of addition expressed in octal