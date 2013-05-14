def make_out_word(out, word):
    front_out = out[:2]
    back_out = out[2:]
    return front_out + word + back_out

print "make_out_word('<<>>', 'Yay') yields ", make_out_word('<<>>', 'Yay')
print "make_out_word('<<>>', 'WooHoo') yields ", make_out_word('<<>>', 'WooHoo')
print "make_out_word('[[]]', 'word') yields ", make_out_word('[[]]', 'word')
