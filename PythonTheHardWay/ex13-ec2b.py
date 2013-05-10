# Modified for Exercise 13, Extra Credit 2, second part (fewer arguments passed)
from sys import argv

script_name, first_arg, second_arg, third_arg, fourth_arg = argv

print "You just ran the %s script." % script_name
print "Your first variable is:", first_arg
print "Your second variable is:", second_arg
print "I also found two more arguments: %r and %r." % (third_arg, fourth_arg)