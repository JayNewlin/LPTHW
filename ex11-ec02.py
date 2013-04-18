# Modified for Exercise 11, Extra Credit 2: Find other ways to use raw_input() and try some of the samples.
user_name = raw_input('\nHi! I\'m Python. What\'s your name? ')
print "How old are you?",
age = raw_input ()
print "How tall are you?",
height = raw_input ()
print "How much do you weigh?",
weight = raw_input ()

print "So, %s, you're %r old, %r tall and %r heavy." % (
	user_name,age, height, weight)
	

favorite_tv_show = raw_input('\nWhat is the name of your favorite television program? ')
print "Wow, %s! That's great! I like %r, too!" % (user_name, favorite_tv_show)

number_to_play_with = int(raw_input('\nNow I\'m going to play with a number.\nWhat number would you like me to use? '))

print "Your number is %d." % number_to_play_with
print "When I multiply it by 7 I get %d." % (number_to_play_with * 7)
print "When I divide 178000 by %d I am left with a remainder of %d." % (number_to_play_with, (178000 % number_to_play_with)) 
print "Your number is represented as %o in octal." % number_to_play_with
print "It's %x in hex." % number_to_play_with
print "\n\nThanks for chatting with me, %s!\n\nGoodbye!\n"	% user_name
