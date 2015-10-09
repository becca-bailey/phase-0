# Calculate the mode Pairing Challenge

# I worked on this challenge with Gaston Gouron

# I spent 2.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 

# An array of numbers or strings

# What is the output? (i.e. What should the code return?)

# An array containing the mode (the most frequent item)

# What are the steps needed to solve the problem?

=begin

CREATE a method called mode that takes an array as an argument
  CREATE an empty hash
  CREATE a counter = 0
  FOR each item in the array
    ADD the item to the hash as the key
    Every time an item occurs, the value equals the counter plus one
  Look for the keys with the highest values
  PUSH the keys into an array

=end
  


# 1. Initial Solution

def mode(mode_array)
  mode_hash = Hash.new(0)
  mode_array.each do |i|
    mode_hash[i] += 1
  end
  output_array = []
  n = 0
  greatest = mode_hash.values[0]
  while n < mode_hash.length
  	if greatest < mode_hash.values[n]
  		greatest = mode_hash.values[n]
  	end
  	n += 1
  end
  mode_hash.each do |key, value|
  	if value == greatest
  		output_array.push(key)
  	end
  end
  p output_array
end



# 3. Refactored Solution

def mode(input_array)
	counter = Hash.new(0)
	input_array.each do |i|
		counter[i] += 1
	end
	output_array = []
	counter.each do |k, v|
		output_array << k if v == counter.values.max
	end
	p output_array
end


# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

We decided to create an instance counter using a hash, becuase it allows us to set a key value pair and set the value equal to the number of times an array item occurred.

Were you more successful breaking this problem down into implementable pseudocode than with the last pair?

Not exactly.  While it was fairly simple to write the pseudocode, implementing it was more difficlut in this pairing session than it has been for me in the past.  

What issues/successes did you run into when translating your pseudocode to code?

We had some issues writing the code for this challenge, becuase our original code didn't work as expected, and it took some additional time to research a new solution.  Once we came up with a new solution, it took some time for both of us to get on the same page and fully understand what was going on in the code.

What methods did you use to iterate through the content?  Did you find any good ones when you were refactoring?  Were they difficult to implement?  

We primarily used the each method to iterate in both versions, though we switched out the while loop for a method in the final solution.  Though we found the values.max method early on in the process of researching this problem, we wanted to use simpler logic to arrive at the first soluton, which proved to be pretty complicated.  


	
end




