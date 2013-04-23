# Script from Bitbucket.org, and example from someone's "Intro to Python" course.
# Copied and modified as part of LPTHW Exercise 23
# Copied/modified code begins below
people = [ [ 'Herb', 74 ], [ 'Carole', 71 ], [ 'Jay R.', 48 ], [ 'Missi', 46 ], [ 'Teri', 43 ], [ 'Erica', 39 ], [ 'Geoff', 34] ]    # My family members and their ages
    
total_age = 0
for person in people:
    age = person[1]
    total_age += age

avg_age = total_age / len(people)
print "Average age:", avg_age