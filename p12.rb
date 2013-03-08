# 2nd approach: internet juice. does it work!?
# http://mathforum.org/library/drmath/view/57151.html
# def count_factors(n)
# 	# find prime factors to speed up the all-factors counting
# 	sqrt = Math.sqrt(n).to_i
# 	pfs = {}
# 	2.upto(sqrt) do |pf|
# 		loop do
# 			if n%pf == 0 # found prime factor
# 				pfs[pf] ||= 0
# 				pfs[pf] += 1
# 				n /= pf
# 			else
# 				break
# 			end
# 		end
# 		break if n == 1
# 	end
# 	# sum prime factor's exponents incremented by 1
# 	pfs.to_a.inject(0){|t,e| t + e[1]+1}
# end

# 1st approach: brute force
def count_factors(n)
	count = 2 # 1 and n
	sqrt = Math.sqrt(n).to_i
	2.upto(sqrt) do |f|
		count += 2 if n%f == 0 
	end
	return count
end

# 1st triangle is 1
t = 1
n = 1

stop = 500

loop do 
	n += 1
	t += n
	if (cf=count_factors(t)) > stop
		puts "#{n}th triangle is #{t}. has #{cf} factors"
		break
	end
end