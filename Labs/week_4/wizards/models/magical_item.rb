require_relative('../db/sql_runner.rb')

class MagicalItem

  attr_accessor :id, :name, :wizard_id

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
  @wizard_id = options['wizard_id'].to_i
  end

def save 
  sql = "INSERT INTO magical_items (name) VALUES ('#{@name}') RETURNING *";
  magical_item = SqlRunner.run(sql).first
    @id = magical_item['id']
  end

  def wizards
  sql = "SELECT * FROM magical_items WHERE wizard_id = #{@id}"
    wizards = SqlRunner.run( sql )
    result =  wizards.map {|wizard| Wizard.new(wizard) }
   return result
  end

  def self.delete_all() 
    sql = "DELETE FROM magical_items"
    SqlRunner.run(sql)
  end

end