require('minitest/autorun')
require('minitest/rg')
require_relative('../sparrow')

class SparrowTest < Minitest::Test

  def setup
    @sparrow = Sparrow.new
  end

  def test_sparrow_can_fly
    assert_equal("flying", @sparrow.fly())

end