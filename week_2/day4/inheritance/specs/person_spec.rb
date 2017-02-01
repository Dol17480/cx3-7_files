require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < Minitest::Test

  def setup
    @person = Person.new("David", "O'Leary")

  end

def test_person_has_first_name
  assert_equal("David", @person.first_name)
end

def test_person_has_last_name
  assert_equal("O'Leary", @person.last_name)
end

def test_person_can_talk
  assert_equal("David O'Leary", @person.talk)
end



  end