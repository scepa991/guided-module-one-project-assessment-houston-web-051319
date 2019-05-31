class ChangeCommentInStoryline < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :comment, :text
    add_column :movies, :storyline, :text
  end
end
