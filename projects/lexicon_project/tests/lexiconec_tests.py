# Modified for Exercise 48, Extra Credit
from nose.tools import *
from ex48 import lexiconec


def test_directions():
	assert_equal(lexiconec.scan("north"), [('direction', 'north')])
	assert_equal(lexiconec.scan("South"), [('direction', 'south')])
	assert_equal(lexiconec.scan("UP"), [('direction', 'up')])
	result = lexiconec.scan("north south east Down LEFT")
	assert_equal(result, [('direction', 'north'),
						  ('direction', 'south'),
						  ('direction', 'east'),
						  ('direction', 'down'),
						  ('direction', 'left')])

def test_verbs():
	assert_equal(lexiconec.scan("go"), [('verb', 'go')])
	assert_equal(lexiconec.scan("Shoot"), [('verb', 'shoot')])
	result = lexiconec.scan("go kill eat Get sToP")
	assert_equal(result, [('verb', 'go'),
						  ('verb', 'kill'),
						  ('verb', 'eat'),
						  ('verb', 'get'),
						  ('verb', 'stop')])


def test_stops():
	assert_equal(lexiconec.scan("the"), [('stop', 'the')])
	result = lexiconec.scan("the in of")
	assert_equal(result, [('stop', 'the'),
						  ('stop', 'in'),
						  ('stop', 'of')])

def test_nouns():
	assert_equal(lexiconec.scan("bear"), [('noun', 'bear')])
	result = lexiconec.scan("bear princess")
	assert_equal(result, [('noun', 'bear'),
						  ('noun', 'princess')])


def test_numbers():
	assert_equal(lexiconec.scan("1234"), [('number', 1234.0)])
	assert_equal(lexiconec.scan("6.5"), [('number', 6.5)])
	result = lexiconec.scan("3 91234 8759.125")
	assert_equal(result, [('number', 3.0),
						  ('number', 91234.0),
						  ('number', 8759.125)])


def test_errors():
	assert_equal(lexiconec.scan("ASDFADFASDF"), [('error', 'asdfadfasdf')])
	result = lexiconec.scan("bear IAS princess")
	assert_equal(result, [('noun', 'bear'),
						  ('error', 'ias'),
						  ('noun', 'princess')])

def test_sentence():
	result = lexiconec.scan("The bear in nORth eat the 485 pound princess")
	assert_equal(result, [('stop', 'the'),
						  ('noun', 'bear'),
						  ('stop', 'in'),
						  ('direction', 'north'),
						  ('verb', 'eat'),
						  ('stop', 'the'),
						  ('number', 485.0),
						  ('error', 'pound'),
						  ('noun', 'princess')])
	