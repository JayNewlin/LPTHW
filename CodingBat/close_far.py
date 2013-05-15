def close_far(a, b, c):
    if (abs(b - a) <= 1) and (abs(c - a) >= 2) and (abs(c - b) >= 2):
        return True
    if (abs(c - a) <= 1) and (abs(b - c) >= 2) and (abs(b - a) >= 2):
        return True
    else:
        return False

print "close_far(1, 2, 10) is", close_far(1, 2, 10)
print "close_far(1, 2, 3) is", close_far(1, 2, 3)
print "close_far(4, 1, 3) is", close_far(4, 1, 3)
print "close_far(10, 10, 8) is", close_far(10, 10, 8)
