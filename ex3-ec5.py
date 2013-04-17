# This version uses floating-point calculations to insure accuracy to two places (sufficient for the formulas).
# The first line of executable code prints a statment (the stuff contained between the quotes) to the screen.
print "I will now count my chickens:"

# Next we print the word "Hens" followed by a space, then the result of the formula, which is analyzed 25.00 + (30.00 / 6.00)
print "Hens", 25.00 + 30.00 / 6.00
# Line 7 prints right below the above output the word "Roosters" then the result of the formula 100.00 - (( 25.00 * 3.00) % 4.00)
print "Roosters", 100.00 - 25.00 * 3.00 % 4.00

# 10 prints the statement about counting the eggs.
print "Now I will count the eggs:"

# 12 puts the result of the formula on the next line below the statement about counting eggs.
# This formula is calculated ( 3.00 + 2.00 + 1.00 - 5.00 ) + ( 4.00 % 2.00 ) - ( 1.00 / 4.00 ) + 6.00
# What tripped me up in the original version was ( 1 / 4 ) = 0, since that's integer math, not FP.
print 3.00 + 2.00 + 1.00 - 5.00 + 4.00 % 2.00 - 1.00 / 4.00 + 6.00
# Exercise 3, Extra Credit 5 comment: Of course, this means we're now going to have something less than one egg...


# 22 prints a whole statement, including the whole formula, since everything
# is between the quotes.
print "Is it true that 3.00 + 2.00 < 5.00 - 7.00?"

# 25 prints the results of the formula, which is analyzed "Is ( 3.00 + 2.00 ) < ( 5.00 - 7.00 )"?
print 3.00 + 2.00 < 5.00 - 7.00

# 28 and 26 analyze the "halves" of the above question and formula, printing the "halves" first, then the result of the calculation.
print "What is 3.00 + 2.00?", 3.00 + 2.00
print "What is 5.00 - 7.00", 5.00 - 7.00

# 32 is an "Aha" from the above two analyses.
print "Oh, that's why it's False."

print "How about some more."			# print the statement to the screen

# The final three lines print a question, then the answer to a formula.
print "Is it greater?", 5.00 > -2.00
print "Is it greater or equal?", 5.00 >= -2.00
print "Is it less or equal?", 5.00 <= -2.00