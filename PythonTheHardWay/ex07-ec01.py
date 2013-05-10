# Modified for Exercise 7, Extra Credit 1: Add comments explaining each line.

# These four lines of 'print' commands print strings to the screen as specificed after the 'print'.
print "Mary had a little lamb."
# Line 6 substitutes the text string 'snow' at the formatting placeholder %s (format converted with str() ) within the string that is set inside the double quotes.
print "Its fleece was white as %s." % 'snow'
print "And everywhere that Mary went."
# Line 9 prints 10 dots ("." times ten).
print "." * 10									# What'd that do?

# The variables end1 through end 12 are established. Each is a string of one character length.
end1 = "C"
end2 = "h"
end3 = "e"
end4 = "e"
end5 = "s"
end6 = "e"
end7 = "B"
end8 = "u"
end9 = "r"
end10 = "g"
end11 = "e"
end12 = "r"

# Watch that comma at the end. Try removing it to see what happens.
print end1 + end2 + end3 + end4 + end5 + end6,
print end7 + end8 + end9 + end10 + end11 + end12
# The above two lines print the variables end1 through end12 to the screen, concatenated one right after the other.
# The comma at the end of line 26 causes python to output a space (but not a line feed and carriage return)
# after outputting end6. If the comma were missing, the words "Cheese" and "Burger" would print on two separate lines,
# "Cheese" above "Burger".