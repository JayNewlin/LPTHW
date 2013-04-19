# Modified for Exercise 15, Extra Credit 1: Use comments to explain what the script does.
# Line 3 receives command-line arguments from the system.
from sys import argv

# Line 7 reads 'argv' (the command-line arguments) and separates them into separate variables: 'script' (the name of the script that was run) and 'filename'.
# 'filename' is the name of the text file that was created separately but will be used by the script.
script, filename = argv

# The next line creates a new variable ('txt'), opens the file 'filename' and puts its contents into 'filename', which now contains a file object.
txt = open(filename)

# Line 13 outputs a line of text to the screen, with the user's file name ("filename") in place where the %r placeholder/formatter is.
print "Here's your file %r: " % filename

# The next line outputs the contents of the file (now stored as an object in 'txt') to the screen.
# What it does is tell 'txt' to read out with no parameters, then the result of that read function is output to screen by the 'print' command
print txt.read()

# Line 20 is another simple output of a string to the screen.
print "Type the filename again:"
# The next line receives input from the user's keboard (raw_input), prompting the user with a greater-than ('>').
# The user's input is stored in new variable 'file_again'. We expect the user to give us the name of a file that is to be opened and output to screen.
file_again = raw_input("> ")

# This line opens the file of name just received from the user ('file_again') and stores the file's contents as variable 'txt_again'.
txt_again = open(file_again)

# We output 'txt_again' to the screen by commanding txt-again to read with no parameters.
# 'print' prints the file object's contents to screen.
print txt_again.read()
