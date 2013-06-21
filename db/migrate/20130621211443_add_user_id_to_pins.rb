class AddUserIdToPins < ActiveRecord::Migration
  def change
    add_column :pic-stories, :user_id, :integer
    add_index :pic-stories, :user_id
  end
end
