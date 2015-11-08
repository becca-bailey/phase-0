# Fibonnaci Sequence
# Gabrielle Gustilo & Becca Nelson


# Pseudocode:
  #INPUT: An integer
  #OUTPUT: True or false
  #STEPS:

=begin
    DEFINE an array with two values - 0, 1
    WHILE the last value of the array is =< the input
      variable equals the second to last array value plus the last array value
      add the variable to the end of the array
    END
    IF last value of the array equals the input
    return true
    ELSE
    return false
=end

# Initial Solution

def fibonacci_test(number) 
  numbers = [0, 1]
  while numbers[-1] < number
    next_value = numbers[-2] + numbers[-1]
    numbers << next_value
  end
  if numbers[-1] == number
    return true
  else
    return false
  end
end


# Refactoring


def fibonacci_test(number) 
  numbers = [0, 1]
  while numbers[-1] < number
    numbers << numbers[-2] + numbers[-1]
  end
  numbers[-1] == number
end


# Test
  
  p fibonacci_test(6765)
  p fibonacci_test(25)

# Reflection

=begin

What concepts did you review in this challenge?

We reviewed iterating through arrays and flow control.

What is still confusing to you about Ruby?

After solving this one, we researched alternate solutions to see if there is a more elegant way to do 
this.  We found one-line solutions that are absurdly long, and lots of other possible solutions.  I 
know how to come up with simple solutions, but it's someies confusing to try to undestand solutions with more complex methods.

What are you going to study to get more prepared for Phase 1?

I would like to review ruby enumerable methods.

=end