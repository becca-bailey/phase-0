# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 1 hours on this challenge.

# Pseudocode

=begin

DEFINE a bingo scorer object that takes an array as an argument
	SET a bingo variable equal to false

DEFINE a horizontal check method
SET a counter equal to 0
FOR EACH array in the board array
	FOR EACH number in the nested array
	IF number equals "x"
		ADD one to the counter
	IF counter equals 5
		bingo is true

DEFINE a vertical check method
SET a counter equal to a new array with five places equal to zero
FOR EACH array in the board array
	FOR EACH index in the nexted array
	IF the number at that index equals "x"
		ADD ONE to the counter at that index
	FOR EACH number in the counter
		IF number equals 5
			bingo is true



 
=end





# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]




# Initial Solution
# class BingoScorer
# 	def initialize(board_array)
# 		@board_array = board_array
# 		@bingo = false
# 	end

# 	def horizontal
# 		counter = Array.new(5, 0)
# 		@board_array.each_with_index do |array, i|
# 			array.each do |n| 
# 				if n === "x"
# 					counter[i] += 1
# 				end
# 				counter.each do |n|
# 					if n === 5
# 						@bingo = true
# 					end
# 				end
# 			end
# 		end
# 	end

# 	def vertical
# 		counter = Array.new(5, 0)
# 		@board_array.each do |array|
# 			array.each_index do |i|
# 				if array[i] === "x"
# 					counter[i] += 1
# 				end
# 			end
# 		end
# 		counter.each do |n|
# 			if n === 5
# 				@bingo = true
# 			end
# 		end
# 	end

# 	def right_to_left
# 		counter = 0
# 		@board_array.each_index do |i|
# 			if @board_array[i][i] === "x"
# 				counter += 1
# 			end
# 			if counter === 5
# 				@bingo = true
# 			end
# 		end
# 	end

# 	def left_to_right
# 		counter = 0
# 		@board_array.each_index do |i|
# 			if @board_array[i][4-i] === "x"
# 				counter += 1
# 			end
# 			if counter === 5
# 				@bingo = true
# 			end
# 		end
# 	end

# 	def bingo
# 		if @bingo === true
# 			puts "Bingo!!!"
# 		end
# 		@bingo = false
# 	end

# end


# Refactored Solution

class BingoScorer
	def initialize(board_array)
		@board_array = board_array
		@bingo = false
	end

	def horizontal
		counter = Array.new(5, 0)
		@board_array.each_with_index do |array, i|
			array.each { |n| counter[i] += 1 if n === "x" }
			counter.each { |n| @bingo = true if n === 5 }
		end
	end

	def vertical
		counter = Array.new(5, 0)
		@board_array.each do |array|
			array.each_index { |i| counter[i] += 1 if array[i] === "x" }
		end
		counter.each { |n| @bingo = true if n === 5 }
	end

	def right_to_left
		counter = 0
		@board_array.each_index do |i|
			if @board_array[i][i] === "x"
				counter += 1
			end
			@bingo = true if counter === 5
		end
	end

	def left_to_right
		counter = 0
		@board_array.each_index do |i|
			if @board_array[i][4-i] === "x"
				counter += 1
			end
			@bingo = true if counter === 5
		end
	end

	def bingo
		puts "Bingo!!!" if @bingo === true
	end

end


# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:

score = BingoScorer.new(left_to_right)
score.horizontal
score.vertical
score.right_to_left
score.left_to_right
score.bingo

# Reflection

