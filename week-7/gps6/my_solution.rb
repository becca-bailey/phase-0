# # Virus Predictor

# # I worked on this challenge with Mark Jazner
# # We spent 2 hours on this challenge.

# # EXPLANATION OF require_relative
# # Tells the program to look for a file relative to the current file's location. Does not require the file to be a website. require_relative is followed by the path to the file.
# #
require_relative 'state_data'

class VirusPredictor

  # Initialize allows you to create a new instance of the VirusPredictor class, which takes three arguments--a string, a float, and an integer.  These arguments become instance variables so they can be used in multiple methods.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This method calls the predicted_deaths and speed_of_spread methods, which are defined below.  
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # It is creating multiple equations based on the population density that calculates the predicted deaths.  Deaths and population density are directly corollated.  It prints the result.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # This method uses the population density to determine the speed of spread.  If the population density is higher, the virus spreads more quickly.  The result is printed in months.

  def speed_of_spread
    # in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# #=======================================================================

# # DRIVER CODE
#  # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects




#=======================================================================
# Reflection Section

class VirusPredictor


  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  def virus_effects
    predicted_deaths
    speed_of_spread
    return "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private
  

  def predicted_deaths
    percentage = 0.4  
    population = 200  
    while @number_of_deaths == nil
      if @population_density < 50
        @number_of_deaths = (@population * 0.5).floor
      elsif @population_density >= population
        @number_of_deaths = (@population * percentage).floor
      else
        population -= 50; percentage -= 0.1
      end 
    end 
  end 

  #    def predicted_deaths
  #     percentage = (@population_density/50).floor/10.0
  #     if @population_density >= 200 
  #       percentage = 0.4
  #     elsif @population_density < 50
  #       percentage = 0.05
  #     end
  #     @number_of_deaths = (@population * percentage).floor
  #   end

  # def speed_of_spread
  #   density = 200
  #   months = 0.5
  #   while @speed == nil
  #     @population_density >= density ? @speed = months : density -= 50; months += 0.5 
  #   end
  # end

  def speed_of_spread
    @speed = 2.5 - (@population_density/50).floor/2.0
    if @speed <= 0
      @speed = 0.5
    end
  end

end

end


def national_virus_effects(data_source)
  data_source.each do |state, info|
    state_name = VirusPredictor.new(state, info[:population_density], info[:population])
    puts state_name.virus_effects
  end
end



national_virus_effects(STATE_DATA)

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

The outer hash uses a string as the key and a "hash rocket" syntax, while the inner hash uses symbols as keys and uses the symbol syntax.  Since symbols don't store information in the same way as variables, they are better for repetitive data like the data contained in state_data.

What does require_relative do? How is it different from require?

Require relative will import a file located in the same directory, and only requires the path to the file relative to the current location.

What are some ways to iterate through a hash?

You can iterate over a hash using a method like .each or .map, and specifying variables for the key and value.  

When refactoring virus_effects, what stood out to you about the variables, if anything?

There were some unnecessary variables, especially when calling the two methods inside virus_effects.  Because the arguments are instance variables, they can still be accessed inside the method without including them in the method call. 

What concept did you most solidify in this challenge?

I learned more about calling methods inside of other methods, which is something that had been confusing before.  Also, our guide helped us to understand modules and constants and how they are used in Ruby.

=end