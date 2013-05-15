def lone_sum(a, b, c):
    if (a == b) and (b == c):
        return 0

    elif a == b:
        return c

    elif b == c:
        return a

    elif a == c:
        return b

    else:
        return a + b + c

print "lone_sum(1, 2, 3) yields ", lone_sum(1, 2, 3)
print "lone_sum(3, 2, 3) yields ", lone_sum(3, 2, 3)
print "lone_sum(3, 3, 3) yields ", lone_sum(3, 3, 3)
