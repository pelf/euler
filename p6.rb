# euler - problem 6:
# 
# The sum of the squares of the first ten natural numbers is,
# 
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the # square of the sum is 3025  385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# brute force. is there another way?
sum = 0
sq_sum = 0
1.upto(100) do |n|
	sum += n
	sq_sum += n**2
end
puts sum**2 - sq_sum 

# yes there is. from the forums:
#    The sum of squares is n*(n +1)*(2*n +1) /12
#    The square of sum of n numbers is  ( n*(n+1)/2 ) * ( n *(n +1)/2 )
#    If we take the diffrence and solve it algebraically
#    We get the diffrence to be  -
#        ( 3 * n^4 + 2 * n^3 -3 * n^2 - 2 * n )/12
#        so answer is the value of above expression
#    To reduce number of multiplication operations  store value of  n^2 .
#