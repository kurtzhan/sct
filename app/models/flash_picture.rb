class FlashPicture < ActiveRecord::Base
  belongs_to :picture, :class_name => 'Ckeditor::Picture'

  validates_presence_of :picture_id, :ordinal
end
