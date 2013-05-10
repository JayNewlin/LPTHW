# Modified for Exercise 39, Extra Credit 1 and 2
#	1. Take each function that is called and 'translate' it into what Python does.
#	2. Translate both forms of the function into plain English.

ten_things = "Apples Oranges Crows Telephones Light Sugar"

print "Wait there's not 10 things in that list, let's fix that."

# Can also be rendered stuff = (split(' ', ten_things)
# This function takes the string stored in ten_things and separates it into individual elements
# in list 'stuff'. The pslit between elements of the string/list occurs wherever split finds a 
# space (' ') in the string.
stuff = ten_things.split(' ')
more_stuff = ["Day", "Night", "Song", "Frisbee", "Corn", "Banana", "Girl", "Boy"]

while len(stuff) != 10:
	# This can be rendered as pop(more_stuff)
	# This function "pops" the last element off the 'stuff' list and stores it as next_one
	next_one = more_stuff.pop()
	print "Adding: ", next_one
	# This could be rendered as append(stuff, next_one)
	# This adds the new element, next_one, at the end of the string stuff
	stuff.append(next_one)
	print "There's %d items now." % len(stuff)

print "There we go: ", stuff

print "Let's do some things with stuff."

# This next command prints the second element (the element at index 1) of string stuff
print stuff[1]
# This next command prints the last element (the element at index -1, i.e. the furst element from the end) of string stuff
print stuff[-1]  # whoa! fancy
# This next element pops the last element off the string stuff and prints it. The element is removed from the string.
print stuff.pop()
# This command could be rendered join(' ', stuff)
# Python reads the string's elements, separates them with a space (' '), then prints them to the screen.
# Note that the result of the pop() above is that 'Corn' was removed and is not printed with this new output.
print ' '.join(stuff)  #what? cool!
# The following joins Element 3 and Element 4, separating them with a #. The '3:5' can be read as '3 to 5, not including 5'.
print '#'.join(stuff[3:5])  # super stellar!
