# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
	end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# 
# The error is in the errors.rb file.
#
# 2. What is the line number where the error occurs?
#
# The error is (supposedly) in line 170.
#
# 3. What is the type of error message?
#
# This is a syntax error.
#
# 4. What additional information does the interpreter provide about this type of error?
#
# unexpected end-of-input, expecting keyword_end
#
# 5. Where is the error in the code?
#
# The while statement is expecting the word 'end' on line 16. 
#
#
# 6. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#
# The error is on line 47.
#
# 2. What is the type of error message?
#
# This is a name error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# undefined local variable or method 'south_park'
#
# 4. Where is the error in the code?
#
# The error is in the variable, becuase ruby is expecting it to be equal to a number, string, or boolean.
#
# 5. Why did the interpreter give you this error?
# 
# The variable is currently undefined.  There would not be an error if the variable was defined, like this:

south_park = "TV Show"


# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#
# The error is in line 74.
#
# 2. What is the type of error message?
#
# This is a 'no method error'
#
# 3. What additional information does the interpreter provide about this type of error?
#
# undefined method 'cartman' for main:Object => The method being called has not been defined.
#
# 4. Where is the error in the code?
#
# The error is in the method name, becuase it is trying to call a method that doesn't exist.
#
# 5. Why did the interpreter give you this error?
# 
# The method being called here has not been defined.  It would only work if you first defined a method like this.

def cartman()
end

cartman()


# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#
# The error is in line 108.
#
# 2. What is the type of error message?
#
# This is an argument error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# wrong number of arguments (1 for 0)
#
# 4. Where is the error in the code?
#
# The error could either be in line 104 or line 108, depending on whether or not you want the method to accept arguments.
#
# 5. Why did the interpreter give you this error?
#
# The method was not created to take arguments, but it is being called with a string for an argument.  It could be fixed by defining an argument, like this:
#
def cartmans_phrase(insult)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
#
# The error is on line 142.
#
# 2. What is the type of error message?
#
# This is an argument error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# wrong number of arguments (0 for 1)
#
# 4. Where is the error in the code?
#
# Like the last one, the error is either in line 138 or line 142, depending on whether or not you want the method to take arguments.
#
# 5. Why did the interpreter give you this error?
#
# The method was defined with an argument, but was not given an argument when it was called.  It could be fixed by adding an argument when it is called, like this:

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('I hate Kyle.')

# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# The error is on line 176.
#
# 2. What is the type of error message?
# 
# This is an Argument Error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# wrong number of arguments (1 for 2)
#
# 4. Where is the error in the code?
#
# The error occurs when the method is called with only one argument instead of two.
#
# 5. Why did the interpreter give you this error?
#
# The method was defined with two arguments, but only called with one.  It could be fixed by adding a name when the method is called.

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# The error is on line 206.
#
# 2. What is the type of error message?
#
# This is a type error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# String can't be coerced into fixnum
#
# 4. Where is the error in the code?
#
# The error is in the order of the arguments.  
#
# 5. Why did the interpreter give you this error?
#
# A string can be multiplied by a 5, but 5 can't be multipled by a string.  It will work if it is rearranged, like this.

"Respect my authoritay!" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# The error is on line 232.
#
# 2. What is the type of error message?
#
# This is a Zero Division Error
#
# 3. What additional information does the interpreter provide about this type of error?
#
# divided by 0
#
# 4. Where is the error in the code?
#
# It is a math rule that you can't divide a number by zero. 
#
# 5. Why did the interpreter give you this error?
#
# It was unable to divide a number by zero.  The dividend must be greater or less than zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# The error is in line 257.
#
# 2. What is the type of error message?
#
# It is a load error.
#
# 3. What additional information does the interpreter provide about this type of error?
#
# cannot load such file -- /path/to/cartmans_essay.md
#
# 4. Where is the error in the code?
#
# The error is not in the code, but in the missing resource.
#
# 5. Why did the interpreter give you this error?
#
# It is linking to a file that doesn't exist in the directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# I had the most trouble with the first syntax error, which expected an 'end' statement and didn't give an accurate line number.  It threw me off, and for a while I thought it wasn't an error expected as a part of this assignment!  Once I realized that the error could mean anyting before the last line, it made more sense.

# How did you figure out what the issue with the error was?

# I looked back at my notes from the error messages video I watched, and remembered what the instructor had said about that type of error.

# Were you able to determine why each error message happened based on the code?

# Yes, I was able to determine the cause of each error and fix it.  Most of the errors in this assignment were pretty self-explanatory.

# When you encounter errors in your future code, what process will you follow to help you debug?

# I will start by reading the error message to determine the location and error type.  I will look over my code in that location to see if I can locate the error myself.  If I am still unable to fix the error myself, I will ask for help or research the error to find a solution.  


