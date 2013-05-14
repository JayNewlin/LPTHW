def front3(str):
	if len(str) < 3:
		return str * 3
	else:
		return str[0:3] * 3

print "'' gives ", front3('')
print "'Java' gives ", front3('Java')
print "'Chocolate' gives ", front3('Chocolate')
print "'abc' gives ", front3('abc')
print "'oz' gives ", front3('oz')
print "'m' gives ", front3('m')
