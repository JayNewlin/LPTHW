# Script copied and modified from Bitbucketfor Exercise 23 of Learning Python the Hard Way.
# Script is someone's "match_dna.py" script from their "Intro to Python" course.
def match_function(query, sequence):
    if query in sequence:
        return True
    else:
        return False
        


user_query = raw_input("What text string shall I search for? ")
filename = raw_input("What file shall I examine? ")
open_file = open(filename)
file_contents = open_file.read()

if match_function(user_query, file_contents):
    print "Yes, the text is in the file."
else:
    print "Sorry, but the text isn't in the file."