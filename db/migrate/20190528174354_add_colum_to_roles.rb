class AddColumToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :id_movie, :integer
    add_column :roles, :id_actor, :intager
  end
end
