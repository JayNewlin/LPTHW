# Game Project for Exercise 36
from sys import exit

global inventory_count
global has_gun
global has_cd
global has_cure
global has_gold
global entryway_message
inventory_count = 0
has_gun = False
has_cd = False
has_cure = False
has_gold = False
entryway_message = "\n\nYou're still in the entry hall. There are doors to your right and left and the table ahead of you."


def sorry_command():
	print "Sorry, but I don't understand what you mean."

def you_lose(why):
	print why, "You lose!"
	exit(0)

def get_inventory(pick_up_what):
	global inventory_count
	global has_cure
	global has_cd
	global has_gun

	if inventory_count < 2:

		if pick_up_what == "vial" and not has_cure:
			has_cure = True
			inventory_count += 1
			print "You pick up the bottle. There's no label, so you put it in your pocket and promptly forget about it."
			print entryway_message

		elif pick_up_what == "cd" and not has_cd:
			has_cd = True
			inventory_count += 1
			print "\"Ba-da-bump-bump-bump Another one bites the dust...\""
			print "Singing to yourself, you pick up the CD."
			print entryway_message

		elif pick_up_what == "pistol" and not has_gun:
			has_gun = True
			inventory_count += 1
			print "Wow! That's a tiny pistol, but you never know when a gun might come in handy in a weird place like this!"
			print entryway_message

		else:
			print "You picked that up already. Try again."
			print entryway_message

	else:
		print "Sorry, but you can only carry two items."
		print entryway_message

def entryway():			# The entrance to the mansion. Game "really" starts here.
	in_entryway = True
	print "\nYou are standing in the entry hallway."
	print "There is a door to your left and a door to your right."
	print "Straight ahead of you is an ornate table with a huge vase full of dead flowers."

	while in_entryway:
		entryway_action = raw_input("\nWhat do you do? ").lower()

		if 'left' in entryway_action:
			in_entryway = False
			bar_room()
	
		elif 'right' in entryway_action:
			in_entryway = False
			ballroom()
	
		elif 'table' in entryway_action:
			table()

		elif ('vase' in entryway_action) or ('flower' in entryway_action):
			print "Leave the vase with the flowers alone!"

		else:
			sorry_command()

def table():
	at_table = True
	print "\nYou walk over to the table."
	print "It's a large, wooden table from the mid-19th Century with a single, lathe-turned..."
	print "Oh, sorry... I digress. This isn't \"Antiques Roadshow.\""
	print "On the table, in addition to the vase of dead flowers and an incredible amount of dust, you notice"
	print "\t*  A weird bottle, filled with a yellowish liquid"
	print "\t*  The \"Queen's Greatest Hits\" CD"
	print "\t*  A small pistol"

	while at_table:
		table_action = raw_input("\nWhat do you do? ").lower()

		if ('bottle' in table_action) or ('liquid' in table_action):
			at_table = False
			get_inventory("vial")

		elif 'cd' in table_action:
			at_table = False
			get_inventory("cd")

		elif ('gun' in table_action) or ('pistol' in table_action):
			at_table = False
			get_inventory("pistol")
			
		else:
			sorry_command()


def snake_pit():		# Snakes live here
	pass

def ballroom():			# The Crazy DJ hangs out here.
	print"You made it to the ballroom."

def bar_room():			# The bartender is here.
	in_bar = True
	print "You enter the bar. I mean, wow! Can you imagine living in a house big enough to have its own bar?"
	print "The room is paneled in dark wood, and there are hunt-scene paintings on the walls."
	print "To your left is the bar itself. There's a fireplace with an overstuffed chair in front of it in one corner of the room."
	print "There is a door across the room and another door to your right."

	while in_bar:
		bar_room_action = raw_input("\nWhat do you do? ").lower()

		if ('fire' in bar_room_action) or ('chair' in bar_room_action):
			sit_in_chair()

		elif ('left' in bar_room_action) or ('bar' in bar_room_action):
			sit_at_bar()

		else:
			print "There's a problem in the bar_room routine."

def sit_in_chair():
	you_lose("You sit down in the chair, in spite of a layer of dust on it.\nThe fire is nice and warm...\n\nYour head begins to nod...\n\nZzzzzzz....\n\nYou fell asleep in a weird house like this??\nJeez!")

def sit_at_bar():
	at_bar = True
	print "You walk over to the bar."
	print "Seemingly out of nowhere, a bartender appears behind the bar. He has a handlebar mustache and looks like he stepped out of a bad movie about the Victorian Age."
	print "\n(Weird. Someone lives in this joint?)"
	print "\nHe asks, \"What's up, Doc? Care for a drink?"

	while at_bar:
		drink_answer = raw_input("> ").lower()

		if 'yes' in drink_answer:
			print "Count up to three drinks. If greater than three, you lose!"

		elif 'no' in drink_answer:
			print "No problem. Have a nice day, Doc!\nYou're still in the barroom. Two doors and the fireplace are still visible."

		else:
			print "I'm not sure what kind of gobbledygook that it, but I asked if you want a drink."

	exit(0)

def closet():			# The ghost lives in the Creepy Closet.
	pass

def treasury():			# There are 1000 gold pieces on a table here with a sign "Take some!"
	pass

def outside():			# Outside = Freedom! = one of the win states
	pass


print "You are standing outside a weird mansion on the edge of town."
print "The front door stands ajar, so you step inside. (Perhaps not one of the best decisions in your life.)"
print "As soon as you enter, the door slams behind you. You try the handle, but the door is locked!"
print "You're trapped in here!"
entryway()


