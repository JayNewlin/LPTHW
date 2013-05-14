def monkey_trouble(a_smile, b_smile):
    if not a_smile and not b_smile:
        return True
    else:
        return a_smile and b_smile

print monkey_trouble(True, True)
print monkey_trouble(False, False)
print monkey_trouble(True, False)
