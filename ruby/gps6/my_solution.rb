# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'
# this require_relative is loading the data from 'state_data' since it's in the same folder.
# we usually use require to get extra classes and gems to get extra that's not built into ruby.
# If we use require, we can get other classes. require_relative is more flexible.


class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    # initialize method. takes 3 arguments for initialize.
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    # calls two other methods (which takes 3 arguments defined.)
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on 3 arguments.
    # it appears to output values that's dependent on if/else statements
    # indicates number of deaths in given state.
    # finally prints it out.
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

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    # two argument-driven. depending on if/else, it spits out the speed value.
    # finally prints out after too.
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

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# Answer for Release 4: We can write outside of the class
# because we are pulling instances. Instances can pull outside the class.

STATE_DATA.each {|state, inner_hash| VirusPredictor.new(state, inner_hash[:population_density], inner_hash[:population]).virus_effects  }
# STATE_DATA.each do |state, inner_hash|

# selected_state_report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
# selected_state_report.virus_effects  
# # because state is a string in a hash, #is redundant.

# end
# .each loop makes sense. 
# loop do would have to loop over something to get the states.
# we already have all the objects we need, therefore .each.

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# 


