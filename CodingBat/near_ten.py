def near_ten(num):
    return (num % 10 <= 2) or (num % 10 >= 8)

print "near_ten(12) yields ", near_ten(12)
print "near_ten(17) yields ", near_ten(17)
print "near_ten(19) yields ", near_ten(19)
