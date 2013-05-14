def near_hundred(n):
	return (abs(n) >= 90 and abs(n) <= 100) or (abs(n) >= 190 and abs(n) <= 200)

while True:
	num_to_test = int(raw_input("Number to test? "))
	print near_hundred(num_to_test)
