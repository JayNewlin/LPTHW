# Example 4, Extra Credit 3
# Establish variables up front
# How many cars are available?
cars = 100
# How many people fit in each car?
space_in_a_car = 4.0
# How many drivers do we have?
drivers = 30
# How many passengers are there?
passengers = 90
# How many cars aren't being driven today? Do the math that sets this variable.
cars_not_driven = cars - drivers
# Establish a variable called "cars_driven" because it's easier to remember than remembering
# "the number of cars driven is always the same as the number of drivers."
cars_driven = drivers
# Calculate the total capacity of the cars in use today.
carpool_capacity = cars_driven * space_in_a_car
# Determine the average number of people needed per car.
average_passengers_per_car = passengers / cars_driven


print "There are", cars, "cars available."
print "There are only", drivers, "drivers available."
print "There will be", cars_not_driven, "empty cars today."
print "We can transport", carpool_capacity, "people today."
print "We have", passengers, "to carpool today."
print "We need to put about", average_passengers_per_car, "in each car."