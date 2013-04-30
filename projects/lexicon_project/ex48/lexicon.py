# Created for Learning Python the Hard Way, Exercise 48
def convert_number(input_string):					# From LPTHW, pg. 145
	try:
		return int(input_string)
	except ValueError:
		return None

def sentence_breaker(input_string):
	words = input_string.split()
	return words

# Establish the word-types as sets
directions = {'north', 'south', 'east', 'west', 'down',
			  'up', 'left', 'right', 'back'}
verbs = {'go', 'kill', 'eat', 'stop', 'shoot'}
stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to'}
nouns = {'bear', 'princess', 'door', 'cabinet'}

while True:
	test_word = raw_input("What word shall I look up? ")

	if test_word in directions:
		print test_word, "is a direction."

	elif test_word in verbs:
		print "You can't fool me! %s is an action word; that means it's a verb!" % test_word

	elif test_word in stop_words:
		print "That's a stop word."

	elif test_word in nouns:
		print "I recognize %s as a noun." % test_word

	else:
		print "Sorry, but I haven't learned that word yet. :-("
			