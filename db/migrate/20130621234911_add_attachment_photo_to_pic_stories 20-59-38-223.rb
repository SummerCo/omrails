class AddAttachmentPhotoToPicStories < ActiveRecord::Migration
  def self.up
    change_table :pic_stories do |t|
      t.attachment :Photo
    end
  end

  def self.down
    drop_attached_file :pic_stories, :Photo
  end
end
