# Modified for Exercise 10 Extra Credit: Comments about what the code does

# The variable 'tabby_cat' is established with a string that includes '\t', the escape sequence to put a horizontal tab at the beginning of the string.
# Python interprets this as "Tab in one stop, then output the rest of the string."
tabby_cat = "\tI'm tabbed in."

# Variable 'persian_cat' is established with a '\n' (newline) between the words "split" and "on".
# Python will output the string to the letter "t", do a newline, then continue outputting the rest of the string.
persian_cat = "I'm split\non a line."

# Variable 'backslash_cat' outputs with backslashes surrounding the word "a".
backslash_cat = "I'm \\ a \\ cat."


# Variable 'fat_cat' combines triple-double-quotes and several escape sequences to create a formatted list.
fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

# These lines are the ones that result in actual output of each variable, one at a time.
# This is when escape sequences are interpreted.
print tabby_cat
print persian_cat
print backslash_cat
print fat_cat
