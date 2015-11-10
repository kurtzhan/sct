class Product < ActiveRecord::Base
  belongs_to :category
  
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name
end
