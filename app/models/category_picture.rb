class CategoryPicture < ActiveRecord::Base
  belongs_to :category
  belongs_to :picture, :class_name => 'Ckeditor::Picture'
  
  validates_presence_of :category_id, :picture_id, :image_type

  def image_type_enum
     ['headshot', 'banner']	
  end
end
