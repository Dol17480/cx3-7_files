require('minitest/autorun')
require('minitest/rg')
require_relative('../universe.rb')

class UniverseTest < Minitest::Test

 def setup
  @universe = {
    galaxies: [],
    spaceships: ["Enterprise", "Liberator"],
    aliens: [],
    size: 9000000
  }
end

def test_add_galaxy ()
  add_galaxy(@universe, "Milky Way")
  assert_equal("Milky Way", @universe[:galaxies].last)
end

def test_get_spaceships()
  expected = ["Enterprise", "Liberator"]
  assert_equal(expected, get_spaceships(@universe))
end
end
