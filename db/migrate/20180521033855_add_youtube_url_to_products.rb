class AddYoutubeUrlToProducts < ActiveRecord::Migration
  def change
    add_column :products, :youtube_url, :string, :after => :language_id
  end
end
