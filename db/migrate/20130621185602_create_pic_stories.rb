class CreatePicStories < ActiveRecord::Migration
  def change
    create_table :pic_stories do |t|
      t.string :Story

      t.timestamps
    end
  end
end
