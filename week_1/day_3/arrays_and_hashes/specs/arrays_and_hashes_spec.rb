require 'minitest/autorun'
require 'minitest/rg'
require_relative "../arrays_and_hashes"

class Day3LabTest < Minitest::Test

  def test_sum_array_length
    prices = [ 1.23, 6.98, 8.43, 2.45 ]
    costs = [ 4.23, 1.12, 0.52, 8.67 ]
    expected = 8
    actual = sum_array_length(prices, costs)
    assert_equal(expected, actual)
 end


  def test_sum_array_values
      data = [ 1, 2, 3, 4 ,5 ]
      expected = 15
      actual = sum_array_values(data)
      assert_equal(expected, actual)
end
end

def test_hogwarts_array_values
  hogwarts = [ 'Hufflepuff', 'Slytherin', 'Gryffindor', 'Ravenclaw' ]
example1= "Ravenclaw"
example2 = "Batman"
first_return_is_found = find_item?(hogwarts,example1)
second_return_is_found = find_item?(hogwarts, example2)
assert_equal (tr

  def test_first_key
    teacher_wallets = {
  'Sandy' => 12,
  'Zsolt'  => 10,
  'Val'  => 1356,
  'Jay' => 1
}

first_key_result = first_key(teacher_wallets)
assert_equal("Sandy")










