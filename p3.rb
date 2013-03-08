# 2nd approach - duh!
n = 600851475143

(2..n).each do |f|
	break if f>n # done! - n is updated inside the cycle, this will happen
	if n%f == 0
		puts f
		n = n/f
	end
end

# 1st approach - overkill and stupid!!!!
#def taint_multiples(n)
#	return unless @@primes[n]
#	@@primes[n] = true
#	(2..@@n).each do |i| # we'll never reach it anyway...
#		m = n*i
#		return if m > @@n
#		@@primes[m] = false
#	end
#end
#
#def prime?(n)
#	return @@primes[n] unless @@primes[n].nil?
#	(2...n).each do |f|
#		if n%f==0
#			return (@@primes[n] = false)
#		end
#	end
#	return (@@primes[n] = true)
#end
#
#@@primes = []
#@@n = 600851475143
#
## memoize primes
#(1..(@@n/1000)).each do |i| # we'll never reach it anyway...
#	puts i if i%10000000 == 0
#	taint_multiples(i)
#end
#puts "\n\n------\n\n"
#(1..@@n).each do |f|
#	puts f if @@n%f == 0 and prime?(f)
#end