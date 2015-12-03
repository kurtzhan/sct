class AddDescriptionToCategories < ActiveRecord::Migration
  def change
  	add_column :categories, :description, :text, :limit => 4294967295
  end
end
