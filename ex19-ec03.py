# Written for Exercise 19, Extra Credit 3
import math
from sys import argv
script, initial_number_of_people = argv
number_of_people = int(initial_number_of_people)

def bus_calculator_cap47(current_number_of_people):
	buses_needed_today = int( math.ceil( int(current_number_of_people) / 47.0))
	print "We currently have %d people, and we need %d buses." % (current_number_of_people, buses_needed_today)

def bus_calculator(current_number_of_people, bus_capacity):
	buses_needed_today = int (math.ceil( float(current_number_of_people) / float(bus_capacity) ) )
	print "We currently have %d people, and we need %d buses." % (current_number_of_people, buses_needed_today)

print "Hello! I'm a script designed to calculate how many buses we need each day."
print "We start the week with 47-passenger buses.\nOn Monday I use the number that you typed in on the comand line as the initial number of riders."
bus_calculator_cap47(number_of_people)

print "\nOn Tuesday, an extra 57 people want to ride the bus."
number_of_people = number_of_people + 57
bus_calculator_cap47(number_of_people)

Wed_absentees = raw_input("\nHow many people are not interested in riding the bus on Wednesday? ")
number_of_people = number_of_people - int(Wed_absentees)
bus_calculator_cap47(number_of_people)

print "\nOn Thursday, the capacity of the buses changes."
Thu_bus_capacity = raw_input("How many people do Thursday's buses hold? ")
bus_calculator(number_of_people, Thu_bus_capacity)
