triangle_s = <<-triangle
75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23
triangle

# 3rd approach: iterative bottom up
# each nr has only 2 neighbors, so we sum the best of the two for each one and go up
# user	0m0.019s

# build triangle
triangle = []
triangle_s.each_line do |l|
	triangle << l.split.collect {|e| e.to_i}
end

# start at the 2nd row from the bottom
(triangle.size-2).downto(0) do |r|
	# sum the biggest of the neighbors below
	triangle[r] = triangle[r].each_with_index.map{|e,i| e += [triangle[r+1][i], triangle[r+1][i+1]].max}
end

puts triangle.first


# 2nd approach: dijkstra? - incomplete - i gave up this approach
# class Node
# 	attr_accessor :neighbors, :value, :sum, :visited
# 	def initialize(value)
# 		@neighbors = []
# 		@value = value
# 		@sum = nil
# 		@visited = false
# 	end
# end
# @@triangle_nodes = []
# triangle_s.each_line do |l|
# 	@@triangle_nodes << l.split.collect {|e| Node.new(e.to_i)}
# end
# @@nodes = []
# @@triangle_nodes.each_with_index do |row,r|
# 	break if r+1 == @@triangle_nodes.size
# 	row.each_with_index do |node, n|
# 		@@nodes << node
# 		node.neighbors << @@triangle_nodes[r+1][n]
# 		node.neighbors << @@triangle_nodes[r+1][n+1]
# 	end
# end

# dijkstra
# current = @@nodes.shift
# current.sum = current.value
# loop do 
# 	current.neighbors.each do |n|
# 		temp = current.sum + n.value
# 		n.sum = temp if temp > n.sum
# 	end
# 	current.visited = true
# 	current = @@nodes.shift
# end

# 1st approach: brute force recursive
# time: user	0m0.029s
# @@triangle = []
# triangle_s.each_line do |l|
# 	@@triangle << l.split.collect {|e| e.to_i}
# end
# def drill(row,pos)
# 	return @@triangle[row][pos] if row+1 == @@triangle.size
# 	left = drill(row+1,pos)
# 	right = drill(row+1,pos+1)
# 	if left > right
# 		return @@triangle[row][pos]+left
# 	else
# 		return @@triangle[row][pos]+right
# 	end
# end
# 
# puts drill(0,0)#