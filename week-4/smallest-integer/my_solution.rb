# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Pseudocode

# IF the list of numbers is an empty array
	# RETURN nil
# ELSE
	# SET the counter to 0
	# assume first that the first number in the array is the smallest.
	# WHILE the counter is less than the number of items in the array
		# Compare the current smallest number to the number at the counter's location in the array
		# IF the current smallest number is greater than the number at the counter, change the smallest number to the new number.
		# ADD one to the counter
	# END
	# RETURN the smallest number
# END
# END

# Your Solution Below

def smallest_integer(list_of_nums)
	i = 0
	smallest = list_of_nums[0]
	while i < list_of_nums.length
		if smallest > list_of_nums[i]
			smallest = list_of_nums[i]
		end
		i += 1
	end
	return smallest
end


# Refactored Code

def smallest_integer(list_of_nums)
	list_of_nums.sort!
	return list_of_nums[0]
end



