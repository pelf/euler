# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

n = 1001 # n x n spiral
sum = 1
n_i = 3
i = 1

loop do
	inc = n_i - 1 
	
	# 1st approach:
	#4.times do 
	#	sum += (i += inc)
	#end
	# 2nd approach:
	sum += 4*i + 10*inc
	i += 4*inc

	n_i += 2 # side length
	break unless n_i <= n
end 

puts sum

# as i suspected we can simply calculate the final answer instead of cycling to simulate the spiral
# from the internets: (4*A + 3*A + 8*A - 9*A) / 6
