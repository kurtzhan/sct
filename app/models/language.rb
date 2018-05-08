class Language < ActiveRecord::Base
  has_many :categories
  has_many :products
  has_many :news
  has_many :site_configs
end
