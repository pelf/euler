# n² + an + b, where |a| lt 1000 and |b| lt 1000
# Find the product of the coefficients, a and b, for the quadratic expression that produces the maximum number of primes for consecutive values of n, starting with n = 0.

require 'primes'

max = [0,0,0]

-999.upto(999) do |a|
	-999.upto(999) do |b|
		# how many primes does it generate?
		cp = 0
		n = 0
		loop do 
			v = (n*n + a*n + b)
			break unless v>0 and v.prime?
			# TODO - cache primes?
			cp += 1
			n += 1
		end
		if cp > max[0]
			puts "a: #{a} b: #{b} -> primes: #{cp}"
			max = [cp, a, b]
		end
	end
end