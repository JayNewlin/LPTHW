def make_chocolate(small, big, goal):
    big_kilos = min(goal / 5, big) * 5 			# Each big bar weighs 5
    small_needed = goal - big_kilos
    if small_needed > small or 0 > small_needed:
        return -1
    else:
        return small_needed


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
