require_relative('pizza_order')

class Sales 

  def initialize( orders )
    @orders = orders
  end

  def total_revenue
   revenue = 0
   cost = 10
   @orders.each {|order| revenue += order.quantity * cost }
   return revenue
   # total_quantity = @orders.reduce(0) {|total, order| total + order.quantity}
   # return total_quantity * 10
end


 def total_sales_customer
  customer_sales = 0
  @sales.each {|sale| customer_sales += sale.amount}
  return customer_sales
end
end