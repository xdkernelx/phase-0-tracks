# Virus Predictor

# I worked on this challenge [by myself, with: Zachary R.].
# We spent [1.1] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
#require relative allows you to load a file that is relative to the statement that comes after require relative.  

class VirusPredictor
  #adds attributes to instance on initialization.
  #parameters: state of origin, population density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Uses two other helper methods' return values to return some data
  #This method groups two returns to save lines of code.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #everything below cannot be accessed by user. As a user you can't call VirusPredictor.predicted_deaths. You would not have access.
  private
  #Method that returns readable output based on the number of deaths per state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
  #Returns readable output based on the population density, higher the density, faster the rate.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |key,value|
  # puts "#{key} is #{value[:population_density], value[:population],}"
  temp_value = VirusPredictor.new(key,value[:population_density],value[:population])
  temp_value.virus_effects
end

# VirusPredictor.new(key, )


#=======================================================================
# Reflection Section