def front_back(str):
    if len(str) == 1:
        return str
    elif len(str) == 2:
        return str[-1] + str[0]
    else:
        return str[-1] + str[1:(len(str) - 1)] + str[0]

print "'code' gives ", front_back("code")
print "'a' gives ", front_back("a")
print "'ab' gives ", front_back("ab")
print "'scrumpdillyicious' gives ", front_back("scrumpdillyicious")
print "'abcdefghij' gives ", front_back("abcdefghij")