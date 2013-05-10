# Modified for Exercise 30, Extra Credit 2: Change the numbers of cars, people, and buses.
# Modified several times but not saved/committed after each.
people = 50
cars = 40
buses = 40


if cars > people:
	print "We should take the cars."
elif cars < people:
	print "We should not take the cars."
else:
	print "We can't decide about taking cars."

if buses > cars:
	print "That's too many buses."
elif buses < cars:
	print "Maybe we could take the buses."
else:
	print "We can't decide about taking buses."

if people > buses:
	print "Alright, let's just take the buses."
else:
	print "Fine, let's stay home then."
	