class Material < ActiveRecord::Base
  has_many :material_items

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name
end
