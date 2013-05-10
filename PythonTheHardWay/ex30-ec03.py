# Modified for Exercise 30, Extra Credit 3: More complex booleans
import math
people = 4
cars = 40
buses = 15
car_capacity = 4
bus_capacity = 40

# print "We only take the cars if we can fill the cars that we use to capacity."
print "We have %d people, %d cars, and %d %d-passenger buses." % (people, cars, buses, bus_capacity)
if (people > (cars * car_capacity) )  and (people > (buses * bus_capacity) ):
	print "We're in trouble. We don't have enough vehicles!"
elif people > (cars * car_capacity):
	print "We need %d buses." % math.ceil(people / float(bus_capacity) )
elif people > 4:
	print "We need %d cars." % math.ceil(people / float(car_capacity))
else:
	print "There are only %d of us. Why don't we just walk?" % people