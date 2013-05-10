# Modified for Exercise 17, Extra Credit 2: Remove extra prints and other unnecessary features.
from sys import argv
from os.path import exists

script, from_file, to_file = argv

print "I'm going to copy %s to %s" % (from_file, to_file)

# we could do these two on one line too, how?
input = open(from_file)
indata = input.read()

print "Does %r exist? %r " % (to_file, exists(to_file))
raw_input("Ready, hit Return to continue, Control+C to abort.")

output = open(to_file, 'w')
output.write(indata)
output.close()
input.close()
print "Done."