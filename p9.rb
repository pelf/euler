# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# 
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.


	1.upto(1000) do |a|
		1.upto(1000) do |b|
			csq = a**2 + b**2
			c = Math.sqrt(csq)
			next if c%1 != 0 # not an int
			puts "#{a} #{b} #{c} #{a*b*c}" if a+b+c == 1000
		end
	end