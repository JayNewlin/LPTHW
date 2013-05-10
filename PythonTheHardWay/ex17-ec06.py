# Modified for Exercise 17, Extra Credit 6: What happens if I don't output_file.close() ?
# It's apparent that the answer is "nothing." I can cat the output_file, and diff shows no difference between input_file and output_file.
from sys import argv
script, from_file, to_file = argv
input_file = open(from_file)
indata = input_file.read()
output_file = open(to_file, 'w')
output_file.write(indata)
# output_file.close()
input_file.close()