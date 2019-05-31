class FixInputForSalery < ActiveRecord::Migration[5.2]
  def change
    change_column :actors, :salery, :integer
  end
end
