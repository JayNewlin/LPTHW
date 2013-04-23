# Modified for 
print "Let's practice everything."
print 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

poem = """
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
"""

print "--------------"
print poem
print "--------------"


five = 10 - 2 + 3 - 6
print "This should be five: %s" % five

def secret_formula(started):
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates


start_point = 10000
beans, jars, crates = secret_formula(start_point)

print "With a starting point of: %d" % start_point
print "We'd have %d beans, %d jars, and %d crates." % (beans, jars, crates)

# In the book, the example is missing a step at this point. The "What You Should See" is different than wat the script as presented in the book produces.
start_point = start_point / 10
beans, jars, crates = secret_formula(start_point)	# The script in the book is missing this step.
print "We can also do that this way:"
print "We'd have %d beans, %d jars, and %d crates." % (beans, jars, crates)
# My modified script produces the same output as the WWYS section.
