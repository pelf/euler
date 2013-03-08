# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# How many routes are there through a 20x20 grid?

# 3rd approach: from the internet... N choose R / pascal triangle
size = 20

def factorial(n)
	n.downto(1).inject(:*)
end

puts factorial(2*size) / (factorial(size)**2)

# 2nd approach: sieve-like iterative, keep adding from the corner
# fast, but too much memory use
# size = 20
# # 21x21 dots
# grid = Array.new(size+1, Array.new(size+1))
# # all the dots on the border have 1 way to get there
# (0...grid.size).each do |i|
# 	grid[i][0] = 1
# 	grid[0][i] = 1
# end
# 
# (1...grid.size).each do |i|
# 	(1...grid.size).each do |j|
# 		grid[i][j] = grid[i][j-1] + grid[i-1][j]
# 	end
# end
# 
# puts grid[size][size]


# 1st approach: naive, brute force recursive. slow as hell!
# could be much improved with memoization!
# @@size = 20
# @@routes = 0
# 
# def move(x, y)
# 	# bottom left corner ?
# 	if x == @@size and y == @@size 
# 		@@routes += 1 # another successful rout
# 		return
# 	end
# 	# move right?
# 	move(x+1,y) if x < @@size
# 	# move down
# 	move(x,y+1) if y < @@size 
# end
# 
# move(0,0)
# 
# puts @@routes