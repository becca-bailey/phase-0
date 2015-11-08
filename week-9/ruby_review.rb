# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert 
  raise "Assertion failed!" unless yield 
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# DEFINE method assert
  # RAISE Error unless the condition in the codeblock is true

# DEFINE variable with name "bettysue"
# Inside method, codeblock is true
# Inside method, codeblock is false => Error

# 3. Copy your selected challenge here

# def random_num(min, max)
#    rand(max - min + 1) + min
# end

# describe "separate_comma" do
#    it "returns no comma, when the integer is smaller than 1000" do
#       expect(separate_comma(random_num(0, 999))).to match /^\d{1,3}$/
#    end
#    it "returns one comma, when the integer is between 1000 and 9999" do
#       expect(separate_comma(random_num(1000, 9999))).to match /^\d{1},\d{3}$/
#    end
#    it "returns one comma, when the integer is between 10000 and 99999" do
#       expect(separate_comma(random_num(10000, 99999))).to match /^\d{2},\d{3}$/
#    end
#    it "returns one comma, when the integer is between 100000 and 999999" do
#       expect(separate_comma(random_num(100000, 999999))).to match /^\d{3},\d{3}$/
#    end
#    it "returns two commas, when the integer is between 1000000 and 9999999" do
#       expect(separate_comma(random_num(1000000, 9999999))).to match /^\d{1},\d{3},\d{3}$/
#    end
#    it "returns two commas, when the integer is between 10000000 and 99999999" do
#       expect(separate_comma(random_num(10000000, 99999999))).to match /^\d{2},\d{3},\d{3}$/
#    end
# end

def separate_comma(number)
  comma_number = ""
  number_array = number.to_s.split(//)
  i = -4
  while i >= (0 - number_array.length)
    number_array.insert(i, ",")
    i -= 4
  end
  number_array.each { |n| comma_number = comma_number + n }
  p comma_number
end

# 4. Convert your driver test code from that challenge into Assert Statements

assert { separate_comma(999) == "999" }
assert { separate_comma(1000) == "1,000" }
assert { separate_comma(10000) == "10,000" }
assert { separate_comma(100000) == "100,000" }
assert { separate_comma(1000000) == "1,000,000" }
assert { separate_comma(10000000) == "10,000,000" }


# 5. Reflection

=begin

What concepts did you review in this challenge?

This challenge reviewed test-driven development and introduced 'assert' syntax.  I also reviewed the 
purpose of 'yield'.

What is still confusing to you about Ruby?

While I understand the purpose of yield, I would like to better understand its practical uses.

What are you going to study to get more prepared for Phase 1?

I would like to become more familiar with rspec and test code.  

=end

# Drawer Debugger

# I worked on this challenge [by myself, with: ].
# I spent 1 hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
    @contents.delete(item)
  end

  def dump  # what should this method return?
    puts "Your drawer is empty."
    @contents = [];
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_reader :type, :clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "cleaning the #{type}"
    @clean = true
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false



# Reflection

=begin

What concepts did you review in this challenge?

This challenge reviewed ruby classes, objects, and methods.  

What is still confusing to you about Ruby?

I understood mostly everyhing about this specific challenge, but I'm still confused sometimes by 
classes when they get more complex.  

What are you going to study to get more prepared for Phase 1?

Practical applications of classes and objects.

=end

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


# CarClass Challenge
# Gabrielle Gustilo & Becca Nelson


# User Stories:

=begin
As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.

As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.

As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.

As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.

As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.

As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.

As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.

As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.
=end

# Pseudocode:
#INPUT: model variable and color variable
#OUTPUT: 
#STEPS:

=begin

DEFINE Car class which takes a model and color
SET variables for model and color
DEFINE a speed variable that can be viewed and changed, starting at 0
DEFINE a distance travelled variable that can be viewed and changed, starting at 0

DEFINE a drive method that takes a distance
ADD distance to distance travelled

DEFINE a turn method that specifies left or right
IF left
PRINT "turning left..."
IF right
PRINT "turning right..."
ELSE 
PRINT "I'm confused..."

DEFINE a speed method that takes a speed
  IF speed variable is less than new speed
    PRINT "accellerating..."
  ELSE
    PRINT "decellerating..."
  speed variable equals new speed

DEFINE stop method
SET speed variable to 0
PRINT "stopped"


=end


# Initial Solution

# class Car
  
#   attr_accessor :speed, :distance_travelled
#   attr_reader :model, :color
  
#   def initialize(model, color)
#     @model = model
#     @color = color
#     @speed = 0
#     @distance_travelled = 0
#   end
  
#   def drive(distance)
#     @distance_travelled += distance
#     puts "You have travelled #{@distance_travelled} miles."
#   end
  
#   def turn(direction)
#       if direction.downcase == "left"
#         puts "Turning left..."
#       elsif direction.downcase == "right"
#         puts "Turning right..."
#       else
#         puts "I'm lost!!!"
#       end
#   end
  
#   def change_speed(speed)
#     if @speed > speed
#       puts "Decellerating to #{speed} mph."
#     elsif @speed < speed
#       puts "Accellerating to #{speed} mph."
#     else
#       puts "You're already at that speed!"
#     end
#     @speed = speed
#   end
  
#   def stop
#     @speed = 0
#     puts "Stopped."
#   end
  
# end


# Refactoring

class Car
  
  attr_reader :model, :color, :speed, :distance_travelled
  
  def initialize(model, color)
    @model = model
    @color = color
    @speed = 0
    @distance_travelled = 0
  end
  
  def drive(distance, speed)
    self.change_speed(speed)
    @distance_travelled += distance
    puts "You have travelled #{@distance_travelled} miles."
  end
  
  def turn(direction)
    if @speed > 0
      if direction.downcase == "left"
        puts "Turning left..."
      elsif direction.downcase == "right"
        puts "Turning right..."
      else
        puts "I'm lost!!!"
      end
    else 
      puts "You are not moving!"
    end
  end
  
  def change_speed(speed)
    if @speed > speed
      puts "Decellerating to #{speed} mph."
    elsif @speed < speed
      puts "Accellerating to #{speed} mph."
    else
      puts "You're already at that speed!"
    end
    @speed = speed
  end
  
  def stop
    @speed = 0
    puts "Stopped."
  end
  
end

# Test

ferrari = Car.new("Ferrari", "red")
ferrari.speed
ferrari.distance_travelled
ferrari.drive(10, 25)
ferrari.turn("left")
ferrari.turn("right")
ferrari.turn("cat")
ferrari.change_speed(40)
ferrari.speed
ferrari.distance_travelled
ferrari.stop
p ferrari.model
p ferrari.color

# Reflection

=begin

What concepts did you review in this challenge?

I reviewed classes, objects, and methods.  

What is still confusing to you about Ruby?

Nothing about coding this challenge was confusing--the most confusing part was following the user 
stories and trying to figure out what we need to include in our code.

What are you going to study to get more prepared for Phase 1?

Practical applications of classes and objects.

=end
