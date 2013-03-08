# Project Euler: Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def pal?(n)
	s = n.to_s
	(0..s.size/2).each do |c|
		return false if s[c] != s[s.size-c-1]
	end
	return true
end

largest = 0

999.downto(100) do |i|
	999.downto(100) do |j|
		p = i*j
		break if p < largest
		if pal?(p)
			largest = p
		end
	end
end

puts largest