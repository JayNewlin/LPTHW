# Game Project for Exercise 36
def start():			# Put global variables and other initializing stuff here.
	global has_gun
	global has_cd
	global has_cure
	global has_gold
	has_gun = False
	has_cd = False
	has_cure = False
	has_gold = False
	print "You are standing outside a weird mansion on the edge of town."
	print "The front door stands ajar, so you step inside. (Perhaps not one of the bext decisions in your life.)"
	entryway()

def entryway():			# The entrance to the mansion. Game "really" starts here.
	print "\nYou are standing in the entry hallway."
	print "There is a door to your left and a door to your right."
	print "Straight ahead of you is an ornate table with a huge vase full of dead flowers."
	entryway_action = raw_input("What do you do?")
	print entryway_action

def snake_pit():		# Snakes live here
	pass

def ballroom():			# The Crazy DJ hangs out here.
	pass

def bar_room():			# The bartender is here.
	pass

def closet():			# The ghost lives in the Creepy Closet.
	pass

def treasury():			# There are 1000 gold pieces on a table here with a sign "Take some!"
	pass

def outside():			# Outside = Freedom! = one of the win states
	pass


start()