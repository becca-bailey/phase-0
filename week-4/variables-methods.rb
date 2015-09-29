puts 'Hi!  What\'s your first name?'
first_name = gets.chomp
puts 'Do you have a middle name, too?'
middle_name = gets.chomp
puts 'Finally, what is your last name?'
last_name = gets.chomp
puts 'Nice to meet you ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

puts 'What is your favorite number?'
number = gets.chomp
better_number = number.to_i + 1
puts 'But wouldn\'t you rather choose '+ better_number.to_s + '? It\'s a bigger, better number!'

# How do you define a local variable?

# You declare a variable name and set it equal to a string, number, or boolean. Ex. 

#var1 = "blue" 
#var2 = 45

# How do you define a method?  

# The basic format is:
# def method_name
# 	do something
# end

# What is the difference between a local variable and a method?

# A variable is simply assigning a name to a value.  A method will take the information you give it and produce output.

# How do you run a ruby program from the command line?

# You navigate to the folder containing the ruby file, and you run the program using the ruby command and the filename.  Ex:

# ruby filename.rb

# How do you run an RSpec file from the command line?

# You navigate to the folder that contains both the folder and the rspec file, and run the program using the rspec command and the rspec filename.  Ex:

# rspec rspec_file.rb

# What was confusing about this material?  What made sense?

# After learning some JavaScript in the past, I was a little unsure about the difference between a Ruby method and a function that you might create in other programming languages.  This is something I needed to research to understand.  