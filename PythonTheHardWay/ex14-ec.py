# Modified for Exercise 14 Extra Credit:
#	- Change the 'prompt' to something else.
#	- Add another argument and use it.
from sys import argv

script, user_name, company_name = argv
prompt = 'Please answer: '

print "Hi %s from %s! I'm the %s script." % (user_name, company_name, script)
print "I'd like to ask you a few questions."
print "Do you like me, %s from %s?" % (user_name, company_name)
likes = raw_input(prompt)

print "Where do you live, %s?" % user_name
lives = raw_input(prompt)

print "Where is %s located?" % company_name
company_location = raw_input(prompt)

print "What kind of computer do you have?"
computer = raw_input(prompt)

print "Did %s give you your %s computer?" % (company_name, computer)
company_gave_computer = raw_input(prompt)

print """
OK... so you said %r about liking me.
You live in %s. Yes, I think I know the area.
%s is in %s. You must have to fly to get there. That's a shame; there are closer companies, I'm sure.
Your %s computer? Meh. I've seen better.
""" % (likes, lives, company_name, company_location, computer)
