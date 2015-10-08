# Pseudocode
# DEFINE a method that takes an array of names and a minimum number in each group.  (This example will make groups of 4-5)
	# DIVIDE the number of names in the array by the nimimun number to determine the number of groups.
	# INITIALIZE an empty hash
	# FOR each group
		# SET a hash value equal to an empty array
# SET a counter equal to 0
# WHILE the counter is less than the number of groups 
	# FOR each name in the names array 
		# ASSIGN each name a group number from 1 to the number of groups
		# PUT the name into the array for its group number
		# ADD one to the counter
# PRINT a list of each group and its members

# Initial Solution

=begin

def acct_groups(names_array)
	no_of_groups = names_array.length / 4
	groups = Hash.new
	n = 1
	while n <= no_of_groups 
		groups["Group #{n}"] = []
		n += 1
	end
	i = 0
	names_array.each do |name|
		n = ((no_of_groups + i) % no_of_groups) + 1
		groups["Group #{n}"] << name
		i += 1
	end
	groups.each { |k, v| puts "#{k}: " + v.to_s }
end

=end

# Re-factored Solution

def acct_groups(names_array, min_n)
	# Creates a hash with a key/value pair for each group
	no_of_groups = names_array.length / min_n 
	groups = Hash.new
	(1..no_of_groups).each { |n| groups["Group #{n}"] = [] }
	
	# Assigns each name a group number between one and the number of groups, (counting up one each time) and puts the name in the corresponding array
	names_array.shuffle!.each do |name|
		n = ((no_of_groups + names_array.index(name)) % no_of_groups) + 1
		groups["Group #{n}"] << name
	end

	# Prints the key/value pair to list each group and its members
	groups.each { |k, v| puts "#{k}: " + v.join(", ") }
end



 copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]

acct_groups(copperheads, 4)

=begin
	
What was the most interesting and most difficult part of this challenge?

I would say that the most interesting AND most difficult part of this challenge was taking what I envisioned on paper and turning it into working code.  The most difficult part along the way was figuring out what you can and cannot do in ruby.  For example, I originally envisioned craeating an empty array for each group with the group number as the array name, before discovering (hours later) that a hash works much better for what I was trying to do.  

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes!  I actually didn't have a working computer for a couple days this week, and spent a lt of time figuring out the logic and writing the code on paper.  Besides for a couple of small things (like I mentioned above), my initial working solution wasn't far off from what I wrote down.  

What was your approach for automating this task a good solution?  What could have made it even better?

I first thought about how I would approach this task manually.  I would decide on the number of groups I needed, and then go through each name and put it in a group the same way you would deal a deck of cards - cycling through each group and then starting over until every name is in a group.  Though I know there's more I could do to simplify the code, I already made a lot of small improvements from my original vision, such as adding a 'minimum number in each group' variable to make the code more flexible, and shuffling the names to produce a different result each time.  

What data structure did you decide to store the accountability groups in and why?

In the end, I decided to create a single hash, with the group number as the key and an array of names as the value.  I didn't know before this project that it was possible for a hash value to be an array, and I learned that through a lot of trial and error.  

What did you learn in the process of refactoring your initial solution?  Did you learn new Ruby methods?

Mostly, I learned the importnace of timeboxing.  There is ALWAYS more you can do or more you can add, but you have to decide when it's done.  I learned the shuffle method, and how to retrieve the index of an array value using the index method.  
	
=end

	