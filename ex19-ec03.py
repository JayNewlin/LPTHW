# Written for Exercise 19, Extra Credit 3
import math
from sys import argv
script, initial_number_of_people = argv
number_of_people = int(initial_number_of_people)

def people_per_bus(current_number_of_people):
	buses_needed_today = int( math.ceil( int(current_number_of_people) / 47.0))
	print "We currently have %d people, and we need %d buses." % (current_number_of_people, buses_needed_today)
	# print "We need %d buses." % 

print "Hello! I'm a script designed to calculate how many 47-passenger buses we need each day."
print "\nOn Monday I use the number that you typed in on the comand line."
people_per_bus(number_of_people)
