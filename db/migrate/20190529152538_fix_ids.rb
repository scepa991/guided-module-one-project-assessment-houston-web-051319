class FixIds < ActiveRecord::Migration[5.2]
  def change
    rename_column :roles, :id_actor, :actor_id
    rename_column :roles, :id_movie, :movie_id
  end
end
