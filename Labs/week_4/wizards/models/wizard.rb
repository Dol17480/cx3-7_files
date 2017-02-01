require_relative('../db/sql_runner.rb')

class Wizard

  attr_accessor :id, :name

def initialize(options)
  @id = options['id'].to_i if options['id'] != nil
  @name = options['name']
end

def save 
  sql = "INSERT INTO wizards (name) VALUES ('#{@name}') RETURNING * ";
  wizard = SqlRunner.run(sql).first
    @id = wizard['id']
  end

  def magical_items
  sql = "SELECT * FROM magical_items WHERE wizard_id = #{@id}"
    magical_items = SqlRunner.run( sql )
    result =  magical_items.map {|magical_item| MagicalItem.new(magical_item) }
   return result
  end

  def self.delete_all() 
    sql = "DELETE FROM wizards"
    SqlRunner.run(sql)
  end

end