class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do | table |
      table.string :role_name
      table.text :quotes
    end
  end
end
