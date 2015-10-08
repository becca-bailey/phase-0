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
		# Subtract three from the variable
	#PRINT the number




# 1. Initial Solution

def separate_comma(number)
	if number < 1000
		p number.to_s
	else
		number_array = number.to_s.split(//)
		i = -4
		while i >= (0 - number_array.length)
			number_array.insert(i, ",")
			i -= 4
		end
		p number_array.join
	end
end

separate_comma(1000)



# 2. Refactored Solution



