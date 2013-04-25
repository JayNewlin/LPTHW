# Modified for Exercise 35, Extra Credits 4 and 5
#	4.    Add more to game while simplifying it where possible.
#	5.    Fix the number input verification system in gold_room()
from sys import exit

def convert_number(num_to_test):
	# This function found with a Google search.
	# It comes from learnpythonthehardeay.org/book/ex48.html
	try:
		return int(num_to_test)
	except ValueError:
		return None

def blueberry():
	global ate_blueberries
	print "You eat some blueberries. Nom nom nom!"
	print "\nYou are still in the dark room."
	ate_blueberries = True
	pass

def take_gun():
	global has_gun
	if has_gun:
		print "You already have the gun."
		print "\nYou are still in the dark room."
		pass
	else:
		print "You never know when you might need a gun, so you pick it up."
		print "\nYou are still in the dark room."
		has_gun = True
		pass

def knort():
	global has_knort
	if has_knort:
		print "You already picked it up. No infinite loops caused by the user, please."
		print "\nYou are still in the dark room."
		pass
	else:
		print "Yeah, I don't know what it is, either, but you pick it up and put it in your pocket."
		print "\nYou are still in the dark room."
		has_knort = True
		pass

def entryway():
	in_entryway = True
	while in_entryway:
		print "In the room is a table with some objects on it:"
		print "\t* Some blueberries"
		print "\t* A gun"
		print "\t* A left-handed knortenrod."
		print "Two doors lead out of the room, one to your right and the other to your left."
		print "What do you do? "

		next = raw_input("> ")

		if 'left' in next:
			in_entryway = False
			bear_room()
		elif 'right' in next:
			in_entryway = False
			cthulhu_room()
		elif 'blueberr' in next:
			blueberry()
		elif 'shoot' in next:
			dead("You shoot the gun. This is a small room, and the bullet ricochets several times.\nThe bullet hits you. You shot yourself!")
		elif 'gun' in next:
			take_gun()
		elif ('knort' in next) or ('left' in next):
			knort()
		else:
			dead("You stumble around the room until you starve.")

def gold_room():
	print "This room is full of gold. How much do you take?"

	next = raw_input("> ")
	how_much = convert_number(next)
	if how_much == None:
		dead("C'mon, learn to type a number!")
	elif how_much < 50:
		print "Nice! Since you're not greedy, you win!!"
		exit(0)
	else:
		dead("Wow! You're so greedy!")


def bear_room():
	bear_moved = False
	global ate_blueberries
	global has_gun
	global has_knort
	print "You enter another room. This room has a bear in it."
	if ate_blueberries:
		dead("The bear enjoys a meal of human-stuffed-with-blueberry. Nom nom nom!!")
	else:
		print "The bear has some honey."
		print "The fat bear is in front of another door."
		print "What do you do now?"

		while True:
			next = raw_input("> ")

			if 'honey' in next:
				dead("You would touch a bear's honey??!!?? Not a good choice.\nThe bear has you AND the honey as a snack.")
			elif next == "taunt bear" and not bear_moved:
				print "Teasing the bear makes the bear cry, and it moves away from the door.\nYou can go through it now."
				bear_moved = True
			elif next == "taunt bear" and bear_moved:
				dead("You keep teasing the bear. Not a good choice.\nNow the bear is really angry and chews your leg off.")
			elif next == "open door" and bear_moved:
				gold_room()
			elif ('shoot' in next) or ('gun' in next):
				if has_gun:
					print "Good thinking! You brought the gun for just such a situation! Your way to the door is now clear,\nso you go through it to the next room."
					gold_room()
				else:
					print "But you didn't pick up the gun in the last room."
			elif ('knort' in next) and has_knort:
				print "The left-handed knortenrod confuses the bear, too. It moves away from the door to figure it out."
				bear_moved = True
			else:
				print "Sorry. That makes no sense to me."


def cthulhu_room():
	global ate_blueberries
	global has_gun
	global has_knort
	print "Here you see the great evil Cthulhu."
	print "He/It/Whatever stares at you and you go insane."
	print "Do you flee for your life or eat your head?"

	next = raw_input("> ")

	if "flee" in next:
		start()
	elif "head" in next:
		dead("Nom nom nom! <<burp>> But that's it for you; the headless can't continue.")
	else:
		cthulhu_room()


def dead(why):
	print why, "You lose!"
	exit(0)

def start():
	global ate_blueberries
	global has_gun
	global has_knort
	ate_blueberries = False
	has_gun = False
	has_knort = False
	print "You are in a dark room."
	entryway()
	


start()
