def pos_neg(a, b, negative):
	if negative:
		return a < 0 and b < 0
	elif not negative and a < 0 and b < 0:
		return False
	else:
		return a < 0 or b < 0

first_num = -4
second_num = -5
negative = False
print pos_neg(first_num, second_num, negative)