# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
=begin
Pseudocode

Create a hash

DEFINE method for adding an items
  ask question for what item you would like to add
    REQUEST INPUT
    REQUEST QUATNTITYTY
    insert input into hash as key/valuse pair
  
DEFINE method for remove item
  ask question for what item to remove
   Request input of item
  remove key pair from the hash

DEFINE method to update quantaties
REQUEST item 
print item quantaty
REQUEST number
update number

Define print list
print list



INITIAL CODE

$grocery_list = Hash.new ()

def add_item(grocery_item, item_amount)
  puts "What item would you like to add?"
  grocery_item="Ice Cream"
  puts "How much would you like to buy?"
  item_amount = 5000
  $grocery_list[grocery_item] = item_amount
end

add_item("Ice Cream", 5000)
p $grocery_list

def remove_item(grocery_item)
  $grocery_list.delete(grocery_item)
end

remove_item("Ice Cream")

p $grocery_list

def change_amount(grocery_item,item_amount)
  $grocery_list[grocery_item] = item_amount
end

change_amount("Ice Cream",200)
  
p $grocery_list
  
def print_list
  $grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

print_list
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
def a
#   b = "quiet noises"
  p b
end

def b
  return "loud noises"
end

# a
# add_item
# add_item
# add_item
# add_item
# remove_item
# change_amount
options = [:print_list, :add_item, :remove_item, :update_item]

while true do
  p options
  choice = gets("select a number").chomp
  Object.send(options[choice.to_i])
end
# Object.send(:print_list)