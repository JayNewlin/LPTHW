def without_end(str):

    if len(str) == 2:
        return ''
    else:
        return str[1:(len(str)-1)]

print "without_end('Hello') yields ", without_end('Hello')
print "without_end('java') yields ", without_end('java')
print "without_end('coding') yields ", without_end('coding')
print "without_end('fb') yields ", without_end('fb')
