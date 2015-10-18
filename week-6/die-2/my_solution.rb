# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A new die method and an array of strings (of any length)
# Output:  The number of strings, or a random string
# Steps:

# Create a new class called Die
  # INITIALIZE the class that takes an array of strings
  # SET the sides variable equal to the length of the array
  # IF sides < 1
    # RAISE argument error

# DEFINE a method sides
  # RETURN number of sides

# DEFINE a method roll
  # RETURN a random number between 1 and sides 
  # RETURN the string at that index


# Initial Solution

# class Die
#   def initialize(labels)
#     @labels = labels
#     @sides = @labels.length
#     if @sides < 1
#       raise ArgumentError.new("Please enter at least one string.")
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     random = rand(@sides)
#     @labels[random]
#   end
# end


# Refactored Solution

class Die
  attr_reader :sides
  def initialize(labels)
    @labels = labels
    @sides = @labels.length
    if @sides < 1
      raise ArgumentError.new("Please enter at least one string.")
    end
  end

  def roll
    return @labels[rand(@sides)]
  end
end


# Reflection

=begin
  
What were the main differences between this die class and the last one you created in terms of implementation?  Did you need to change much logic to get this to work?

I was able to re-use a lot of my code from the last die class method.  The logic was mostly the same--I 
just needed to add one additional variable to help convert the length of the array to the number of sides, 
and then changed the roll code to return an array index instead of just a random number.  

What does this exercise teach you about making code that is easily changeable and modifiable?

After completing the code from last week, modifying it for this week didn't take much time, proving that 
the original code was flexible.

What new methods did you learn when working on this challenge, if any?

I didn't learn any new methods, but used the random number method in a way I haven't used it before.

What concepts about lasses were you able to solidify in this challenge?

I have a better understanding of instance variables and how they can be transferred between methods within 
a class.  
  
end