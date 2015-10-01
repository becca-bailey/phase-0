# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
	i = 0
	largest = list_of_nums[0]
	while i < list_of_nums.length
		if largest < list_of_nums[i]
			largest = list_of_nums[i]
		end
		i += 1
	end
	return largest
end


# Refactored Code

def largest_integer(list_of_nums)
	list_of_nums.sort!
	return list_of_nums[-1]
end