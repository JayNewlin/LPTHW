def make_bricks(small, big, goal):
    if goal % 5 == 0:

        if goal / 5 >= big:
            return True
        else:
            return "Need more math!"

    else:

        if goal % 5 <= small:
            return True
        else:
            return False

print "make_bricks(3, 1, 8) yields ", make_bricks(3, 1, 8)
print "make_bricks(3, 1, 9) yields ", make_bricks(3, 1, 9)
print "make_bricks(3, 2, 10) yields ", make_bricks(3, 2, 10)
print "make_bricks(2, 2, 7) yields ", make_bricks(2, 2, 7)
print "make_bricks(2, 2, 8) yields ", make_bricks(2, 2, 8)
