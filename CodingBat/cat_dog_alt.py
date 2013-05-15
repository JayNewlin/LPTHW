def cat_dog(str):
    return str.count("cat") == str.count("dog")

print "cat_dog('catdog') is ", cat_dog('catdog')
print "cat_dog('catcat') is ", cat_dog('catcat')
print "cat_dog('1cat1cadodog') is ", cat_dog('1cat1cadodog')
