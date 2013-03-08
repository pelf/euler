# Euler - prob 7: 

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

@@primes = []

def prime?(n)
	# if n isnt prime, it MUST divide by one of the lower primes
	@@primes.each do |p|
		return false if n%p == 0
	end
	# if it doesnt, it's a new prime
	@@primes << n
	return true
end

nth = 10001
count = 0
n = 2

loop do 
	count += 1 if prime?(n)
	break if count == nth
	n += 1
end

puts n