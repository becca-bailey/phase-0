# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16-digit integer
# Output: a boolean, true or false
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
 
    @sum = @number.reduce(&:+)

    @sum % 10 == 0 ? true : false
  end #check_card

end



# Reflection