# Modified for Example 31, Extra Credit: Expand the game

#Establish a few variables used later
handgun = False
blueberries = False
weird_thing = False

print "You enter a dark room with two doors."

door = raw_input("Do you go through door #1 or door #2? ")

if door == "1":
	print "There's a giant bear here eating a cheese cake. What do you do?"
	print "1. Take the cake."
	print "2. Scream at the bear."

	bear = raw_input("> ")

	if bear == "1":
		print "The bear chases you outside and into the woods. Not a good day."
	elif bear == "2":
		print "The bear eats your legs off. Running away is now impossible. Sorry."
	else:
		print "Well, %sing is probably a better choice. The bear runs away." % bear

elif door == "2":
	print "\nYou enter a room with a table. The following items are on the table:"
	print "1. Blueberries."
	print "2. Yellow jacket clothespins."
	print "3. A handgun."

	table_take = raw_input("Which do you take? (Enter a number.) ")

	if table_take == "1":
		print "Blueberries! Nom nom nom!!"
		blueberries = True
	elif table_take == "3":
		handgun = True
		print "Yeah, that's probably a good idea."
	elif table_take == "2":
		weird_thing = True
		print "Yeah, I don't know what that is either, but you take it and move on."
	else:
		print "I'm not sure what that is, but you take it and move on."


	print "\nBeyond the table are two more doors."

	next_door = raw_input("Choose one (left or right): ").lower()

	if next_door == "left":
		print "\nUh-oh. There's a snake in here!"
		if handgun:
			print "That's why you brought the gun.\n*BANG*\nBuh-bye, snake. Good job!" 
		elif blueberries:
			print "Snakes like things stuffed with blueberries. It eats you. Game over. <<burp>>"
		else:
			print "The snake stares at you. You stare at the snake.\nIt's a reptilian \"Mexican standoff,\" and I don't have time to wait. See ya!"

	else:
		print "\nYou go through the right door and meet Rumplestiltskin.\nHe's in a room full of laundry."
		if weird_thing:
			print "Good thing you picked up those clothespins. You help Rumplestiltskin with his laundry. Good job!"
		elif handgun:
			print "Rumplestiltskin doesn't like guns, so he chases you into the woods. Game over."
		elif blueberries:
			print "Rumplestiltskin notices blueberry juice on your chin and offers you a clean, linen napkin.\nYou wipe your chin and walk away, full, clean, and happy. Good job!"
		else:
			print "That's just too weird.\n*POP*\nYou wake up from this weird dream. <<Whew>>"
else:
	print "If you were nice to programmers, you would input something I recognize.\nFatal error.\nReporting you to Santa Claus for placement on the \"Naughty\" list.\n:-P"
