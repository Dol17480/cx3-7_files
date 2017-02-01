require( 'minitest/autorun' )
require ( 'minitest/rg')
require_relative('../my_functions.rb')

class FunctionTest < MiniTest::Test

def test_my_jam ()
  song = my_jam()
  assert_equal("Uptown Funk", song)
end

def test_add()
  result = add( 2,3 )
  assert_equal(5, result )
end

end