def no_teen_sum(a, b, c):
    new_a = fix_teen(a)
    new_b = fix_teen(b)
    new_c = fix_teen(c)
    return new_a + new_b + new_c

def fix_teen(n):
    if n in (13, 14, 17, 18, 19, 20):
        return 0
    else:
        return n

print "no_teen_sum(1, 2, 3) yields ", no_teen_sum(1, 2, 3)
print "no_teen_sum(2, 13, 1) yields ", no_teen_sum(2, 13, 1)
print "no_teen_sum(2, 1, 14) yields ", no_teen_sum(2, 1, 14)
