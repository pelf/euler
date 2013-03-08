# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

s = (2**1000).to_s
sum = 0
0.upto(s.size-1) do |i|
	sum += s[i,1].to_i
end

puts sum