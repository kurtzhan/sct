class Feature < ActiveRecord::Base
  has_many :product_features
  has_many :products, through: :product_features

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name
end
