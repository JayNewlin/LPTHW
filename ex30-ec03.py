# Modified for Exercise 30, Extra Credit 3: More complex booleans
people = 30
cars = 40
buses = 15
car_capacity = 4
bus_capacity = 40


if people % car_capacity != 0:
	print "We should not take the cars. We should consider the buses."
	if people > (buses * bus_capacity):
		print "We're in trouble. We don't have enough buses!"
