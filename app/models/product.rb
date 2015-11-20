class Product < ActiveRecord::Base
  include Ckeditor
  belongs_to :category
  has_many :product_attachment_files
  has_many :attachment_files, through: :product_attachment_files

  has_many :product_features
  has_many :features, through: :product_features
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name
end
