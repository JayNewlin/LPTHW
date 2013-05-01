# Created to test and review code segments mentioned in Exercise 49
from ex49 import lexicon49

def peek(word_list):
	if word_list:
		word = word_list[0]
		return word 			# returns the tuple
		# return word[0]		# returns the first part of the tuple (the word type)
	else:
		return None

sentence_to_test = raw_input("What sentence shall we work with? ")
test_word_list = lexicon49.scan(sentence_to_test)

print "lexicon scanner tells me: ", test_word_list

word_peeked = peek(test_word_list)
print "I'm peeking at ", word_peeked
