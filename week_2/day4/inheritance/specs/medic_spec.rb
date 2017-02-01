require('minitest/autorun')
require('minitest/rg')
require_relative('../medic')

class MedicTest < Minitest::Test

  def setup
    @medic = Medic.new
  end

def test_has_heal_method
  assert_equal("You're healed", @medic.can_heal)
end


end