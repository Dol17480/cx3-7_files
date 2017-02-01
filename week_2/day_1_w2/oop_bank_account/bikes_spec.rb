require('minitest/autorun')
require('minitest/rg')
require_relative('bikes')

class TestBikes < Minitest::Test

  def test_get_bike_name
    bike_name = NewBikes.new("Venge", 2, "black", "road")
    assert_equal("Venge", bike_name.brand_name)
    assert_equal(2, bike_name.colour)
    assert_equal("black", bike_name.size)

  end

  def test_bike_model
        bike_name = NewBikes.new("Venge", 2, "black", "road")
        assert_equal("road", bike_name.model)
  end

def test_accelerate
  acceleration = 10
  bike = NewBikes.new("Venge", 2, "black", "road")
  bike.accelerate(acceleration)
  assert_equal(10, bike.speed)
end
end