def last2(str):
	n = 1
	counter = 0

	while n <= (len(str) - 2):

#		print "n is %r and str[n-1:n+1] is %r" % (n, str[n-1:n+1])
#		print "str[(len(str) - 2):] is %r" % str[(len(str) - 2):]
		if str[n-1:n+1] == str[(len(str) - 2):]:
			counter += 1
			n += 1
		else:
			counter += 0
			n += 1

	return counter

print "last2('hixxhi') yields ", last2('hixxhi')
print "last2('xaxxaxaxx') yields ", last2('xaxxaxaxx')
print "last2('axxxaaxx') yields ", last2('axxxaaxx')
