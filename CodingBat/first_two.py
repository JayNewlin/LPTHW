def first_two(str):
	if len(str) < 2:
		return str
	else:
		return str[:2]

print "first_two('Hello') yields ", first_two('Hello')
print "first_two('abcdefg') yields ", first_two('abcdefg')
print "first_two('ab') yields ", first_two('ab')
