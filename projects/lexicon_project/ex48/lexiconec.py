# Modified for Exercise 48, Extra Credit
def scan(sentence_to_parse):
	directions = {'north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back'}
	verbs = {'go', 'kill', 'eat', 'stop', 'shoot', 'take', 'get', 'is'}
	stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to', 'and'}
	nouns = {'bear', 'princess', 'door', 'cabinet', 'gun', 'ghost', 'prince'}
	new_sentence = []
	words = sentence_to_parse.split()

	for word_to_test in words:
	
		try:
			isinstance(word_to_test, (float))
			word_tuple = ('number', float(word_to_test))
			new_sentence.append(word_tuple)
		except ValueError:

			if word_to_test.lower() in directions:
				word_tuple = ('direction', word_to_test.lower())
				new_sentence.append(word_tuple)

			elif word_to_test.lower() in verbs:
				word_tuple = ('verb', word_to_test.lower())
				new_sentence.append(word_tuple)

			elif word_to_test.lower() in stop_words:
				word_tuple = ('stop', word_to_test.lower())
				new_sentence.append(word_tuple)

			elif word_to_test.lower() in nouns:
				word_tuple = ('noun', word_to_test.lower())
				new_sentence.append(word_tuple)

			else:
				word_tuple = ('error', word_to_test.lower())
				new_sentence.append(word_tuple)
		
	return new_sentence
