# Game Project for Exercise 36
from sys import exit

def start():			# Put global variables and other initializing stuff here.
	global inventory_count
	global has_gun
	global has_cd
	global has_cure
	global has_gold
	inventory_count = 0
	has_gun = False
	has_cd = False
	has_cure = False
	has_gold = False
	print "You are standing outside a weird mansion on the edge of town."
	print "The front door stands ajar, so you step inside. (Perhaps not one of the best decisions in your life.)"
	entryway()

def can_i_pick_up_more():
	global inventory_count

	if inventory_count < 2:
		return True

	else:
		return False

def sorry_command():
	print "Sorry, but I don't understand what you mean."

def get_inventory(pick_up_what):
	
	if can_i_pick_up_more():

		if pick_up_what == "vial":
			global inventory_count
			global has_cure
			has_cure = True
			inventory_count += 1
			print "You pick up the bottle and put it in your pocket."
			print "\n\nYou're still in the entry hall."
	
		else:
			print "Houston, we have a get_inventory problem."
	else:
		print "Sorry, but you can only carry two items."

def entryway():			# The entrance to the mansion. Game "really" starts here.
	in_entryway = True
	print "\nYou are standing in the entry hallway."
	print "There is a door to your left and a door to your right."
	print "Straight ahead of you is an ornate table with a huge vase full of dead flowers."

	while in_entryway:
		entryway_action = raw_input("\nWhat do you do? ")

		if 'left' in entryway_action:
			in_entryway = False
			bar_room()
	
		elif 'right' in entryway_action:
			in_entryway = False
			ballroom()
	
		elif 'table' in entryway_action:
			table()
			print "I got back to the hallway."

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
		table_action = raw_input("\nWhat do you do? ")

		if ('bottle' in table_action) or ('liquid' in table_action):
			at_table = False
			get_inventory("vial")
			
		else:
			print "There's a problem at the table."


def snake_pit():		# Snakes live here
	pass

def ballroom():			# The Crazy DJ hangs out here.
	print"You made it to the ballroom."

def bar_room():			# The bartender is here.
	print "You made it into the bar."

def closet():			# The ghost lives in the Creepy Closet.
	pass

def treasury():			# There are 1000 gold pieces on a table here with a sign "Take some!"
	pass

def outside():			# Outside = Freedom! = one of the win states
	pass


start()