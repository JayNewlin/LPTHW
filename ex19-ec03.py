# Written for Exercise 19, Extra Credit 3
import math
from sys import argv
script, initial_number_of_people = argv
number_of_people = int(initial_number_of_people)

def bus_calculator(current_number_of_people):
	buses_needed_today = int( math.ceil( int(current_number_of_people) / 47.0))
	print "We currently have %d people, and we need %d buses." % (current_number_of_people, buses_needed_today)

print "Hello! I'm a script designed to calculate how many 47-passenger buses we need each day."
print "\nOn Monday I use the number that you typed in on the comand line."
bus_calculator(number_of_people)

print "\nOn Tuesday, an extra 57 people want to ride the bus."
number_of_people = number_of_people + 57
bus_calculator(number_of_people)

Wed_absentees = raw_input("\nHow many people are not interested in riding the bus on Wednesday? ")
number_of_people = number_of_people - int(Wed_absentees)
bus_calculator(number_of_people)
