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

# def acct_groups(names_array, min_n)
# 	no_of_groups = names_array.length / min_n 
# 	groups = Hash.new
# 	n = 1
# 	while n <= no_of_groups 
# 		groups["Group #{n}"] = []
# 		n += 1
# 	end
# 	i = 0
# 	while i < no_of_groups
# 		names_array.each do |name|
# 			n = ((no_of_groups + i) % no_of_groups) + 1
# 			groups["Group #{n}"] << name
# 			i += 1
# 		end
# 		groups.each { |k, v| puts "#{k}: " + v.to_s }
# 	end
# end

# Final Solution

def acct_groups(names_array, min_n)
	no_of_groups = names_array.length / min_n 
	groups = Hash.new
	(1..no_of_groups).each { |n| groups["Group #{n}"] = [] }
	names_array.shuffle!.each do |name|
		n = ((no_of_groups + names_array.index(name)) % no_of_groups) + 1
		groups["Group #{n}"] << name
	end
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

	