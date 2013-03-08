@@coins = [200,100,50,20,10,5,2,1]

# def ways(v,w)
# 	@@coins.each do |coin|
# 		next if coin >= v
# 		used = false
# 		while v >= coin
# 			w += ways(coin, used ? 0 : 1)
# 			v -= coin
# 			used = true
# 		end
# 	end
# 	return w
# end

def ways(value,starting_coin,list)
	# return 0 if starting_coin >= @@coins.size
	w = 0
	# for each coin
	@@coins.each_with_index do |coin,i|
		next if i < starting_coin
		return 1 if coin == 1
		# how many can we use? 0...x
		0.upto(value/coin) do |nc|
			remaining = value-(nc*coin)
			puts "to have #{value}p we can use #{nc} #{coin}p coins, #{remaining} remains"
			if remaining > 0 # calc ways for the remaining value
				w += ways(remaining,i+1,list+[coin]*nc) 
			else
				w += 1
			end
		end
	end
	return w
end

puts ways(5,0,[])