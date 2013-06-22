class PicStory < ActiveRecord::Base
  attr_accessible :Story, :photo
  

  validates :Story, presence: true
  validates :user_id, presence: true
validate_attachment :photo, presence: true,
							content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
							size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :photo
 
end
