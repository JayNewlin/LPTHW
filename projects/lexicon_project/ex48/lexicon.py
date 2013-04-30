# Created for Learning Python the Hard Way, Exercise 48
def convert_number(input_string):					# From LPTHW, pg. 145
	try:
		return int(input_string)
	except ValueError:
		return None

def sentence_breaker(input_string):
	words = input_string.split()
	return words

