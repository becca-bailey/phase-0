 # Pad an Array

# I worked on this challenge with Mark Janzer

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? Array, and a number representing max length of output array, and a optional default value for the added elements.
# What is the output? (i.e. What should the code return?) An array that has been extended with additonal values up to max length. 
# What are the steps needed to solve the problem?
#
# DEFINE pad! that takes array, min_size, and value = nil
#   variable difference = min_size - array.length
#   IF difference is less or equal to 0, return array.
#   END
#   difference times
#     push value to array
#   END
#   RETURN array
# END
#
# DEFINE pad that takes an array, a minimum size, and an optional value that defaults to nil. 
#   Set variable equal to new array with min_size elements and value values. 
#   FOR EACH value in array 
#     set equal to corresponding spot in new array
#   END
#   RETURN new_array
# END

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   difference = min_size - array.length
#   if difference <= 0
#     return array
#   end
#   i = 0
#   while i <= difference
#     array.push(value)
#     i += 1
#   end
#   p array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = Array.new(min_size, value)
#   array.each_with_index do |v, i|
#     new_array[i] = array[i]
#   end
#   p new_array    
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  (min_size - array.length).times { array.push(value) }
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = Array.new(min_size, value)
  array.each_index { |i| new_array[i] = array[i] }  
  return new_array
end


# 4. Reflection 
    
=begin
	
Were you successful in breaking the problem down into small steps?

Yes, I feel like my pair and I were really good at talking about the problem beforehand, 
discussing possible solutions, and writing down each step.  

Once you had written your pseudocode, were you able to translate it into code?  What difficulties and successes did you have?  

For this challenge, writing the code was pretty simple once we wrote the pseudocode.  We had 
to double check the syntax on a a couple of things, such as how iterate through an array using 
the index, but other than that it was straightforward.

Was your initial solution successful at passing the tests?  If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

We made a couple of small mistakes in the first attempt such as mixing up the two array 
variables, but were able to catch them within a few seconds and get working code.  

When you refactored, did you find any existing methods in Ruby to clean up your code?

To be honest, we were mostly thinking of the refactored solutions all along, but intentional 
broke down the methods a little more in the initial solution just to try to fully understand 
the logic.  So, our refactored weren't new to us, just shorter than the initial solution.  

How readable is your solution?  Did you and your pair choose descriptive variable names?

There were only one or two variable names that weren't already specified in the method, such 
as new_array and i for index.  Our code seems simple and readable, even with the variable 
names.

What is the difference between destructive and non-destructive methods in your own words?

A destructive method modifies the original input, without preserving an unchanged version. 
 The output of a destructive method uses the same variable as the input, but has been 
 changed.  A non-destructive method preserves the original input, and creates a changed copy 
 as the output.  

	
end
      