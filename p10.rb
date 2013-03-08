# Find the sum of all the primes below two million.

max = 2_000_000

# # 3rd approach: optimized sieve
@@primes = Array.new(max,true)

# cross out even nrs
4.step(max,2) do |n|
	@@primes[n] = false
end
# now we start at 3
sum = 2

3.step(max,2) do |n|
	if @@primes[n]
		sum += n 
		# sieve n mults!
		# You only need to start crossing out multiples at p^2 , because any smaller multiple of p has a prime divisor less than p and has already been crossed out as a multiple of that
		(n*n).step(max, 2*n) do |s| # step 2*n because even products are already out
			@@primes[s] = false
		end
	end
end

puts sum

# 2nd approach: sieve. faster for big limits
# @@non_primes = []
# sum = 0
# 
# (2..max).each do |n|
# 	unless @@non_primes[n]
# 		sum += n 
# 		# sieve n mults!
# 		(n*2).step(max,n) do |s|
# 			@@non_primes[s] = true
# 		end
# 	end
# end
# 
# puts sum

# 1st approach: trial division. not too bad with the sqrt(n) limit
# @@primes = []
# 
# def prime?(n)
# 	sqrt = Math.sqrt(n).to_i
# 	# if n isnt prime, it MUST divide by one of the lower primes
# 	@@primes.each do |p|
# 		break if p > sqrt # improvement: we may stop at sqrt(n)
# 		return false if n%p == 0
# 	end
# 	# if it doesnt, it's a new prime
# 	@@primes << n
# 	return true
# end
# 
# # we're skiping the 2 so we can skip even numbers in the cycle
# sum = 2
# @@primes << 2
# 
# 3.step(max,2) do |n|
# 	sum += n if prime?(n)
# end
# 
# puts sum