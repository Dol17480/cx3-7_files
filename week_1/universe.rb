require_relative('ruby_play')

class Universe

  @@god = "Top God"
  # class variable = every universe now has a Top God

  def initialize
    @sol = SolarSystem.new('planets')
end

def eat_planets
  @sol.collapse()
end

end

uni = Universe.new()
uni.eat_planets()