# Created for Learning Python the Hard Way, Exercise 48
def sentence_breaker(sentence_to_parse):
	words = sentence_to_parse.split()
	return words

def convert_number(word_to_test):					# From LPTHW, pg. 145
	try:
		return int(word_to_test)
	except ValueError:
		return None

def word_type_tester(word_to_test):
	# Establish the word-types as sets
	directions = {'north', 'south', 'east', 'west', 'down',
				  'up', 'left', 'right', 'back'}
	verbs = {'go', 'kill', 'eat', 'stop', 'shoot'}
	stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to'}
	nouns = {'bear', 'princess', 'door', 'cabinet'}

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

sentence = raw_input("Sentence to break? ")
broken_sentence = sentence_breaker(sentence)
print "Broken sentence: ", broken_sentence

number_to_test = raw_input("\nPlease give me a number: ")
number_as_int = convert_number(number_to_test)
print "That number is now an integer: %d" % number_as_int

not_a_number = raw_input("\nNow a non-numeric string, please: ")
oops_nope = convert_number(not_a_number)
print "convert_number says %r" % oops_nope

while True:
	test_this_word = raw_input("\nGive me a word to look up: ")
	test_result = word_type_tester(test_this_word)
	print "word_type_tester replies: %r" % test_result

