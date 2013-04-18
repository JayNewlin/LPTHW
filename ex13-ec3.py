# Modified for Exercise 13, Extra Credit 4: Combine argv and raw_input
from sys import argv

script_name, user_name, arg_2 = argv

print "You just ran the %s script." % script_name
print "Hello, %s!" % user_name
user_age = raw_input('Please tell me your age. ')
print "In %d years, you'll be %d." % (int(arg_2), (int(user_age) + int(arg_2)))
