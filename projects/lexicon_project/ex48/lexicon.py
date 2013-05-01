# Created for Learning Python the Hard Way, Exercise 48


def scan(sentence_to_parse):
	directions = {'north', 'south', 'east', 'west', 'down',
				  'up', 'left', 'right', 'back'}
	verbs = {'go', 'kill', 'eat', 'stop', 'shoot'}
	stop_words = {'the', 'in', 'of', 'from', 'at', 'it', 'to'}
	nouns = {'bear', 'princess', 'door', 'cabinet'}

	new_sentence = []

	words = sentence_to_parse.split()
	print "The words I'm working with are: %r" % words 

	for word_to_test in words:
	
		print "I'm working on interpreting word_to_test: %r " % word_to_test
		try:
			num_as_int = int(word_to_test)
			word_tuple = ('number', num_as_int)
			print "word_tuple is : ", word_tuple
			new_sentence.append(word_tuple)
			print "new_sentence is %r: " % new_sentence
		except ValueError:

			if word_to_test in directions:
				word_tuple = ('direction', word_to_test)
				print "word_tuple is : ", word_tuple
				new_sentence.append(word_tuple)
				print "new_sentence is %r: " % new_sentence

			elif word_to_test in verbs:
				word_tuple = ('verb', word_to_test)
				print "word_tuple is : ", word_tuple
				new_sentence.append(word_tuple)
				print "new_sentence is %r: " % new_sentence

			elif word_to_test in stop_words:
				word_tuple = ('stop', word_to_test)
				print "word_tuple is : ", word_tuple
				new_sentence.append(word_tuple)
				print "new_sentence is %r: " % new_sentence

			elif word_to_test in nouns:
				word_tuple = ('noun', word_to_test)
				print "word_tuple is : ", word_tuple
				new_sentence.append(word_tuple)
				print "word_tuple is : ", word_tuple

			else:
				word_tuple = ('error', word_to_test)
				print "word_tuple is : ", word_tuple
				new_sentence.append(word_tuple)
				print "new_sentence is %r: " % new_sentence
		
	return new_sentence

input_sentence = raw_input("Give me a sentence: ")
output_sentence = scan(input_sentence)
print "I recreate the sentence as: %r" % output_sentence
