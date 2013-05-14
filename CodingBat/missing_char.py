def missing_char(str, n):
    if n >= 0 and n < (len(str) - 1):
    	begin = string[:n]
    	end = string[n+1:]
    	return begin + end
    else:
    	return "Oops"

string = "kitten"
position = 4
print missing_char(string, position)
