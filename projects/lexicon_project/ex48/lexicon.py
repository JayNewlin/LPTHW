# Created for Learning Python the Hard Way, Exercise 48
def sentence_breaker(sentence_to_parse):
	words = sentence_to_parse.split()
	return words

def word_type(word_to_test):
	directions = {'north', 'south', 'east', 'west', 'down',
				  'up', 'left', 'right', 'back'}
	verbs = {'go', 'kill', 'eat', 'stop', 'shoot'}
	stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to'}
	nouns = {'bear', 'princess', 'door', 'cabinet'}

	try:
		num_as_int = int(word_to_test)
		return ['number', num_as_int]
	except ValueError:
#		return None

#def word_type_tester(word_to_test):
	# Establish the word-types as sets
		if word_to_test in directions:
			return ['direction', word_to_test]

		elif word_to_test in verbs:
			return ['verb', word_to_test]

		elif word_to_test in stop_words:
			return ['stop', word_to_test]

		elif word_to_test in nouns:
			return ['noun', word_to_test]

		else:
			return ['error', word_to_test]

#num_to_try = raw_input("Thing to try? ")
#try:
#	n = int(num_to_try)
#	print "%d is an integer." % n
#except ValueError:
#	print "Nope, that's not an integer."
