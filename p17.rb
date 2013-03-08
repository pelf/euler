class Fixnum

	def to_word
		units = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
		tens = %w(bogus twenty thirty forty fifty sixty seventy eighty ninety)
		
		temp = self
		w = ''

		if temp >= 100
			# hundreds?
			w = units[temp/100] + 'hundred'
			return w if temp%100 == 0
			w += 'and'
			temp = temp%100
		end

		if temp >= 20
			# tens
			w += tens[temp/10 - 1]
			return w if temp%10 == 0
			temp = temp%10
		end

		# units
		return w += units[temp]
	end
end


count = 0
1.upto(999) do |i|
	puts i.to_word
	count += i.to_word.length
end

count += 'onethousand'.length

puts count