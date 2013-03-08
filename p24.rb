def factorial(n)
	1.upto(n).inject(:*)
end

nrs = [0,1,2,3,4,5,6,7,8,9]

lp = 999_999

result = ''

# for each first digit we have 9! permutations of the the remaining nrs...
# 1000000 / 9! = 2.7... so the first digit is not 0 nor 1, so it's 2
# for each second digit we have 8! .... and so on
0.upto(8) do |d|
	f = factorial(9-d)
	c = (lp / f).to_i
	puts "#{lp}/#{f} = #{c}, #{nrs.inspect}"
	lp -= c*f
	result += nrs.delete_at(c).to_s
end

puts result.to_s 