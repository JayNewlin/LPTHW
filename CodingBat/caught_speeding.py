def caught_speeding(speed, is_birthday):
    if is_birthday:

        if speed > 65 and speed <=85:
            return 1
        elif speed > 85:
            return 2
        else:
            return 0

    else:
        if speed > 60 and speed <=80:
            return 1
        elif speed > 80:
            return 2
        else:
            return 0

print "caught_speeding(60, False) yields ", caught_speeding(60, False)
print "caught_speeding(65, False) yields ", caught_speeding(65, False)
print "caught_speeding(65, True) yields ", caught_speeding(65, True)
