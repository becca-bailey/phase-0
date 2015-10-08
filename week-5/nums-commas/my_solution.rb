# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? An integer
# What is the output? (i.e. What should the code return?) A string of numbers that includes commas between every three digits
# What are the steps needed to solve the problem?

# Split the integer into an array
# IF the length of the array is three or less
	# PRINT the number
# ELSE
	# SET a variable equal to -4
	# WHILE the variale is greater than 0 minus the array length
		#INSERT a "," at the variable's place in the array
		# Subtract four from the variable
	#PRINT the number




# 1. Initial Solution

def separate_comma(number)
	if number < 1000
		p number.to_s
	else
		comma_number = ""
		number_array = number.to_s.split(//)
		i = -4
		while i >= (0 - number_array.length)
			number_array.insert(i, ",")
			i -= 4
		end
		number_array.each { |n| comma_number = comma_number + n }
		p comma_number
	end
end



# 2. Refactored Solution

def separate_comma(number)
	if number < 1000
		p number.to_s 
	else number_array = number.to_s.split(//)
		(-4..-number_array.length).step(4) do |i|
			number_array.insert(i, ",")
		end
	end
	p number_array.join
end

=begin

What was your proecess for breaking the problem down?  What different approaches did you consider?  

I have mostly kept the same approach--breaking down the number into an array and then working 
backwards to insert a comma in each place.  I made some mistakes along the way, such as counting by 
three instead of four, but that was easy to fix.

Was your pseudocode effective in helping you build a successful initial solution?  

Yes!  I was surprised by how little my solution differed from the initial pseudocode.  I really saw 
how taking my time to process the steps of the pseucodoce made writing the actual code much quicker. 

What Ruby method(s) did you use when refactoring your solution?  What difficulties did you have implementing them?  Did they significantly change the way your code works?  fis so, how?

I used the join method, which I avoided in the initial solution, but added in easily in the 
refactored solution.  I tried out the step method to iterate in increments, which took a bit of trial 
and error, but worked out well in the end.  The code works basically the same as it did initially.  

How did you iterate through the data structure?  

In my initial soluion, I used a couple different iteration methods, such as a while loop and the each 
method.  I set the while loop to iterate incrementally through the array, which I accomplished with 
the step method in the refactored solution.

Do you feel your refactored solution is more readable than your initial solution?  Why?

In the interest of time boxing, I made pretty minimal changes to my re-factored solution.  Though it 
is shorter and more efficient than the original, I don't think it's necessarily more readable than 
the original.  

=end
