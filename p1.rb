puts (1...1000).inject(0) {|sum,i| 
	sum = (sum + i) if i%5 == 0 or i%3 == 0
	sum
 }