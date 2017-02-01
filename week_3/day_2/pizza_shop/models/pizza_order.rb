require('pry-byebug')
require('pg')

class PizzaOrder

  attr_reader :first_name, :last_name, :topping, :quantity
  attr_accessor :topping, :first_name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @last_name = options["last_name"]
    @topping = options["topping"] 
    @quantity = options['quantity'].to_i

  end

  def save
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "INSERT INTO pizza_orders(
    first_name,
    last_name,
    topping,
    quantity) VALUES (
    '#{ @first_name}',
    '#{ @last_name}',
    '#{ @topping}',
    #{ @quantity}
    ) RETURNING id;"
    db.exec(sql) 
    db.close
    @id = orders.first['id']
  end

  def self.all
    db = PG.connect( {dbname: 'pizza_shop', host: 'localhost'} )
    sql = "SELECT * FROM pizza_orders;"
    orders = db.exec(sql)
    db.close
    # orders.map returns an array of orders. cycles through 'orders' and creates an order/pizza object using a block. pizzaordersnew(order) means we're passing it this 'order' upon creation. New objects are created. Returns in temrinal in one element array. Array because we called map.
    return orders.map {|order| PizzaOrder.new(order) }
  end

  def self.find(id)
    db = PG.connect( {dbname: 'pizza_shop', host: 'localhost'} )
    sql = "SELECT * FROM pizza_orders WHERE id = #{id};"
    orders = db.exec(sql)
    db.close()
    return PizzaOrder.new(orders.first())
    ends

  def update
    db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
    sql = "UPDATE pizza_orders SET topping = '#{@topping}' WHERE id = #{@id};"
    db.exec(sql) 
    db.close
  end

  def delete
      db = PG.connect({dbname: 'pizza_shop', host: 'localhost'})
      sql = "DELETE FROM pizza_orders WHERE first_name = '#{first_name}';"
      db.exec(sql) 
      db.close
    end


end

# order2 = PizzaOrder.new({'first_name' => 'Darth', 'last_name' => 'Vader', 'topping' => 'cheese', 'quantity' => 1})

pizza1 =PizzaOrder.all.first
pizza1.topping = "Hawaii"
pizza1.update

pizza1 =PizzaOrder.all.first
pizza1.first_name = "Luke"
pizza1.delete

binding.pry
nil
