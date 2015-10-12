# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  return source.select{|x| x.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  return source.select{|key, value| value == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#
# .select - the select method finds array elements or hash key/value pairs that match the criterion on the right
# .to_s - converts any object to a string
# .include? - figures out of a string includes a specified sub-string
# .keys - returns an array of just the keys in a hash

# Person 2
def my_array_modification_method!(pets_array, number_of_pets)
	pets_array.map! do |i|
		i.is_a?(Integer)? i += number_of_pets : i
	end
end

def my_hash_modification_method!(pets_hash, years)
  pets_hash.each { | k, v | pets_hash[k] = v + years }
end

# Identify and describe the Ruby method(s) you implemented
#
# .map - Finds the contents of an array that meet certain criteria, and changes the original array using a code block.
# .is_a? - Identifies whether an object is of a certain type
# .each - Iterates through a hash or an array and performs a code block on each item

# Person 3
def my_array_sorting_method(source)
  source.sort{|a,b| a.to_s <=> b.to_s}
end

def my_hash_sorting_method(source)
  source.sort_by{|k,v| v}
end
# sort => uses the <=> (comparison operator) to sort the inputs. The advantage is that you can sort by any criteria if you pass in a block.
# sort_by => Only takees in one arguement.The argument is used to do all the sorting on that one input
# to_s => Turns the output into a string


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.each do |word|
    if word.to_s.include? (thing_to_delete)
    source.delete(word)
    end
  end
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.each do |v|
    source.delete_if {|k,v| k==thing_to_delete }
    end
end


#delete: It deletes the key-value pair
#delete_if: It deletes every element for which block evaluates to true
# .include?(): returns true if any member of the enumerable equals the object
# .include?(): look for any letter, sub-string, integer, float by inserting them in the parentheses.
#

# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#.select - is used in a similar way as .each. The difference is that where the .each method
# => does something to every single element of an array, the .select method just finds the
# => key/value pairs of a hash or elements of an array that fall into the criterion specified on
# => the far right in the curly bars.
#
#.to_s is a fairly easy method to implement. It's used turn any object into a string. 2.to_s will
# => return the string "2".
#
#.include?() - put whatever integer, float, or sub-string, you're looking for within those parenthesis
# => in front of the period put whatever collection of data you're looking through
# => so it reads data_collection.include?("sub-string") where data_collection is some collection of data
# => (or just a single piece of data).
#
#.keys - when the method is placed after a hash, returns an array made up of only the keys of that hash


# The only trick I have for going through the Ruby Docs is liberal use of ctrl + f to find
# key words that I thought would be related to methods I wanted to use.