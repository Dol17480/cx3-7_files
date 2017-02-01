require( 'minitest/autorun' )
require_relative('../models/sales')
require_relative('../models/pizza_order')

class TestSales < Minitest::Test

  def setup
    orders = PizzaOrder.all
    @sales = Sales.new ( orders )
  end

  def test_total_revenue
    result = @sales.total_revenue
    assert_equal(20, result )
  end

  def test_total_sales_to_customer
    result = @sales.sales_to_customer
    assert_equal(1, result)
end
end