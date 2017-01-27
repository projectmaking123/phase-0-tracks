# Virus Predictor

# I worked on this challenge [by myself, with: Stephen Wurster].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#allows access to functions and methods of other file
#
require_relative 'state_data'

class VirusPredictor
  attr_reader :state_of_origin, :population, :population_density

  #This method is introducng each instance variable to the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #returns predicted deaths and speed of spread results.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #runs a conditional calculation based on the states popuation. Must draw state information from state_data.rb. Prints number of deaths.
  def predicted_deaths
    # predicted deaths is solely based on population density

    if population_density >= 200
      rate = 0.4
    elsif population_density >= 150
      rate = 0.3
    elsif population_density >= 100
      rate = 0.2
    elsif population_density >= 50
      rate = 0.1
    else
      rate =  0.05
    end
    
    number_of_deaths = (population * rate).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #accesses the hash in state data, depending which stte is accessed the density will determine how much the speed is increased by. prints the speed in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if population_density >= 200
      speed += 0.5
    elsif population_density >= 150
      speed += 1
    elsif population_density >= 100
      speed += 1.5
    elsif population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |k, v| 
  state = VirusPredictor.new(k, STATE_DATA[k][:population_density], STATE_DATA[k][:population])
    state.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses a rocket equal to set the key as a string, the other uses : to set the key as a symbol
# # What does require_relative do? How is it different from require?
# require_relative allows accesses to the methods and function of another file, while require only allows for a read only data set.
# # What are some ways to iterate through a hash?
# hash.each or while loops
# # When refactoring virus_effects, what stood out to you about the variables, if anything?
# the variables were repeated often
# # What concept did you most solidify in this challenge?
# reducting repeated code