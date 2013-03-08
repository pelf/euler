class Fixnum
	def prime?
		return false if self%2 == 0
		return false if self%3 == 0
		sqrt = Math.sqrt(self)
		n = 0
		loop do 
			n += 6
			break if n > sqrt
			return false if self%(n-1) == 0
			return false if self%(n+1) == 0
		end
		return true
	end
end