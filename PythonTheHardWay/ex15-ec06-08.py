# Modified for Exercise 15, Extra Credits 6 and 8:
#	6. Look up (pydocs) other file functions and try them.
#	8. Remember to close() files after using them.

print "Hello! I'm a script that can do a few different things with a file."
user_name = raw_input("First, please tell me your name. ")
print "Hi, %s! Now please enter the name of the file that you'd like me to open and display: " % user_name
filename = raw_input("> ")

filecontents = open(filename, 'r+')

print "\nHere are the contents of the file: \n"
print filecontents.read()

pause_a_moment = raw_input("I'll wait while you read that. Please press Return/Enter when you're ready to move on...")

print "\nNow I'll tell you the file's 'fileno':\n"
file_number = filecontents.fileno()
print file_number

pause_a_moment = raw_input("\nI'll pause again while you read. Please press Return/Enter to continue.")

print "\nNow I'll receive some text from you, and I'll add it to the data in %s.\n\n" % filename
something_to_add = raw_input("What information shall I add? (Please remember to use double-quotes, if necessary.) ")

filecontents.write("\n")
filecontents.write(something_to_add)
filecontents.close()
new_filecontents = open(filename)
print "This is what %s looks like with the new contents at the end:\n" % filename
print new_filecontents.read()
pause_a_moment = raw_input("Pausing while you read. Press Enter or Return to continue.")

print "\n\nThat's it. Be sure to check %s when I'm finished.\nHave a great day, %s!" % (filename, user_name)
new_filecontents.close()
