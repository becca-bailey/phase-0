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