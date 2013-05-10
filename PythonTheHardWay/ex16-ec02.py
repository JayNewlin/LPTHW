# Script written by JRN for Exercise 16, Extra Credit 2
# The only argument expected by this script is the name of the file to open.
from sys import argv

script_name, file_name = argv

file_contents = open(file_name)

print "\n\nHi! I'm a script that acts similarly to the Unix 'cat' command."
print "I take the file that you named and display its contents to the screen."
print "I'm just a tad friendlier than cat. :-)"
user_name = raw_input("\n\nWhat's your name? ")
print "OK, %s, your file output is below:" % user_name

print file_contents.read()
print "\n"
print "That's it, %s. I'll close the file and exit." % user_name
file_contents.close()
