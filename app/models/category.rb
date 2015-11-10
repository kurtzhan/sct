class Category < ActiveRecord::Base
  has_many :products
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  validates_presence_of :name
end
