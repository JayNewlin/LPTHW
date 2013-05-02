from nose.tools import *
from ex49 import sentence_parser

def test_peeking():
	assert_equal(sentence_parser.peek([('direction', 'north')]), 'direction')
	assert_equal(sentence_parser.peek([('stop', 'the'), ('noun', 'bear'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]),
									  'stop')
	assert_equal(sentence_parser.peek(''), None )

def test_matching():
	assert_equal( sentence_parser.match( [('direction', 'north')], 'direction'), ('direction', 'north') )
	assert_equal( sentence_parser.match( [('stop', 'the'), ('noun', 'bear'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')],
										'stop'), ('stop', 'the') )
	assert_equal( sentence_parser.match( [('direction', 'north')], 'verb'), None )
	assert_equal( sentence_parser.match( [('stop', 'the'), ('noun', 'bear'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')],
										'noun'), None )
	assert_equal(sentence_parser.match('', 'stop'), None )

def test_skipping():
	assert_equal( sentence_parser.skip( [('direction', 'north')], 'direction' ), None )
	passed_word_list = [('stop', 'the'), ('stop', 'the'), ('stop', 'the'), ('noun', 'bear'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]
	passed_word_type = 'verb'
	assert_equal( sentence_parser.skip( passed_word_list, passed_word_type), None )
	assert_equal( sentence_parser.skip( '', 'noun'), None )

def test_verb_parsing():
	assert_equal( sentence_parser.parse_verb( [('verb', 'go')] ), ('verb', 'go'))
	
	passed_word_list = [('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]
	assert_equal( sentence_parser.parse_verb(passed_word_list), ('verb', 'eat'))

	passed_word_list = [('stop', 'please'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]
	assert_equal( sentence_parser.parse_verb(passed_word_list), ('verb', 'eat'))

	passed_word_list = [('stop', 'please'), ('stop', 'please'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]
	assert_equal( sentence_parser.parse_verb(passed_word_list), ('verb', 'eat'))

	passed_word_list = [('noun', 'bear'), ('verb', 'eat'), ('stop', 'the'), ('noun', 'princess')]
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_verb, passed_word_list)

def test_object_parsing():
	assert_equal( sentence_parser.parse_object( [('noun', 'princess')] ), ('noun', 'princess'))

	passed_word_list = [('stop', 'the'), ('noun', 'princess')]
	assert_equal (sentence_parser.parse_object(passed_word_list), ('noun', 'princess'))

	assert_equal( sentence_parser.parse_object( [('direction', 'down')] ), ('direction', 'down'))
	
	passed_word_list = [('verb', 'go'), ('direction', 'left')]
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_object, passed_word_list)

def test_subject_parsing():
	passed_word_list = [('verb', 'shoot'), ('noun', 'bear')]
	subject = ('noun', 'hunter')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).subject, 'hunter')

	passed_word_list = [('verb', 'shoot'), ('noun', 'bear')]
	subject = ('noun', 'hunter')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).verb, 'shoot')

	passed_word_list = [('verb', 'shoot'), ('noun', 'bear')]
	subject = ('noun', 'hunter')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).s_object, 'bear')

	passed_word_list = [('verb', 'go'), ('direction', 'north')]
	subject = ('noun', 'player')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).subject, 'player')

	passed_word_list = [('verb', 'go'), ('direction', 'north')]
	subject = ('noun', 'player')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).verb, 'go')

	passed_word_list = [('verb', 'go'), ('direction', 'north')]
	subject = ('noun', 'player')
	assert_equal( (sentence_parser.parse_subject( passed_word_list, subject)).s_object, 'north')

	passed_word_list = [('noun', 'princess'), ('noun', 'bear')]
	subject = ('noun', 'hunter')
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_subject, passed_word_list, subject)

	passed_word_list = [('verb', 'go'), ('verb', 'do')]
	subject = ('noun', 'hunter')
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_subject, passed_word_list, subject)

	passed_word_list = ''
	subject = ('noun', 'hunter')
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_subject, passed_word_list, subject)

	passed_word_list = ('verb', 'shoot')
	subject = ('noun', 'hunter')
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_subject, passed_word_list, subject)

	passed_word_list = ('noun', 'bear')
	subject = ('noun', 'hunter')
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_subject, passed_word_list, subject)

def test_parse_sentence_function():
	passed_word_list = [('noun', 'hunter'), ('verb', 'shoot'), ('noun', 'bear')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'hunter')
	assert_equal (returned_sentence.verb, 'shoot')
	assert_equal (returned_sentence.s_object, 'bear')

	passed_word_list = [('noun', 'hunter'), ('verb', 'go'), ('direction', 'west')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'hunter')
	assert_equal (returned_sentence.verb, 'go')
	assert_equal (returned_sentence.s_object, 'west')

	passed_word_list = [('stop', 'the'), ('noun', 'hunter'), ('verb', 'go'), ('stop', 'to'), ('stop', 'the'), ('direction', 'right')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'hunter')
	assert_equal (returned_sentence.verb, 'go')
	assert_equal (returned_sentence.s_object, 'right')

	passed_word_list = [('stop', 'the'), ('noun', 'hunter'), ('verb', 'shoot'), ('stop', 'at'), ('stop', 'the'), ('noun', 'bear')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'hunter')
	assert_equal (returned_sentence.verb, 'shoot')
	assert_equal (returned_sentence.s_object, 'bear')

	passed_word_list = [('verb', 'shoot'), ('noun', 'bear')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'player')
	assert_equal (returned_sentence.verb, 'shoot')
	assert_equal (returned_sentence.s_object, 'bear')

	passed_word_list = [('verb', 'go'), ('direction', 'north')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'player')
	assert_equal (returned_sentence.verb, 'go')
	assert_equal (returned_sentence.s_object, 'north')

	passed_word_list = [('stop', 'please'), ('verb', 'shoot'), ('noun', 'bear')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'player')
	assert_equal (returned_sentence.verb, 'shoot')
	assert_equal (returned_sentence.s_object, 'bear')

	passed_word_list = [('stop', 'please'), ('verb', 'go'), ('direction', 'north')]
	returned_sentence = sentence_parser.parse_sentence(passed_word_list)
	assert_equal (returned_sentence.subject, 'player')
	assert_equal (returned_sentence.verb, 'go')
	assert_equal (returned_sentence.s_object, 'north')

	passed_word_list = [('error', 'foofle'), ('verb', 'shoot'), ('noun', 'princess')]
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_sentence, passed_word_list)

	passed_word_list = [('', ''), ('verb', 'shoot'), ('noun', 'princess')]
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_sentence, passed_word_list)

	passed_word_list = ''
	assert_raises( sentence_parser.ParserError, sentence_parser.parse_sentence, passed_word_list)
