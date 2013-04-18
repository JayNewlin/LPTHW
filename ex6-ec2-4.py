# Modified for Exercise 6, Extra Credits 2 and 3, counting strings put inside strings.
# Extra Credit 2 claims that there are 4 such places. Extra Credit 3 challenges me to
# make sure that I count carefully.
x = "There are %d types of people." % 10
# I add the next variable to count the number of times that a string is put
# inside another. The first is above, in Line 4. The string '10' is put into
# the string at the point of the %d.
string_inside_string_count = 1
binary = "binary"
do_not = "don't"
y = "Those who know %s and those who %s." % (binary, do_not)
# Increase the string_inside_string_count by 2 for the 2 %s strings above.
string_inside_string_count = string_inside_string_count + 2

print x
print y

print "I said: %r" % x
print "I also said: '%s'," % y
# x and y both are strings put inside the strings that are printed to the screen.
# string_inside_string_count increased by 2
string_inside_string_count = string_inside_string_count + 2

hilarious = False
joke_evaluation = "Isn't that joke so funny?! %r"
# string_inside_string_count isn't increased yet, because %r is a 'placeholder'
# at this moment; I haven't told python what string will go into that place yet.

print joke_evaluation % hilarious
# Now we increase string_inside_string_count by 1 because python now is told
# to place the variable hilarious into the placeholder within joke_evaluation. 
string_inside_string_count = string_inside_string_count + 1

w = "This is the left side of..."
e = "a string with a right side."

print w + e
# string_inside_string_count is not increased because this is concatenation, not placing
# on string inside another. (This comment also satisfies Extra Credit 4.)

# Now I'll add a new output line to answer Extra Credit 3.
print "Exercise 6, Extra Credit 3 asks how many strings have been placed within strings in this program."
print "I count %d strings placed within strings." % string_inside_string_count
print "The statement at Exercise 6, Extra Credit 2 is", string_inside_string_count == 4, "."
