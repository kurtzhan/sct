class ProductFeature < ActiveRecord::Base
  belongs_to :product
  belongs_to :feature

  validates_presence_of :product_id, :feature_id
end
