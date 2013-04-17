# The first line of executable code prints a statment (the stuff contained between the quotes) to the screen.
print "I will now count my chickens:"

# Next we print the word "Hens" followed by a space, then the result of the formula, which is analyzed 25 + (30 / 6)
print "Hens", 25 + 30 / 6
# Line 7 prints right below the above output the word "Roosters" then the result of the formula 100 - (( 25 * 3) % 4)
print "Roosters", 100 - 25 * 3 % 4

# 10 prints the statement about counting the eggs.
print "Now I will count the eggs:"

# 12 puts the result of the formula on the next line below the statement about counting eggs.
# This formula is calculated ( 3 + 2 + 1 - 5 ) + ( 4 % 2 ) - ( 1 / 4 ) + 6
# What tripped me up was ( 1 / 4 ) = 0, since we're doing integer math, not FP.
print 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

# 19 prints a whole statement, including the whole formula, since everything
# is between the quotes.
print "Is it true that 3 + 2 < 5 - 7?"

# 22 prints the results of the formula, which is analyzed "Is ( 3 + 2 ) < ( 5 - 7 )"?
print 3 + 2 < 5 - 7

# 25 and 26 analyze the "halves" of the above question and formula, printing the "halves" first, then the result of the calculation.
print "What is 3 + 2?", 3 + 2
print "What is 5 - 7", 5 - 7
#                               vvv----I noticed a typo here while working on Extra Credit 5
# 29 is an "Aha" from the above two analyses.
print "Oh, that's why it's False."

print "How about some more."			# print the statement to the screen

# The final three lines print a question, then the answer to a formula.
print "Is it greater?", 5 > -2
print "Is it greater or equal?", 5 >= -2
print "Is it less or equal?", 5 <= -2