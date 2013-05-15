def round_sum(a, b, c):
    return round10(a) + round10(b) + round10(c)

def round10(num):
    return int(round(float(num)/10) * 10)

print "round_sum(16, 17, 18) yields ", round_sum(16, 17, 18)
print "round_sum(12, 13, 14) yields ", round_sum(12, 13, 14)
print "round_sum(6, 4, 4) yilds ", round_sum(6, 4, 4)
