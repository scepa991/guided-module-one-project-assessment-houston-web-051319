class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do | table |
      table.string :name
      table.integer :age
      table.float :salery
      table.boolean :dead
  end
end
end
