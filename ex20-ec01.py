# Modified for Exercise 20, Extra Credit 1: Add comments to explain the script's functionality in plain English.

# This first line imports all the arguments from the command line.
from sys import argv

# This line tells Python to expect two command-line arguments and to put their values
# into the variables 'script' and 'input_file'
script, input_file = argv

# We create (DEFine) a function named "print_all" which needs one argument named "f".
# This function outputs the result of a read on the file whose name is stored in the argumen/variable f.
def print_all(f):
	print f.read()

# Define another function, rewind(f), which "rewinds" the file.
# What really happens is that the file whose name is stored in the variable f is "seeked" to position 0
# (i.e., the beginning of the file).
def rewind(f):
	f.seek(0)
# This "print_a_line" function has two variables: line_count and f.
# The function's work is to print line number line_count then the contents of that line number in the file.
def print_a_line(line_count, f):
	print line_count, f.readline()

# Set a variable named current_file to the contents of the file named on the command line.
current_file = open(input_file)

# Output the following line of text and a line-feed/carriage-return to the screen.
print "First let's print the whole file:\n"

# Call the print_all() function (defined above) to print the contents of current_file.
print_all(current_file)

# Another line of text outputted to the screen
print "Now let's rewind, kind of like a tape."

# Perform the rewind() function on current_file.
rewind(current_file)

# Output to the screen this text
print "Let's print three lines:"

# Set a variable called "current_line" to a value of 1
current_line = 1
# Call the print_a_line() function, and pass it the values 1 and the current_file.
# The result of this line of code is to output only the first line of the file.
print_a_line(current_line, current_file)

# Increase the current_line by 1. (I.e., add 1 to the current value of current_line)
current_line = current_line + 1
# Call print_a_line() with the values of current_line = 2 and the same file contents (current_file).
print_a_line(current_line, current_file)

# Increase current_line by 1. The new value in current_line will be 3
current_line = current_line + 1
# Use the print_a_line() function to print the third line of the file.
print_a_line(current_line, current_file)
