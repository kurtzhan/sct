class News < ActiveRecord::Base
  belongs_to :language
  belongs_to :news_type
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates_presence_of :name, :news_type
end
