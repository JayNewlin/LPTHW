def extra_end(str):
    return str[(len(str) - 2):] * 3

print "extra_end('Hello') yields ", extra_end('Hello')
print "extra_end('ab') yields ", extra_end('ab')
print "extra_end('Hi') yields ", extra_end('Hi')
