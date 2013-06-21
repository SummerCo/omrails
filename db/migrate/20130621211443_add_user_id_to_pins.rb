class AddUserIdToPins < ActiveRecord::Migration
  def change
    add_column :pic_stories, :user_id, :integer
    add_index :pic_stories, :user_id
  end
end
