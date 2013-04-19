def fib(n):			#write Fibonacci series up to n
	"Print a Fibonacci series up to n"
	a, b = 0, 1
	while b < n:
		print b,
		a, b = b, a+b

# Now call the function we just defined:
print "Hi! I'm a script that will output a Fibonacci sequence up to the number that you give me."
user_number = raw_input("What number should I go up to? ")
user_number = int(user_number)
print "OK. Here's your Fibonacci sequence up to (but not including) %d:" % user_number
fib(user_number)
