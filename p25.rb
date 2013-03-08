# 2nd approach: from the foruns...
# The nth Fibonacci number is [phi**n / sqrt(5)], where the brackets denote "nearest integer"
# So we need phi**n/sqrt(5) > 10**999 <=> n > (999 * log(10) + log(5) / 2) / log(phi)
phi = (1 + Math.sqrt(5))/2.0
puts (999 * Math.log10(10) + Math.log10(5) / 2) / Math.log10(phi)

# 1st approach: brute force
# @@fn1 = 0
# @@fn2 = 1
# @@term = 1
# 
# def next_fib
# 	fn = @@fn1 + @@fn2
# 	@@fn1 = @@fn2
# 	@@fn2 = fn
# 	@@term += 1
# 	return fn
# end
# 
# digits = 1000
# limit = 10**(digits-1)
# 
# 
# 
# while next_fib < limit do
# 	
# end
# 
# puts @@fn2
# puts @@term# 