class ProductPicture < ActiveRecord::Base
  belongs_to :product
  belongs_to :picture, :class_name => 'Ckeditor::Picture'
  
  validates_presence_of :product_id, :picture_id
end
