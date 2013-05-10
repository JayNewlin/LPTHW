# Modified for Exercise 9 Extra Credit: Add comments explaining what the lines of code do.
# Here's some new strange stuff; remember to type it exactly.

# Establish two string variables containing familiar values (days of the week and months of the year).
days = "Mon Tue Wed Thu Fri Sat Sun"
# The variable 'days' is a plain-old-text string.
months = "\nJan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"
# The 'months' variable includes a conrol character (\n) which tells python to output a newline at that point.
# I also added a \n to make the output "prettier."

# The next two lines output a string, a space, then one of the variables.
print "Here are the days: ", days
print "Here are the months: ", months


# Three double-quotes must indicate opening a series of lines of output to be formatted on-screen, just as they appear within the code.
# Only one 'print' command is needed.
print """
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6, ... or more.

We can also include blank lines.
"""
# I added some additional lines here to indicate what three double-quotes is capable of.
