class CategoryPicture < ActiveRecord::Base
  belongs_to :category
  belongs_to :picture, :class_name => 'Ckeditor::Picture'
  
  validates_presence_of :category_id, :picture_id 
end
