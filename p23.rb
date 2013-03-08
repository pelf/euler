def sum_factors(n)
	sum = 1
	
	sqrt = Math.sqrt(n)
	# perfect square?
	if sqrt%1 == 0
		sum += sqrt
		sqrt -= 1
	end
	
	2.upto(sqrt) do |f|
		sum += (f + n/f) if n%f == 0 
	end
	return sum
end

max = 28123

abundant = []
abundant_h = {}

# calc all abundant nrs
2.upto(max) do |n|
	if (sum_factors(n) > n)
		abundant << n
		abundant_h[n] = true
	end
end

sum = 0

# find match
1.upto(max) do |n|
	match = false
	abundant.each do |a|
		break if a > n/2
		# if N - the current abundant is another abundant, match!
		if abundant_h[n-a]
			match = true
			break
		end
	end
	sum += n unless match
end

puts sum