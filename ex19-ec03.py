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

print "\nOn Friday we'll use the buses from Thursday, but I want you to recount all the passengers."
Fri_number_of_people = raw_input("Tell me how many people are riding the buses on Friday. ")
Fri_number_of_people_as_int = int(Fri_number_of_people)
bus_calculator(Fri_number_of_people_as_int, Thu_bus_capacity)

print "\nThe Saturday buses are the same as the capacity at the beginning of the week (47 people),"
print "but only 62 people ride the bus."
Saturday_riders = 62
bus_calculator_cap47(Saturday_riders)

print "\nOn Sunday, so few people ride the bus that the company only ever puts 20-passenger buses on the route."
print "The people who rode on Saturday also ride on Sunday, so:"
bus_calculator(62,20)

print "\n\nThe new week starts on Monday, and 47-passenger buses are available again."
Second_Monday_pax = raw_input("How many passengers are riding to work today? ")
Second_Monday_pax = int(Second_Monday_pax)
bus_calculator_cap47(Second_Monday_pax)

print"\n"
Second_Tue_more = raw_input("How many more people ride on Tuesday than on Monday this week? ")
Second_Tue_pax = Second_Monday_pax + int(Second_Tue_more)
bus_calculator_cap47(Second_Tue_pax)

print"\nFor our last exercise together, please count all the riders, and tell me how many people fit in the buses:"
Second_Wed_pax = int(raw_input("Number of people:"))
Second_Wed_capacity = int(raw_input("Bus capacity: "))
bus_calculator(Second_Wed_pax,Second_Wed_capacity)
