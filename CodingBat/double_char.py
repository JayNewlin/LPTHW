def double_char(str):
    new_string = ''
    n = 1
    while n <= len(str):
        new_string = new_string + (str[n-1] * 2)
        n += 1
    return new_string

print "double_char('The') is ", double_char('The')
print "double_char('AAbb') is ", double_char('AAbb')
print "double_char('Hi-There') is ", double_char('Hi-There')
