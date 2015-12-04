class AddImageTypeToCategoryPictures < ActiveRecord::Migration
  def change
  	add_column :category_pictures, :image_type, :string
  end
end
