# Virus Predictor

# I worked on this challenge [by myself, with: Piper D ].
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
# pulls in another file starting at where you define it. 
# 
require_relative 'state_data'

class VirusPredictor

# bringing in 3 arguments from state data and giving  
# the arguments values as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# method that calls predicted deaths and speed of spread 
#methods and returns a numeric value.

  def virus_effects
    predicted_deaths
    speed_of_spread(@population_density, @state)
  end

  private

# method that calculates predicted deaths based on population density.

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

# method that takes population density and gives values of spread in months


  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

# research case statements. 

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

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, state_data|
 VirusPredictor.new(state, state_data[:population_density], state_data[:population]).virus_effects
end 

#=======================================================================
# Reflection Section
##This programming challenge was challenging! It was interesting to see a more advanced way of iterating
## through a nested data structure, but certainly helpful to do it in a pair programming sesh.