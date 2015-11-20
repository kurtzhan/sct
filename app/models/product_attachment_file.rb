class ProductAttachmentFile < ActiveRecord::Base
  belongs_to :product
  belongs_to :attachment_file, :class_name => 'Ckeditor::AttachmentFile'

  validates_presence_of :product_id, :attachment_file_id 
end
