def divide_to_s(n,d)
	result = ''
	loop do
		q = n/d
		r = n%d
		result += q.to_s
		# done or reached the limit of digits?
		break if r == 0 or result.size > 10000
		n = r*10
	end
	return result
end

def find_pattern(ns)
	# starting from the end, try matching patterns of 1, 2, 3, etc digits of length
	1.upto(ns.size/2) do |p| # pattern size
		t = 1
		pattern = ns[ns.size-p,p]
		match = true
		loop do # keep testing the current pattern along the string
			t += 1
			break if t > 10 or t*p > ns.size # done
			if ns[ns.size-t*p,p] != pattern # doesnt match
				match = false
				break
			end
		end
		if match
			return pattern
			break
		end
	end
	return nil
end

biggest = 0
biggest_n = 0

1.upto(1000) do |d|
	if p=find_pattern(divide_to_s(1,d))
		#puts divide_to_s(1,d)
		if p.size > biggest
			biggest = p.size
			biggest_n = d
		end
	end
end

puts biggest
puts biggest_n