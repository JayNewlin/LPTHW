def string_splosion(str):
    n = 1
    new_string = ''
    while n <= len(str):
        new_string = new_string + str[0:n-1]
        n += 1
        
    return new_string + str
        

print "string_splosion('Code') produces: ", string_splosion('Code')
print "string_splosion('abc') produces: ", string_splosion('abc')
print "string_splosion('ab') produces: ", string_splosion('ab')
print "string_splosion('') produces: ", string_splosion('')
