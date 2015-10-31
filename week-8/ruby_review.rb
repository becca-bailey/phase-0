# Bingo 2

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

# score = BingoScorer.new(left_to_right)
# score.horizontal
# score.vertical
# score.right_to_left
# score.left_to_right
# score.bingo

# Reflection

=begin

What concepts did you review or learn in this challenge?

I reviewed how to solve a challenge using pseudocode.  Once I decided to use a counter to solve this challenge, it was fairly simple to use the counter for each method.

What is still confusing to you about Ruby?

It would still be confusing to me to figure out how to build an entire bingo game, complete with a randomly generated board and a game loop.  I know how to build the pieces, but I'm still a little fuzzy on putting all the pieces together.  

What are you going to study to get more prepared for Phase 1?

Building more complex programs using classes and methods.

=end



# Super FizzBuzz

# I worked on this challenge by myself
# This challenge took me .5 hours.

# Pseudocode

=begin
	
DEFINE a method super_fizzbuzz that takes an array of integers
	FOR EACH integer in the array
	IF number divided by 5 AND number divided by 3 has a remainder 0
		Number equals "FizzBuzz"
	ELSE IF number divided by 3 has a remainder 0
		Number equals "Fizz"
	ELSE IF number divided by 5 has a remainder 0
		Number equals "Buzz"
	ELSE number stays the same

	
=end


# Initial Solution

# def super_fizzbuzz(array)
# 	array.each_with_index do |n, i|
# 		if n % 5 === 0 && n % 3 === 0
# 			array[i] = "FizzBuzz"
# 		elsif n % 3 === 0
# 			array[i] = "Fizz"
# 		elsif n % 5 === 0
# 			array[i] = "Buzz"
# 		else 
# 			array[i]
# 		end
# 	end
# 	p array
# end


# Refactored Solution

def super_fizzbuzz(array)
	array.map.with_index do |n, i|
		fizz = (n % 3 === 0)
		buzz = (n % 5 === 0)
		array[i] = "Fizz" if fizz
		array[i] = "Buzz" if buzz
		array[i] = "FizzBuzz" if fizz && buzz
	end
	p array	
end

# Reflection

=begin

What concepts did you review or learn in this challenge?

This challenge was mostly a review, as the process for replacing values in an array 
isn't much different from a list.  

What is still confusing to you about Ruby?

I'm not sure if it's confusing, necessarily, but I'm trying to learn how to write methods
in more than one way. It's easy to write this method using a chain of if/else statements,
but what other ways could I do it?  

What are you going to study to get more prepared for Phase 1?

I want to research different solutions to problems (after I solve them myself) to get a 
better idea of what I could do differently to solve them.

=end


# Numbers to English Words


# I worked on this challenge by myself
# This challenge took me 2 hours.


# Pseudocode

=begin
	
DEFINE a method in_words that takes an integer from 1 - 100
	Create exceptions for 10 - 20, 30, 40, 50...
	Split the integer into an array
	IF the last digit of the array equals 1
		digit equals "one"
	IF the last digit equals 2
		digit equals "two"
	(Continue through nine)
	
=end



# Initial Solution
	@zero_to_nine = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	@ten_to_nineteen = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
	@tens = ["", "ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

# def in_words(integer)
# 	string_array = []
# 	integer_array = integer.to_s.split(//)
# 	integer_array.each_index do |i|
# 		integer_array[i] = integer_array[i].to_i
# 	end
# 	if integer_array.length === 1
# 		string_array << @zero_to_nine[integer_array[0]]
# 	elsif integer_array.length === 2 && integer_array[0] === 1
# 		string_array << @ten_to_nineteen[integer_array[-1]]
# 	elsif integer_array.length === 2 && integer_array[-1] === 0
# 		string_array << @tens[integer_array[0] - 1]
# 	else 
# 		string_array << @tens[integer_array[0] - 1]
# 		string_array << @zero_to_nine[integer_array[-1]]
# 	end
# 	p string_array.join("-")
# end

# Refactored Solution

def in_words(integer)
	unless integer >= 0
		raise ArgumentError.new("Number cannot be negative")
	end
	return "zero" if integer === 0

	string_array = []
	integer_array = integer.to_s.split(//)
	integer_array.each_index do |i|
		integer_array[i] = integer_array[i].to_i
	end
	if integer_array[-4]
		string_array << @zero_to_nine[integer_array[-4]] + " thousand "
	end
	if integer_array[-3] && integer_array[-3] != 0
		string_array << @zero_to_nine[integer_array[-3]] + " hundred "
	end
	if integer_array[-2]	
		if integer_array[-2] === 1 
			string_array << @ten_to_nineteen[integer_array[-1]]
		else 
			string_array << @tens[integer_array[-2]]
		end
	end
	string_array << "-" if integer_array[-1] != 0 && integer_array[-2] != 0
	string_array << @zero_to_nine[integer_array[-1]]
	return string_array.join

end


# Reflection

=begin

What concepts did you review or learn in this challenge?

I reviewed flow control and iterating through arrays.  I chose to use an array for this
challenge, rather than list each case individually.  

What is still confusing to you about Ruby?

It's still confusing to call a method inside another method.  I experimented with Procs
for this challenge to make my code less repetetive, but had some trouble calling the proc
inside the method. One of the things I liked about JavaScript was the ease of calling one
method inside another.

What are you going to study to get more prepared for Phase 1?

I need to become better acquainted with ruby classes and creating programs with multiple
classes and methods.

=end


