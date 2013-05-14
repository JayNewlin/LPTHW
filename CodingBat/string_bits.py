def string_bits(str):
    n = 1
    new_string = ''
    while n <= len(str):
        new_string = new_string + str[n-1]
        n += 2
        
    return new_string
        

print "string_bits('Hello') produces: ", string_bits('Hello')
print "string_bits('Hi') produces: ", string_bits('Hi')
print "string_bits('Heeololeo') produces: ", string_bits('Heeololeo')
print "string_bits('') produces: ", string_bits('')
