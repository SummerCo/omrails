class AddAttachmentPhotoToPicstories < ActiveRecord::Migration
  def self.up
    change_table :picstories do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :picstories, :photo
  end
end
