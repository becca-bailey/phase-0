# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# 
#

# Input: an array of numbers
# Output: the sum of those numbers
# Steps to solve the problem.

# Find the number of items in the array
# Set a variable(sum) equal to 0
# WHILE the index is between zero and the number of items
	# add item at the index position to sum
	# add 1 to the index counter
# END



# 1. total initial solution

def total(numbers)
	sum = 0
	i = 0
	while i < numbers.length do 
		sum = sum + numbers[i]
		i += 1
	end
	puts sum
	return sum
end

total([1,2,3])




# 3. total refactored solution



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution
