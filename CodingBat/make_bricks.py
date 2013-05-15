def make_bricks(small, big, goal):
    if small + big * 5 < goal:
        return False

    elif goal % 5 == 0:

        if goal / 5 <= big:
            return True
        else:
            return (big * 5 + small >= goal)

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
print "make_bricks(2, 2, 12) yields ", make_bricks(2, 2, 12)
print "make_bricks(0, 2, 12) yields ", make_bricks(0, 2, 12)
print "make_bricks(4, 1, 6) yields ", make_bricks(4, 1, 6)
print "make_bricks(5, 4, 25) yields ", make_bricks(5, 4, 25)
print "make_bricks(5, 4, 19) yields ", make_bricks(5, 4, 19)
print "make_bricks(15, 1, 20) yields ", make_bricks(15, 1, 20)
