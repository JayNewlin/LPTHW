def count_hi(str):
    n = 1
    count = 0
    while n in range(len(str)):
        if str[n-1:n+1] == "hi":
            count += 1
            n += 1
        else:
            n += 1
    return count

print "count_hi('abc hi ho') is ", count_hi('abc hi ho')
print "count_hi('ABChi hi') is ", count_hi('ABChi hi')
print "count_hi('hihi') is ", count_hi('hihi')
