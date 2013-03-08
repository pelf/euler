# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 2nd approach: lcm (minimo multiplo comum, zequinha!)
puts (1..20).inject(1) {|t,n| t.lcm n}


# 1st approach: brute force
# @@factors = [20,19,18,17,16,15,14,13,12,11] # the remaining ones are redundant. right?
# 
# # check if is divisible by our factors
# def divisible?(n)
# 	@@factors.each do |f|
# 		return false if n%f != 0
# 	end
# 	return true
# end
# 
# # go find it!
# n = 20
# loop do
# 	break if divisible?(n)
# 	n += 1
# end
# 
# puts n