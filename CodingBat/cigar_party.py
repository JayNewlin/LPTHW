def cigar_party(cigars, is_weekend):
#    if is_weekend and cigars > 40:
#        return True
#    elif not is_weekend and cigars >= 40 and cigars <=60:
#       return True
#    else:
#       return False

    return (is_weekend and cigars > 40) or (not is_weekend and cigars >= 40 and cigars <=60)

print "cigar_party(30, False) yields ", cigar_party(30, False)
print "cigar_party(50, False) yields ", cigar_party(50, False)
print "cigar_party(70, True) yields ", cigar_party(70, True)
