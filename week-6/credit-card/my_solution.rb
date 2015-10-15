# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Daniel Woznicki.
# I spent 1.25 hours on this challenge.

# Pseudocode

# Input: A 16-digit integer
# Output: true or false
# Steps:

# UNLESS number is 16-digit integer
  # Argument error

# Split the integer into an array
# IF index is even
  # multiply number by 2

# IF length of number > 1
  # Split number
# ADD all numbers in array

# RETURN true IF sum is multiple of 10
# ELSE false



# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(number)
#     @number = number.to_s.split(//)
#     @number.map! { |n| n.to_i }
#     unless @number.length == 16
#       raise ArgumentError.new("Must be a 16 digit number")
#     end # unless
#   end #initialize
  
#   def check_card
  
#     @number.each_with_index do |n, i|
#       if i % 2 == 0
#         n *= 2
#       end #If statement
#       @number[i] = n
#     end #each_with_index
#     @number.map! do |n|
#       if n >= 10
#         n.to_s.split(//)
#       else
#         n
#       end # if n>=10
#     end #map!
#     @number.flatten!
#     @number.map! do |n|
#       if n.is_a?(String)
#         n.to_i
#       else
#         n
#       end #if n.is_a?
#     end #map!
 
#     @sum = @number.reduce(&:+)

#     if @sum % 10 == 0
#       true
#     else
#      false
#     end #if @sum % 10
#   end #check_card

# end


# Refactored Solution

class CreditCard
  def initialize(number)
    @number = number.to_s.split(//)
    @number.map! { |n| n.to_i }
    raise ArgumentError, "Must be a 16 digit number" unless @number.length == 16
  end #initialize
  
  def check_card
  
    @number.each_with_index do |n, i| 
      n *= 2 if i % 2 == 0 
      @number[i] = n
    end #each_with_index
    @number.map! do |digit|
      digit >= 10 ? digit.to_s.split(//) : digit
    end #map!
    @number.flatten!
    @number.map! do |elt|
      elt.is_a?(String) ? elt.to_i : elt
    end #map!
 
    sum = @number.reduce(&:+)

    sum % 10 == 0 ? true : false
  end #check_card

end

# Reflection

=begin
  
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

It was fairly easy to pseudocode this challenge once we broke it down into small steps.  My pair was 
able to outline the big steps, and as he did that, I thought more about the smaller steps we need to 
include within those big steps.  Pseudocoding this challenge with a pair worked out well.

What are the benefits of using a class for this challenge?

A class allows you to divide up a more complex task into individual methods for that object.  Orginally, 
my pair and I used several different methods, but combined them into one to simplify.

How can you access coordinates in a nested array?

You can use the index number of both the nested array and the item with in the array, for example array[
0][1].  You can also apply a method just to nested arrays by using a method like is_a?(Array).  

What methods did you use to access and modify the array?

We used thd map! method to modify the contents of the array, like when we needed to convert a string to 
an integer or split a two-digit number.  We used the each_with_index method to modify a number only if 
it is at a certain index.  

How did you determine what should be an instance variable versus a local variable?

A variable like the one we used for our array needs to be a instance variable, so it can be transferred 
between methods in a class.  However, the variable we set for the sum could be a local variable, as it 
only needed to be used inside one method.  

What do you feel is most improved in your refactored solution?

I think the re-factored solution is more readable, because we were able to make it much shorter.  We 
also changed some variable names to make them more descriptive.  While I know there is probably a more 
elegant solution, I think my pair and I solved the problem in a fairly efficient way in the time we 
had.  
  
end