# avoided using ruby's builtin date functions

@@ldom = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
@@dom = 1
@@year = 1900
@@dow = 0
@@month = 0

@@count = 0

def next_day
	# day of week
	@@dow = (@@dow+1)%7
	# day of month
	@@dom += 1
	@@dom = 1 if end_of_month?
	# month
	@@month = (@@month+1)%12 if @@dom == 1
	# year
	@@year += 1 if @@month == 0 and @@dom == 1

	# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
	@@count += 1 if @@year >= 1901 and @@year <= 2000 and @@dom == 1 and @@dow == 6
end

def end_of_month?
	return true if @@month != 1 and @@dom > @@ldom[@@month]
	return false if @@month != 1
	# february
	return @@dom > 29 if @@year%4==0 and (@@year%100!=0 or @@year%400==0) # leap
	return @@dom > 28
end

months = %w(jan feb mar apr may jun jul aug sep oct nov dec)
daysow = %w(mon tue wed thu fri sat sun)

loop do
	# puts "#{daysow[@@dow]} #{@@dom} #{months[@@month]} #{@@year}"
	next_day
	break if @@year == 2001
end

puts @@count