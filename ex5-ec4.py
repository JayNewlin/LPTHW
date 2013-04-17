# Exercise 5, Extra Credit 4: Create metric variables and express them.
# Still personalized, as in Extra Credit 2
# Removed octal and hex expressions used in Extra Credit 2
my_name ='Jay R. Newlin'
my_age = 48				# not a lie
my_height = 72 			# inches
my_weight = 190			# lbs - Personalized and optimized :-)
my_eyes = 'brown'
my_teeth = 'white'
my_hair = 'brown with flecks of gray around the temples'
# Height and weight converted to metric
weight_in_kilos = round((float(my_weight) * 0.453592), 2)
height_in_meters = round((float(my_height) * 0.0254), 2)

print "Let's talk about %s." % my_name
print "He's %f meters tall." % height_in_meters							#Needed %f, not %d
print "He weights %f kilograms." % weight_in_kilos
print "I think this is the number I'll tell people from now on."
print "He's got %s eyes, and his hair is %s." % (my_eyes, my_hair)
print "His teeth are usually %s (depending on how much coffee he drinks)." % my_teeth

# this line is tricky, try to get it exactly right
print "If I add %d, %f, and %f I get %f, a number that I might play tonight." % (
	my_age, height_in_meters, weight_in_kilos, my_age + height_in_meters + weight_in_kilos)