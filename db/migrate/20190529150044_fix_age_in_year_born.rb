class FixAgeInYearBorn < ActiveRecord::Migration[5.2]
  def change
    rename_column :actors, :age, :born
  end
end
