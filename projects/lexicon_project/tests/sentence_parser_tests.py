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