class AddOwnerToAnimal < ActiveRecord::Migration
  def change
    add_column :animals, :owner, :string
  end
end
