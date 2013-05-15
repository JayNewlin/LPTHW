def end_other(a, b):
    new_a = a.lower()
    new_b = b.lower()
    return new_a.endswith(new_b) or new_b.endswith(new_a)

print "end_other('Hiabc', 'abc') is ", end_other('Hiabc', 'abc')
print "end_other('AbC', 'HiaBc') is ", end_other('AbC', 'HiaBc')
print "end_other('abc', 'abXabc') is ", end_other('abc', 'abXabc')
