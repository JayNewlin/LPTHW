def count_code(str):
    count = 0
    for i in range(len(str)-2):
        if (str[i-1:i+1] == "co") and (str[i+2] == "e"):
            count += 1

    return count

print "count_code('aaacodebbb') is ", count_code('aaacodebbb')
print "count_code('codexxcode') is ", count_code('codexxcode')
print "count_code('cozexxcope') is ", count_code('cozexxcope')
