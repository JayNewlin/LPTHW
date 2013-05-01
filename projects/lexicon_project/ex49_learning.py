# Created to test and review code segments mentioned in Exercise 49
from ex49 import lexicon49

def peek(word_list):
	if word_list:
		word = word_list[0]
		# return word 			# returns the tuple
		return word[0]		# returns the first element of the tuple (the word type)
	else:
		return None
def match(word_list, expecting):
	if word_list:
		word = word_list.pop(0)

		if word[0] == expecting:	# tests the first element of the tuple against expecting
			return word
		else:
			return None
	else:
		return None

def skip(word_list, word_type):
	while peek(word_list) == word_type:
		match(word_list, word_type)

sentence_to_test = raw_input("What sentence shall we work with? ")
test_word_list = lexicon49.scan(sentence_to_test)

print "lexicon scanner tells me: ", test_word_list

word_peeked = peek(test_word_list)
print "I'm peeking at ", word_peeked

print "I try matching word_peeked with expecting. I'm expecting 'stop'."
match_result = (word_peeked, 'stop')
print "My match_result is ", match_result

print "Now I try the skip function. I'll skip 'stop' words."
skip_result = skip(test_word_list, 'stop')
print "This is the skip_result: ", skip_result
