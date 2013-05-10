# Modified for Exercise 15, Extra Credit 5: Use only raw_input to get the file name to output.

#The following lines from the original script are no longer necessary in this part of the project.
# from sys import argv

# script, filename = argv

# txt = open(filename)

# print "Here's your file %r: " % filename
# print txt.read()

# I adjyst the script slightly, to make its interface friendly.
print "Hello! I'm a script that will print out the contents of a file."
user_name = raw_input("Please tell me your name. ")
print "Hi, %s! Now please enter the name of the file that you'd like me to open and display: " % user_name
filename = raw_input("> ")

filecontents = open(filename)

print "\n\n"
print filecontents.read()
print "\n\nThat's it. Have a great day, %s!" % user_name
 