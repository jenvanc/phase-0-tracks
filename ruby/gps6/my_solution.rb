# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  attr_reader :population_density, :population

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      multiplier = 0.4
    elsif population_density >= 150
      multiplier = 0.3
    elsif population_density >= 100
      multiplier = 0.2
    elsif population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, value[:population_density], value[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section
-# In the state_data file you see symbols and strings used as keys for accessing
-# the vaules stored the hash. The string allows you to use a hash rocket (=>)
-# where symbols allow you to use colons to designate keys.
-# require_relative requests a relative path to the file that it required instead
-# of providing the absolute path to the file.
-# You can iterate through a hash with the keys, but you need to include a block
-# for the value, even if it doesn't show in the iteration.
-# The variables do not need to be declared because they are accessable anywhere
-# within the class @ in front of the variable name allows that.
-# More iteration practice is always welcome as I still sometimes struggle with
-# stringing all the parts together. It was also just helpful to look at some code
-# that is already pretty well put together and disect it, see how to make it better
-# and look at how it is structed.
