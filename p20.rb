def factorial(n)
	1.upto(n).inject(:*)
end

def sum_digits(n)
	n.to_s.split('').inject(0){|t,e| t+e.to_i}
end

puts sum_digits(factorial(100))