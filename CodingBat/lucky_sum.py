def lucky_sum(a, b, c):
    if a == 13:
        return 0

    elif b == 13:
        return a

    elif c == 13:
        return a + b

    else:
        return a + b + c

print "lucky_sum(1, 2, 3) yields ", lucky_sum(1, 2, 3)
print "lucky_sum(1, 2, 13) yields ", lucky_sum(1, 2, 13)
print "lucky_sum(1, 13, 3) yields ", lucky_sum(1, 13, 3)
