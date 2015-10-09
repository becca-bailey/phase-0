# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: A method call and a number of sides
# Output: A random number between 0 and the number of sides
# Steps:
# Create a class called Die
	# INITIALIZE the class, its arguments, and its variables
	# RAISE argument error if the number one or less.
# DEFINE a method called sides
	# RETURN number of sides
# DEFINE a mthod called roll
	# RETURN a randon integer between 1 and the number of sides


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Please use a number higher than one.")
    end
  end

  def sides
    @sides
  end

  def roll
    rand(@sides) + 1
  end
end



# 3. Refactored Solution

# n/a







# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?

An argument error is a way of telling the user that the program will only run with a certain type of agrument.  For example, this program can only generate a randon number if the argument given is greater than one.  

What new Ruby methods did you implement?  What challenges and successes did you have in implementing them?  

The only methods I wasn't familiar with is the method for creating an argument error, and the random method.  Once I saw examples, they were easy to implement.

What is a Ruby class?

A Ruby class is an object that responds to certian methods.  For example, a string and an array are both class objects, and there are certain Ruby methods you can use for a string and not an array, and vice versa.  You can create a new class that works with certain methods and adds functinality to your programs.

Why would you use a Ruby class?

A class enables you to write more flexible programs, creating objects and methods other than the ones built into Ruby.  This enables programs to accomplish more specific tasks.  

What is the difference between a local variable and an instance variable?

Like a global and a class variable, an instance variable only works once it has been initialized.  They only work within one instance of a class. A local variable doesn't need to be initialized, and it is valid anywhere within the local area where it is defined, such as a method.  

Where can an instance variable be used?

It can be used within a class where it has been initialized.




	
=end