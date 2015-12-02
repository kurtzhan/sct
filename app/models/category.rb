class Category < ActiveRecord::Base
  has_many :products
  has_many :category_pictures
  has_many :pictures, through: :category_pictures
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name
end
