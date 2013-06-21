class PicStory < ActiveRecord::Base
  attr_accessible :Story

  validates :Story, presence: true
end
