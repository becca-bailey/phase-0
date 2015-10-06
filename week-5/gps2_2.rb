# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
=begin
Pseudocode

CREATE an empty hash

DEFINE method for adding an items
  PRINT "What item would you like to add?" 
  GET item
  PRINT "How much would you like to buy?" 
  GET quantity
  ADD input to hash as key/value pair
  PRINT confirmation message
  
DEFINE method for remove item
  PRINT "What item would you like to remove?" 
  GET item
  REMOVE key/value pair from hash
  PRINT confirmation message

DEFINE method to update quantaties
  PRINT "What item would you like to change?" 
  GET item
  PRINT current amount of item to console
  PRINT "How much would you like to buy?
  UPDATE quantity in hash
  PRINT confirmation message

DEFINE method to print list
  PRINT each item on the list by item: quantity

=end

$grocery_list = Hash.new ()

def add_item
  puts "What item would you like to add?"
  grocery_item = gets.chomp
  puts "How much would you like to buy?"
  item_amount = gets.chomp
  $grocery_list[grocery_item] = item_amount
  puts "Your item was added!"
end

def remove_item
  puts "Which item would you like to remove?"
  grocery_item = gets.chomp
  $grocery_list.delete(grocery_item)
  puts "Your item was removed!"
end

def change_amount
  puts "Which item would you like to change?"
  grocery_item = gets.chomp
  puts "Right now, you have " + $grocery_list[grocery_item] + " on your list."
  puts "How much would you like to buy?"
  item_amount = gets.chomp
  $grocery_list[grocery_item] = item_amount
  puts "Your item was changed!"
end
  
def print_list
  $grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# add_item
# add_item
# add_item
# add_item
# remove_item
# change_amount

=begin
  
What did you learn about pseudocode from working on this challenge?  

I researched some common terms to use in non-language-specific pseudocode.  We ended up using words like print, get, and add, that can be used in multiple languages.

What are the tradeoffs of using Arrays and Hashes for this challenge?

We used a hash for this challenge, becuase it allows us to associate the item with the quantity as a key value pair.  It's simple to add and retreive information using this structure.  Using an array would be more complicated, because it would involve a workaround like sub-arrays for each item and quantity.

What does a method return?

If the return is not explicitly specified within the method, a method will return the reuslt of the last operation within the method.  For example, if the last operation was a boolean, the method will return true or false.  If the last operation was print or puts, it will return 'nil'.  

What kind of things cn you pass into methods as arguments?

An argument can be a string, a boolean, an equation, a number (float or integer), an array, or a hash.

How can you pass information between methods?

You can use the same information in a method by defining variables outside of the method.  I know you can use classes and inheritance to pass information between methods, but that's something we haven't learned very much about yet, and hope to understand better in coming weeks.

What concepts were solidified in this challenge, and what concepts are still confusing?

This was the first time my partner and I had really worked with hashes, so this challenge helped us to better understand adding, retrieving, and removing items from a hash.  I think I understood all the concepts necessary for this challenge, but it's still confusing how you would create a method for determining which of these methods to run.  For example, I would love to add a prompt to this program that asks the user whether they would like to add, remove, or change an item on the list, but when I researched this, I was confused by classes and the ways to call one method inside of another.
  
end








