# Modified for Exercise 41, Extra Credit 3: Change room print-sequences to docstrings. Use the 'runner' to print them.
from sys import exit
from random import randint

# Code to trim a docstring of leading indents found at http://www.python.org/dev/peps/pep-0257/
# from sys import maxint
def trim(docstring):
    if not docstring:
        return ''
    # Convert tabs to spaces (following the normal Python rules)
    # and split into a list of lines:
    lines = docstring.expandtabs().splitlines()
    # Determine minimum indentation (first line doesn't count):
    indent = 2**31-1
    for line in lines[1:]:
        stripped = line.lstrip()
        if stripped:
            indent = min(indent, len(line) - len(stripped))
    # Remove indentation (first line is special):
    trimmed = [lines[0].strip()]
    if indent < 2**31-1:
        for line in lines[1:]:
            trimmed.append(line[indent:].rstrip())
    # Strip off trailing and leading blank lines:
    while trimmed and not trimmed[-1]:
        trimmed.pop()
    while trimmed and not trimmed[0]:
        trimmed.pop(0)
    # Return a single string:
    return '\n'.join(trimmed)

def death():
	quips = ["You died. You kinda suck at this.",
			 "Nice job. You died...jackass.",
			 "Such a loser.",
			 "I have a small puppy that's better at this."]

	print quips[randint(0, len(quips)-1)]
	exit(1)


def central_corridor():
	"""The Gothons of Planet Percal #25 have invaded your ship and destroyed
	your entire crew. You are the last sutviving member and your last
	mission is to get the neutron destruct bomb from the Weapons Armory,
	put it in the Bridge, and blow the ship up after getting into an
	escape pod.
	
	You're running down the central corridor to the Weapons Armory when
	a Gothon jumps out: red scaly skin, dark grimy teeth, and evil clown costume
	flowing around his hate-filled body. He's blocking the door to the
	Armory and about to pull a weapon to blast you.
	"""

	action = raw_input("> ")

	if action == "shoot!":
		print "\nQuick on the draw, you yank out your blaster and fire it at the Gothon."
		print "His clown costume is flowing and moving around his body, which throws"
		print "off your aim. Your laser hits his costume but misses him entirely. This"
		print "completely ruins his brand-new costume that his mother bought him, which"
		print "makes him fly into an insane rage and blast you repeatedly in the face until"
		print "you are dead. Then he eats you."
		return 'death'

	elif action == "dodge!":
		print "\nLike a world-class boxer you dodge, weave, slip and slide right"
		print "as the Gothon's blaster cranks a laser past your head."
		print "In the middle of your artful dodge your foot slips, and you"
		print "bang your head on the metal wall and pass out."
		print "You wake up shortly after ... only to die as the Gothon stomps on"
		print "your head and eats you."
		return 'death'

	elif action == "tell a joke":
		print "\nLucky for you they made you learn Gothon insults in the Academy."
		print "You tell the one Gothon joke you know:"
		print "'Lbbe zbgure vf fb sng, jura fur fvgf nebhaq qur ubhfr, fur fvgf nebhaq gur ubhfr.'"
		print "The Gothon stops, tries not to laugh, then bursts out laughing and can't move."
		print "While he's laughing you run up and shoot him square in the head,"
		print "putting him down, then jump through the Weapon Armory door."
		return 'laser_weapon_armory'

	else:
		print "\nDOES NOT COMPUTE!"
		return 'central_corridor'

def laser_weapon_armory():
	"""You do a dive-roll into the Weapons Armory, crouch, and scan the room"
	for more Gothons that might be hiding. It's dead quiet...too quiet."
	You stand up and run to the far side of the room and find the"
	neutron bomb in its container. There's a keypad lock on the box,"
	and you need the code to get the bomb out. If you get the code"
	wrong 10 times then the lock closes forever, and you can't"
	get the bomb. The code is 3 digits."""
	code = "%d%d%d" % (randint(1,9), randint(1,9), randint(1,9))
	guess = raw_input("[keypad]> ")
	guesses = 1

	while guess != code and guesses < 10:
		print "BZZZZEDDD!"
		guesses += 1
		guess = raw_input("[keypad]> ")

	if guess == code:
		print "\nThe container clicks open and the seal breaks, letting gas out."
		print "You grab the neutron bomb and run as fas as you can to the"
		print "bridge, where you must place it in the right spot."
		return 'the_bridge'
	else:
		print "\nThe lock buzzes one last time and then you hear a sickening"
		print "melting sound as the mechanism is fused together."
		print "You decide to sit there, and finally the Gothons blow up the"
		print "ship from their ship, and you die."
		return 'death'


def the_bridge():
	"""You burst onto the Bridge with the neutron destruct bomb
	under your arm and surprise 5 Gothons who are trying to
	take control of the ship. Each of them has an even uglier
	clown costume than the last. They haven't pulled their
	weapons out yet, as they see the active bomb under your
	arm and don't want to set it off."""

	action = raw_input("> ")

	if action == "throw the bomb":
		print "\nIn a panic you throw the bomb at the group of Gothons"
		print "and make a leap for the door. Right as your drop it a"
		print "Gothon shoots you right in the back, killing you."
		print "As you die you see another Gothon frantically try to disarm"
		print "the bomb. You die knowing they will probably blow up when"
		print "it goes off."
		return 'death'

	elif action == "slowly place the bomb":
		print "\nYou point your blaster at the bomb under your arm,"
		print "and the Gothons put their hands up and start to sweat."
		print "You inch backward to the door, open it, then carefully"
		print "place the bomb on the floor, pointing your blaster at it."
		print "You then jump back through the door, punch the close button,"
		print "and blast the lock so the Gothons can't get out."
		print "Now that the bomb is placed you run to the escape pod to"
		print "get off this tin can."
		return 'escape_pod'
	else:
		print "\nDOES NOT COMPUTE!"
		return 'the_bridge'

def escape_pod():
	"""You rush through the ship desperately trying to make it to"
	the escape pod before the whole ship explodes. It seems like"
	hardly any Gothons are on the ship, so your run is clear of"
	interference. You get to the chamber with the escape pods and"
	now need to pick one to take. Some of them could be damaged"
	but you don't have time to look. There are 5 pods, which one"
	do you take?"""

	good_pod = randint(1,5)
	guess = raw_input("[pod #]> ")


	if int(guess) != good_pod:
		print "\nYou jump into pod %s and hit the eject button." % guess
		print "The pod escapes out into the void of space, then"
		print "implodes as the hull ruptures, crushing your body"
		print "into human jelly. Squish!"
		return 'death'
	else:
		print "\nYou jump into pod %s and hit the eject button." % guess
		print "The pod easily slides out into space heading to"
		print "the planet below. As it flies to the planet, you look"
		print "back and see your ship implode, then explode like a"
		print "bright star, taking out the Gothon ship at the same"
		print "time.  You won!"
		exit(0)


ROOMS = {
'death': death,
'central_corridor': central_corridor,
'laser_weapon_armory' : laser_weapon_armory,
'the_bridge': the_bridge,
'escape_pod': escape_pod
}


def runner(map, start):
	next = start

	while True:
		room = map[next]
		print "\n--------"
		print trim(room.__doc__)
		next = room()

runner(ROOMS, 'central_corridor')
