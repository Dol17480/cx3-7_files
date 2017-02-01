require('minitest/autorun')
require('minitest/rg')
require_relative('../bird')
require_relative('../behaviours/chirp')
require_relative('../behaviours/quack')
require_relative('../behaviours/fly')

class BirdTest < Minitest::Test

  def setup
    quack_object = Quack.new
    fly_object = Fly.new
    @duck = Bird.new(quack_object, fly_object)
    chirp_object = Chirp.new
    @sparrow = Bird.new(chirp_object, fly_object)

    # @duck = Bird.new(Quack.new, Fly.new)
    # @sparrow = Bird.new(Chirp.new, Fly.new) shorthand way same as lines 11 -15

  end

  def test_duck_can_quack
  assert_equal("quack", @duck.call)
  end


  def test_sparrow_can_chirp
  assert_equal("chirp", @sparrow.call)
  end

end