# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# Your Solution Below
def shortest_string(list_of_words)
	i = 0
	shortest = list_of_words[0]
	while i < list_of_words.length
		if shortest.length > list_of_words[i].length
			shortest = list_of_words[i]
		end
		i += 1
	end
	return shortest
end

# Refactored Code

def shortest_string(list_of_words)
	list_of_words.sort_by! {|word| word.length }
	return list_of_words[0]
end