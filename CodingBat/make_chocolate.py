def make_chocolate(small, big, goal):
    if (goal > big * 5 + small):
        return -1

    elif (goal - big * 5 <= small) and (goal - big * 5 > 0):
    	return (goal - big * 5)

    elif (goal % 5 <= small):
        return goal % 5

    else:
        return -1

print "make_chocolate(6, 1, 10) yields ", make_chocolate(6, 1, 10)
print "make_chocolate(6, 1, 11) yields ", make_chocolate(6, 1, 11)
print "make_chocolate(60, 100, 550) yields ", make_chocolate(60, 100, 550)
print "make_chocolate(1000, 1000000, 5000006) yields ", make_chocolate(1000, 1000000, 5000006)
print "make_chocolate(7, 1, 12) yields ", make_chocolate(7, 1, 12)
print "make_chocolate(4, 1, 9) yields ", make_chocolate(4, 1, 9)
print "make_chocolate(4, 1, 10) yields ", make_chocolate(4, 1, 10)
print "make_chocolate(4, 1, 7) yields ", make_chocolate(4, 1, 7)
print "make_chocolate(6, 2, 7) yields ", make_chocolate(6, 2, 7)
print "make_chocolate(4, 1, 4) yields ", make_chocolate(4, 1, 4)
print "make_chocolate(5, 4, 9) yields ", make_chocolate(5, 4, 9)
print "make_chocolate(1, 2, 7) yields ", make_chocolate(1, 2, 7)
print "make_chocolate(1, 2, 6) yields ", make_chocolate(1, 2, 6)
print "make_chocolate(1, 2, 5) yields ", make_chocolate(1, 2, 5)
