# Modified for Exercise 16, Extra Credit 3: Reduce to one target.write(), not 6.
from sys import argv

script, filename = argv

print "We're going to erase %r." % filename
print "If you don't want that, hit Control-C (^C)."
print "If you do want that, hit Return."

raw_input("?")

print "Opening the file..."
target = open(filename, 'w')

print "Truncating the file.  Goodbye!"
target.truncate()

print "Now I'm going to ask you for three lines."

line1 = raw_input("line 1: ")
line2 = raw_input("line 2: ")
line3 = raw_input("line 3: ")

print "I'm going to write these lines to the file."

file_new_contents = line1 + "\n" + line2 + "\n" + line3 + "\n"

target.write(file_new_contents)

print "And finally, we close it."
target.close()
