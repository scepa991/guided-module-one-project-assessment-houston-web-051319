class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do | table |
      table.string :name
      table.string :genre
      table.date :year
      table.string :director
      table.text :comment
    end
  end


  
end
