# Modified for Exercise 17, Extra Credit 3: Make the script as short as possible.
from sys import argv
script, from_file, to_file = argv
input_file = open(from_file)
indata = input_file.read()
output_file = open(to_file, 'w')
output_file.write(indata)
output_file.close()
input_file.close()