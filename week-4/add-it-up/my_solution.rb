# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Lars Johnson.

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

# def total(numbers)
# 	sum = 0
# 	i = 0
# 	while i < numbers.length do 
# 		sum = sum + numbers[i]
# 		i += 1
# 	end
# 	puts sum
# 	return sum
# end

# total([1,2,3])




# 3. total refactored solution


def total(numbers)
	numbers.reduce(:+)
end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array of words
# Output: a sentence beginning with a capital letter and ending with a period.
# Steps to solve the problem.

# Find the number of items in the array
# If it is the first item, capitalize the first letter.
# If it is the last item, add a period.
# Print all items.


# 5. sentence_maker initial solution

# sentence_maker=[]
# def sentence_maker(words)
# text = ""
# words[0].capitalize!
# words[words.length-1] = words[words.length-1]+"."
# text = text + words[0]
# for i in 1..words.length-1
#   text = text + " " + words[i].to_s
#   i += 1
# end
# puts text
# return text
# end

# 6. sentence_rspemaker refactored solution
 
def sentence_maker(words)
	words[0].capitalize!
	words[words.length-1] = words[words.length-1]+"."
	return words.join(" ")
end
