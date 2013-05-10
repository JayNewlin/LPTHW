# Modified for Exercise 10, Extra Credit 2 through 4:
#	2. Use triple-single-quote instead of triple-double-quote. Why might one be used instead of the other?
#	3. Cobine escape sequences and format strings to create a more complex format.
#	4. %r, double-quotes, and single-quotes
#		a. Combine %r with double-quote and single-quote escapes and print them.
#		b. Compare %r with %s and note the differences.
tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

# Ex 10, EC 2: Changed teiple-double-quotes to triple-single-quotes.
fat_cat = '''
First print, "I'll to a list", then do it.

I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
'''
# There is no major difference between triple-single-quotes and triple-double-quotes.
# I can even include the same type of quote (single or double) inside the trebled quotes, 
# and the output wrks the same, without causing any kind of problem.
print tabby_cat
print persian_cat
print backslash_cat
print fat_cat

# Extra Credit 3: Combine escape sequences and format strings.

bella = "Jay\'s cat\'s name is Bella."
black_cat = "What happens here?"
white_cat = "\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b\b"
# In the current environment, those backspaces don't do anything visibly.
cats_bell = "Ring the cat's bell 3 times \a\a\a"

print bella
print black_cat + white_cat
print cats_bell
print """

"""

quote_r_test = "\nSay, \"My quote\'s very complex. It's filled with single-quotes (') and double-quotes (\").\""
French_cool = "\nCool! N'est pas?"

print "This section prints those two using 'percent-r' formatting: %r %r" % (quote_r_test, French_cool)
print "\n\n"
print "This part prints them using 'percent-s' formatting: %s %s" % (quote_r_test, French_cool)
