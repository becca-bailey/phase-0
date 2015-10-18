# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An answer and a guess
# Output: Symbols indicating a high, low, or correct guess
# Steps:
# DEFINE a method GuessingGame that takes an answer
	# INITIALIZE the method's variables
		# DEFINE an instance variable 'answer'

# DEFINE a method GuessingGame#guess which takes a guess
	# IF guess is less than answer
		# RETURN low (as symbol)
	# ELSE IF guess is greater than anser
		# RETURN high (as symbol)
	# ELSE 
		# RETURN correct (as symbol)

	# DEFINE a method GuessingGame#solved
		# RETURN true IF guess is correct


# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess 	
  	if @guess < @answer; 
  		:low
  	elsif @guess > @answer
  		:high
  	else 
  		:correct
  	end
  end

  def solved?
  	@guess == @answer
  end
end

# Refactored Solution

#n/a





# Reflection

=begin
	
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Real-world objects have certain functions and characteristics that can be represented in Ruby with variables and methods.  For example, if you created a book object, you could define a variable for the number of pages, and create a 'read' method that will subtract from the number of pages remaining and add to a 'knowledge' array.  

When should you use instance variables?  What do they do for you?

You should use instance variables in an object when you need to use a variable in more than one method.  This allows the variable to be transferred between methods.

Explain how to use flow control.  Did you have any trouble using it in this challenge?  If so, what did you struggle with?

Flow control means designing a method to behave differently depending on the input it receives.  It was pretty easy to implement in this challenge, as I only used simple if/elsif/else statements.

Why do you think this code requires you to return symbols?  What are the benefits of using symbols?  

Unlike variables, symbols can be stored and recalled correctly.  I think they might be used as return values in this object so the results can be stored and remembered.  


=end