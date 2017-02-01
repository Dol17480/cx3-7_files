class SolarSystem

  attr_reader :planets
  # creates a method called planets. Instead of lines 6-8 just do 3.

  def initialize(input_planets)
    puts input_planets
    @planets = input_planets
    # input_planets is the parameter
    # these thinsg don't have to be the same
  end

  def collapse
    puts "collapsing"
    @planets = nil
  end

end

sol = SolarSystem.new(['Earth', 'Mars'])
# earth and mars are the argument
# without the parameters it's passing up to SolarSystem class, it looks in initialize for planets. So wheb it runs it sets the input_planets to be the instance variable of sol

another_sol = SolarSystem.new(['Venus', 'Jupiter'])
# we've created two instances of the solar_system = basically two objects
puts sol.planets 
# prints sol's panets to the termnal