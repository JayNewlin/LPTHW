# Modified for Exercise 17, Extra Credit 1: Try out some other imports
# I also modified the input filename variable.
from sys import argv
from os.path import exists
# I'm trying the following imports. I'll have python output them or do something with them later in the script.
from sys import copyright
from sys import maxunicode
from sys import platform

script, from_file, to_file = argv

python_copyright = copyright
unicode_max = maxunicode
system_platform = platform
print "This script is running on Python, %s\n\n" % python_copyright
print "I am running on a %s platform whose largest Unicode code point is %d." % (platform, unicode_max)
raw_input("Ready, hit Return to continue.")
print "\n\nCopying from %s to %s" % (from_file, to_file)

# we could do these two on one line too, how?
input_filename = open(from_file)
indata = input_filename.read()

print "The input file is %d bytes long" % len(indata)

print "Does the output file exist? %r" % exists(to_file)
print "Ready, hit Return to continue, Control+C to abort."
raw_input()

output = open(to_file, 'w')
output.write(indata)

print "Alright, all done."

output.close()
input_filename.close()
