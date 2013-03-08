pp = 0
p = 1
c = 1
sum = 0
loop do
	# current value
	c = p + pp
	# too big?
	break if c > 4000000
	# sum when due
	sum += c if c%2 == 0
	# shift values
	pp = p
	p = c
end

puts sum