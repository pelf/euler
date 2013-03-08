def sum_factors(n)
	sum = 1
	
	sqrt = Math.sqrt(n).to_i
	sum += (sqrt) if sqrt*sqrt == n # perfect square?
	
	2.upto(sqrt-1) do |f|
		sum += (f + n/f) if n%f == 0 
	end
	return sum
end

max = 10000

# save sum of factors
sums = Array.new(max)
2.upto(max) do |n|
	sums[n] = sum_factors(n)
end

# find amicable and sum
total = 0
sums.each_with_index do |sum, i|
	next if sum.nil? # skip 0 and 1
	if sum < max and sums[sum] == i and sum != i
		total += sum
	end
end

puts total