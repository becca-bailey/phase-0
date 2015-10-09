# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

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

# mode(["something", "something", "something"])
  # mode_hash.each do |k, v|


  # this interates throught the array, and for each element it creates a key for that integer (if it hasn't been
  # created already) and basically pushes a +1 to the value of that key. remember, the values all start at zero
  # because the "Hash.new" language included "(0)" at the end.
  # mode_array = []
  # this creates an empty array, to be filled with the most repeated number(s) from the array.
  # this will be the array that is returned at the end of the method.
  
  # counter.each do |k, v|
    
  #   if v == counter.values.max
 
  #     mode_array << k
  #     p mode_array
  #     p "this is our mode_array"
  #   end
  # end
  # this loop iterates through the counter array. for each key/value pair, it compares the value to
  # the high value in the array, and if the value it's comparing is equal to the high value, it
  # adds to the mode array the key associated with that value.
  # mode_array.sort
  # this returns the mode array (sorted)
# end



# 3. Refactored Solution




# 4. Reflection