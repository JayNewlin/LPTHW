def string_match(a, b):

	if len(a) != len(b):

		if len(a) < len(b):
			max_index = (len(a) - 1)
		else:
			max_index = (len(b) - 1)

	else:
		max_index = (len(a) - 1)

	n = 1
	counter = 0

	while n <= max_index:

		if a[(n-1):(n+1)] == b[(n-1):(n+1)]:
			counter += 1
			n += 1

		else:
			n += 1

	return counter

print "string_match('xxcaazz', 'xxbaaz') yields ", string_match('xxcaazz', 'xxbaaz')
print "string_match('abc', 'abc') yields ", string_match('abc', 'abc')
print "string_match('abc', 'axc') yields ", string_match('abc', 'axc')
print "string_match('abc', '') yields ", string_match('abc', '')
print "string_match('', '') yields ", string_match('', '')
