people = 50
cats = 40
dogs = 65


if people < cats:
	print "Too many cats! The world is doomed!"

if people > cats:
	print "Not many cats! The world is saved!"

if people < dogs:
	print "The world is drooled on!"

if people > dogs:
	print "The world is dry!"


dogs += 5

if people >= dogs:
	print "People are greater than or equal to dogs."

if people <= dogs:
	print "People are less than or equal to dogs."


if people == dogs:
	print "People are dogs."

if cats != dogs:
	print "Cats and dogs are out of balance. That's not fair!"

if (cats > people) or (dogs > people):
	print "Not all animals have homes."

world_population = people + cats + dogs

if not (world_population > 100):
	print "There is still room for more people, dogs, and/or cats in the world."

if world_population == 100:
	print "The world is full. No more people, cats, and/or dogs, please!"

if world_population > 100:
	print "The world is over-crowded!"
