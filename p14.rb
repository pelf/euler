# approach 2: testing memoization
# user	0m41.874s
@@mem = {}
def sequence(n)
	count = 1
	loop do
		# memoized?
		if @@mem[n]
			count += @@mem[n]
			break
		end

		count += 1
		if n.even?
			n /= 2 
			break if n == 1
		else
			n = 3*n + 1
		end
	end
	# memoize path
	@@mem[n] = count
	return count
end

# approach 1:
# time: user	0m28.218s
# def sequence(n)
# 	count = 1
# 	loop do
# 		count += 1
# 		if n.even?
# 			n /= 2 
# 			break if n == 1
# 		else
# 			n = 3*n + 1
# 		end
# 	end
# 	return count
# end

max = 0
max_n = 0
limit = 1_000_000
1.upto(limit) do |n|
	c = sequence(n)
	if c > max
		max = c 
		max_n = n
	end
end

puts "#{max_n}: #{max}"