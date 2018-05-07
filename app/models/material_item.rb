class MaterialItem < ActiveRecord::Base
#  self.table_name = 'material_items'
  belongs_to :material

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name

  def full_name
    material.name + " " + name
  end
end
