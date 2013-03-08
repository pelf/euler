p = 5

def narc?(n,p)
	i = n
	s_i = 0
	begin
		s_i += (n%10)**p # raise digit to the p power and sum
		n /= 10 # trim current nr
	end while n > 0
	return s_i == i
end

sum = 0

2.upto(6*(9**5)) do |i|
	sum += i if narc?(i,p) # sum if the sum of the powers of the digits equals the nr itself
end

puts sum
