# Created for Learning Python the Hard Way, Exercise 48
def scan(sentence_to_parse):
	directions = {'north', 'south', 'east', 'west', 'down',
				  'up', 'left', 'right', 'back'}
	verbs = {'go', 'kill', 'eat', 'stop', 'shoot'}
	stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to'}
	nouns = {'bear', 'princess', 'door', 'cabinet'}
	new_sentence = []
	words = sentence_to_parse.split()

	for word_to_test in words:
	
		try:
			num_as_int = int(word_to_test)
			word_tuple = ('number', num_as_int)
			new_sentence.append(word_tuple)
		except ValueError:

			if word_to_test in directions:
				word_tuple = ('direction', word_to_test)
				new_sentence.append(word_tuple)

			elif word_to_test in verbs:
				word_tuple = ('verb', word_to_test)
				new_sentence.append(word_tuple)

			elif word_to_test in stop_words:
				word_tuple = ('stop', word_to_test)
				new_sentence.append(word_tuple)

			elif word_to_test in nouns:
				word_tuple = ('noun', word_to_test)
				new_sentence.append(word_tuple)

			else:
				word_tuple = ('error', word_to_test)
				new_sentence.append(word_tuple)
		
	return new_sentence

# input_sentence = raw_input("Give me a sentence: ")
# output_sentence = scan(input_sentence)
# print "word list is %r" % output_sentence
