# Game Project for Exercise 36
from sys import exit

global inventory_count
global has_gun
global has_cd
global has_cure
global has_gold
global entryway_message
global drink_count
global bartender_alive
inventory_count = 0
has_gun = False
has_cd = False
has_cure = False
has_gold = False
entryway_message = "\n\nYou're still in the entry hall. There are doors to your right and left and the table ahead of you."
drink_count = 0
bartender_alive = True


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

def entryway():
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

		elif ('shoot' in entryway_action) and has_gun:
			you_lose("\nThe bullet ricochets around the hallway several times, then hits you in the head.\nOops. You're dead.")

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

		elif has_gun and ('shoot' in table_action):
			you_lose("\nThe bullet ricochets around the hallway several times, then hits you in the head.\nOops. You're dead.")

		elif ('gun' in table_action) or ('pistol' in table_action):
			at_table = False
			get_inventory("pistol")

		elif ('vase' in table_action) or ('flower' in table_action):
			print "Leave the vase with the flowers alone!"
			
		else:
			sorry_command()


def snake_pit():		# Snakes live here
	pass

def ballroom():			# The Crazy DJ hangs out here.
	print"You made it to the ballroom."

def bar_room():
	in_bar = True
	print "\nYou enter the bar."
	print "Wow! Can you imagine living in a house big enough to have its own bar?"
	print "The room is paneled in dark wood, and there are hunt-scene paintings on the walls."
	print "To your left is the bar itself. There's a fireplace with an overstuffed chair in front of it in one corner of the room."
	print "There is a door across the room and another door to your right."

	while in_bar:
		bar_room_action = raw_input("\nWhat do you do? ").lower()

		if ('fire' in bar_room_action) or ('chair' in bar_room_action):
			sit_in_chair()

		elif ('left' in bar_room_action) or ('bar' in bar_room_action):
			sit_at_bar()
			print "\n\nYou get up from the barstool and are standing by the bar itself."
			print "You notice again the fireplace with a chair in front of it and the two doors."

		elif ('pic' in bar_room_action) or ('wall' in bar_room_action):
			print "You're staring at the walls? Shame...You looked like you were smarter than that."
			print "Let's go! There's more to do in this room than that!"

		elif (('shoot' in bar_room_action) or ('gun' in bar_room_action)) and has_gun:
			print "Shooting a gun, even in a large room, isn't a good choice."
			print "The bullet ricochets several times around the room and hits a bottle of very expensive champagne."
			print "The bartender appears out of nowhere and demands payment for the bottle of 'Chateau de DeuxLeftFitte.'"
			you_lose("Yeah, you don't have that kind of pocket change.")

		else:
			print "There's a problem in the bar_room routine."

def sit_in_chair():
	you_lose("\nYou sit down in the chair, in spite of a layer of dust on it.\n\nThe fire is nice and warm...\n\nYour head begins to nod...\n\nZzzzzzz....\n\nYou fell asleep in a weird house like this??\nJeez!")

def sit_at_bar():
	
	if bartender_alive:

		at_bar = True
		print "\nYou walk over to the bar."
		print "Seemingly out of nowhere, a bartender appears behind the bar."
		print "He has a handlebar mustache and looks like he stepped out of a bad movie about the Victorian Age."
		print "\n(Weird. Someone lives in this joint?)"
		print "\nHe asks, \"What's up, Doc? Care for a drink?\""

		while at_bar:
			drink_answer = raw_input("> ").lower()

			if ('y' in drink_answer) or ('sure' in drink_answer):
				drink_routine()
				at_bar = False

			elif 'n' in drink_answer:
				at_bar = False
				print "\"No problem. Have a nice day, Doc!\"\n\nYou get up from the bar stool.\nYou're standing in the barroom. Two doors and the fireplace are still visible."

			elif has_gun and (('shoot' in drink_answer) or ('gun' in drink_answer)):
				shoot_bartender()
				at_bar = False
				
			else:
				print "I'm not sure what kind of gobbledygook that it, but I asked if you want a drink."
	else:
		print "You shot the bartender. Who do you think is going to help you now?"

def drink_routine():
	global drink_count
	drinking = True
	print "\nHe asks, \"What would you like?\""

	while (drink_count < 3) and drinking:
		drink_type = raw_input("> ").lower()

		if has_gun and (('shoot' in drink_type) or ('gun' in drink_type)):
			shoot_bartender()
			drinking = False

		else:
			print "\nHe pours a %s and passes it to you." % drink_type
			print "The glass is pretty dirty, but you drink the %s anyway." % drink_type
			drink_count += 1
		
			if drink_count < 3:
				have_another = raw_input("\n\"You drank that like you need another. Care for another drink?\" ")

				if ('y' in have_another) or ('sure' in have_another):
					print "\n\"Sure, Doc. What can I get you this time?\""

				elif 'n' in have_another:
					drinking = False
					print "No problem, Doc. Have a nice day!"

				elif has_gun and (('shoot' in have_another) or ('gun' in have_another)):
					shoot_bartender()
					drinking = False

				else:
					print "\"Excuse me?\""
			else:
				print "\nYou've had %d drinks. That's too many to drink that quickly. You're drunk!\n\nYou get up from the bar and stumble over to the chair by the fireplace." % drink_count
				sit_in_chair()

def shoot_bartender():
	global has_gun
	global bartender_alive
	print "You shoot the bartender. Yeah, he was weird, but that's a pretty violent reaction, don't you think?"
	print "You are suddenly filled with remorse and drop the gun on the floor."
	has_gun = False
	bartender_alive = False

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


